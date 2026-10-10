"""Reproducible IG450 port from checkpoint1. Never a runtime certification."""
from pathlib import Path
import re,json
ROOT=Path('candidate/InstaEclipse-0.7.0-relations.2-IG449-source/apktool-source/smali_classes3/ps/reso/instaeclipse')
BACK=Path('port-tests/stage2-before')
changes=[]
def edit(rel, pairs, transform=None):
    p=ROOT/rel; b=BACK/rel
    b.parent.mkdir(parents=True,exist_ok=True)
    if not b.exists(): b.write_text(p.read_text())
    s=b.read_text()
    for a,z in pairs.items():
        assert a in s,(rel,a)
        s=s.replace(a,z)
    if transform:s=transform(s)
    p.write_text(s); changes.append(rel)

# These feature profiles now explicitly target 450, without setting is449.
edit('mods/relations/RelationCollector.smali',{
 '->is449:Z':'->is450:Z','X.03n5':'X.06c1','X.04fo':'X.03qp',
 'X.04gc':'X.03qw','X.04ku':'X.03rs','X.03bx':'X.07cr','X.04se':'X.03xc',
 'X.03OJ':'X.02Kj','X.07jw':'X.08ta','X.0Ffm':'X.03B7',
 'X.08oM':'X.09uv','X.08tC':'X.09rw','X.08yI':'X.03At','X.09Zz':'X.0EbR',
 'X.06Ky':'X.00v8','X.07Yi':'X.00u8','X.07Zf':'X.07ZR','X.06DC':'X.06ZI',
 'X.06Eo':'X.03rs','X.08hV':'X.02Kj',
 '"FMX"':'"FQI"','"Fie"':'"Fml"','"Fxu"':'"G29"','"G9J"':'"GDi"',
 'profile=449':'profile=450','installed build=68':'installed build=69',
},lambda s:s.replace('    if-eqz v11, :cond_5\n\n    :cond_4',
 '''    if-nez v11, :cond_4
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    move-result-object v11
    const-string v12, "A00"
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v11
    if-eqz v11, :cond_5

    :cond_4'''))
edit('mods/relations/RelationNativeRequests.smali',{
 'X.07fP':'X.07rS','X.0AKY':'X.054K','X.07fO':'X.07rR','X.03dN':'X.02Za',
 'X.07fT':'X.07rV','X.00cD':'X.07rX','X.0PiP':'X.0ALb','X.0224':'X.022R',
 'X.0onk':'X.03QT','X.098i':'X.0GuQ','X.02rk':'X.02qr',
 '"A0L"':'"__factory__"','"A0K"':'"A0L"','"__factory__"':'"A0K"',
 '"A0F"':'"A0G"','"A0C"':'"A0D"',
})
def replay(s):
    old='    move-object/from16 v14, v19\n\n    :goto_a'
    assert old in s
    return s.replace(old,'''    move-object/from16 v14, v19
    if-eqz v3, :goto_a
    const-string v14, "A09"

    :goto_a''')
edit('mods/media/InstantReplayCore$Bindings.smali',{
 '0x1c1':'0x1c2','449.0.0.52.84-385511888':'450.0.0.50.77-385611438',
 'X.0FwO':'X.0haL','X.06zG':'X.07nI','X.04ZY':'X.07r9','X.0qlG':'X.0NhB',
 'X.08hH':'X.00dN','X.0490':'X.0B7F','X.04ZN':'X.07q4','"A18"':'"A14"',
 'X.04ah':'X.01wM','X.0bqi':'X.0aOa','"HL2"':'"HQR"',
},replay)
def menu(s):
    s=s.replace('    move v9, v8\n\n    goto :goto_4','    const/16 v9, 0x2a\n\n    goto :goto_4',1)
    start=s.index('    .line 155\n'); end=s.index('    :cond_26\n',start)
    # 450 adds two nullable typography objects before the three strings.
    block=['    const/16 v5, 0xd','    new-array v5, v5, [Ljava/lang/Class;']
    for idx in range(13):
        if idx<2: op='    move-object v14, v9'
        elif idx<4: op='    const-string v14, "X.05DE"\n    invoke-virtual {v1, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;\n    move-result-object v14'
        elif idx<7: op='    const-class v14, Ljava/lang/String;'
        elif idx==7: op='    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;'
        else: op='    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;'
        block += [op,f'    const/16 v15, {hex(idx)}','    aput-object v14, v5, v15']
    s=s[:start]+'\n\n'.join(block)+'\n    goto :goto_11\n\n'+s[end:]
    start=s.index('    iget-object v1, v0,',s.index('.method newItem('));end=s.index('    :cond_0\n',start)
    block=['    iget-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->item:Ljava/lang/reflect/Constructor;',
      '    const/16 v2, 0xd','    new-array v2, v2, [Ljava/lang/Object;',
      '    const/4 v4, 0x4','    move-object/from16 v5, p1','    aput-object v5, v2, v4',
      '    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;',
      '    move-result-object v5','    const/4 v4, 0x7','    aput-object v5, v2, v4',
      '    const/16 v4, 0x8','    aput-object v3, v2, v4']
    for idx in range(9,13):block += [f'    const/16 v4, {hex(idx)}','    aput-object v14, v2, v4']
    block+=['    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;','    move-result-object v1','    return-object v1']
    return s[:start]+'\n\n'.join(block)+'\n\n'+s[end:]
edit('mods/media/InstantNativeMenuHook$Bindings.smali',{
 '0x1c1':'0x1c2','449.0.0.52.84-385511888':'450.0.0.50.77-385611438',
 'X.05BH':'X.08CG','X.04aW':'X.01wI','X.0Htr':'X.0aWn','X.0Hm4':'X.06D1',
 'X.0eAP':'X.0ThJ','X.0pkS':'X.0mxV','X.0WLo':'X.0ODL','X.0C5B':'X.0Ddu',
 'X.0UME':'X.0M5p','X.04aR':'X.01wH','X.0VUa':'X.0NTX','"A7A"':'"A79"','X.04Wh':'X.00DR',
},menu)
def quality(s):
    # Keep the old reader for its original profile; add a dedicated 450 reader.
    m=re.search(r'^\.method static read449\([^\n]+\n.*?^\.end method',s,re.M|re.S)[0]
    q=m.replace('read449','read450')
    for a,b in {'"A3F"':'"A3G"','"Bd1"':'"Be2"','"AAh"':'"AAk"','"DvO"':'"Dxb"','"CK7"':'"CLN"','"A8P"':'"A8S"','-449':'-450'}.items():q=q.replace(a,b)
    return s+'\n\n'+q+'\n'
edit('mods/media/InstantMediaQuality.smali',{'"A3r"':'"A3s"'},quality)
def quality_dispatch(s):
    # Existing profile 449 branch retained; the new 450 branch is selected first.
    pos=s.index('    const/16 v2, 0x1c1')
    prefix='''    const/16 v2, 0x1c2
    if-ne v0, v2, :quality_legacy
    invoke-static/range {p1 .. p2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->read450(Ljava/lang/Object;Z)Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;
    move-result-object v0
    goto :goto_0
    :quality_legacy
'''
    # Inspect register/branch names before applying this transform.
    return s[:pos]+prefix+s[pos:]
edit('mods/media/InstantMediaMenuHook.smali',{'0x1c1':'0x1c2','->read449(':'->read450('})
def edge(s):
    s=s.replace('    aput-object v5, v11, v15\n\n    const/16 v5, 0xb',
        '    const-string v5, "kotlin.jvm.functions.Function3"\n    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;\n    move-result-object v5\n    aput-object v5, v11, v15\n\n    const/16 v5, 0xb',1)
    old='    invoke-static {v11, v8, v13, v7}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod'
    s=s.replace(old,'    const-string v8, "A04"\n'+old,1)
    s=s.replace('    iput-object v6, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->tapFactory:Ljava/lang/reflect/Method;',
      '    iput-object v6, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->tapFactory:Ljava/lang/reflect/Method;\n    const-string v8, "A00"',1)
    old='    invoke-static {v6, v15, v9, v5}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod'
    assert old in s
    s=s.replace(old,'    const-string v15, "A04"\n'+old,1)
    start=s.index('    .line 259\n');end=s.index('    .line 260\n',start)
    b=s[start:end].replace('    const/4 v11, 0x1\n\n    new-array','    const/4 v11, 0x3\n\n    new-array',1)
    b=b.replace('    invoke-static {v6, v14, v7, v13}',
      '    const/4 v11, 0x1\n    aput-object v7, v13, v11\n    const/4 v11, 0x2\n    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;\n    aput-object v10, v13, v11\n\n    invoke-static {v6, v14, v7, v13}',1)
    return s[:start]+b+s[end:]
edit('mods/media/InstantEdgeNavigationHook$Bindings.smali',{
 '->is449:Z':'->is450:Z','X.1Glm':'X.0rAS','X.04ZY':'X.07r9','X.0pfV':'X.0337',
 'X.04Zt':'X.07s9','X.05BH':'X.08CG','X.0Htr':'X.0aWn','X.0qlG':'X.0NhB',
 'X.04aW':'X.01wI','X.0Hm4':'X.06D1','X.0bTl':'X.0RlM','X.0ppg':'X.0ncT',
 'X.0aoK':'X.0RcC','X.0ikb':'X.0WsB','X.0dtN':'X.0Tin','X.0mfs':'X.0YaR',
 'X.0E9F':'X.0BVa','X.0D4D':'X.0CxF','X.0ocm':'X.0aa6','X.0FwO':'X.0haL',
 'X.02q5':'X.05YI','X.03Cx':'X.06Bn','X.04Ze':'X.00P8','X.06zG':'X.07nI',
 'const-string v4, "A08"':'const-string v4, "A07"',
 'const-string v4, "A0D"':'const-string v4, "A0C"',
 'const-string v10, "A04"':'const-string v10, "A05"','"HL2"':'"HQR"','X.04Wh':'X.00DR',
},edge)
edit('mods/media/InstantEdgeNavigationHook$1.smali',{'const/16 v2, 0x8':'const/16 v2, 0x9'})
edit('mods/media/InstantEdgeNavigationHook$6.smali',{'0x14a':'0x11a'})
edit('mods/media/InstantEdgeNavigationHook.smali',{'449.0.0.52.84':'450.0.0.50.77'})
def audio(s):
    # Scope the shared rendition selector at the native QuickSnap-only builder.
    old='    const-string v6, "invoke"\n\n    const-class v7, Ljava/lang/Object;'
    assert old in s
    return s.replace(old,'''    const-string v6, "A00"
    const-string v7, "com.instagram.feed.media.Media"
    invoke-static {v7, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    move-result-object v7''',1)
edit('mods/media/InstantAudioHook.smali',{
 '->is449:Z':'->is450:Z','0x810cde003147ccL':'0x810cd1003147c7L','"A1A"':'"A0x"',
 'X.01pQ':'X.02qP','X.0Ye9':'X.0RWf','X.0Tj0':'X.0RJc','"HL2"':'"HQR"',
 'X.0kyn':'X.0RbX','X.07pY':'X.05dk','X.00Z1':'X.09Zz','"A0U"':'"A0V"',
 'X.01Na':'X.09MA','X.04pE':'X.04bU',
},audio)
edit('mods/media/InstantAudioHook$3.smali',{'"A02"':'"A03"'})
edit('mods/media/InstantAudioHook$6.smali',{'"A0L"':'"A0M"'})
edit('mods/ui/CustomFontHook.smali',{'->is449:Z':'->is450:Z','X.00Zs':'X.00a3','X.00Zb':'X.00Zl','"EbH"':'"EeD"'})
edit('mods/ghost/GhostStorySeenHook.smali',{'->is449:Z':'->is450:Z','X.00CT':'X.00hM','IG449':'IG450','Incomplete 449':'Incomplete 450'})
edit('mods/ghost/GhostPermanentViewHook.smali',{'->is449:Z':'->is450:Z','X.04Yr':'X.06Oo','X.03Yf':'X.0Ggy','X.02Zs':'X.04h5','IG449':'IG450'})
edit('mods/media/FeedVideoDownloadHook.smali',{'->is449:Z':'->is450:Z'})
edit('mods/media/StoryDownloadHook.smali',{'->is449:Z':'->is450:Z'})
edit('mods/media/PostDownloadContextMenuHook.smali',{'->is449:Z':'->is450:Z','"A84"':'"A87"'})
edit('mods/media/ReelDownloadHook.smali',{'->is449:Z':'->is450:Z','X.0Aq7':'X.0D7t','"A1A"':'"A0x"','IG449':'IG450'})
edit('mods/media/ReelDownloadHook$5.smali',{'0x81034200060c62L':'0x81033f00060c60L'})
def upload(s):
    for name in ['arm','failureToast','onConsumed','peekFresh','takeFresh']:
        s=re.sub(r'(?m)^\.method private static (declared-synchronized )?'+name+r'\(',lambda m:m[0].replace('private ','',1),s)
    marker='.method private hookSwap(Ljava/lang/ClassLoader;)V\n    .locals 17\n'
    assert marker in s
    return s.replace(marker,marker+'''
    sget-boolean v0, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is450:Z
    if-eqz v0, :legacy_upload
    invoke-static/range {p1 .. p1}, Lps/reso/instaeclipse/mods/media/InstantUpload450;->install(Ljava/lang/ClassLoader;)V
    return-void
    :legacy_upload
''',1)
edit('mods/media/InstantUploadHook.smali',{},upload)
Path('port-tests/stage2-changed.json').write_text(json.dumps(changes,indent=2))
print('Applied',len(changes),'feature files')
