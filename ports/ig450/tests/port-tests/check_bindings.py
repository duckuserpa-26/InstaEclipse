"""Contracts observed in Instagram 450. These checks do not execute Android."""
import hashlib
import json
from pathlib import Path
import re
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'audit'))
from verify_static import signature

paths = json.loads(Path('audit/results/class_paths.json').read_text())
checks = []
api_contracts = []

def text(cls):
    return Path(paths[cls]).read_text()

def check(name, value):
    checks.append({'check': name, 'passed': bool(value)})

def field(cls, name, typ, static=False):
    api_contracts.append(('F',cls,name,typ,static))
    pattern = r'^\.field (.*\s' + re.escape(name + ':' + typ) + r')$'
    matches = re.findall(pattern, text(cls), re.M)
    check(cls + '.' + name + ':' + typ, any(('static' in m.split()) == static for m in matches))

def method(cls, name, params, ret, static=False):
    api_contracts.append(('M',cls,name,'('+''.join(params)+')'+ret,static))
    matches = []
    for raw in re.findall(r'^\.method (.+)$', text(cls), re.M):
        mods, n, p, r = signature(raw)
        if n == name and p == params and r == ret and ('static' in mods) == static:
            matches.append(raw)
    check(cls + '.' + name + '(' + ''.join(params) + ')' + ret, len(matches) == 1)

S = 'Ljava/lang/String;'
O = 'Ljava/lang/Object;'
U = 'Lcom/instagram/common/session/UserSession;'
M = 'Ljava/util/Map;'
check('PendingLikeStore superclass', '.super LX/0FJM;' in text('X.00hD'))
for name, params, ret in [('A0D',[S,O],'V'), ('A0G',[S],'Z'), ('A0B',[S],'V'), ('A0E',[M],'V'), ('A0I',[],'V')]:
    method('X.0FJM',name,params,ret)
method('X.00hD','A0I',[],'V')
for name, typ in [('A02',O),('A03','Ljava/util/LinkedHashMap;'),('A04',M),('A05',U)]:
    field('X.0FJM', name, typ)
for name, typ in [('A04',S),('A05',S),('A00','J')]:
    field('X.0XGx',name,typ)
method('X.00hB','A00',[U],'LX/00hB;',True)
method('X.00hB','A01',[],'V')
method('X.00hB','onSessionWillEnd',[],'V')
field('X.00hB','A04',M)
method('X.0C0d','invoke',[O]*4,O)
field('X.0C0d','$t','I')
field('X.00DR','A00','LX/00DR;',True)
method('X.08BW','onDoubleTap',['Landroid/view/MotionEvent;'],'Z')
for cls,name,count,integer_at,media_at,bool_at in [
        ('X.0YGg','A01',17,9,3,16),('X.0E13','A05',30,8,4,None)]:
    matches=[]
    for raw in re.findall(r'^\.method (.+)$',text(cls),re.M):
        mods,n,p,r=signature(raw)
        if n==name and r=='V' and len(p)==count and p[integer_at]=='Ljava/lang/Integer;' and p[media_at]=='Lcom/instagram/feed/media/Media;':
            if bool_at is None or p[bool_at]=='Z': matches.append(raw)
    check(cls+'.'+name+': double-tap argument positions',len(matches)==1)

# Callback kind 6 must enter the like navigator, not the unrelated old kind 4.
invoke = re.search(r'^\.method [^\n]* invoke\([^\n]*\n(.*?)^\.end method',text('X.0C0d'),re.M|re.S)[1]
table = re.search(r':pswitch_data_0\s+\.packed-switch 0x0\s+(.*?)\.end packed-switch',invoke,re.S)[1].split()
label = table[6]
start = invoke.index('\n    '+label+'\n')
segment = invoke[start:]
check('Reels callback kind 6 enters LikeNavigator', 'LikeNavigator_onLikeMedia' in segment[:1800])
check('Fourth callback argument is decoded as Boolean',
      'move-object/from16 v12, p4' in invoke and 'invoke-static {v12}, LX/000H;->A0w(Ljava/lang/Object;)Z' in segment[:500])
store = text('X.00hD')
check('Action/media/time write sites',all(x in store for x in [
    'iput-object v9, v2, LX/0XGx;->A04:Ljava/lang/String;',
    'iput-object v10, v2, LX/0XGx;->A05:Ljava/lang/String;',
    'iput-wide v0, v2, LX/0XGx;->A00:J',
    'const-string/jumbo v9, "like"','const-string/jumbo v9, "unlike"',
    'LX/0FJM;->A0D(Ljava/lang/String;Ljava/lang/Object;)V']))

result={'instagram_version':'450.0.0.50.77','instagram_version_code':385611438,
    'target_device_reported_by_user':{'android':'13','framework':'Vector 2.2','tested':False},
    'checks':checks,'all_contracts_passed':all(c['passed'] for c in checks),
    'runtime_tests':0,'release_allowed':False,
    'candidate_sha256':hashlib.sha256(Path('candidate/instaeclipse-450-UNVALIDATED-unsigned.apk').read_bytes()).hexdigest()}
Path('port-tests/bindings-result.json').write_text(json.dumps(result,indent=2))
print(json.dumps({'contracts':len(checks),'passed':sum(c['passed'] for c in checks),
                 'failures':[c for c in checks if not c['passed']],'android_runtime_tests':0},indent=2))
raise SystemExit(0 if result['all_contracts_passed'] else 1)
