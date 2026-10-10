import java.util.*;
import ps.reso.instaeclipse.mods.misc.LikeDelayQueue;

// Executes the queue converted from the candidate DEX, not a rewritten queue.
// JVM/fake store tests do not validate Xposed, native storage or server effects.
public final class LikeDelayQueueTest {
    record Action(boolean like, long queuedAt) {}
    static final class Task {
        long due; Runnable callback; boolean cancelled;
        Task(long due, Runnable callback) { this.due = due; this.callback = callback; }
    }
    static final class Fixture implements LikeDelayQueue.Store<Action> {
        long now = 100_000;
        int drains, errors;
        boolean failSchedule, failEnqueue, failRestore;
        Map<String,Action> pending = new HashMap<>(), flight = new HashMap<>();
        List<Task> tasks = new ArrayList<>();
        LikeDelayQueue<Action> queue = new LikeDelayQueue<>(this, () -> now, (callback, delay) -> {
            if (failSchedule) throw new IllegalStateException("scheduler unavailable");
            Task task = new Task(now + delay, callback); tasks.add(task);
            return () -> task.cancelled = true;
        });
        Action like() { return new Action(true, now); }
        Action unlike() { return new Action(false, now); }
        public Object monitor() { return this; }
        public Action pending(String id) { return pending.get(id); }
        public Action inFlight(String id) { return flight.get(id); }
        public void enqueue(String id, Action a) {
            if (failEnqueue) throw new IllegalStateException("enqueue failure");
            pending.put(id, a);
        }
        public void restore(Map<String,Action> map) {
            if (failRestore) throw new IllegalStateException("restore failure");
            pending.putAll(map);
        }
        public void remove(String id) { pending.remove(id); }
        public boolean claim(String id) {
            Action a = pending.remove(id); if (a == null) return false;
            flight.put(id, a); return true;
        }
        public boolean isLike(Action a) { return a.like; }
        public long queuedAt(Action a) { return a.queuedAt; }
        public void requestDrain() { drains++; }
        public void onTimerError(Throwable t) { errors++; }
        void advance(long millis) {
            now += millis;
            for (Task task : new ArrayList<>(tasks)) {
                if (!task.cancelled && task.due <= now) {
                    task.cancelled = true; task.callback.run();
                }
            }
        }
    }
    static void check(boolean value, String message) {
        if (!value) throw new AssertionError(message);
    }
    interface Test { void run() throws Throwable; }
    static int passed;
    static void test(String name, Test test) throws Throwable {
        test.run(); passed++; System.out.println("PASS " + name);
    }
    public static void main(String[] args) throws Throwable {
        test("enabled: block early claim and release at deadline", () -> {
            Fixture f = new Fixture(); Action a = f.like();
            f.queue.enqueue("a", true, a, true, 5);
            check(!f.queue.claim("a"), "early claim"); f.advance(4999);
            check(!f.queue.claim("a") && f.drains == 0, "premature drain"); f.advance(1);
            check(f.drains == 1 && f.queue.claim("a") && f.flight.get("a") == a, "deadline");
        });
        test("disabled: native immediate claim", () -> {
            Fixture f = new Fixture(); f.queue.enqueue("a", true, f.like(), false, 5);
            check(f.tasks.isEmpty() && f.queue.claim("a"), "OFF must stay immediate");
        });
        test("unlike before deadline cancels a new unsent like", () -> {
            Fixture f = new Fixture(); f.queue.enqueue("a", true, f.like(), true, 5);
            f.advance(1000); f.queue.enqueue("a", false, f.unlike(), true, 5); f.advance(9000);
            check(f.pending.isEmpty() && f.flight.isEmpty() && f.drains == 0, "cancelled like leaked");
        });
        test("unlike retained when previous action is already in flight", () -> {
            Fixture f = new Fixture(); f.flight.put("a", f.like());
            f.queue.enqueue("a", true, f.like(), true, 5); Action unlike = f.unlike();
            f.queue.enqueue("a", false, unlike, true, 5);
            check(f.pending.get("a") == unlike && f.queue.claim("a"), "lost compensating unlike");
        });
        test("repeat like replaces payload without extending deadline", () -> {
            Fixture f = new Fixture(); f.queue.enqueue("a", true, f.like(), true, 5); f.advance(4000);
            Action newer = f.like(); f.queue.enqueue("a", true, newer, true, 60); f.advance(1000);
            check(f.queue.claim("a") && f.flight.get("a") == newer, "repeat delayed or stale");
        });
        test("different media have independent deadlines", () -> {
            Fixture f = new Fixture(); f.queue.enqueue("a", true, f.like(), true, 5); f.advance(2000);
            f.queue.enqueue("b", true, f.like(), true, 5); f.advance(3000);
            check(f.queue.claim("a") && !f.queue.claim("b"), "deadlines mixed");
            f.advance(2000); check(f.queue.claim("b"), "second not released");
        });
        test("restore uses elapsed time and leaves unlikes immediate", () -> {
            Fixture f = new Fixture();
            f.queue.restore(Map.of("a",new Action(true,f.now-3000),"b",f.unlike()), true, 5);
            check(!f.queue.claim("a") && f.queue.claim("b"), "restore gate");
            f.advance(2000); check(f.queue.claim("a"), "restore remainder");
        });
        test("expired restore immediate; future timestamp gets full delay", () -> {
            Fixture f = new Fixture();
            f.queue.restore(Map.of("a",new Action(true,f.now-6000),"b",new Action(true,f.now+100)), true,5);
            check(f.queue.claim("a") && !f.queue.claim("b"), "clock reset handling");
            f.advance(5000); check(f.queue.claim("b"), "clock reset deadline");
        });
        test("logout removes owned pending requests and cancels timers", () -> {
            Fixture f = new Fixture(); f.queue.enqueue("a",true,f.like(),true,5);
            f.pending.put("unrelated",f.unlike()); f.queue.close(); f.advance(10000);
            check(!f.pending.containsKey("a") && f.pending.containsKey("unrelated") && f.drains == 0,"logout cleanup");
        });
        test("external replacement is not held behind a stale gate", () -> {
            Fixture f = new Fixture(); f.queue.enqueue("a",true,f.like(),true,5);
            Action replacement=f.unlike(); f.pending.put("a",replacement);
            check(f.queue.claim("a") && f.flight.get("a")==replacement,"stale gate");
        });
        test("scheduler failure falls back and is reported", () -> {
            Fixture f = new Fixture(); f.failSchedule=true;
            f.queue.enqueue("a",true,f.like(),true,5);
            check(f.errors==1 && f.queue.claim("a"),"scheduler failure loses request");
        });
        test("native enqueue failure propagates and can recover", () -> {
            Fixture f = new Fixture(); f.failEnqueue=true; boolean threw=false;
            try { f.queue.enqueue("a",true,f.like(),true,5); } catch(IllegalStateException e) { threw=true; }
            check(threw && f.tasks.isEmpty(),"enqueue failure swallowed");
            f.failEnqueue=false; f.queue.enqueue("a",true,f.like(),false,5);
            check(f.queue.claim("a"),"failed enqueue left gate");
        });
        test("native restore failure propagates and cleans gates", () -> {
            Fixture f = new Fixture(); f.failRestore=true; boolean threw=false;
            try { f.queue.restore(Map.of("a",f.like()),true,5); } catch(IllegalStateException e) { threw=true; }
            check(threw && f.tasks.isEmpty(),"restore failure swallowed");
            f.failRestore=false; f.queue.enqueue("a",true,f.like(),false,5);
            check(f.queue.claim("a"),"failed restore left gate");
        });
        test("delay bounds", () -> {
            check(LikeDelayQueue.validSeconds(0)==5 && LikeDelayQueue.validSeconds(61)==5
                && LikeDelayQueue.validSeconds(1)==1 && LikeDelayQueue.validSeconds(60)==60,"bounds");
        });
        System.out.println("JVM_QUEUE_TESTS_PASSED="+passed+"; ANDROID_RUNTIME_TESTS=0");
    }
}
