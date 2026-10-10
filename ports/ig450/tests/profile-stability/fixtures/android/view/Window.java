package android.view;public class Window {public View decor;public Window(View v){decor=v;}public void setLayout(int w,int h){}public View getDecorView(){return decor;}}
