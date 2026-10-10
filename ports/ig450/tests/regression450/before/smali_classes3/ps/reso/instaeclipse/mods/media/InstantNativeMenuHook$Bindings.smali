.class final Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;
.super Ljava/lang/Object;
.source "InstantNativeMenuHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bindings"
.end annotation


# instance fields
.field final attribution:Ljava/lang/reflect/Method;

.field final click:Ljava/lang/reflect/Method;

.field final clickDiscriminator:I

.field final clickKind:Ljava/lang/reflect/Field;

.field final dismiss:Ljava/lang/reflect/Field;

.field final immutableList:Ljava/lang/reflect/Method;

.field final invoke0:Ljava/lang/reflect/Method;

.field final item:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final itemId:Ljava/lang/reflect/Field;

.field final media:Ljava/lang/reflect/Field;

.field final mediaId:Ljava/lang/reflect/Field;

.field final profile:Ljava/lang/String;

.field final reportId:I

.field final unit:Ljava/lang/Object;

.field final user:Ljava/lang/reflect/Field;

.field final usernameGetter:Ljava/lang/reflect/Method;

.field final version:I

.field final video:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>(Ljava/lang/ClassLoader;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v2, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->version:I

    const/16 v3, 0x1c2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const/16 v6, 0x1c0

    if-ne v2, v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    const/16 v7, 0x1bf

    if-ne v2, v7, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_2
    if-eqz v3, :cond_3

    .line 128
    const-string v7, "450.0.0.50.77-385611438"

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    const-string v7, "448.0.0.52.84-385412078"

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 129
    const-string v7, "447.0.0.55.81-385311927"

    goto :goto_3

    :cond_5
    const-string v7, "446-installed"

    :goto_3
    iput-object v7, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->profile:Ljava/lang/String;

    const/16 v7, 0xf

    const/16 v8, 0xe

    if-eqz v3, :cond_6

    const/16 v9, 0x2a

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_7

    const/16 v9, 0x1e

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_8

    const/16 v9, 0x10

    goto :goto_4

    :cond_8
    move v9, v7

    .line 130
    :goto_4
    iput v9, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->clickDiscriminator:I

    .line 131
    const-string v9, "kotlin.jvm.functions.Function0"

    invoke-virtual {v1, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 132
    const-string v10, "kotlin.jvm.functions.Function1"

    invoke-virtual {v1, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    if-eqz v3, :cond_9

    .line 133
    const-string v11, "X.08CG"

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_a

    const-string v11, "X.06e3"

    goto :goto_5

    :cond_a
    if-eqz v2, :cond_b

    const-string v11, "X.7NY"

    goto :goto_5

    :cond_b
    const-string v11, "X.06Bq"

    :goto_5
    invoke-virtual {v1, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    if-eqz v3, :cond_c

    .line 134
    const-string v12, "X.01wI"

    goto :goto_6

    :cond_c
    if-eqz v6, :cond_d

    const-string v12, "X.02bC"

    goto :goto_6

    :cond_d
    if-eqz v2, :cond_e

    const-string v12, "X.0gR"

    goto :goto_6

    :cond_e
    const-string v12, "X.01cD"

    :goto_6
    invoke-virtual {v1, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    if-eqz v3, :cond_f

    const/16 v13, 0x1b

    goto :goto_7

    :cond_f
    const/16 v13, 0x1a

    .line 135
    :goto_7
    new-array v14, v13, [Ljava/lang/Class;

    if-eqz v3, :cond_10

    .line 136
    const-string v15, "X.0aWn"

    goto :goto_8

    :cond_10
    if-eqz v6, :cond_11

    const-string v15, "X.0nlt"

    goto :goto_8

    :cond_11
    if-eqz v2, :cond_12

    const-string v15, "X.iAM"

    goto :goto_8

    :cond_12
    const-string v15, "X.0kaF"

    :goto_8
    invoke-virtual {v1, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v14, v5

    if-eqz v3, :cond_13

    .line 137
    const-string v15, "X.06D1"

    goto :goto_9

    :cond_13
    if-eqz v6, :cond_14

    const-string v15, "X.03eC"

    goto :goto_9

    :cond_14
    if-eqz v2, :cond_15

    const-string v15, "X.3Yb"

    goto :goto_9

    :cond_15
    const-string v15, "X.03m1"

    :goto_9
    invoke-virtual {v1, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v14, v4

    const/4 v15, 0x2

    aput-object v11, v14, v15

    const/4 v15, 0x3

    const/16 v5, 0xb

    .line 138
    invoke-static {v14, v15, v5, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-static {v14, v5, v8, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    aput-object v12, v14, v8

    .line 139
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v10, 0x13

    invoke-static {v14, v7, v10, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v10, v13, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-eqz v3, :cond_16

    .line 140
    const-string v7, "X.0ThJ"

    goto :goto_a

    :cond_16
    if-eqz v6, :cond_17

    const-string v7, "X.0eBi"

    goto :goto_a

    :cond_17
    if-eqz v2, :cond_18

    const-string v7, "X.Wry"

    goto :goto_a

    :cond_18
    const-string v7, "X.0XfP"

    :goto_a
    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "A01"

    const-string v10, "A00"

    if-eqz v3, :cond_19

    move-object v13, v8

    goto :goto_b

    :cond_19
    move-object v13, v10

    :goto_b
    sget-object v15, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v13, v15, v14}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->attribution:Ljava/lang/reflect/Method;

    .line 141
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_42

    if-eqz v3, :cond_1a

    .line 142
    const-string v7, "X.0mxV"

    goto :goto_c

    :cond_1a
    if-eqz v6, :cond_1b

    const-string v7, "X.0F6R"

    goto :goto_c

    :cond_1b
    if-eqz v2, :cond_1c

    const-string v7, "X.kbc"

    goto :goto_c

    :cond_1c
    const-string v7, "X.0lze"

    :goto_c
    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 143
    const-class v13, Ljava/lang/Object;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v15, Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const-string v15, "invoke"

    invoke-static {v7, v15, v13, v14}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    iput-object v13, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->click:Ljava/lang/reflect/Method;

    .line 144
    const-string v13, "$t"

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v13, v14}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v13

    iput-object v13, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->clickKind:Ljava/lang/reflect/Field;

    .line 145
    const-class v13, Ljava/lang/Object;

    invoke-static {v7, v10, v13}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->dismiss:Ljava/lang/reflect/Field;

    .line 146
    const-class v7, Ljava/lang/Object;

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Class;

    invoke-static {v9, v15, v7, v14}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->invoke0:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1d

    .line 147
    const-string v7, "X.0ODL"

    goto :goto_d

    :cond_1d
    if-eqz v6, :cond_1e

    const-string v7, "X.0WMr"

    goto :goto_d

    :cond_1e
    if-eqz v2, :cond_1f

    const-string v7, "X.RLn"

    goto :goto_d

    :cond_1f
    const-string v7, "X.0Uht"

    :goto_d
    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 148
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v10, v9}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v9

    iput-object v9, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->itemId:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_20

    .line 149
    const-string v9, "X.0Ddu"

    goto :goto_e

    :cond_20
    if-eqz v6, :cond_21

    const-string v9, "X.0AN3"

    goto :goto_e

    :cond_21
    if-eqz v2, :cond_22

    const-string v9, "X.Ahr"

    goto :goto_e

    :cond_22
    const-string v9, "X.0Dbz"

    :goto_e
    invoke-virtual {v1, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    if-eqz v3, :cond_23

    .line 153
    const-string v13, "X.0M5p"

    goto :goto_f

    :cond_23
    if-eqz v6, :cond_24

    const-string v13, "X.0UC3"

    goto :goto_f

    :cond_24
    if-eqz v2, :cond_25

    const-string v13, "X.Q0c"

    goto :goto_f

    :cond_25
    const-string v13, "X.0P8L"

    :goto_f
    invoke-virtual {v1, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/16 v14, 0xa

    const/16 v15, 0x9

    const/16 v18, 0x8

    const/16 v19, 0x7

    const/16 v20, 0x6

    const/16 v21, 0x5

    const/16 v22, 0x4

    if-eqz v3, :cond_26

    const/16 v5, 0xd

    new-array v5, v5, [Ljava/lang/Class;

    move-object v14, v9

    const/16 v15, 0x0

    aput-object v14, v5, v15

    move-object v14, v9

    const/16 v15, 0x1

    aput-object v14, v5, v15

    const-string v14, "X.05DE"
    invoke-virtual {v1, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v14

    const/16 v15, 0x2

    aput-object v14, v5, v15

    const-string v14, "X.05DE"
    invoke-virtual {v1, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v14

    const/16 v15, 0x3

    aput-object v14, v5, v15

    const-class v14, Ljava/lang/String;

    const/16 v15, 0x4

    aput-object v14, v5, v15

    const-class v14, Ljava/lang/String;

    const/16 v15, 0x5

    aput-object v14, v5, v15

    const-class v14, Ljava/lang/String;

    const/16 v15, 0x6

    aput-object v14, v5, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v15, 0x7

    aput-object v14, v5, v15

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v15, 0x8

    aput-object v14, v5, v15

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v15, 0x9

    aput-object v14, v5, v15

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v15, 0xa

    aput-object v14, v5, v15

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v15, 0xb

    aput-object v14, v5, v15

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v15, 0xc

    aput-object v14, v5, v15
    goto :goto_11

    :cond_26
    if-nez v6, :cond_28

    if-eqz v2, :cond_27

    goto :goto_10

    .line 160
    :cond_27
    new-array v5, v15, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v9, v5, v14

    aput-object v9, v5, v4

    const-class v9, Ljava/lang/String;

    const/4 v14, 0x2

    aput-object v9, v5, v14

    const-class v9, Ljava/lang/String;

    const/4 v14, 0x3

    aput-object v9, v5, v14

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v22

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v21

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v20

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v19

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v18

    goto :goto_11

    .line 158
    :cond_28
    :goto_10
    new-array v5, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v9, v5, v14

    aput-object v9, v5, v4

    const-class v9, Ljava/lang/String;

    const/4 v14, 0x2

    aput-object v9, v5, v14

    const-class v9, Ljava/lang/String;

    const/4 v14, 0x3

    aput-object v9, v5, v14

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v22

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v21

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v20

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v19

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v18

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v15

    .line 162
    :goto_11
    invoke-virtual {v7, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-virtual {v13}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v7

    if-nez v7, :cond_41

    .line 164
    invoke-virtual {v13, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    iput-object v5, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->item:Ljava/lang/reflect/Constructor;

    .line 165
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    if-eqz v3, :cond_29

    .line 166
    const-string v5, "X.01wH"

    goto :goto_12

    :cond_29
    if-eqz v6, :cond_2a

    const-string v5, "X.02b8"

    goto :goto_12

    :cond_2a
    if-eqz v2, :cond_2b

    const-string v5, "X.0gQ"

    goto :goto_12

    :cond_2b
    const-string v5, "X.01cC"

    :goto_12
    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Iterable;

    const/4 v9, 0x0

    aput-object v7, v4, v9

    invoke-static {v5, v10, v12, v4}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->immutableList:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2c

    .line 168
    const-string v4, "X.0NTX"

    goto :goto_13

    :cond_2c
    if-eqz v6, :cond_2d

    const-string v4, "X.0VNe"

    goto :goto_13

    :cond_2d
    if-eqz v2, :cond_2e

    const-string v4, "X.R0B"

    goto :goto_13

    :cond_2e
    const-string v4, "X.0QHY"

    :goto_13
    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 169
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    array-length v7, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_14
    if-ge v12, v7, :cond_30

    aget-object v14, v5, v12

    move-object v15, v14

    check-cast v15, Ljava/lang/Enum;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    const-string v9, "REPORT"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    move-object v13, v14

    :cond_2f
    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_30
    if-eqz v13, :cond_40

    .line 171
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v8, v5}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->reportId:I

    .line 172
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    array-length v7, v5

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v7, :cond_32

    aget-object v12, v5, v9

    .line 173
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v8, v13}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v12

    const v13, -0x1f4001

    if-eq v12, v13, :cond_31

    const v13, -0x1f4002

    if-eq v12, v13, :cond_31

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 174
    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "custom ID collision"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    if-eqz v3, :cond_33

    .line 176
    const-string v8, "A02"

    :cond_33
    const-string v4, "com.instagram.feed.media.Media"

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v11, v8, v4}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->media:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_34

    .line 177
    const-string v4, "A06"

    goto :goto_16

    :cond_34
    const-string v4, "A05"

    :goto_16
    const-string v5, "com.instagram.user.model.User"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v11, v4, v5}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->user:Ljava/lang/reflect/Field;

    .line 178
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "A79"

    if-eqz v3, :cond_35

    goto :goto_17

    :cond_35
    if-eqz v6, :cond_36

    goto :goto_17

    :cond_36
    if-eqz v2, :cond_37

    const-string v5, "A87"

    goto :goto_17

    :cond_37
    const-string v5, "A8B"

    :goto_17
    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v4, v5, v7, v8}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->usernameGetter:Ljava/lang/reflect/Method;

    if-nez v3, :cond_39

    if-eqz v6, :cond_38

    goto :goto_18

    .line 179
    :cond_38
    const-string v4, "A0A"

    goto :goto_19

    :cond_39
    :goto_18
    const-string v4, "A0B"

    :goto_19
    const-class v5, Ljava/lang/String;

    invoke-static {v11, v4, v5}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->mediaId:Ljava/lang/reflect/Field;

    if-nez v3, :cond_3b

    if-eqz v6, :cond_3a

    goto :goto_1a

    .line 180
    :cond_3a
    const-string v4, "A0D"

    goto :goto_1b

    :cond_3b
    :goto_1a
    const-string v4, "A0E"

    :goto_1b
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v4, v5}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->video:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_3c

    .line 181
    const-string v2, "X.00DR"

    goto :goto_1c

    :cond_3c
    if-eqz v6, :cond_3d

    const-string v2, "X.05Bj"

    goto :goto_1c

    :cond_3d
    if-eqz v2, :cond_3e

    const-string v2, "X.4z7"

    goto :goto_1c

    :cond_3e
    const-string v2, "X.05Dd"

    :goto_1c
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 182
    invoke-static {v1, v10, v1}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->unit:Ljava/lang/Object;

    .line 183
    iget-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->immutableList:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->click:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_3f

    return-void

    .line 184
    :cond_3f
    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "unexpected native menu static layout"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "REPORT action not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_41
    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "unexpected native menu item hierarchy"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_42
    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "attribution is not static"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static resolve(Ljava/lang/ClassLoader;)Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/ReflectiveOperationException;

    const-string v1, "No complete verified Instant menu layout"

    invoke-direct {v0, v1}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1bf

    const/16 v2, 0x1be

    const/16 v3, 0x1c2

    const/16 v4, 0x1c0

    .line 116
    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    aget v3, v1, v2

    .line 117
    :try_start_0
    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;

    invoke-direct {v4, p0, v3}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;-><init>(Ljava/lang/ClassLoader;I)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 118
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/ReflectiveOperationException;->addSuppressed(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    throw v0
.end method


# virtual methods
.method inject(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 199
    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$sfgetselections()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object v3, p0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->itemId:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    iget v4, p0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->reportId:I

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 201
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    return-object p1

    .line 204
    :cond_3
    new-instance v1, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Selection;

    const v2, -0x1f4001

    invoke-direct {v1, p2, p0, v2}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Selection;-><init>(Ljava/lang/Object;Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;I)V

    .line 205
    new-instance v3, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Selection;

    const v4, -0x1f4002

    invoke-direct {v3, p2, p0, v4}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Selection;-><init>(Ljava/lang/Object;Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;I)V

    .line 206
    const-string p2, "Visualizza a schermo intero"

    invoke-virtual {p0, p2, v2}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->newItem(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p2

    .line 207
    const-string v2, "Download"

    invoke-virtual {p0, v2, v4}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->newItem(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 210
    iget-object v6, p0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->itemId:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    iget v7, p0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->reportId:I

    if-ne v6, v7, :cond_4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->saveInstants:Z

    if-eqz v6, :cond_4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_5
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->immutableList:Ljava/lang/reflect/Method;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 214
    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$sfgetselections()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook;->-$$Nest$sfgetselections()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method newItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    move-object v0, p0

    .line 189
    iget v1, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->version:I

    const/16 v2, 0x1c2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->item:Ljava/lang/reflect/Constructor;

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x4

    move-object/from16 v5, p1

    aput-object v5, v2, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x7

    aput-object v5, v2, v4

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const/16 v4, 0x9

    aput-object v14, v2, v4

    const/16 v4, 0xa

    aput-object v14, v2, v4

    const/16 v4, 0xb

    aput-object v14, v2, v4

    const/16 v4, 0xc

    aput-object v14, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v2, 0x1c0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1bf

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->item:Ljava/lang/reflect/Constructor;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object v9, v3

    move-object v10, v14

    move-object v11, v14

    move-object v12, v14

    filled-new-array/range {v4 .. v12}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 191
    :cond_2
    :goto_0
    iget-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantNativeMenuHook$Bindings;->item:Ljava/lang/reflect/Constructor;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object v9, v3

    move-object v10, v14

    move-object v11, v14

    move-object v12, v14

    move-object v13, v14

    filled-new-array/range {v4 .. v13}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1
.end method
