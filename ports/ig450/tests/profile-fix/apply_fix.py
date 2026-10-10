from pathlib import Path
import re

root=Path('candidate/InstaEclipse-0.7.0-relations.2-IG449-source/apktool-source')
rel=Path('smali_classes3/ps/reso/instaeclipse/mods/media')
def source(name): return (Path('profile-fix/before')/rel/name).read_text()
def put(name,s): (root/rel/name).write_text(s)
s=source('ProfilePicturePreviewHook.smali')
# Hook the Instagram activity's actual entry point, before native view dispatch.
# Do not also hook ViewGroup: duplicate DOWN events would reset the timer.
s=s.replace('    const-class p0, Landroid/view/ViewGroup;\n\n    const-string v0, "dispatchTouchEvent"', '''    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object p0
    const-string v0, "com.instagram.base.activity.IgFragmentActivity"
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object p0

    const-string v0, "dispatchTouchEvent"''')
s=s.replace('passive long-press observer installed','dev3 activity long-press observer installed')
# Clear the selected profile on pause too, so another screen cannot reuse it.
anchor='    .line 62\n'
insert='''    const-string v0, "onPause"
    new-instance v1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$2;
    invoke-direct {v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$2;-><init>()V
    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

'''
assert s.count(anchor)==1;s=s.replace(anchor,insert+anchor)
for old,new in [('"A8L"','"A8N"'),('"A1f"','"A1g"'),('"A1B"','"A1C"'),('"A0n"','"A0r"'),('"A86"','"A79"'),('via A0n','via A0r')]:s=s.replace(old,new)
# Continue to the next resource candidate if a single lookup fails.
s=s.replace('    :catchall_0\n    :cond_1\n    const/4 p0, 0x0', '    :catchall_0\n    goto :cond_0\n\n    :cond_1\n    const/4 p0, 0x0',1)
# Log a recognized long press and a presented menu without user data or URLs.
a='    .line 117\n    :cond_3\n'
s=s.replace(a,a+'    const-string v1, "(IE|ProfilePreview) avatar press armed"\n    invoke-static {v1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V\n')
a='    invoke-static {p1, p0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->showForAvatar(Landroid/view/View;Landroid/view/ViewGroup;)Z'
s=s.replace(a,'    const-string v0, "(IE|ProfilePreview) long press fired"\n    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V\n\n'+a)
put('ProfilePicturePreviewHook.smali',s)
s=source('ProfilePicturePreviewHook$3.smali')
start=s.index('.method protected beforeHookedMethod')
s=s[:start]+''' .method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;
    check-cast v0, Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    if-eqz v0, :done
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    instance-of v1, v0, Landroid/view/ViewGroup;
    if-eqz v1, :done
    check-cast v0, Landroid/view/ViewGroup;
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;
    const/4 v1, 0x0
    aget-object p1, p1, v1
    check-cast p1, Landroid/view/MotionEvent;
    invoke-static {v0, p1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->-$$Nest$smobserveTouch(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V
    :done
    return-void
.end method
'''
put('ProfilePicturePreviewHook$3.smali',s)
s=source('ProfilePicturePreviewHook$1.smali')
s=s.replace('    return-void','    const-string v0, "(IE|ProfilePreview) profile resumed dev3"\n    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V\n\n    return-void')
put('ProfilePicturePreviewHook$1.smali',s)
for p in [root/'apktool.yml',root/'smali_classes3/ps/reso/instaeclipse/BuildConfig.smali']:
 s=p.read_text().replace('0.7.0-relations.3-IG450-dev2','0.7.0-relations.3-IG450-dev3')
 s=s.replace('versionCode: 69','versionCode: 70').replace('VERSION_CODE:I = 0x45','VERSION_CODE:I = 0x46')
 p.write_text(s)
print('Profile press routing, lifecycle and Instagram 450 getters patched')
