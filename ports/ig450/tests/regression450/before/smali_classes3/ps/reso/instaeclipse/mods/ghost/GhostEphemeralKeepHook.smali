.class public Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook;
.super Ljava/lang/Object;
.source "GhostEphemeralKeepHook.java"


# direct methods
.method static bridge synthetic -$$Nest$smclearExpiryTimestamp(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook;->clearExpiryTimestamp(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearExpiryTimestamp(Ljava/lang/Object;)V
    .locals 10

    if-nez p0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 179
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 181
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-lez v8, :cond_2

    const-wide v8, 0x3bb2cc3d800L

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    const-wide/16 v6, 0x0

    .line 183
    invoke-virtual {v5, p0, v6, v7}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    :cond_3
    return-void
.end method

.method private hookExpiryParser(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 7

    .line 130
    new-instance v0, Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook$3;

    invoke-direct {v0, p0}, Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook$3;-><init>(Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook;)V

    .line 140
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v1

    const-string v2, "Ephemeral_expiry"

    if-eqz v1, :cond_1

    .line 141
    invoke-static {v2, p2}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethods(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 142
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-static {p2, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_0

    :cond_0
    return-void

    .line 149
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 150
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "message_expiration_timestamp_ms"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 151
    invoke-virtual {v3, v4}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    .line 150
    invoke-virtual {v1, v3}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 149
    invoke-virtual {p1, v1}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p1

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    invoke-virtual {v3, p2}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 157
    invoke-static {v4, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 158
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(IE|Ephemeral) \u2705 expiry-parser hook \u2192 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 160
    invoke-virtual {v3}, Lorg/luckypray/dexkit/result/MethodData;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/luckypray/dexkit/result/MethodData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v3}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 163
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 164
    const-string p1, "(IE|Ephemeral) \u274c no expiry-parser methods hooked"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    goto :goto_2

    .line 166
    :cond_3
    invoke-static {v2, v1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethods(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "(IE|Ephemeral) \u274c hookExpiryParser: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private hookServerPing(Lorg/luckypray/dexkit/DexKitBridge;)V
    .locals 7

    .line 87
    new-instance v0, Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook$2;

    invoke-direct {v0, p0}, Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook$2;-><init>(Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook;)V

    .line 94
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v1

    const-string v2, "Ephemeral_ping"

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Lps/reso/instaeclipse/Xposed/Module;->hostClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void

    .line 100
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 101
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "mark_ephemeral_item_ranges_viewed"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 102
    invoke-virtual {v3, v4}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    .line 101
    invoke-virtual {v1, v3}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    sget-object v3, Lps/reso/instaeclipse/Xposed/Module;->hostClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v2, v3}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 114
    invoke-static {v3, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(IE|Ephemeral) \u2705 server-ping hook \u2192 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 116
    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_2
    const-string p1, "(IE|Ephemeral) \u274c server-ping method not found"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|Ephemeral) \u274c hookServerPing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private hookVanishLocalDelete(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 9

    .line 45
    new-instance v0, Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook$1;

    invoke-direct {v0, p0}, Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook$1;-><init>(Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook;)V

    .line 52
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v1

    const-string v2, "KeepEphemeralMessages"

    const-string v3, "Ephemeral_vanish"

    if-eqz v1, :cond_0

    .line 53
    invoke-static {v3, p2}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 56
    invoke-static {v2}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 63
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "igThreadIgid"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 64
    invoke-virtual {v4, v6}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "com.instagram.model.direct.DirectThreadKey"

    aput-object v7, v6, v8

    const-string v7, "boolean"

    aput-object v7, v6, v5

    .line 65
    invoke-virtual {v4, v6}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramTypes([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    const-string v5, "void"

    .line 66
    invoke-virtual {v4, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    .line 63
    invoke-virtual {v1, v4}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    invoke-virtual {v1, p2}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 71
    invoke-static {v3, v4}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 72
    invoke-static {v4, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(IE|Ephemeral) \u2705 vanish-local-delete hook \u2192 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 74
    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 75
    invoke-static {v2}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 79
    :cond_1
    :try_start_2
    const-string p1, "(IE|Ephemeral) \u274c vanish-local-delete method not found"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "(IE|Ephemeral) \u274c hookVanishLocalDelete: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public install(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook;->hookVanishLocalDelete(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 36
    invoke-direct {p0, p1}, Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook;->hookServerPing(Lorg/luckypray/dexkit/DexKitBridge;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lps/reso/instaeclipse/mods/ghost/GhostEphemeralKeepHook;->hookExpiryParser(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    return-void
.end method
