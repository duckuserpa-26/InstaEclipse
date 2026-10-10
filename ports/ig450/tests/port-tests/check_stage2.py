"""Exact APK declarations plus semantic anchors; not Android runtime tests."""
exec(open('port-tests/check_bindings.py').read().split("result={'instagram_version'")[0])
L='Ljava/util/List;'; SET='Ljava/util/Set;'; V='V'; C='LX/0haL;'
def x(n):return 'LX/'+n+';'
def meth(c,n,p,r=V,static=False):method(c,n,p,r,static)
def f(c,n,t):field(c,n,t)
T='com.instagram.api.tigon.TigonServiceLayer'
f(T,'session',x('06c1'));f('X.03qp','A09','Ljava/net/URI;');f('X.07cr','A01','I')
meth(T,'makeTigonCallbacks',[x('03qp'),x('03qw'),'Lcom/facebook/tigon/iface/TigonRequest;',x('03rs'),'Lcom/instagram/service/tigon/IGTigonService;','Lcom/instagram/api/tigon/IGTigonQuickPerformanceLogger;','I'],x('03xc'))
meth(T,'startRequest',[x('03qp'),x('03qw'),x('03rs')],x('03B7'))
for n,p in [('A00',[x('07cr'),x('03qp')]),('A09',[x('03qp'),'Ljava/nio/ByteBuffer;']),('A03',[x('03qp')]),('A08',[x('03qp'),'Ljava/io/IOException;'])]:meth('X.03rs',n,p)
f('X.02Kj','A01',x('08ta'));f('X.08ta','A0B',U);meth('X.02Kj','onRealtimeEventPayload',[S]*3)
f('com.instagram.mainactivity.InstagramMainActivity','A05',U)
field('X.07rR','A01',x('07rS'),True);field('X.054K','A00',x('054K'),True)
meth('X.022R','A0K',[x('07rS'),x('03QT'),U],x('07rV'),True)
f('X.02Za','A0H',S);meth('X.02Za','A0G',[S,S]);meth('X.02Za','A0D',[S,'I'])
meth('X.0GuQ','A0L',[],x('07rX'));meth('X.02qr','A03',[x('0ALb')],static=True);meth('X.07rX','cancel',[])
api='com.instagram.quicksnap.data.api.QuickSnapApi'
meth(api,'A0A',[L,C],O)
api_seen=re.search(r'^\.method [^\n]* A0A\([^\n]+\n.*?^\.end method',text(api),re.M|re.S)[0]
check('Replay suppresses seen-state mutation', '"xdt_mark_quick_snap_seen"' in api_seen)
repo='com.instagram.quicksnap.data.repository.QuickSnapRepository'
con=repo+'$quickSnapConsumptionFlow$1'
meth(con,'invoke',[O]*5,O);meth(con,'invokeSuspend',[O],O);f(con,'A01',O)
f('X.00dN','A09',L);f('X.07nI','A03',x('0NhB'));f('X.07nI','A02',SET)
meth('X.07nI','<init>',[U]);meth('X.07nI','A01',[x('07nI')],static=True)
meth('X.0NhB','getValue',[],O);meth('X.0NhB','HQR',[O])
meth('X.07r9','<init>',[x('0B7F'),U,'L'+repo.replace('.','/')+';',x('07nI'),x('07q4'),S,S])
meth('X.07r9','A14',[]);meth('X.07r9','A06',[x('07r9'),L],x('01wM'),True)
f('X.07r9','A0R',x('07nI'));f('X.07r9','A0b',x('0NhB'))
meth('X.0aOa','A00',[x('0aOa')],x('07r9'),True)
meth('X.0aOa','onCreateView',['Landroid/view/LayoutInflater;','Landroid/view/ViewGroup;','Landroid/os/Bundle;'],'Landroid/view/View;')
F0='Lkotlin/jvm/functions/Function0;';F1='Lkotlin/jvm/functions/Function1;';F3='Lkotlin/jvm/functions/Function3;'
COMP=x('0aWn');MOD=x('06D1');IMM=x('01wI')
meth('X.0ThJ','A01',[COMP,MOD,x('08CG')]+[F0]*8+[F1]*3+[IMM]+['I']*4+['Z']*8,static=True)
meth('X.0mxV','invoke',[O],O);f('X.0mxV','$t','I');f('X.0mxV','A00',O)
f('X.0ODL','A00','I');f('X.0NTX','A01','I')
meth('X.0M5p','<init>',[x('0Ddu')]*2+[x('05DE')]*2+[S]*3+['I']+['Z']*5)
check('Menu REPORT enum exists','"REPORT"' in text('X.0NTX'))
meth('X.01wH','A00',['Ljava/lang/Iterable;'],IMM,True)
for n,t in [('A02','Lcom/instagram/feed/media/Media;'),('A06','Lcom/instagram/user/model/User;'),('A0B',S),('A0E','Z')]:f('X.08CG',n,t)
meth('com.instagram.user.model.User','A89',[],S)
media='com.instagram.feed.media.Media'
for name,ret,anchor in [('A3G','Lcom/instagram/model/mediasize/ImageInfo;','image_versions2'),('A3s','Ljava/lang/Boolean;','has_audio'),('A8S',S,'video_dash_manifest'),('AAk',L,'video_versions')]:
    meth(media,name,[],ret)
    body=re.search(r'^\.method [^\n]* '+name+r'\([^\n]+\n.*?^\.end method',text(media),re.M|re.S)[0]
    check('Media.'+name+' reads '+anchor,'"'+anchor+'"' in body)
meth('com.instagram.model.mediasize.ImageInfo','Be2',[],L)
for n in ['Dxb','CLN']:meth('com.instagram.api.schemas.ImmutablePandoVideoVersion',n,[],'Ljava/lang/Integer;')
meth('X.0RcC','A01',[COMP,MOD,x('0RlM'),x('07s9'),x('0ncT')]+[F0]*20+[F1]*12+[x('0rAS')]*2+[F3]+['I']*7+['Z']*7,static=True)
meth('X.0Tin','A03',[COMP,MOD,x('0WsB'),x('07s9')]+[F0]*3+[F1]*2+[x('0rAS'),F3,IMM]+['I']*3+['Z']*4,static=True)
meth('X.0Tin','A01',[COMP,'I','Z'],'I',True)
meth('X.0YaR','invoke',[O,O],O);meth('X.0BVa','A04',[COMP,O,'I'],x('0BVa'),True)
meth('X.0CxF','A00',[COMP,O,O,O,'I'],x('0CxF'),True)
meth('X.0CxF','<init>',['I',O,O,O]);meth('X.0CxF','invoke',[x('0aa6'),C],O)
pt='com.instagram.quicksnap.viewer.compose.PointerTouchKt$handleTapAndLongPressWithRelease$2$1$1$1'
meth(pt,'<init>',[C,F0,F1,F1,'F','J']);meth(pt,'create',[O,C],C);meth(pt,'invokeSuspend',[O],O)
for n,t in [('A06',O),('A03','J'),('A09',F0),('A01','I')]:f(pt,n,t)
f('X.05YI','A05',L);f('androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine','A04',x('06Bn'))
f('X.06Bn','A00','J');f('X.00P8','receiver',O);f('X.0337','$t','I')
f('X.07s9','A07',L);f('X.07s9','A0C',IMM);meth('X.07s9','A04',[],x('08CG'));meth('X.07s9','A05',[],'Z')
meth('X.000H','A0x',[O,'J'],'Z',True);meth('X.02qP','A0D',[U],'Z',True)
meth('X.0RWf','A00',[COMP],x('0RJc'),True);f('X.0RJc','A03','Landroidx/compose/runtime/MutableState;')
meth('androidx.compose.runtime.MutableState','HQR',[O]);meth('X.0RbX','A00',['Lcom/instagram/feed/media/Media;'],x('04bU'),True)
meth('X.05dk','A02',[L],'Lcom/instagram/model/mediasize/VideoUrlImpl;',True);f('com.instagram/model/mediasize/VideoUrlImpl'.replace('/','.'),'A06',S)
meth('X.09Zz','A0V',[x('09MA'),x('04bU'),S,'I']);meth('X.09Zz','A0M',['F'])
field('com.instagram.common.session.UserSession','isLoggedOut','Z')
meth('com.instagram.common.session.UserSession','getUserId',[],S)
meth('kotlin.jvm.functions.Function0','invoke',[],O)
meth('X.00a3','EeD',[x('00Zl')]);meth('X.00Zl','A01',['Ljava/lang/Throwable;'])
meth('X.06Oo','unsafeParseFromJson',[x('0Ggy')],O);f('X.04h5','A0A',S);f('X.04h5','A00','I')
meth('com.instagram.api.schemas.VideoVersionIntf','getUrl',[],S)
meth('X.0D7t','A08',[U,'Lcom/instagram/feed/media/Media;'],'Z')
meth(media,'A87',[],S)
vm='com.instagram.quicksnap.camera.domain.QuickSnapCameraViewModel';VM='L'+vm.replace('.','/')+';'
CTX='Landroid/content/Context;';BMP='Landroid/graphics/Bitmap;'
meth(vm,'A01',[CTX,BMP,x('0K70'),VM,x('0TeE'),'Ljava/lang/Long;',S,S,C,x('02ik'),x('04G3'),'J','Z'],O,True)
meth(vm,'A02',[CTX,BMP,x('0TGO'),VM,'Ljava/io/File;','Ljava/lang/Float;',S,C,'I','I','J'],O,True)
meth(vm,'A05',[CTX,BMP,VM],static=True)
Path('port-tests/api-contracts.json').write_text(json.dumps(api_contracts))
result={'scope':'APK declarations/semantic anchors, no Android execution','checks':checks,'android_runtime_tests':0,'release_allowed':False}
Path('port-tests/stage2-contracts.json').write_text(json.dumps(result,indent=2))
fails=[c for c in checks if not c['passed']]
print(json.dumps({'total':len(checks),'passed':len(checks)-len(fails),'failures':fails},indent=2))
sys.exit(bool(fails))
