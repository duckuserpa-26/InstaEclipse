"""Regenerate local class paths after decoding the supplied Instagram base APK."""
import json
import re
from pathlib import Path

root = Path('work/instagram450')
paths = {}
for file in root.glob('smali*/**/*.smali'):
    match = re.search(r'^\.class [^\n]* L([^;]+);', file.read_text(), re.M)
    if match:
        paths[match[1].replace('/', '.')] = str(file.resolve())
if not paths:
    raise SystemExit('Decode base.apk into work/instagram450 first')
out = Path('audit/results/class_paths.json')
out.parent.mkdir(parents=True, exist_ok=True)
out.write_text(json.dumps(paths))
Path('port-tests/classes').mkdir(exist_ok=True)
print('Indexed', len(paths), 'classes')
