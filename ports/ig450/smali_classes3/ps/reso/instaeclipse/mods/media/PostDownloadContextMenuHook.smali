.class public Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;
.super Ljava/lang/Object;
.source "PostDownloadContextMenuHook.java"


# static fields
.field private static addButtonMethod:Ljava/lang/reflect/Method; = null

.field private static copyLinkOptionValue:Ljava/lang/Object; = null

.field private static downloadOptionValue:Ljava/lang/Object; = null

.field private static enumNormalValue:Ljava/lang/Object; = null

.field private static idxEnum:I = 0x0

.field private static idxList:I = 0x4

.field private static idxOption:I = 0x1

.field private static idxSelf:I = 0x2

.field private static idxText:I = 0x3

.field private static mediaOptionEnumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static menuCreatorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final processedCreators:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAddingDownload:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetcopyLinkOptionValue()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->copyLinkOptionValue:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetdownloadOptionValue()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->downloadOptionValue:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetidxOption()I
    .locals 1

    sget v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxOption:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetidxSelf()I
    .locals 1

    sget v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxSelf:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetprocessedCreators()Ljava/util/Set;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->processedCreators:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsAddingDownload()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->sAddingDownload:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sminjectRow(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->injectRow(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonOptionClicked(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->onOptionClicked(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$$ExternalSyntheticLambda2;-><init>()V

    .line 76
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->sAddingDownload:Ljava/lang/ThreadLocal;

    .line 78
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->processedCreators:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findCarouselIndex(Ljava/lang/Object;I)I
    .locals 10

    const/4 v0, -0x1

    if-eqz p0, :cond_7

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    goto :goto_3

    .line 594
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move v3, v0

    :goto_0
    if-eqz v2, :cond_6

    const-class v4, Ljava/lang/Object;

    if-eq v2, v4, :cond_6

    .line 596
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 597
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v8, v9, :cond_1

    goto :goto_2

    .line 598
    :cond_1
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 600
    :try_start_0
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v7, :cond_4

    if-lt v7, p1, :cond_2

    goto :goto_2

    :cond_2
    if-ltz v3, :cond_3

    if-eq v3, v7, :cond_3

    return v0

    :cond_3
    move v3, v7

    :catchall_0
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 595
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_6
    return v3

    :cond_7
    :goto_3
    return v0
.end method

.method private static findContext(Ljava/lang/Object;)Landroid/content/Context;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 614
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 615
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_4

    .line 616
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 617
    const-class v6, Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    .line 618
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 620
    :try_start_0
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 621
    instance-of v6, v5, Landroid/content/Context;

    if-eqz v6, :cond_2

    check-cast v5, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :catchall_0
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 624
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static findCreatorClassAndAddButtonMethod(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 125
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v2

    const-string v3, "action"

    const-string v4, "normal"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "values"

    const-string v9, "PostDownload_addButtonIdx"

    const-string v10, "PostDownload_addButton"

    const/4 v11, 0x0

    const-string v12, ","

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_7

    .line 126
    invoke-static {v10, v1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 128
    sput-object v2, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->addButtonMethod:Ljava/lang/reflect/Method;

    .line 129
    invoke-virtual {v2, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 130
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->menuCreatorClass:Ljava/lang/Class;

    .line 131
    invoke-static {v9}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 134
    array-length v1, v0

    const/4 v9, 0x5

    if-ne v1, v9, :cond_0

    .line 136
    :try_start_0
    aget-object v1, v0, v14

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxEnum:I

    .line 137
    aget-object v1, v0, v13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxOption:I

    .line 138
    aget-object v1, v0, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxSelf:I

    .line 139
    aget-object v1, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxText:I

    .line 140
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxList:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    :cond_0
    sget v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxEnum:I

    if-ltz v0, :cond_6

    .line 147
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    sget v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxEnum:I

    aget-object v0, v0, v1

    .line 148
    new-array v1, v14, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v11, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 150
    array-length v1, v0

    move v2, v14

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v5, v0, v2

    if-nez v11, :cond_1

    move-object v11, v5

    .line 152
    :cond_1
    sget-object v6, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    sput-object v5, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_3
    sget-object v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;

    if-nez v1, :cond_5

    .line 156
    array-length v1, v0

    :goto_1
    if-ge v14, v1, :cond_5

    aget-object v2, v0, v14

    .line 157
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sput-object v2, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 158
    :cond_5
    :goto_2
    sget-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;

    if-nez v0, :cond_6

    sput-object v11, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_6
    return-void

    .line 166
    :cond_7
    :try_start_2
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v2

    .line 167
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v15

    new-array v6, v13, [Ljava/lang/String;

    const-string v16, "MediaOptionsOverflowMenuCreator"

    aput-object v16, v6, v14

    .line 168
    invoke-virtual {v15, v6}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v6

    .line 167
    invoke-virtual {v2, v6}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v2

    .line 170
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 171
    const-string v0, "(IE|Post) \u274c MediaOptionsOverflowMenuCreator class not found"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 175
    :cond_8
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/luckypray/dexkit/result/ClassData;

    invoke-virtual {v2}, Lorg/luckypray/dexkit/result/ClassData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->menuCreatorClass:Ljava/lang/Class;

    .line 178
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v6

    .line 179
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v15

    .line 180
    invoke-virtual {v15, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->declaredClass(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v15

    const-string v7, "void"

    .line 181
    invoke-virtual {v15, v7}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v7

    .line 179
    invoke-virtual {v6, v7}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v6

    .line 178
    invoke-virtual {v0, v6}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 185
    :try_start_3
    invoke-virtual {v6, v1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 186
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_3

    .line 188
    :cond_9
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 189
    array-length v15, v7

    if-ge v15, v5, :cond_a

    goto :goto_3

    :cond_a
    const/4 v15, -0x1

    move v5, v14

    move/from16 v17, v15

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    .line 192
    :goto_4
    array-length v11, v7

    if-ge v5, v11, :cond_10

    .line 193
    sget-object v11, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->mediaOptionEnumClass:Ljava/lang/Class;

    if-eqz v11, :cond_b

    aget-object v14, v7, v5

    if-ne v14, v11, :cond_b

    move v15, v5

    goto :goto_5

    .line 195
    :cond_b
    const-class v11, Ljava/util/ArrayList;

    aget-object v14, v7, v5

    invoke-virtual {v11, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_c

    move/from16 v17, v5

    goto :goto_5

    .line 197
    :cond_c
    aget-object v11, v7, v5

    sget-object v14, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->menuCreatorClass:Ljava/lang/Class;

    if-ne v11, v14, :cond_d

    move/from16 v19, v5

    goto :goto_5

    .line 199
    :cond_d
    const-class v14, Ljava/lang/CharSequence;

    invoke-virtual {v14, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_e

    move/from16 v20, v5

    goto :goto_5

    .line 201
    :cond_e
    aget-object v11, v7, v5

    invoke-virtual {v11}, Ljava/lang/Class;->isEnum()Z

    move-result v11

    if-eqz v11, :cond_f

    if-gez v18, :cond_f

    if-gez v15, :cond_f

    move/from16 v18, v5

    :cond_f
    :goto_5
    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x0

    goto :goto_4

    :cond_10
    if-ltz v15, :cond_15

    if-gez v17, :cond_11

    goto :goto_9

    .line 208
    :cond_11
    sput-object v6, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->addButtonMethod:Ljava/lang/reflect/Method;

    .line 209
    invoke-virtual {v6, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    if-ltz v18, :cond_12

    goto :goto_6

    :cond_12
    const/16 v18, 0x0

    .line 210
    :goto_6
    sput v18, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxEnum:I

    .line 211
    sput v15, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxOption:I

    if-ltz v19, :cond_13

    goto :goto_7

    :cond_13
    const/16 v19, 0x2

    .line 212
    :goto_7
    sput v19, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxSelf:I

    if-ltz v20, :cond_14

    goto :goto_8

    :cond_14
    const/16 v20, 0x3

    .line 213
    :goto_8
    sput v20, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxText:I

    .line 214
    sput v17, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxList:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_a

    :catchall_1
    :cond_15
    :goto_9
    const/4 v5, 0x4

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto/16 :goto_3

    .line 219
    :cond_16
    :goto_a
    :try_start_4
    sget-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->addButtonMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_17

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(IE|Post) \u274c addButtonMethod not found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 223
    :cond_17
    invoke-static {v10, v0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxEnum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxOption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxSelf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxText:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxList:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->addButtonMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    sget v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxEnum:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    .line 229
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 231
    array-length v2, v0

    move-object v11, v5

    move v5, v1

    :goto_b
    if-ge v5, v2, :cond_1a

    aget-object v6, v0, v5

    if-nez v11, :cond_18

    move-object v11, v6

    .line 233
    :cond_18
    sget-object v7, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;

    if-nez v7, :cond_19

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 234
    sput-object v6, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 237
    :cond_1a
    sget-object v2, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;

    if-nez v2, :cond_1c

    .line 238
    array-length v2, v0

    move v14, v1

    :goto_c
    if-ge v14, v2, :cond_1c

    aget-object v1, v0, v14

    .line 239
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sput-object v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;

    goto :goto_d

    :cond_1b
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 242
    :cond_1c
    :goto_d
    sget-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;

    if-nez v0, :cond_1d

    sput-object v11, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IE|Post) \u274c findCreatorClassAndAddButtonMethod: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_1d
    :goto_e
    return-void
.end method

.method private static findMedia(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 670
    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->findMediaDepth(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static findMediaDepth(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    goto/16 :goto_3

    .line 675
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 676
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    if-ge p1, v1, :cond_2

    .line 679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 681
    const-class v6, Ljava/lang/Object;

    if-eq v2, v6, :cond_8

    .line 682
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_7

    aget-object v9, v6, v8

    .line 683
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    .line 684
    :cond_3
    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 686
    :try_start_0
    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    goto :goto_2

    .line 688
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 689
    const-string v11, "com.instagram.feed.media.Media"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    return-object v9

    :cond_5
    if-eqz v1, :cond_6

    .line 690
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 691
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 694
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_a

    .line 698
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    .line 699
    invoke-static {v1, v2}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->findMediaDepth(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    return-object v1

    :cond_a
    :goto_3
    return-object v0
.end method

.method private static findMediaViaMenuCreator(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 639
    sget-object v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->menuCreatorClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 642
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 644
    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_4

    .line 645
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 646
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->menuCreatorClass:Ljava/lang/Class;

    if-eq v8, v9, :cond_1

    goto :goto_2

    .line 647
    :cond_1
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 648
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 651
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v7, v0

    :goto_3
    if-nez v7, :cond_5

    return-object v0

    .line 655
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_8

    .line 656
    const-class v1, Ljava/lang/Object;

    if-eq p0, v1, :cond_8

    .line 657
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v4, v1

    move v5, v2

    :goto_5
    if-ge v5, v4, :cond_7

    aget-object v6, v1, v5

    .line 658
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.instagram.feed.media.Media"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 659
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 660
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 663
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    :cond_8
    :goto_6
    return-object v0
.end method

.method private static injectRow(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/Object;I)V
    .locals 5

    const-string v0, "(IE|Post) \u274c addButton invoke failed: "

    .line 304
    sget-object v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->addButtonMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    .line 305
    iget-object p0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 316
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 305
    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    sget p0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxEnum:I

    sget-object v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;

    aput-object v1, v2, p0

    .line 307
    sget p0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxOption:I

    aput-object p1, v2, p0

    .line 308
    sget p0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->idxText:I

    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p0

    .line 310
    sget-object p0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->sAddingDownload:Ljava/lang/ThreadLocal;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 312
    :try_start_0
    sget-object p1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->addButtonMethod:Ljava/lang/reflect/Method;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 314
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 316
    sget-object p0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->sAddingDownload:Ljava/lang/ThreadLocal;

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    sget-object p1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->sAddingDownload:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 317
    throw p0
.end method

.method private static installAddButtonHook()V
    .locals 2

    .line 252
    sget-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->addButtonMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    sget-object v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->enumNormalValue:Ljava/lang/Object;

    if-eqz v1, :cond_3

    sget-object v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->downloadOptionValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    sget-object v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->copyLinkOptionValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$1;

    invoke-direct {v1}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$1;-><init>()V

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 297
    sget-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->downloadOptionValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-string v0, "PostDownload"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 298
    :cond_1
    sget-object v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->copyLinkOptionValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v0, "CopyMediaLink"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 299
    :cond_2
    const-string v0, "(IE|Post) \u2705 Post menu inject hook installed"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 254
    :cond_3
    :goto_0
    const-string v0, "(IE|Post) \u274c Cannot install addButton hook \u2014 prerequisites missing"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void
.end method

.method private static installAllowlistPatchHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 11

    const-string v0, "(IE|Post) \u2705 Allowlist patch hooked: "

    const-string v1, "L"

    .line 409
    new-instance v2, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$3;

    invoke-direct {v2}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$3;-><init>()V

    .line 432
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v3

    const-string v4, "PostDownload_allowlist"

    if-eqz v3, :cond_0

    .line 433
    invoke-static {v4, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 435
    invoke-static {v3, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void

    .line 441
    :cond_0
    :try_start_0
    const-string v3, "com.instagram.feed.media.mediaoption.MediaOption$Option"

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "->"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v5

    .line 446
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "boolean"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 447
    invoke-virtual {v6, v8}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramTypes([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v6

    const-string v8, "java.util.List"

    .line 448
    invoke-virtual {v6, v8}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "REPORT:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 449
    invoke-virtual {v6, v8}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->addUsingField(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "HIDE_OPTIONS:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 450
    invoke-virtual {v6, v8}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->addUsingField(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "GEN_AI_INFO:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-virtual {v6, v1}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->addUsingField(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    .line 446
    invoke-virtual {v5, v1}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 445
    invoke-virtual {p0, v1}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p0

    .line 453
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    const-string p0, "(IE|Post) \u26a0\ufe0f Allowlist method not found (menu may not be filtered on this build)"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 458
    :cond_1
    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/luckypray/dexkit/result/MethodData;

    invoke-virtual {p0, p1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 459
    invoke-virtual {p0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 460
    invoke-static {p0, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 461
    invoke-static {v4, p0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 462
    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|Post) \u274c installAllowlistPatchHook: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static installClickHandlerHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 8

    .line 326
    new-instance v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$2;

    invoke-direct {v0}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$2;-><init>()V

    .line 337
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v1

    const-string v2, "PostDownload_click_v2"

    if-eqz v1, :cond_1

    .line 338
    invoke-static {v2, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethods(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 339
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_0

    :cond_0
    return-void

    .line 346
    :cond_1
    :try_start_0
    const-string v1, "com.instagram.feed.media.mediaoption.MediaOption$Option"

    .line 348
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v3

    .line 349
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    const-string v5, "void"

    .line 350
    invoke-virtual {v4, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 351
    invoke-virtual {v4, v6}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramTypes([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    .line 349
    invoke-virtual {v3, v1}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 348
    invoke-virtual {p0, v1}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p0

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 358
    :try_start_1
    invoke-virtual {v3, p1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 359
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 360
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 373
    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    .line 375
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 376
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_4

    .line 378
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 379
    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 380
    invoke-static {v3, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 381
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 383
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(IE|Post) \u274c Failed to hook click candidate: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    goto :goto_2

    .line 387
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 388
    const-string p0, "(IE|Post) \u274c No click handler methods could be hooked"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    goto :goto_3

    .line 390
    :cond_6
    invoke-static {v2, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethods(Ljava/lang/String;Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 394
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|Post) \u274c installClickHandlerHook: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method static synthetic lambda$installClickHandlerHook$1(Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 373
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$0()Ljava/lang/Boolean;
    .locals 1

    .line 76
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic lambda$triggerCopyLink$3(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 582
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->showCopyLinkSheet(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$triggerDownload$2(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 565
    invoke-static {p0, p1, p2, p3, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->showPostDownloadDialog(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static loadMediaOptionEnum(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 95
    :try_start_0
    const-string v0, "com.instagram.feed.media.mediaoption.MediaOption$Option"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->mediaOptionEnumClass:Ljava/lang/Class;

    .line 97
    const-string v0, "values"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 98
    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    sget-object v4, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->downloadOptionValue:Ljava/lang/Object;

    if-nez v4, :cond_0

    const-string v4, "DOWNLOAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    sput-object v2, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->downloadOptionValue:Ljava/lang/Object;

    goto :goto_1

    .line 102
    :cond_0
    sget-object v4, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->copyLinkOptionValue:Ljava/lang/Object;

    if-nez v4, :cond_1

    const-string v4, "COPY_LINK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    sput-object v2, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->copyLinkOptionValue:Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_2
    sget-object p0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->downloadOptionValue:Ljava/lang/Object;

    if-nez p0, :cond_3

    .line 107
    const-string p0, "(IE|Post) \u274c DOWNLOAD enum value not found"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 108
    :cond_3
    sget-object p0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->copyLinkOptionValue:Ljava/lang/Object;

    if-nez p0, :cond_4

    .line 109
    const-string p0, "(IE|Post) \u274c COPY_LINK enum value not found"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|Post) \u274c loadMediaOptionEnum: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static onOptionClicked(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 10

    .line 474
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->sAddingDownload:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    if-eqz v5, :cond_1

    .line 479
    sget-object v6, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->mediaOptionEnumClass:Ljava/lang/Class;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v4

    .line 483
    :goto_1
    const-string v0, "COPY_LINK"

    const-string v1, "DOWNLOAD"

    if-nez v5, :cond_5

    .line 484
    :try_start_1
    iget-object v3, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v6, v3

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_5

    aget-object v8, v3, v7

    if-eqz v8, :cond_4

    .line 485
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 486
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move-object v5, v8

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v5, :cond_6

    return-void

    .line 493
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_8

    sget-boolean v1, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->enablePostDownload:Z

    if-nez v1, :cond_7

    sget-boolean v1, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->enableReelDownload:Z

    if-eqz v1, :cond_8

    :cond_7
    move v1, v5

    goto :goto_4

    :cond_8
    move v1, v2

    .line 496
    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->copyMediaLink:Z

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move v5, v2

    :goto_5
    if-nez v1, :cond_a

    if-nez v5, :cond_a

    return-void

    .line 499
    :cond_a
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 501
    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->findContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_b

    .line 503
    const-string p0, "(IE|Post) \u274c Context not found in click handler"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 507
    :cond_b
    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->findMediaViaMenuCreator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_c

    .line 508
    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->findMedia(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_c
    if-nez v6, :cond_d

    .line 510
    const-string p0, "(IE|Post) \u274c Media not found in click handler"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 511
    sget p0, Lps/reso/instaeclipse/R$string;->ig_toast_no_media_for_post:I

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_d
    if-eqz v1, :cond_f

    .line 515
    sget-boolean v1, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->enablePostDownload:Z

    if-nez v1, :cond_f

    .line 517
    sget-boolean v1, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is450:Z

    if-nez v1, :cond_e

    return-void

    .line 518
    :cond_e
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v7, "A87"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 519
    const-string v2, "clips"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 521
    :cond_f
    invoke-virtual {p0, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    if-eqz v5, :cond_10

    .line 522
    invoke-static {v3, v6, v0}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->triggerCopyLink(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 523
    :cond_10
    invoke-static {v3, v6, v0}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->triggerDownload(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|Post) \u274c onOptionClicked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method private static triggerCopyLink(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 575
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->extractAllUrlsFromMedia(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 576
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    sget-object p2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 577
    :cond_1
    :goto_0
    sget p1, Lps/reso/instaeclipse/R$string;->ig_copy_link_none:I

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static triggerDownload(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 532
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->extractUsernameFromMediaObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 533
    const-string v0, "post"

    :cond_0
    move-object v4, v0

    .line 535
    const-string v0, "0"

    .line 537
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 538
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    move-object v0, v1

    :catchall_0
    :cond_1
    move-object v5, v0

    .line 541
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->extractAllUrlsFromMedia(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 550
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 551
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->findCarouselIndexFromView(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    if-ltz p1, :cond_3

    goto :goto_1

    .line 553
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->findCarouselIndex(Ljava/lang/Object;I)I

    move-result v0

    :goto_1
    if-ltz p1, :cond_4

    move v6, p1

    goto :goto_2

    :cond_4
    move v6, v0

    .line 556
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_5

    .line 557
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "(IE|Post|Carousel) urls="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " viewIndex="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " fieldIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " selected="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 564
    :cond_5
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$$ExternalSyntheticLambda3;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public install(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 84
    invoke-static {p2}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->loadMediaOptionEnum(Ljava/lang/ClassLoader;)V

    .line 85
    invoke-static {p1, p2}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->findCreatorClassAndAddButtonMethod(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 86
    invoke-static {}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->installAddButtonHook()V

    .line 87
    invoke-static {p1, p2}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->installClickHandlerHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 88
    invoke-static {p1, p2}, Lps/reso/instaeclipse/mods/media/PostDownloadContextMenuHook;->installAllowlistPatchHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    return-void
.end method
