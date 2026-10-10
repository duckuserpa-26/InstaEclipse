from pathlib import Path
import shutil
out=Path('profile-stability/fixtures')
shutil.copytree('profile-fix/fixtures',out,dirs_exist_ok=True)
def put(n,s):
 p=out/n;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(s+'\n')
def change(n,a,b):
 p=out/n;s=p.read_text();assert a in s,(n,a);p.write_text(s.replace(a,b))
put('android/os/IBinder.java','package android.os; public interface IBinder {}')
put('android/content/ContextWrapper.java','package android.content; public class ContextWrapper extends Context {private Context base;public ContextWrapper(Context c){base=c;}public Context getBaseContext(){return base;}}')
change('android/view/View.java','public int id,','public android.content.Context context=new android.content.Context();public boolean attached=true;public android.os.IBinder token=new android.os.IBinder(){};public boolean isAttachedToWindow(){return attached;}public android.os.IBinder getWindowToken(){return token;}public int id,')
change('android/view/View.java','return new android.content.Context();','return context;')
change('android/app/Activity.java','public android.view.Window window;','public boolean finishing,destroyed;public boolean isFinishing(){return finishing;}public boolean isDestroyed(){return destroyed;}public android.view.Window window;')
change('android/view/MotionEvent.java','public void recycle(){}','public boolean recycled;public void recycle(){recycled=true;}')
change('android/app/AlertDialog.java','public static int count;','public static int count,theme;public static Context context;public static boolean fail;')
change('android/app/AlertDialog.java','public Builder(Context c){}','public Builder(Context c){context=c;theme=0;}public Builder(Context c,int t){context=c;theme=t;}')
change('android/app/AlertDialog.java','public AlertDialog show(){count++;','public AlertDialog show(){if(fail)throw new IllegalArgumentException("fixture menu failure");count++;')
put('android/widget/Toast.java','package android.widget;public class Toast {public static final int LENGTH_LONG=1;public static boolean fail;public static String last;public static Toast makeText(android.content.Context c,CharSequence t,int d){last=t.toString();if(fail)throw new IllegalStateException("fixture toast failure");return new Toast();}public void show(){}}')
put('android/widget/Button.java','package android.widget;public class Button extends TextView {public void setEnabled(boolean b){throw new IllegalStateException("fixture button failure");}}')
change('android/view/ViewGroup.java','public void addView(View v)', 'public void removeView(View v){children.remove(v);v.parent=null;}public void addView(View v)')
put('android/webkit/WebView.java','package android.webkit;public class WebView extends android.view.ViewGroup {public void destroy(){throw new IllegalStateException("fixture cleanup failure");}}')
change('ps/reso/instaeclipse/utils/log/ModuleLog.java','public static void line(String s){System.out.println(s);}', 'public static boolean fail;public static java.util.List<String> lines=new java.util.ArrayList<>();public static void line(String s){if(fail)throw new IllegalStateException("fixture logging failure");lines.add(s);System.out.println(s);}')
print('Fixtures prepared')
put('android/view/WindowManager.java','package android.view;public interface WindowManager {public static class BadTokenException extends RuntimeException {public BadTokenException(String s){super(s);}}}')
change('android/app/AlertDialog.java','if(fail)throw', 'if(!(context instanceof Activity))throw new android.view.WindowManager.BadTokenException("token null");if(fail)throw')
put('android/app/Dialog.java','''package android.app;import android.content.*;public class Dialog implements DialogInterface {
 public static Context previewContext;public static int previewCount;public Context context;public Dialog(){}public Dialog(Context c,int t){context=c;previewContext=c;}
 public boolean requestWindowFeature(int f){return true;}public void setContentView(android.view.View v){}public void setOnDismissListener(DialogInterface.OnDismissListener l){}
 public void show(){if(!(context instanceof Activity))throw new android.view.WindowManager.BadTokenException("token null");previewCount++;}public void dismiss(){}public android.view.Window getWindow(){return new android.view.Window(new android.view.ViewGroup());}
}''')
change('android/view/Window.java','public View getDecorView()', 'public void setLayout(int w,int h){}public View getDecorView()')
put('android/widget/Button.java','''package android.widget;public class Button extends TextView {public Button(){}public Button(android.content.Context c){context=c;}public void setText(CharSequence t){}public void setOnClickListener(android.view.View.OnClickListener l){}public void setEnabled(boolean b){throw new IllegalStateException("fixture button failure");}}''')
put('android/widget/FrameLayout.java','''package android.widget;public class FrameLayout extends android.view.ViewGroup {public FrameLayout(android.content.Context c){context=c;}public void addView(android.view.View v,android.view.ViewGroup.LayoutParams p){super.addView(v);}public static class LayoutParams extends android.view.ViewGroup.LayoutParams {public LayoutParams(int w,int h){super(w,h);}public LayoutParams(int w,int h,int g){super(w,h);}}}''')
put('android/webkit/WebSettings.java','''package android.webkit;public class WebSettings {public void setJavaScriptEnabled(boolean b){}public void setBuiltInZoomControls(boolean b){}public void setDisplayZoomControls(boolean b){}public void setLoadWithOverviewMode(boolean b){}public void setUseWideViewPort(boolean b){}}''')
put('android/webkit/WebView.java','''package android.webkit;public class WebView extends android.view.ViewGroup {public static boolean failDestroy;public static String loadedUrl;public static android.content.Context usedContext;public WebView(){}public WebView(android.content.Context c){context=c;usedContext=c;}public void setBackgroundColor(int c){}public WebSettings getSettings(){return new WebSettings();}public void loadUrl(String s){loadedUrl=s;}public void destroy(){if(failDestroy)throw new IllegalStateException("fixture cleanup failure");}}''')
