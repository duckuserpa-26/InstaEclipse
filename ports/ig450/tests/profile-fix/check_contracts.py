import json,re
from pathlib import Path
paths=json.loads(Path('audit/results/class_paths.json').read_text())
checks=[]
def method(c,n,d,anchor=None):
 s=Path(paths[c]).read_text()
 matches=[m[0] for m in re.finditer(r'^\.method [^\n]+\n.*?^\.end method',s,re.M|re.S) if re.search(r' '+re.escape(n+d)+r'$',m[0].splitlines()[0])]
 checks.append({'check':c+'.'+n+d,'passed':len(matches)==1 and (anchor is None or '"'+anchor+'"' in matches[0])})
method('com.instagram.base.activity.IgFragmentActivity','dispatchTouchEvent','(Landroid/view/MotionEvent;)Z')
for n in ['onResume','onPause','onDestroyView']:method('com.instagram.profile.fragment.UserDetailFragment',n,'()V')
method('com.instagram.profile.fragment.UserDetailFragment','A0r','()Lcom/instagram/user/model/User;')
method('com.instagram.user.model.User','A1C','()Lcom/instagram/api/schemas/ProfilePicUrlInfo;','hd_profile_pic_url_info')
method('com.instagram.user.model.User','A8N','()Ljava/util/List;','hd_multiple_profile_picture_urls')
method('com.instagram.user.model.User','A1g','()Lcom/instagram/common/typedurl/ImageUrl;','profile_pic_url')
method('com.instagram.user.model.User','A89','()Ljava/lang/String;')
method('com.instagram.api.schemas.ProfilePicUrlInfo','getUrl','()Ljava/lang/String;')
base=Path('candidate/InstaEclipse-0.7.0-relations.2-IG449-source/apktool-source/smali_classes3/ps/reso/instaeclipse/mods/media')
s=(base/'ProfilePicturePreviewHook.smali').read_text()
checks.append({'check':'activity observer replaces container-ID interception','passed':'const-class p0, Landroid/view/ViewGroup;' not in s and '"com.instagram.base.activity.IgFragmentActivity"' in s})
checks.append({'check':'no stale Instagram 449 getters remain in profile hook','passed':all('"'+n+'"' not in s for n in ['A8L','A1f','A1B','A0n','A86'])})
Path('profile-fix/static-contracts.json').write_text(json.dumps({'checks':checks,'runtime_tested':False},indent=2))
assert all(x['passed'] for x in checks),checks
print('Profile static contracts passed:',len(checks))
