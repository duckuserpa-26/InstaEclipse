.class public final Lps/reso/instaeclipse/mods/media/InstantAudioHook;
.super Ljava/lang/Object;
.source "InstantAudioHook.java"


# static fields
.field private static final INITIALIZED:Ljava/lang/String; = "ie_quicksnap_audio_initialized"

.field private static final PLAYER_BUILD_DEPTH:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUICKSNAP_AUDIO_BUTTON_GATE:J = 0x810cf8003947e6L

.field private static final QUICKSNAP_SCOPE:Ljava/lang/String; = "ie_quicksnap_player_scope"

.field private static installed:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetPLAYER_BUILD_DEPTH()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantAudioHook;->PLAYER_BUILD_DEPTH:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smisMuxedProgressive(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantAudioHook;->isMuxedProgressive(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantAudioHook$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lps/reso/instaeclipse/mods/media/InstantAudioHook$$ExternalSyntheticLambda0;-><init>()V

    .line 19
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantAudioHook;->PLAYER_BUILD_DEPTH:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized install(Ljava/lang/ClassLoader;)V
    .locals 12

    const-class v0, Lps/reso/instaeclipse/mods/media/InstantAudioHook;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-boolean v1, Lps/reso/instaeclipse/mods/media/InstantAudioHook;->installed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 27
    :cond_0
    :try_start_1
    sget-boolean v1, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is449:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v1, :cond_1

    const-wide v2, 0x810cde003147ccL

    goto :goto_0

    :cond_1
    const-wide v2, 0x810cf8003947e6L

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 33
    :try_start_2
    const-string v6, "X.000H"

    if-eqz v1, :cond_2

    const-string v7, "A1A"

    goto :goto_1

    :cond_2
    const-string v7, "A1E"

    :goto_1
    const-class v8, Ljava/lang/Object;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v10, Lps/reso/instaeclipse/mods/media/InstantAudioHook$1;

    invoke-direct {v10, v2, v3}, Lps/reso/instaeclipse/mods/media/InstantAudioHook$1;-><init>(J)V

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, p0, v7, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v5

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 43
    :try_start_3
    const-string v3, "(IE|InstantAudio31) speaker-button gate hook failed"

    invoke-static {v3, v2}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move v2, v4

    .line 49
    :goto_2
    :try_start_4
    const-string v3, "com.instagram.common.session.UserSession"

    invoke-static {v3, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v1, :cond_3

    .line 51
    const-string v6, "X.01pQ"

    goto :goto_3

    :cond_3
    const-string v6, "X.01nG"

    :goto_3
    if-eqz v1, :cond_4

    const-string v7, "A0D"

    goto :goto_4

    :cond_4
    const-string v7, "A0B"

    :goto_4
    new-instance v8, Lps/reso/instaeclipse/mods/media/InstantAudioHook$2;

    invoke-direct {v8}, Lps/reso/instaeclipse/mods/media/InstantAudioHook$2;-><init>()V

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, p0, v7, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_1
    move-exception v3

    .line 59
    :try_start_5
    const-string v6, "(IE|InstantAudio31) QuickSnap include_music hook failed"

    invoke-static {v6, v3}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :goto_5
    if-eqz v1, :cond_5

    .line 66
    :try_start_6
    const-string v3, "X.0Ye9"

    goto :goto_6

    :cond_5
    const-string v3, "X.0VFk"

    :goto_6
    invoke-static {v3, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v1, :cond_6

    .line 67
    const-string v6, "X.0Tj0"

    goto :goto_7

    :cond_6
    const-string v6, "X.0UNj"

    :goto_7
    invoke-static {v6, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 68
    const-string v7, "androidx.compose.runtime.MutableState"

    invoke-static {v7, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v1, :cond_7

    .line 70
    const-string v8, "HL2"

    goto :goto_8

    :cond_7
    const-string v8, "HHm"

    :goto_8
    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 72
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v8, v3

    move v9, v4

    :goto_9
    if-ge v9, v8, :cond_9

    aget-object v10, v3, v9

    .line 73
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 74
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    if-ne v11, v6, :cond_8

    .line 75
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v11

    if-ne v11, v5, :cond_8

    goto :goto_a

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_a

    .line 81
    new-instance v3, Lps/reso/instaeclipse/mods/media/InstantAudioHook$3;

    invoke-direct {v3, v7}, Lps/reso/instaeclipse/mods/media/InstantAudioHook$3;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v10, v3}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 80
    :cond_a
    new-instance v3, Ljava/lang/NoSuchMethodException;

    const-string v6, "rememberQuickSnapVideoPlayerState"

    invoke-direct {v3, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v3

    .line 98
    :try_start_7
    const-string v6, "(IE|InstantAudio31) initial-volume hook failed"

    invoke-static {v6, v3}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :goto_b
    if-eqz v1, :cond_b

    .line 105
    :try_start_8
    const-string v3, "X.0kyn"

    goto :goto_c

    :cond_b
    const-string v3, "X.0gfk"

    :goto_c
    const-string v6, "invoke"

    const-class v7, Ljava/lang/Object;

    new-instance v8, Lps/reso/instaeclipse/mods/media/InstantAudioHook$4;

    invoke-direct {v8, v1}, Lps/reso/instaeclipse/mods/media/InstantAudioHook$4;-><init>(Z)V

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, p0, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catchall_3
    move-exception v3

    .line 124
    :try_start_9
    const-string v6, "(IE|InstantAudio31) QuickSnap player scope hook failed"

    invoke-static {v6, v3}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :goto_d
    if-eqz v1, :cond_c

    .line 132
    :try_start_a
    const-string v3, "X.07pY"

    goto :goto_e

    :cond_c
    const-string v3, "X.05eC"

    :goto_e
    const-string v6, "A02"

    const-class v7, Ljava/util/List;

    new-instance v8, Lps/reso/instaeclipse/mods/media/InstantAudioHook$5;

    invoke-direct {v8}, Lps/reso/instaeclipse/mods/media/InstantAudioHook$5;-><init>()V

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, p0, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :catchall_4
    move-exception v3

    .line 153
    :try_start_b
    const-string v6, "(IE|InstantAudio31) muxed rendition selector hook failed"

    invoke-static {v6, v3}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :goto_f
    if-eqz v1, :cond_d

    .line 160
    :try_start_c
    const-string v3, "X.01Na"

    goto :goto_10

    :cond_d
    const-string v3, "X.01c5"

    :goto_10
    invoke-static {v3, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v1, :cond_e

    .line 161
    const-string v6, "X.04pE"

    goto :goto_11

    :cond_e
    const-string v6, "X.05eB"

    :goto_11
    invoke-static {v6, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v1, :cond_f

    .line 162
    const-string v7, "X.00Z1"

    goto :goto_12

    :cond_f
    const-string v7, "X.01f0"

    :goto_12
    if-eqz v1, :cond_10

    const-string v8, "A0U"

    goto :goto_13

    :cond_10
    const-string v8, "A0V"

    :goto_13
    const-class v9, Ljava/lang/String;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v11, Lps/reso/instaeclipse/mods/media/InstantAudioHook$6;

    invoke-direct {v11, v1}, Lps/reso/instaeclipse/mods/media/InstantAudioHook$6;-><init>(Z)V

    filled-new-array {v3, v6, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, p0, v8, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :catchall_5
    move-exception p0

    .line 177
    :try_start_d
    const-string v1, "(IE|InstantAudio31) HeroPlayer volume hook failed"

    invoke-static {v1, p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    if-lez v2, :cond_11

    move v4, v5

    .line 180
    :cond_11
    sput-boolean v4, Lps/reso/instaeclipse/mods/media/InstantAudioHook;->installed:Z

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(IE|InstantAudio31) build=63 installed hooks="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " default=audible native-button=enabled include_music=forced muxed=m86"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 183
    monitor-exit v0

    return-void

    :catchall_6
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw p0
.end method

.method private static isMuxedProgressive(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 187
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 188
    const-string v1, "/m86/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "%2fm86%2f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic lambda$static$0()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
