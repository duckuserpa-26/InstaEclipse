"""Make structural JVM fixtures from verified APK declarations (no Instagram behavior)."""
import json,re
from pathlib import Path
paths=json.load(open('audit/results/class_paths.json'))
records=json.load(open('port-tests/api-contracts.json'))
classes={c for _,c,*_ in records}
for _,c,n,d,st in records: classes.update(x.replace('/','.') for x in re.findall(r'L([^;]+);',d) if not x.startswith(('java/','javax/')))
classes.add('com.instagram.base.activity.IgFragmentActivity')
classes.update(['android.content.pm.PackageInfo','android.content.pm.PackageManager'])
supers={};interfaces={};todo=list(classes)
while todo:
    c=todo.pop()
    if c.startswith(('java.','javax.')):continue
    s=Path(paths[c]).read_text() if c in paths else ''
    sup=re.search(r'^\.super L([^;]+);',s,re.M)
    parent=sup[1].replace('/','.') if sup else 'java.lang.Object'
    # Preserve real inheritance for isAssignableFrom checks. Kotlin interfaces
    # are emitted as classes because only their reflection contracts are tested.
    supers[c]=parent
    interfaces[c]=[x.replace('/','.') for x in re.findall(r'^\.implements L([^;]+);',s,re.M)]
    if parent not in classes and not parent.startswith(('java.','javax.')):classes.add(parent);todo.append(parent)
    for i in interfaces[c]:
        if i not in classes and not i.startswith(('java.','javax.')):classes.add(i);todo.append(i)
lines=[]
known_interfaces={i for values in interfaces.values() for i in values}
for c in sorted(classes):
    if c.startswith(('java.','javax.')):continue
    # Use real interface status; interfaces remain abstract.
    s=Path(paths[c]).read_text() if c in paths else ''
    interface=bool(re.search(r'^\.class .*\binterface\b',s,re.M)) or (c not in paths and c in known_interfaces)
    lines.append('\t'.join(['C',c,supers.get(c,'java.lang.Object'),','.join(interfaces.get(c,[])),str(int(interface))]))
for kind,c,n,d,st in records:lines.append('\t'.join([kind,c,n,d,str(int(st))]))
Path('port-tests/stub-spec.tsv').write_text('\n'.join(dict.fromkeys(lines))+'\n')
print('Structural fixture classes',len(classes))
