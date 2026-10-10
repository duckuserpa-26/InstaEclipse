from pathlib import Path
root=Path('candidate/InstaEclipse-0.7.0-relations.2-IG449-source/apktool-source')
before=Path('regression450/before')
pkg='smali_classes3/ps/reso/instaeclipse/'
def get(n):return (before/n).read_text()
def put(n,s):(root/n).write_text(s)
n=pkg+'mods/network/IGNetworkInterceptor$1.smali';s=get(n)
a='    if-eqz v6, :cond_13\n\n    return-void'
assert s.count(a)==1;s=s.replace(a,'    if-eqz v6, :cond_13\n\n    goto/16 :cond_17')
# URI.getPath never includes query parameters. Match the pending inbox path,
# then an actual query key, regardless of parameter order.
a='''    const-string v7, "direct_v2/pending_inbox/?visual_message"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d'''
b='''    const-string v7, "/direct_v2/pending_inbox/"
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :stories_other
    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;
    move-result-object v6
    if-eqz v6, :stories_other
    const-string v7, "(?s)(?:^|.*&)visual_message(?:=[^&]*)?(?:&.*|$)"
    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    move-result v6
    if-nez v6, :cond_d
    :stories_other'''
assert s.count(a)==1;s=s.replace(a,b);put(n,s)
n=pkg+'mods/misc/FollowStatusHook.smali';s=get(n)
a='''    .line 135
    :cond_0
    instance-of v1, p0, Ljava/nio/ByteBuffer;

    const-string v2, "followed_by"'''
b='''    .line 135
    :cond_0
    const-string v2, "followed_by"
    instance-of v1, p0, Ljava/lang/String;
    if-eqz v1, :payload_buffer
    check-cast p0, Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :cond_7
    return-object p0
    :payload_buffer
    instance-of v1, p0, Ljava/nio/ByteBuffer;'''
assert s.count(a)==1;s=s.replace(a,b)
start=s.index('    .line 138\n',s.index('.method private static toJsonString(Ljava/lang/Object;I)'))
end=s.index('    .line 141\n',start)
s=s[:start]+'''    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I
    move-result v3
    # Some callbacks hand over a buffer at its write position; support both.
    if-nez v3, :payload_size
    const/4 v3, 0x0
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I
    move-result v3
    :payload_size
    const v4, 0x100000
    if-gt v3, v4, :cond_1
    new-array v4, v3, [B
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    new-instance v3, Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

'''+s[end:]
# Reflection failures are optional leaves, not fatal to the callback.
s=s.replace('    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V\n\n    .line 160\n    :try_start_2', '    :try_start_2\n    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V\n\n    .line 160')
put(n,s)
for name in ['mods/media/ProfilePicturePreviewHook.smali','mods/media/InstantNativeMenuHook$Bindings.smali']:
 n=pkg+name;s=get(n);assert '"A79"' in s;s=s.replace('"A79"','"A89"');put(n,s)
for n in ['apktool.yml',pkg+'BuildConfig.smali']:
 s=get(n).replace('IG450-dev3','IG450-dev4').replace('versionCode: 70','versionCode: 71').replace('VERSION_CODE:I = 0x46','VERSION_CODE:I = 0x47');put(n,s)
n=pkg+'utils/core/DexKitCache.smali';s=get(n).replace('v070-compat450-dev2','v071-compat450-dev4');put(n,s)
for name,method,entry in [('GhostEphemeralKeepHook','hookVanishLocalDelete','installEphemeralGuard'),('KeepUnsentMessagesHook','hookCurrentThread','installThreadTracker')]:
 import re
 n=pkg+'mods/ghost/'+name+'.smali';s=get(n)
 pattern=r'(\.method private '+method+r'\([^\n]+\n    \.locals \d+\n)'
 insertion='''
    sget-boolean v0, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is450:Z
    if-eqz v0, :legacy_direct_profile
    invoke-static {p2}, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450;->'''+entry+'''(Ljava/lang/ClassLoader;)V
    return-void
    :legacy_direct_profile
'''
 s,count=re.subn(pattern,lambda m:m[1]+insertion,s);assert count==1;put(n,s)
import shutil
for p in Path('regression450/direct450-smali').rglob('*.smali'):
 dst=root/'smali_classes3'/p.relative_to('regression450/direct450-smali');dst.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(p,dst)
print('Applied six regression fixes; candidate dev4 / code71')
