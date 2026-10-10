"""Inventory of discovery anchors and focused contracts, not DexKit/ART execution."""
import json,re,sys
from pathlib import Path
sys.path.insert(0,'audit')
from verify_static import signature
inventory=json.loads(Path('audit/results/inventory.json').read_text())
hits=json.loads(Path('audit/results/anchor_hits.json').read_text())
paths=json.loads(Path('audit/results/class_paths.json').read_text())
src=Path('work/InstaEclipse-0.7.0-relations.2-IG449-source/java-decompiled/sources/ps/reso/instaeclipse')
queries=[]
for file in inventory['module_files']:
 if not file['file'].startswith('mods/'):continue
 lines=(src/file['file']).read_text().splitlines()
 for q in file['queries']:
  if not q['strings']:
   queries.append({'file':file['file'],'line':q['line'],'status':'INDIRECT_QUERY_MANUAL_REVIEW','candidates':None});continue
  kind='class' if 'ClassMatcher' in lines[q['line']-1] else 'method'
  groups=[{(h['class'],h['method'] if kind=='method' else '') for h in hits.get(a,[]) if q['kind']!='usingEqStrings' or h['exact']} for a in q['strings']]
  candidates=sorted(set.intersection(*groups))
  status='ANCHORS_PRESENT' if candidates else 'NO_ANCHOR_INTERSECTION'
  if not candidates and file['file'].endswith('DisableDoubleTapLikeHook.java'):status='LEGACY_FALLBACK_REPLACED_BY_450_PROFILE'
  queries.append({'file':file['file'],'line':q['line'],'kind':kind,'anchors':q['strings'],'status':status,'candidates':candidates})
cache={}
def text(c):
 if c not in cache:cache[c]=Path(paths[c]).read_text() if c in paths else ''
 return cache[c]
checks=[]
def check(name,candidates):checks.append({'check':name,'passed':bool(candidates),'candidates':candidates})
def methods(c):return re.findall(r'^\.method (.+)',text(c),re.M)
def anchor(name,predicate):
 rows=[]
 for h in hits.get(name,[]):
  if not h['method']:continue
  mods,n,p,r=signature(h['method'])
  if predicate(h,mods,n,p,r):rows.append(h['class']+' '+h['method'])
 return sorted(set(rows))
check('Story cache expiring_at Long getter',anchor('expiring_at',lambda h,m,n,p,r:h['class']=='Lcom/instagram/feed/media/Media;' and not p and r=='Ljava/lang/Long;'))
check('Caption getter on Media',anchor('caption',lambda h,m,n,p,r:h['class']=='Lcom/instagram/feed/media/Media;' and not p and r.startswith('L') and h['exact']))
check('Story mentions raw list getter',anchor('reel_mentions',lambda h,m,n,p,r:h['class']=='Lcom/instagram/feed/media/Media;' and not p and r=='Ljava/util/List;' and h['exact']))
check('Story mention converter',anchor('MentionTappableObject.user is null; dropping mention sticker',lambda h,m,n,p,r:len(p)==1 and r=='Ljava/util/List;'))
check('Carousel list getter',anchor('carousel_media',lambda h,m,n,p,r:h['class']=='Lcom/instagram/feed/media/Media;' and not p and r=='Ljava/util/List;'))
check('Video versions list getter',anchor('video_versions',lambda h,m,n,p,r:h['class']=='Lcom/instagram/feed/media/Media;' and not p and r=='Ljava/util/List;'))
legacy=anchor('igThreadIgid',lambda h,m,n,p,r:p==['Lcom/instagram/model/direct/DirectThreadKey;','Z'] and r=='V')
check('Legacy ephemeral/tracker query is absent; explicit port required',['confirmed absent'] if not legacy else [])
check('Timed ephemeral deletion method',[s for s in methods('X.04k3') if s.endswith(' A0Z(Z)Z')])
remove=re.search(r'^\.method [^\n]* A0Z\([^\n]+\n.*?^\.end method',text('X.04k3'),re.M|re.S)[0]
check('Timed deletion removes expired disappearing messages',['semantic match'] if 'Unexpected null timestamp for disappearing message, removed message' in remove and 'Ljava/util/Iterator;->remove()V' in remove else [])
for name in ['onResume','onPause']:check('Direct fragment lifecycle '+name,[s for s in methods('X.01Sn') if s.endswith(' '+name+'()V')])
check('Direct fragment controller',re.findall(r'^\.field .* A02:LX/01TB;',text('X.01Sn'),re.M))
check('Direct controller thread key getter',[s for s in methods('X.01TB') if s.endswith(' A0E()Lcom/instagram/model/direct/DirectThreadKey;')])
check('Ephemeral server-ping void hook',anchor('mark_ephemeral_item_ranges_viewed',lambda h,m,n,p,r:r=='V'))
check('Hidden chat inbox list getter',anchor('DirectThreadStoreImpl.getSortedCopyOfThreadSummaries',lambda h,m,n,p,r:r in ['Ljava/util/List;','Ljava/util/ArrayList;']))
check('View-once badge constructor',anchor('once',lambda h,m,n,p,r:n=='<init>' and any(x['class']==h['class'] and x['method']==h['method'] for x in hits.get('replayable',[]))))
check('Build-expiry boolean fallback',anchor('snooze_expiration_lockout_manager',lambda h,m,n,p,r:r=='Z'))
for c,n,end in [('com.instagram.common.ui.widget.imageview.IgProgressImageView','onAttachedToWindow','()V'),('com.instagram.common.ui.widget.imageview.IgProgressImageView','getIgImageView','()Lcom/instagram/common/ui/widget/imageview/IgImageView;'),('com.instagram.api.schemas.VideoVersionIntf','getUrl','()Ljava/lang/String;')]:
 check(c+'.'+n,[s for s in methods(c) if s.endswith(' '+n+end)])
# New comment UI: method shape, repository and invoked three-parameter resolver.
c='X.0Akd';check('Comment menu signature',[s for s in methods(c) if s.endswith(' G8w(Ljava/lang/String;Ljava/lang/String;FZ)V')])
check('Comment menu repository field',re.findall(r'^\.field .*:Lcom/instagram/comments/mvvm/data/MediaCommentListRepository;',text(c),re.M))
body=re.search(r'^\.method [^\n]* G8w\([^\n]+\n.*?^\.end method',text(c),re.M|re.S)[0]
check('Comment resolver called by menu',re.findall(r'invoke-static[^\n]*->[^\n]+\(L[^;]+;Ljava/lang/String;Ljava/lang/String;\)L[^;]+;',body))
# Semantic username check catches same-return-type but incorrect mappings.
user=text('com.instagram.user.model.User')
u=re.search(r'^\.method [^\n]* A89\(\)Ljava/lang/String;\n.*?^\.end method',user,re.M|re.S)[0]
check('Username getter reads username hash (-265713450)', ['User.A89'] if 'const v0, -0xfd6772a' in u else [])
for name in ['ProfilePicturePreviewHook.smali','InstantNativeMenuHook$Bindings.smali']:
 t=(Path('candidate/InstaEclipse-0.7.0-relations.2-IG449-source/apktool-source/smali_classes3/ps/reso/instaeclipse/mods/media')/name).read_text()
 check(name+' uses semantic username getter',['A89'] if '"A89"' in t and '"A79"' not in t else [])
Path('regression450/discovery-coverage.json').write_text(json.dumps({'scope':'original query anchors; current mappings checked separately','queries':queries,'android_runtime_tests':0},indent=2))
Path('regression450/extended-contracts.json').write_text(json.dumps(checks,indent=2))
print('Discovery queries:',len(queries),'indirect:',sum(q['candidates'] is None for q in queries))
print('Extended contracts:',len(checks),'failed:',sum(not c['passed'] for c in checks))
for c in checks:
 if not c['passed']:print('REVIEW NEEDED:',c['check'])
assert all(c['passed'] for c in checks)
