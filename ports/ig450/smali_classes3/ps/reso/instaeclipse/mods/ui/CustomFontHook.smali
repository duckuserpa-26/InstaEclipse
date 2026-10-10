.class public Lps/reso/instaeclipse/mods/ui/CustomFontHook;
.super Ljava/lang/Object;
.source "CustomFontHook.java"


# static fields
.field private static final EMOJI_FILE:Ljava/lang/String; = "ie_custom_emoji.ttf"

.field public static final EMOJI_PICK_REQUEST:I = 0x1f0a

.field private static final FONT_FILE:Ljava/lang/String; = "ie_custom_font.ttf"

.field public static final FONT_PICK_REQUEST:I = 0x1f09

.field private static combo:Landroid/graphics/Typeface;

.field private static comboKey:Ljava/lang/String;

.field private static volatile loadedFrom:Ljava/lang/String;

.field private static final loading:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile userFont:Landroid/graphics/Typeface;


# direct methods
.method static bridge synthetic -$$Nest$sfgetloading()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->loading:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetActiveTypeface()Landroid/graphics/Typeface;
    .locals 1

    invoke-static {}, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->getActiveTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smsaveEmoji(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->saveEmoji(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsaveFont(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->saveFont(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lps/reso/instaeclipse/mods/ui/CustomFontHook$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lps/reso/instaeclipse/mods/ui/CustomFontHook$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->loading:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActiveTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 190
    sget-boolean v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customEmojiEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customEmojiPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customEmojiPath:Ljava/lang/String;

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->getCombo()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    sget-boolean v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customFontEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->getUserFont()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCombo()Landroid/graphics/Typeface;
    .locals 5

    .line 199
    sget-boolean v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customFontEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customFontPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customFontPath:Ljava/lang/String;

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customFontPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->systemFontPath()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customEmojiPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    sget-object v2, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->combo:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    sget-object v2, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->comboKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->combo:Landroid/graphics/Typeface;

    return-object v0

    .line 204
    :cond_1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_2

    .line 206
    invoke-static {}, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->getUserFont()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->combo:Landroid/graphics/Typeface;

    goto :goto_1

    .line 208
    :cond_2
    new-instance v2, Landroid/graphics/fonts/Font$Builder;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    .line 209
    invoke-virtual {v2}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    .line 210
    new-instance v2, Landroid/graphics/fonts/Font$Builder;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customEmojiPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    .line 211
    invoke-virtual {v2}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v2

    .line 212
    new-instance v3, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v3, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    .line 213
    new-instance v3, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v3, v2}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    .line 214
    new-instance v3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v3, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 215
    invoke-virtual {v3, v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->combo:Landroid/graphics/Typeface;

    .line 218
    :goto_1
    sput-object v1, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->comboKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IE|Emoji) combo build failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->getUserFont()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->combo:Landroid/graphics/Typeface;

    .line 223
    :goto_2
    sget-object v0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->combo:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static getUserFont()Landroid/graphics/Typeface;
    .locals 5

    .line 163
    const-string v0, "(IE|Font) load failed: "

    sget-object v1, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customFontPath:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    sget-object v3, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->userFont:Landroid/graphics/Typeface;

    if-eqz v3, :cond_1

    sget-object v3, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->loadedFrom:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->userFont:Landroid/graphics/Typeface;

    return-object v0

    .line 167
    :cond_1
    :try_start_0
    sget-object v3, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->loading:Ljava/lang/ThreadLocal;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 168
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->userFont:Landroid/graphics/Typeface;

    .line 169
    sput-object v1, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->loadedFrom:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 171
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 172
    sput-object v2, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->userFont:Landroid/graphics/Typeface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    sget-object v0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->loading:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 176
    :goto_0
    sget-object v0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->userFont:Landroid/graphics/Typeface;

    return-object v0

    :catchall_1
    move-exception v0

    .line 174
    sget-object v1, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->loading:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 175
    throw v0

    :cond_2
    :goto_1
    return-object v2
.end method

.method private installEmojiHook(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 301
    :try_start_0
    sget-boolean v0, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is450:Z

    if-eqz v0, :cond_0

    .line 302
    const-string v1, "X.00a3"

    goto :goto_0

    :cond_0
    const-string v1, "X.00aC"

    :goto_0
    invoke-static {v1, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 303
    const-string v2, "X.00Zl"

    goto :goto_1

    :cond_1
    const-string v2, "X.00Zv"

    :goto_1
    invoke-static {v2, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 304
    const-string v0, "EeD"

    goto :goto_2

    :cond_2
    const-string v0, "EXz"

    :goto_2
    new-instance v2, Lps/reso/instaeclipse/mods/ui/CustomFontHook$6;

    invoke-direct {v2, p0}, Lps/reso/instaeclipse/mods/ui/CustomFontHook$6;-><init>(Lps/reso/instaeclipse/mods/ui/CustomFontHook;)V

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 314
    sget-boolean p1, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customEmojiEnabled:Z

    if-eqz p1, :cond_3

    const-string p1, "CustomEmoji"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 315
    :cond_3
    const-string p1, "(IE|Emoji) \u2705 hook installed"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|Emoji) \u26a0\ufe0f install: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private installFontHooks(Ljava/lang/ClassLoader;)V
    .locals 6

    .line 49
    const-string p1, "createFromFile"

    const-string v0, "setTypeface"

    new-instance v1, Lps/reso/instaeclipse/mods/ui/CustomFontHook$1;

    invoke-direct {v1, p0}, Lps/reso/instaeclipse/mods/ui/CustomFontHook$1;-><init>(Lps/reso/instaeclipse/mods/ui/CustomFontHook;)V

    .line 68
    :try_start_0
    const-class v2, Landroid/graphics/Typeface;

    const-string v3, "createFromAsset"

    const-class v4, Landroid/content/res/AssetManager;

    const-class v5, Ljava/lang/String;

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :catchall_0
    :try_start_1
    const-class v2, Landroid/graphics/Typeface;

    const-class v3, Ljava/io/File;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :catchall_1
    :try_start_2
    const-class v2, Landroid/graphics/Typeface;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 82
    :catchall_2
    new-instance p1, Lps/reso/instaeclipse/mods/ui/CustomFontHook$2;

    invoke-direct {p1, p0}, Lps/reso/instaeclipse/mods/ui/CustomFontHook$2;-><init>(Lps/reso/instaeclipse/mods/ui/CustomFontHook;)V

    .line 90
    :try_start_3
    const-class v1, Landroid/widget/TextView;

    const-class v2, Landroid/graphics/Typeface;

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 94
    :catchall_3
    new-instance p1, Lps/reso/instaeclipse/mods/ui/CustomFontHook$3;

    invoke-direct {p1, p0}, Lps/reso/instaeclipse/mods/ui/CustomFontHook$3;-><init>(Lps/reso/instaeclipse/mods/ui/CustomFontHook;)V

    .line 102
    :try_start_4
    const-class v1, Landroid/widget/TextView;

    const-class v2, Landroid/graphics/Typeface;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 109
    :catchall_4
    new-instance p1, Lps/reso/instaeclipse/mods/ui/CustomFontHook$4;

    invoke-direct {p1, p0}, Lps/reso/instaeclipse/mods/ui/CustomFontHook$4;-><init>(Lps/reso/instaeclipse/mods/ui/CustomFontHook;)V

    .line 117
    :try_start_5
    const-class v1, Landroid/graphics/Paint;

    const-class v2, Landroid/graphics/Typeface;

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 122
    :catchall_5
    :try_start_6
    const-class p1, Landroid/app/Activity;

    const-string v0, "onActivityResult"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    new-instance v4, Lps/reso/instaeclipse/mods/ui/CustomFontHook$5;

    invoke-direct {v4, p0}, Lps/reso/instaeclipse/mods/ui/CustomFontHook$5;-><init>(Lps/reso/instaeclipse/mods/ui/CustomFontHook;)V

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 158
    :catchall_6
    sget-boolean p1, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customFontEnabled:Z

    if-eqz p1, :cond_0

    const-string p1, "CustomFont"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 159
    :cond_0
    const-string p1, "(IE|Font) \u2705 installed"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$static$0()Ljava/lang/Boolean;
    .locals 1

    .line 41
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static launchEmojiPicker(Landroid/app/Activity;)V
    .locals 2

    const/16 v0, 0x1f0a

    .line 267
    const-string v1, "Pick an EmojiCompat emoji font (.ttf)"

    invoke-static {p0, v0, v1}, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->launchPickerFor(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public static launchPicker(Landroid/app/Activity;)V
    .locals 2

    const/16 v0, 0x1f09

    .line 262
    const-string v1, "Pick a font (.ttf / .otf)"

    invoke-static {p0, v0, v1}, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->launchPickerFor(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method private static launchPickerFor(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2

    .line 272
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    const-string p1, "Can\'t open file picker here"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private static saveEmoji(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    .line 324
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "ie_custom_emoji.ttf"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 326
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-nez p0, :cond_1

    .line 330
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :cond_0
    return v0

    :cond_1
    const/16 v2, 0x2000

    .line 328
    :try_start_3
    new-array v2, v2, [B

    .line 329
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 330
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p0, :cond_3

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 332
    :cond_3
    :try_start_6
    sget-object p0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->loading:Ljava/lang/ThreadLocal;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 333
    :try_start_7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-nez p1, :cond_4

    return v0

    .line 335
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customEmojiPath:Ljava/lang/String;

    const/4 p0, 0x0

    .line 336
    sput-object p0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->combo:Landroid/graphics/Typeface;

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 333
    sget-object p1, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->loading:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_1
    move-exception v1

    .line 325
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    if-eqz p0, :cond_5

    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p0

    :try_start_b
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception p0

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "(IE|Emoji) saveEmoji: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return v0
.end method

.method private static saveFont(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    .line 238
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "ie_custom_font.ttf"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 240
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-nez p0, :cond_1

    .line 244
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :cond_0
    return v0

    :cond_1
    const/16 v2, 0x2000

    .line 242
    :try_start_3
    new-array v2, v2, [B

    .line 243
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 244
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p0, :cond_3

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 247
    :cond_3
    :try_start_6
    sget-object p0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->loading:Ljava/lang/ThreadLocal;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 248
    :try_start_7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-nez p1, :cond_4

    return v0

    .line 250
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customFontPath:Ljava/lang/String;

    .line 251
    sput-object p1, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->userFont:Landroid/graphics/Typeface;

    .line 252
    sget-object p0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->customFontPath:Ljava/lang/String;

    sput-object p0, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->loadedFrom:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 248
    sget-object p1, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->loading:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_1
    move-exception v1

    .line 239
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    if-eqz p0, :cond_5

    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p0

    :try_start_b
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception p0

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "(IE|Font) saveFont: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return v0
.end method

.method private static systemFontPath()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x3

    .line 228
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/fonts/Roboto-Regular.ttf"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "/system/fonts/NotoSans-Regular.ttf"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "/system/fonts/DroidSans.ttf"

    aput-object v5, v1, v4

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, v1, v2

    .line 230
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method public install(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->installFontHooks(Ljava/lang/ClassLoader;)V

    .line 45
    invoke-direct {p0, p1}, Lps/reso/instaeclipse/mods/ui/CustomFontHook;->installEmojiHook(Ljava/lang/ClassLoader;)V

    return-void
.end method
