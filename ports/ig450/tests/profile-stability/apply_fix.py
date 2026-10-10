from pathlib import Path
import re

root = Path('candidate/InstaEclipse-0.7.0-relations.2-IG449-source/apktool-source')
rel = Path('smali_classes3/ps/reso/instaeclipse/mods/media')
before = Path('profile-stability/before')
owner = 'Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;'
helper = 'Lps/reso/instaeclipse/mods/media/ProfileUi450;'
s = (before/rel/'ProfilePicturePreviewHook.smali').read_text()

def edit_method(name, transform):
    global s
    pattern = r'^\.method [^\n]* '+re.escape(name)+r'\([^\n]+\n.*?^\.end method'
    s, n = re.subn(pattern, lambda m: transform(m[0]), s, flags=re.M|re.S)
    assert n == 1, (name,n)

def menu(m):
    old = 'invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;'
    assert m.count(old) == 2
    m = m.replace(old, 'invoke-static {p0}, '+helper+'->context(Landroid/view/View;)Landroid/content/Context;', 1)
    old = 'invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V'
    assert old in m
    m = m.replace(old, 'const/4 v5, 0x4\n\n    invoke-direct {v0, v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V')
    m = m[:m.index('    :catchall_0')] + '''    :catchall_0
    move-exception p1
    const-string v0, "menu"
    invoke-static {p0, v0, p1}, '''+helper+'''->report(Landroid/view/View;Ljava/lang/String;Ljava/lang/Throwable;)V
    return v3
.end method'''
    return m
edit_method('showForAvatar', menu)

def preview(m):
    return m.replace('invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;',
                     'invoke-static {p0}, '+helper+'->context(Landroid/view/View;)Landroid/content/Context;')
edit_method('showPreview', preview)

def open_error(m):
    start=m.index('    :catchall_0')
    end=m.index('    :goto_0', start)
    return m[:start]+'''    :catchall_0
    move-exception p0
    const-string v1, "anteprima"
    invoke-static {p1, v1, p0}, '''+helper+'''->report(Landroid/view/View;Ljava/lang/String;Ljava/lang/Throwable;)V

'''+m[end:]
edit_method('lambda$showForAvatar$1', open_error)

def guarded(name, count, view, stage):
    def wrap(m):
        header=m.splitlines()[0]
        sig=header.split(' '+name,1)[1]
        inner=name+'$unguardedDev5'
        original=m.replace(header,'.method private static '+inner+sig,1)
        wrapper=header+'''
    .locals 2
    :try_start_safe
    invoke-static/range {p0 .. p'''+str(count-1)+'}, '+owner+'->'+inner+sig+'''
    :try_end_safe
    .catchall {:try_start_safe .. :try_end_safe} :catch_safe
    return-void
    :catch_safe
    move-exception v0
    const-string v1, "'''+stage+'"\n    invoke-static {p'+str(view)+', v1, v0}, '+helper+'''->report(Landroid/view/View;Ljava/lang/String;Ljava/lang/Throwable;)V
    return-void
.end method'''
        return original+'\n\n'+wrapper
    edit_method(name,wrap)

for args in [
    ('lambda$observeTouch$0',2,1,'gesto'),
    ('replayNativeTap',1,0,'storie'),
    ('downloadPhoto',4,0,'download'),
    ('lambda$downloadPhoto$6',3,2,'esito download'),
    ('lambda$showForAvatar$3',7,3,'azione menu'),
    ('lambda$showPreview$5',2,0,'chiusura anteprima'),
]: guarded(*args)
(root/rel/'ProfilePicturePreviewHook.smali').write_text(s)

p=rel/'ProfilePicturePreviewHook$3.smali'
s=(before/p).read_text()
anchor='    check-cast v0, Landroid/app/Activity;'
assert s.count(anchor)==1
s=s.replace(anchor,anchor+'\n    invoke-static {v0}, '+helper+'->capture(Landroid/app/Activity;)V')
(root/p).write_text(s)

for p in [Path('apktool.yml'),Path('smali_classes3/ps/reso/instaeclipse/BuildConfig.smali')]:
    s=(before/p).read_text().replace('IG450-dev4','IG450-dev5')
    s=s.replace("versionCode: 71", "versionCode: 72").replace("versionCode: '71'", "versionCode: '72'")
    s=s.replace('VERSION_CODE:I = 0x47','VERSION_CODE:I = 0x48')
    (root/p).write_text(s)
print('Applied dev5 profile guards, owned Activity context, explicit system menu theme, staged diagnostics')
p=Path('smali_classes3/ps/reso/instaeclipse/Xposed/Module.smali')
s=(before/p).read_text().replace('loaded=0.7.0-relations.3-IG450-dev1 (69)', 'loaded=0.7.0-relations.3-IG450-dev5 (72)')
(root/p).write_text(s)
