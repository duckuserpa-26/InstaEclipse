.class public Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook;
.super Ljava/lang/Object;
.source "GhostStorySeenHook.java"


# static fields
.field private static final CACHE_KEY:Ljava/lang/String; = "GhostStorySeen_v2"

.field private static final CACHE_KEY_LEGACY:Ljava/lang/String; = "GhostStorySeen_legacy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hookStoreSendersScopedTo(Ljava/lang/Class;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 166
    new-instance v0, Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook$2;

    invoke-direct {v0, p0, p1}, Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook$2;-><init>(Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook;Ljava/lang/Class;)V

    .line 180
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eqz v1, :cond_6

    const-class v5, Ljava/lang/Object;

    if-eq v1, v5, :cond_6

    .line 182
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    move v8, v7

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v9, v5, v7

    .line 183
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v10, v11, :cond_0

    goto :goto_4

    .line 184
    :cond_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 185
    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    aget-object v11, v10, v2

    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_1

    aget-object v11, v10, v4

    const-class v12, Ljava/lang/Object;

    if-ne v11, v12, :cond_1

    move v11, v4

    goto :goto_2

    :cond_1
    move v11, v2

    .line 186
    :goto_2
    array-length v12, v10

    if-ne v12, v4, :cond_2

    const-class v12, Ljava/util/Map;

    aget-object v10, v10, v2

    invoke-virtual {v12, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v4

    goto :goto_3

    :cond_2
    move v10, v2

    :goto_3
    if-nez v11, :cond_3

    if-nez v10, :cond_3

    goto :goto_4

    .line 188
    :cond_3
    :try_start_0
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {v9, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    move v8, v4

    goto :goto_4

    :catchall_0
    move-exception v9

    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "(InstaEclipse | StoryBlock): \u26a0\ufe0f insert hook failed: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_5

    goto :goto_5

    .line 180
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 196
    :cond_6
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v1, p1

    move v5, v2

    :goto_6
    if-ge v5, v1, :cond_b

    aget-object v6, p1, v5

    .line 197
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_7

    goto :goto_7

    .line 198
    :cond_7
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 199
    array-length v8, v7

    if-eq v8, v4, :cond_8

    goto :goto_7

    .line 200
    :cond_8
    aget-object v7, v7, v2

    .line 201
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_a

    const-class v8, Ljava/lang/String;

    if-eq v7, v8, :cond_a

    const-class v8, Ljava/util/Map;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_a

    const-class v8, Ljava/util/Collection;

    .line 202
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_7

    .line 203
    :cond_9
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {v6, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catchall_1
    move-exception v6

    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(InstaEclipse | StoryBlock): \u26a0\ufe0f immediate-sender hook failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_a
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    return v3
.end method

.method private static legacyHook()Lde/robv/android/xposed/XC_MethodHook;
    .locals 1

    .line 149
    new-instance v0, Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook$1;

    invoke-direct {v0}, Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook$1;-><init>()V

    return-object v0
.end method

.method private tryLegacyBlock(Lorg/luckypray/dexkit/DexKitBridge;)Z
    .locals 6

    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 127
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "media/seen/"

    aput-object v5, v4, v0

    invoke-virtual {v2, v4}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 126
    invoke-virtual {p1, v1}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p1

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    :try_start_1
    sget-object v2, Lps/reso/instaeclipse/Xposed/Module;->hostClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    .line 133
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 134
    const-string p1, "GhostStorySeen_legacy"

    invoke-static {p1, v2}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 135
    invoke-static {}, Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook;->legacyHook()Lde/robv/android/xposed/XC_MethodHook;

    move-result-object p1

    invoke-static {v2, p1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(InstaEclipse | StoryBlock): \u2705 Hooked (legacy): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 137
    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 138
    const-string p1, "GhostStories"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v3

    :catchall_1
    move-exception p1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(InstaEclipse | StoryBlock): \u26a0\ufe0f legacy path error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private tryModernBatchBlock(Lorg/luckypray/dexkit/DexKitBridge;)Z
    .locals 7

    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 87
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "media/seen/"

    aput-object v5, v4, v0

    invoke-virtual {v2, v4}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p1

    .line 88
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 92
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/luckypray/dexkit/result/MethodData;

    .line 93
    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->getParamTypes()Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/luckypray/dexkit/result/ClassDataList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    const-string v4, "void"

    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->getReturnType()Lorg/luckypray/dexkit/result/ClassData;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    return v0

    .line 100
    :cond_3
    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->getCallers()Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/luckypray/dexkit/result/MethodDataList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/luckypray/dexkit/result/MethodData;

    .line 103
    invoke-virtual {v5}, Lorg/luckypray/dexkit/result/MethodData;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 104
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v2, v5

    :cond_5
    if-nez v2, :cond_6

    return v0

    .line 108
    :cond_6
    sget-object v4, Lps/reso/instaeclipse/Xposed/Module;->hostClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v0, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 109
    invoke-direct {p0, v4}, Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook;->hookStoreSendersScopedTo(Ljava/lang/Class;)I

    move-result v4

    if-nez v4, :cond_7

    return v0

    .line 112
    :cond_7
    const-string v5, "GhostStorySeen_v2"

    invoke-static {v5, v2}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(InstaEclipse | StoryBlock): \u2705 Hooked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sender(s) on store "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (item builder: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 114
    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 115
    const-string p1, "GhostStories"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p1

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(InstaEclipse | StoryBlock): \u26a0\ufe0f modern path error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public handleStorySeenBlock(Lorg/luckypray/dexkit/DexKitBridge;)V
    .locals 6

    const-string v0, "(IE|StoryBlock) verified IG449 pending/immediate hooks="

    const-string v1, "(InstaEclipse | StoryBlock): \u2705 Hooked (cached) "

    .line 43
    sget-boolean v2, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is449:Z

    const/4 v3, 0x0

    const-string v4, "GhostStories"

    if-eqz v2, :cond_1

    .line 45
    :try_start_0
    const-string v2, "X.00CT"

    sget-object v5, Lps/reso/instaeclipse/Xposed/Module;->hostClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 46
    invoke-direct {p0, v2}, Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook;->hookStoreSendersScopedTo(Ljava/lang/Class;)I

    move-result v2

    const/4 v5, 0x3

    if-lt v2, v5, :cond_0

    .line 48
    invoke-static {v4}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Incomplete 449 story-seen gate"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 51
    const-string v2, "(IE|StoryBlock) IG449 profile failed"

    invoke-static {v2, v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :cond_1
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    const-string v0, "GhostStorySeen_v2"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    :try_start_1
    sget-object v2, Lps/reso/instaeclipse/Xposed/Module;->hostClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 59
    invoke-direct {p0, v2}, Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook;->hookStoreSendersScopedTo(Ljava/lang/Class;)I

    move-result v2

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sender(s) on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 61
    invoke-static {v4}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(InstaEclipse | StoryBlock): \u26a0\ufe0f Cached modern resolve failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 67
    :cond_2
    const-string v0, "GhostStorySeen_legacy"

    sget-object v1, Lps/reso/instaeclipse/Xposed/Module;->hostClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 69
    invoke-static {}, Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook;->legacyHook()Lde/robv/android/xposed/XC_MethodHook;

    move-result-object p1

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "(InstaEclipse | StoryBlock): \u2705 Hooked (cached legacy): "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 72
    invoke-static {v4}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_3
    invoke-direct {p0, p1}, Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook;->tryModernBatchBlock(Lorg/luckypray/dexkit/DexKitBridge;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 79
    :cond_4
    invoke-direct {p0, p1}, Lps/reso/instaeclipse/mods/ghost/GhostStorySeenHook;->tryLegacyBlock(Lorg/luckypray/dexkit/DexKitBridge;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 80
    :cond_5
    const-string p1, "(InstaEclipse | StoryBlock): \u274c Story-seen sender not resolved on any path"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void
.end method
