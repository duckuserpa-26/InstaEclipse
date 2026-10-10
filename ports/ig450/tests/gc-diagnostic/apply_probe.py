from pathlib import Path
import re,json
root=Path('candidate/InstaEclipse-0.7.0-relations.2-IG449-source/apktool-source')
before=Path('gc-diagnostic/before')
changes=[]
for p in before.rglob('*.smali'):
    s=p.read_text()
    if '"deoptimizeMethod"' not in s:continue
    # Change only the class used to resolve the explicit deoptimization API.
    pattern=r'(const-class [vp]\d+, )Lde/robv/android/xposed/XposedBridge;(\s+const-string [vp]\d+, "deoptimizeMethod")'
    s,n=re.subn(pattern,r'\1Lps/reso/instaeclipse/utils/DeoptDiagnostic450;\2',s)
    assert n==1,(p,n)
    rel=p.relative_to(before)
    (root/rel).write_text(s)
    changes.append(str(rel))
assert len(changes)==5,changes
for rel in ['apktool.yml','smali_classes3/ps/reso/instaeclipse/BuildConfig.smali','smali_classes3/ps/reso/instaeclipse/Xposed/Module.smali']:
    s=(before/rel).read_text().replace('IG450-dev5','IG450-dev6-gcprobe')
    s=s.replace("versionCode: '72'", "versionCode: '73'").replace('versionCode: 72','versionCode: 73')
    s=s.replace('VERSION_CODE:I = 0x48','VERSION_CODE:I = 0x49').replace('dev6-gcprobe (72)','dev6-gcprobe (73)')
    (root/rel).write_text(s)
p=Path('candidate/java450/ps/reso/instaeclipse/mods/media/InstantUpload450.java')
s=(before/'InstantUpload450.java').read_text()
s=s.replace('Method d=XposedBridge.class.getMethod("deoptimizeMethod",Member.class)', 'Method d=ps.reso.instaeclipse.utils.DeoptDiagnostic450.class.getMethod("deoptimizeMethod",Member.class)')
p.write_text(s)
Path('gc-diagnostic/changed-sites.json').write_text(json.dumps(changes,indent=2)+'\n')
print('Redirected five explicit deoptimization sites; hook registration code unchanged')
