package android.app;import android.content.*;public class Dialog implements DialogInterface {
 public static Context previewContext;public static int previewCount;public Context context;public Dialog(){}public Dialog(Context c,int t){context=c;previewContext=c;}
 public boolean requestWindowFeature(int f){return true;}public void setContentView(android.view.View v){}public void setOnDismissListener(DialogInterface.OnDismissListener l){}
 public void show(){if(!(context instanceof Activity))throw new android.view.WindowManager.BadTokenException("token null");previewCount++;}public void dismiss(){}public android.view.Window getWindow(){return new android.view.Window(new android.view.ViewGroup());}
}
