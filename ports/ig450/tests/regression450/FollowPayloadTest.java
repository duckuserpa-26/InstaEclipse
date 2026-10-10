import java.lang.reflect.*;
import java.nio.*;
import java.nio.charset.StandardCharsets;
public class FollowPayloadTest {
 static Method decode;static int n,fail;
 public static class Envelope {Object data;Envelope(Object d){data=d;}}
 static String json="{\"followed_by\":true}";
 static Object read(Object o){try{return decode.invoke(null,o,3);}catch(Throwable t){return t;}}
 static void check(boolean b,String s){n++;if(!b)fail++;System.out.println((b?"PASS ":"FAIL ")+s);}
 public static void main(String[] args)throws Exception{
  decode=Class.forName("ps.reso.instaeclipse.mods.misc.FollowStatusHook").getDeclaredMethod("toJsonString",Object.class,int.class);decode.setAccessible(true);
  byte[] bytes=json.getBytes(StandardCharsets.UTF_8);
  check(json.equals(read(bytes)),"byte array supported");check(json.equals(read(json)),"String response supported");
  ByteBuffer direct=ByteBuffer.allocateDirect(bytes.length).put(bytes);direct.flip();check(json.equals(read(direct)),"direct ByteBuffer supported");check(direct.position()==0,"direct buffer position preserved");
  ByteBuffer ro=ByteBuffer.wrap(bytes).asReadOnlyBuffer();check(json.equals(read(ro)),"read-only ByteBuffer supported");
  ByteBuffer offset=ByteBuffer.allocate(bytes.length+4).putInt(123).put(bytes);offset.flip();offset.position(4);check(json.equals(read(offset)),"only current buffer range decoded");check(offset.position()==4,"nonzero position preserved");
  check(json.equals(read(offset.slice())),"sliced buffer supported");
  check(json.equals(read(new Envelope(direct))),"nested direct response supported");
  check(json.equals(read(ByteBuffer.allocateDirect(bytes.length).put(bytes))),"buffer at write position supported");
  check(read(null)==null,"null ignored");check(read("unrelated")==null,"unrelated String ignored");
  check(read(ByteBuffer.allocateDirect(1048577))==null,"oversized response rejected");
  System.out.println("FOLLOW_PAYLOAD_ASSERTIONS="+n+" FAILED="+fail+" ANDROID_RUNTIME_TESTS=0");if(fail>0)throw new AssertionError(fail+" failures");
 }
}
