.class public Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;
.super Ljava/lang/Object;
.source "DisableDoubleTapLikeHook.java"


# static fields
.field private static final HOOK:Lde/robv/android/xposed/XC_MethodHook;

.field private static final REELS_GESTURE_HOOK:Lde/robv/android/xposed/XC_MethodHook;


# instance fields
.field private final hookedMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smblock(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->block(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlooksLikeClipsDoubleTapGesture(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->looksLikeClipsDoubleTapGesture(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$1;

    invoke-direct {v0}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$1;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->HOOK:Lde/robv/android/xposed/XC_MethodHook;

    .line 48
    new-instance v0, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$2;

    invoke-direct {v0}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$2;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->REELS_GESTURE_HOOK:Lde/robv/android/xposed/XC_MethodHook;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookedMethods:Ljava/util/Set;

    return-void
.end method

.method private static block(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 266
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 267
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method private findAndHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;ZZ)V
    .locals 11

    .line 150
    const-string v0, "."

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_2

    .line 151
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v4

    .line 152
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "double_tap_on_liked"

    aput-object v7, v6, v2

    const-string v7, "used_double_tap"

    aput-object v7, v6, v3

    .line 153
    invoke-virtual {v5, v6}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v5

    .line 152
    invoke-virtual {v4, v5}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v4

    .line 151
    invoke-virtual {p1, v4}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v4

    .line 156
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/luckypray/dexkit/result/MethodData;

    .line 158
    :try_start_0
    invoke-virtual {v6, p2}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 159
    const-string v8, "DoubleTapLike"

    invoke-static {v8, v7}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 160
    sget-object v8, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->HOOK:Lde/robv/android/xposed/XC_MethodHook;

    invoke-direct {p0, v7, v8}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookMethod(Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_0

    .line 162
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(InstaEclipse | DoubleTapLike): Feed hooked on "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v6}, Lorg/luckypray/dexkit/result/MethodData;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v6}, Lorg/luckypray/dexkit/result/MethodData;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move p3, v3

    goto :goto_2

    :catch_0
    move-exception p3

    move v6, v3

    goto :goto_1

    :catch_1
    move-exception v6

    move-object v10, v6

    move v6, p3

    move-object p3, v10

    .line 166
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(InstaEclipse | DoubleTapLike): Feed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    move p3, v6

    goto :goto_0

    .line 169
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    const-string v4, "(InstaEclipse | DoubleTapLike): Feed method not found"

    invoke-static {v4}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 174
    :cond_2
    invoke-direct {p0, p1, p2}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->findReelsGestureMethods(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v4

    .line 175
    sget-object v5, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->REELS_GESTURE_HOOK:Lde/robv/android/xposed/XC_MethodHook;

    invoke-direct {p0, v4, v5}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookMethods(Ljava/util/List;Lde/robv/android/xposed/XC_MethodHook;)I

    move-result v5

    if-lez v5, :cond_3

    .line 176
    const-string p4, "DoubleTapLikeReelsGestures"

    invoke-static {p4, v4}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethods(Ljava/lang/String;Ljava/util/List;)V

    .line 178
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v5, "(InstaEclipse | DoubleTapLike): Reels gesture callbacks hooked: "

    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    move p4, v3

    .line 181
    :cond_3
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v4

    .line 182
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/String;

    const-string v6, "clips_doubletap"

    aput-object v6, v1, v2

    const-string v7, "LIKE_FIRED"

    aput-object v7, v1, v3

    .line 183
    invoke-virtual {v5, v1}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    .line 182
    invoke-virtual {v4, v1}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v1

    .line 181
    invoke-virtual {p1, v1}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v1

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/luckypray/dexkit/result/ClassData;

    .line 187
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v5

    .line 188
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v7

    .line 189
    invoke-virtual {v4}, Lorg/luckypray/dexkit/result/ClassData;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->declaredClass(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/String;

    aput-object v6, v8, v2

    .line 190
    invoke-virtual {v7, v8}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v7

    .line 188
    invoke-virtual {v5, v7}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v5

    .line 187
    invoke-virtual {p1, v5}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v5

    .line 193
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/luckypray/dexkit/result/MethodData;

    .line 195
    :try_start_2
    invoke-virtual {v7, p2}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 196
    sget-object v9, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->HOOK:Lde/robv/android/xposed/XC_MethodHook;

    invoke-direct {p0, v8, v9}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookMethod(Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 197
    const-string v9, "DoubleTapLikeReels"

    invoke-static {v9, v8}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 199
    :try_start_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(InstaEclipse | DoubleTapLike): Reels legacy hooked on "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {v4}, Lorg/luckypray/dexkit/result/ClassData;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {v7}, Lorg/luckypray/dexkit/result/MethodData;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move p4, v3

    goto :goto_3

    :catch_2
    move-exception p4

    move v7, v3

    goto :goto_4

    :catch_3
    move-exception v7

    move-object v10, v7

    move v7, p4

    move-object p4, v10

    .line 202
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(InstaEclipse | DoubleTapLike): Reels: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    move p4, v7

    goto :goto_3

    :cond_6
    if-nez p4, :cond_7

    .line 207
    const-string p1, "(InstaEclipse | DoubleTapLike): Reels entry not found"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_7
    if-nez p3, :cond_8

    if-eqz p4, :cond_9

    .line 210
    :cond_8
    const-string p1, "DisableDoubleTapLike"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private findReelsGestureMethods(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/luckypray/dexkit/DexKitBridge;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 218
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    const-string v3, "onDoubleTap"

    .line 219
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->name(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android.view.MotionEvent"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 220
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramTypes([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    const-string v3, "boolean"

    .line 221
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    .line 218
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 217
    invoke-virtual {p1, v1}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p1

    .line 224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    :try_start_1
    invoke-virtual {v1, p2}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->isLikelyClipsGestureClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 231
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(InstaEclipse | DoubleTapLike): Reels gesture candidate skipped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "(InstaEclipse | DoubleTapLike): Reels gesture search failed: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private hookMethod(Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 243
    :cond_0
    :try_start_0
    invoke-static {p1}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->signature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookedMethods:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 245
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 246
    invoke-static {p1, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "(InstaEclipse | DoubleTapLike): Hook failed: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return v0
.end method

.method private hookMethods(Ljava/util/List;Lde/robv/android/xposed/XC_MethodHook;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 255
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 258
    invoke-direct {p0, v1, p2}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookMethod(Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private install449(Ljava/lang/ClassLoader;)Z
    .locals 14

    const/4 v0, 0x0

    .line 88
    :try_start_0
    const-string v1, "X.0Vpi"

    invoke-static {p1, v1}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->profileClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    move v4, v0

    move-object v5, v3

    :goto_0
    const-string v6, "com.instagram.feed.media.Media"

    const/4 v7, 0x3

    if-ge v4, v2, :cond_1

    :try_start_1
    aget-object v8, v1, v4

    .line 91
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 92
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "A01"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_0

    array-length v10, v9

    const/16 v11, 0x11

    if-ne v10, v11, :cond_0

    const/16 v10, 0x9

    aget-object v10, v9, v10

    const-class v11, Ljava/lang/Integer;

    if-ne v10, v11, :cond_0

    const/16 v10, 0x10

    aget-object v10, v9, v10

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_0

    aget-object v7, v9, v7

    .line 94
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v5, v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_5

    .line 97
    new-instance v1, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$3;

    invoke-direct {v1, p0}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$3;-><init>(Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;)V

    invoke-direct {p0, v5, v1}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookMethod(Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)Z

    move-result v1

    .line 106
    const-string v2, "X.0WBB"

    invoke-static {p1, v2}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->profileClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v4, v2

    move v5, v0

    move-object v8, v3

    :goto_1
    const/4 v9, 0x4

    if-ge v5, v4, :cond_3

    aget-object v10, v2, v5

    .line 107
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 108
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "A05"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    array-length v12, v11

    const/16 v13, 0x1e

    if-ne v12, v13, :cond_2

    .line 109
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_2

    const/16 v12, 0x8

    aget-object v12, v11, v12

    const-class v13, Ljava/lang/Integer;

    if-ne v12, v13, :cond_2

    aget-object v9, v11, v9

    .line 110
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v8, v10

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    .line 113
    new-instance v2, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$4;

    invoke-direct {v2, p0}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$4;-><init>(Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;)V

    invoke-direct {p0, v8, v2}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookMethod(Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)Z

    move-result v2

    .line 119
    const-string v4, "X.0C28"

    invoke-static {p1, v4}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->profileClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 120
    const-string v5, "$t"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    const-string v8, "X.04Wh"

    invoke-static {p1, v8}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->profileClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v10, "A00"

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 122
    const-string v8, "invoke"

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    aput-object v10, v9, v0

    const-class v10, Ljava/lang/Object;

    aput-object v10, v9, v6

    const-class v10, Ljava/lang/Object;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const-class v10, Ljava/lang/Object;

    aput-object v10, v9, v7

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v7, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$5;

    invoke-direct {v7, p0, v5, v3}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$5;-><init>(Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v7}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookMethod(Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)Z

    move-result v3

    .line 131
    const-string v4, "X.054k"

    invoke-static {p1, v4}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->profileClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v4, "onDoubleTap"

    new-array v5, v6, [Ljava/lang/Class;

    const-class v7, Landroid/view/MotionEvent;

    aput-object v7, v5, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-instance v4, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$6;

    invoke-direct {v4, p0}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$6;-><init>(Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;)V

    invoke-direct {p0, p1, v4}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookMethod(Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)Z

    move-result p1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    .line 138
    const-string p1, "DisableDoubleTapLike"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 139
    const-string p1, "(IE|DoubleTapLike) IG449/450 feed source + reels callback/gesture installed; runtime validation required"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return v6

    .line 112
    :cond_4
    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string v1, "Pando like source"

    invoke-direct {p1, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_5
    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string v1, "feed like source"

    invoke-direct {p1, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 142
    const-string v1, "(IE|DoubleTapLike) IG449/450 binding failed"

    invoke-static {v1, p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return v0
.end method

.method private static isLikelyClipsGestureClass(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 275
    const-class v1, Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p0, :cond_7

    .line 279
    const-class v2, Ljava/lang/Object;

    if-eq p0, v2, :cond_7

    .line 280
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    .line 281
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 282
    const-string v6, "com.instagram.clips.intf.ClipsViewerConfig"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v1, v1, 0x3

    .line 283
    :cond_1
    const-string v6, "com.instagram.common.session.UserSession"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 284
    :cond_2
    const-string v6, "android.view.GestureDetector"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 285
    :cond_3
    const-string v6, "android.view.ScaleGestureDetector"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 286
    :cond_4
    const-string v6, "ClipsViewer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v1, v1, 0x2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 279
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_7
    const/4 p0, 0x4

    if-lt v1, p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    :goto_2
    return v0
.end method

.method private static looksLikeClipsDoubleTapGesture(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 294
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 295
    invoke-static {v1}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->isLikelyClipsGestureClass(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 296
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_5

    .line 297
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v4, v2

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    .line 299
    :try_start_0
    const-class v7, Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 300
    :cond_2
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 301
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 302
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_3

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->looksLikeClipsView(Landroid/view/View;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    return v3

    :catchall_0
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 296
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_5
    return v0
.end method

.method private static looksLikeClipsView(Landroid/view/View;)Z
    .locals 2

    :goto_0
    if-eqz p0, :cond_3

    .line 314
    invoke-static {p0}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->resourceEntryName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    const-string v1, "clips_video_container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "clips_viewer_video_layout"

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sponsored_clips_showreel_view"

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 320
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 321
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static profileClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    sget-boolean v0, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is450:Z
    if-eqz v0, :load_profile_class

    const-string v0, "X.0Vpi"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :check_pando_class
    const-string p1, "X.0YGg"
    goto :load_profile_class

    :check_pando_class
    const-string v0, "X.0WBB"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :check_reels_class
    const-string p1, "X.0E13"
    goto :load_profile_class

    :check_reels_class
    const-string v0, "X.0C28"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :check_unit_class
    const-string p1, "X.0C0d"
    goto :load_profile_class

    :check_unit_class
    const-string v0, "X.04Wh"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :check_gesture_class
    const-string p1, "X.00DR"
    goto :load_profile_class

    :check_gesture_class
    const-string v0, "X.054k"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :load_profile_class
    const-string p1, "X.08BW"

    :load_profile_class
    .line 347
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static resourceEntryName(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 330
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v2
.end method

.method private static signature(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 5

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x23

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 342
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x29

    .line 344
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public install(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 6

    .line 58
    sget-boolean v0, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is449:Z

    if-nez v0, :install_profile
    sget-boolean v0, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is450:Z
    if-eqz v0, :cond_0
    :install_profile

    .line 59
    invoke-direct {p0, p2}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->install449(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 63
    const-string v0, "DoubleTapLike"

    invoke-static {v0, p2}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 64
    const-string v2, "DoubleTapLikeReels"

    invoke-static {v2, p2}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 65
    const-string v3, "DoubleTapLikeReelsGestures"

    invoke-static {v3, p2}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethods(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v3

    .line 67
    sget-object v4, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->HOOK:Lde/robv/android/xposed/XC_MethodHook;

    invoke-direct {p0, v0, v4}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookMethod(Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)Z

    move-result v0

    .line 68
    invoke-direct {p0, v2, v4}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookMethod(Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)Z

    move-result v2

    .line 69
    sget-object v4, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->REELS_GESTURE_HOOK:Lde/robv/android/xposed/XC_MethodHook;

    invoke-direct {p0, v3, v4}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->hookMethods(Ljava/util/List;Lde/robv/android/xposed/XC_MethodHook;)I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 73
    const-string p1, "(InstaEclipse | DoubleTapLike): Hooked (cached)"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 74
    const-string p1, "DisableDoubleTapLike"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    return-void

    :cond_4
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    :cond_5
    move v0, v1

    .line 79
    :goto_1
    :try_start_0
    invoke-direct {p0, p1, p2, v1, v0}, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->findAndHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "(InstaEclipse | DoubleTapLike): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
