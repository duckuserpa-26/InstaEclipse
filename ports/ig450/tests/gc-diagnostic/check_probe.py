from pathlib import Path
import json,re
root=Path('candidate/InstaEclipse-0.7.0-relations.2-IG449-source/apktool-source')
before=Path('gc-diagnostic/before')
checks=[]
for rel in json.loads(Path('gc-diagnostic/changed-sites.json').read_text()):
    old=(before/rel).read_text();new=(root/rel).read_text()
    checks.append({'check':rel+' isolated class substitution','passed':new.replace('Lps/reso/instaeclipse/utils/DeoptDiagnostic450;','Lde/robv/android/xposed/XposedBridge;')==old})
    checks.append({'check':rel+' all explicit lookup sites redirected','passed':bool(re.search(r'const-class [vp]\d+, Lps/reso/instaeclipse/utils/DeoptDiagnostic450;\s+const-string [vp]\d+, "deoptimizeMethod"',new))})
s=(root/'smali_classes3/ps/reso/instaeclipse/utils/DeoptDiagnostic450.smali').read_text()
checks.append({'check':'diagnostic helper has no Xposed runtime call','passed':'Lde/robv/android/xposed/' not in s and ' native ' not in s})
assert all(x['passed'] for x in checks),checks
Path('gc-diagnostic/static-probe.json').write_text(json.dumps(checks,indent=2)+'\n')
print('Diagnostic static checks passed:',len(checks))
