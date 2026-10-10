package android.content; public class ContextWrapper extends Context {private Context base;public ContextWrapper(Context c){base=c;}public Context getBaseContext(){return base;}}
