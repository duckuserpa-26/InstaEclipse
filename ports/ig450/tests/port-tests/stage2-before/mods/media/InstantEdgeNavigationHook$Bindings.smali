.class final Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;
.super Ljava/lang/Object;
.source "InstantEdgeNavigationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bindings"
.end annotation


# instance fields
.field final cardSize:Ljava/lang/reflect/Method;

.field final changes:Ljava/lang/reflect/Field;

.field final consumption:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final current:Ljava/lang/reflect/Method;

.field final function0:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final handler:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final handlerFactory:Ljava/lang/reflect/Method;

.field final handlerInvoke:Ljava/lang/reflect/Method;

.field final interactive:Ljava/lang/reflect/Method;

.field final invoke0:Ljava/lang/reflect/Method;

.field final kind:Ljava/lang/reflect/Field;

.field final label:Ljava/lang/reflect/Field;

.field final mediaId:Ljava/lang/reflect/Field;

.field final nodeSize:Ljava/lang/reflect/Field;

.field final offset:Ljava/lang/reflect/Field;

.field final pending:Ljava/lang/reflect/Field;

.field final pointer:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final pointerCreate:Ljava/lang/reflect/Method;

.field final pointerEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final pointerResume:Ljava/lang/reflect/Method;

.field final raw:Ljava/lang/reflect/Field;

.field final read:Ljava/lang/reflect/Method;

.field final receiver:Ljava/lang/reflect/Field;

.field final remaining:Ljava/lang/reflect/Field;

.field final scope:Ljava/lang/reflect/Field;

.field final scopeNode:Ljava/lang/reflect/Field;

.field final screen:Ljava/lang/reflect/Method;

.field final screenInvoker:Ljava/lang/reflect/Method;

.field final seenFlow:Ljava/lang/reflect/Field;

.field final shortTap:Ljava/lang/reflect/Field;

.field final stack:Ljava/lang/reflect/Method;

.field final store:Ljava/lang/reflect/Field;

.field final tapFactory:Ljava/lang/reflect/Method;

.field final unit:Ljava/lang/Object;

.field final v449:Z

.field final viewer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final viewerFlow:Ljava/lang/reflect/Field;

.field final write:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 233
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 234
    sget-boolean v2, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is449:Z

    iput-boolean v2, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->v449:Z

    .line 235
    const-string v3, "kotlin.jvm.functions.Function0"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->function0:Ljava/lang/Class;

    .line 236
    const-string v4, "kotlin.jvm.functions.Function1"

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v2, :cond_0

    .line 237
    const-string v5, "X.1Glm"

    goto :goto_0

    :cond_0
    const-string v5, "X.0ugO"

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v2, :cond_1

    .line 238
    const-string v6, "X.04ZY"

    goto :goto_1

    :cond_1
    const-string v6, "X.06Ud"

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->viewer:Ljava/lang/Class;

    if-eqz v2, :cond_2

    const-string v7, "X.0pfV"

    goto :goto_2

    :cond_2
    const-string v7, "X.0Pjf"

    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    iput-object v7, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->consumption:Ljava/lang/Class;

    if-eqz v2, :cond_3

    .line 239
    const-string v8, "X.04Zt"

    goto :goto_3

    :cond_3
    const-string v8, "X.06Uk"

    :goto_3
    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    if-eqz v2, :cond_4

    const-string v9, "X.05BH"

    goto :goto_4

    :cond_4
    const-string v9, "X.06e3"

    :goto_4
    invoke-virtual {v1, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    if-eqz v2, :cond_5

    .line 240
    const-string v10, "X.0Htr"

    goto :goto_5

    :cond_5
    const-string v10, "X.0nlt"

    :goto_5
    invoke-virtual {v1, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    if-eqz v2, :cond_6

    const-string v11, "X.0qlG"

    goto :goto_6

    :cond_6
    const-string v11, "X.105z"

    :goto_6
    invoke-virtual {v1, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    if-eqz v2, :cond_7

    .line 241
    const-string v12, "X.04aW"

    goto :goto_7

    :cond_7
    const-string v12, "X.02bC"

    :goto_7
    invoke-virtual {v1, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    if-eqz v2, :cond_8

    const-string v13, "X.0Hm4"

    goto :goto_8

    :cond_8
    const-string v13, "X.03eC"

    :goto_8
    invoke-virtual {v1, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/16 v14, 0x36

    .line 242
    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    .line 243
    aput-object v10, v15, v14

    const/4 v14, 0x1

    aput-object v13, v15, v14

    if-eqz v2, :cond_9

    const-string v17, "X.0bTl"

    goto :goto_9

    :cond_9
    const-string v17, "X.0bii"

    :goto_9
    move-object/from16 v14, v17

    invoke-virtual {v1, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v17, v9

    const/4 v9, 0x2

    aput-object v14, v15, v9

    const/4 v14, 0x3

    .line 244
    aput-object v8, v15, v14

    if-eqz v2, :cond_a

    const-string v19, "X.0ppg"

    goto :goto_a

    :cond_a
    const-string v19, "X.0ndx"

    :goto_a
    move-object/from16 v14, v19

    invoke-virtual {v1, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const/4 v9, 0x4

    aput-object v14, v15, v9

    const/4 v14, 0x5

    const/16 v9, 0x19

    .line 245
    invoke-static {v15, v14, v9, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    const/16 v14, 0x25

    invoke-static {v15, v9, v14, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    const/16 v9, 0x26

    .line 246
    aput-object v5, v15, v9

    aput-object v5, v15, v14

    const-string v9, "kotlin.jvm.functions.Function3"

    invoke-virtual {v1, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v14, 0x27

    aput-object v9, v15, v14

    const/16 v9, 0x28

    .line 247
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v22, v11

    const/16 v11, 0x2f

    invoke-static {v15, v9, v11, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v14, 0x36

    invoke-static {v15, v11, v14, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-eqz v2, :cond_b

    .line 248
    const-string v9, "X.0aoK"

    goto :goto_b

    :cond_b
    const-string v9, "X.0bBd"

    :goto_b
    invoke-virtual {v1, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v14, "A01"

    invoke-static {v9, v14, v11, v15}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->screen:Ljava/lang/reflect/Method;

    const/16 v11, 0x13

    .line 249
    new-array v11, v11, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v10, v11, v15

    const/4 v15, 0x1

    aput-object v13, v11, v15

    if-eqz v2, :cond_c

    const-string v13, "X.0ikb"

    goto :goto_c

    :cond_c
    const-string v13, "X.0JW0"

    :goto_c
    invoke-virtual {v1, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/4 v15, 0x2

    aput-object v13, v11, v15

    const/4 v13, 0x3

    aput-object v8, v11, v13

    const/4 v13, 0x4

    aput-object v3, v11, v13

    const/4 v13, 0x5

    aput-object v3, v11, v13

    const/4 v13, 0x6

    aput-object v3, v11, v13

    const/4 v15, 0x7

    aput-object v4, v11, v15

    const/16 v15, 0x8

    aput-object v4, v11, v15

    const/16 v15, 0x9

    aput-object v5, v11, v15

    const/16 v15, 0xa

    aput-object v5, v11, v15

    const/16 v5, 0xb

    aput-object v12, v11, v5

    const/16 v5, 0xc

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v11, v5

    const/16 v5, 0xd

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v11, v5

    const/16 v5, 0xe

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v11, v5

    const/16 v5, 0xf

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v15, v11, v5

    const/16 v5, 0x10

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v15, v11, v5

    const/16 v5, 0x11

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v15, v11, v5

    const/16 v5, 0x12

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v15, v11, v5

    .line 252
    const-string v5, "X.0dtN"

    const-string v15, "X.0eVm"

    if-eqz v2, :cond_d

    move-object v13, v5

    goto :goto_d

    :cond_d
    move-object v13, v15

    :goto_d
    invoke-virtual {v1, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v23, v5

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v24, v15

    const-string v15, "A03"

    invoke-static {v13, v15, v5, v11}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->stack:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_e

    .line 253
    const-string v11, "X.0mfs"

    goto :goto_e

    :cond_e
    const-string v11, "X.0lxq"

    :goto_e
    invoke-virtual {v1, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-class v13, Ljava/lang/Object;

    move-object/from16 v26, v8

    move-object/from16 v25, v12

    const/4 v12, 0x2

    new-array v8, v12, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v8, v16

    const-class v12, Ljava/lang/Object;

    const/16 v18, 0x1

    aput-object v12, v8, v18

    const-string v12, "invoke"

    invoke-static {v11, v12, v13, v8}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->screenInvoker:Ljava/lang/reflect/Method;

    .line 254
    const-string v8, "A00"

    if-eqz v2, :cond_f

    .line 255
    const-string v11, "X.0E9F"

    invoke-virtual {v1, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v13, "X.0E9F"

    invoke-virtual {v1, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v10, v7, v6

    const-class v6, Ljava/lang/Object;

    const/16 v18, 0x1

    aput-object v6, v7, v18

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x2

    aput-object v6, v7, v19

    invoke-static {v11, v8, v13, v7}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    goto :goto_f

    :cond_f
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    .line 256
    const-string v6, "X.0E1d"

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "X.0E1d"

    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v11, 0x3

    new-array v13, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v13, v11

    const-class v11, Ljava/lang/Object;

    const/16 v18, 0x1

    aput-object v11, v13, v18

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x2

    aput-object v11, v13, v19

    const-string v11, "A06"

    invoke-static {v6, v11, v7, v13}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    :goto_f
    iput-object v6, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->tapFactory:Ljava/lang/reflect/Method;

    .line 257
    const-string v6, "X.0D4D"

    if-eqz v2, :cond_10

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v29, v6

    const/4 v13, 0x5

    new-array v6, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v10, v6, v13

    const-class v13, Ljava/lang/Object;

    const/16 v18, 0x1

    aput-object v13, v6, v18

    const-class v13, Ljava/lang/Object;

    const/16 v19, 0x2

    aput-object v13, v6, v19

    const-class v13, Ljava/lang/Object;

    const/16 v20, 0x3

    aput-object v13, v6, v20

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v21, 0x4

    aput-object v13, v6, v21

    invoke-static {v7, v8, v11, v6}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    goto :goto_10

    :cond_10
    move-object/from16 v29, v6

    const/4 v6, 0x0

    .line 258
    :goto_10
    iput-object v6, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->handlerFactory:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_11

    move-object/from16 v6, v23

    goto :goto_11

    :cond_11
    move-object/from16 v6, v24

    .line 259
    :goto_11
    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v13, v11

    invoke-static {v6, v14, v7, v13}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->cardSize:Ljava/lang/reflect/Method;

    .line 260
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 261
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_24

    if-eqz v2, :cond_12

    move-object/from16 v5, v29

    goto :goto_12

    .line 262
    :cond_12
    const-string v5, "X.0fhx"

    :goto_12
    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v6, v7, v9

    const-class v6, Ljava/lang/Object;

    const/4 v9, 0x1

    aput-object v6, v7, v9

    const-class v6, Ljava/lang/Object;

    const/4 v9, 0x2

    aput-object v6, v7, v9

    const-class v6, Ljava/lang/Object;

    const/4 v10, 0x3

    aput-object v6, v7, v10

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    iput-object v5, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->handler:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_13

    move-object/from16 v6, v29

    goto :goto_13

    .line 263
    :cond_13
    const-string v6, "X.0fhx"

    :goto_13
    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Object;

    new-array v7, v9, [Ljava/lang/Class;

    if-eqz v2, :cond_14

    .line 264
    const-string v9, "X.0ocm"

    goto :goto_14

    :cond_14
    const-string v9, "X.0Pyi"

    :goto_14
    invoke-virtual {v1, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v7, v10

    const-string v9, "X.0FwO"

    const-string v10, "X.0Pvq"

    if-eqz v2, :cond_15

    move-object v11, v9

    goto :goto_15

    :cond_15
    move-object v11, v10

    :goto_15
    invoke-virtual {v1, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v7, v13

    .line 263
    invoke-static {v5, v12, v6, v7}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->handlerInvoke:Ljava/lang/reflect/Method;

    .line 265
    const-string v5, "com.instagram.quicksnap.viewer.compose.PointerTouchKt$handleTapAndLongPressWithRelease$2$1$1$1"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x6

    .line 266
    new-array v6, v6, [Ljava/lang/Class;

    if-eqz v2, :cond_16

    move-object v7, v9

    goto :goto_16

    :cond_16
    move-object v7, v10

    :goto_16
    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v6, v11

    aput-object v3, v6, v13

    const/4 v7, 0x2

    aput-object v4, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x4

    aput-object v4, v6, v7

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x5

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->pointer:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_17

    move-object v4, v9

    goto :goto_17

    :cond_17
    move-object v4, v10

    .line 267
    :goto_17
    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v6, v11

    if-eqz v2, :cond_18

    goto :goto_18

    :cond_18
    move-object v9, v10

    :goto_18
    invoke-virtual {v1, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "create"

    invoke-static {v5, v7, v4, v6}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->pointerCreate:Ljava/lang/reflect/Method;

    .line 268
    const-class v4, Ljava/lang/Object;

    new-array v6, v9, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const-string v7, "invokeSuspend"

    invoke-static {v5, v7, v4, v6}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->pointerResume:Ljava/lang/reflect/Method;

    .line 269
    const-string v4, "A06"

    const-class v6, Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->scope:Ljava/lang/reflect/Field;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v15, v4}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->offset:Ljava/lang/reflect/Field;

    .line 270
    const-string v4, "A09"

    invoke-static {v5, v4, v3}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->shortTap:Ljava/lang/reflect/Field;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v14, v4}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->label:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_19

    .line 271
    const-string v4, "X.02q5"

    goto :goto_19

    :cond_19
    const-string v4, "X.04Od"

    :goto_19
    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->pointerEvent:Ljava/lang/Class;

    const-string v5, "A05"

    const-class v6, Ljava/util/List;

    invoke-static {v4, v5, v6}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->changes:Ljava/lang/reflect/Field;

    .line 273
    const-string v4, "androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine"

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v2, :cond_1a

    .line 274
    const-string v5, "X.03Cx"

    goto :goto_1a

    :cond_1a
    const-string v5, "X.04SG"

    :goto_1a
    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 273
    const-string v6, "A04"

    invoke-static {v4, v6, v5}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->scopeNode:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1b

    .line 275
    const-string v4, "X.03Cx"

    goto :goto_1b

    :cond_1b
    const-string v4, "X.04SG"

    :goto_1b
    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v8, v5}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->nodeSize:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1c

    .line 276
    const-string v4, "X.04Ze"

    goto :goto_1c

    :cond_1c
    const-string v4, "X.05Ee"

    :goto_1c
    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "receiver"

    const-class v6, Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->receiver:Ljava/lang/reflect/Field;

    .line 277
    const-string v4, "$t"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v6, v28

    invoke-static {v6, v4, v5}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->kind:Ljava/lang/reflect/Field;

    .line 278
    const-string v4, "X.06zG"

    const-string v5, "X.03bC"

    if-eqz v2, :cond_1d

    move-object v6, v4

    goto :goto_1d

    :cond_1d
    move-object v6, v5

    :goto_1d
    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "A0R"

    move-object/from16 v9, v27

    invoke-static {v9, v7, v6}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->store:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1e

    .line 279
    const-string v6, "A0b"

    goto :goto_1e

    :cond_1e
    const-string v6, "A0a"

    :goto_1e
    move-object/from16 v7, v22

    invoke-static {v9, v6, v7}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->viewerFlow:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1f

    move-object v6, v4

    goto :goto_1f

    :cond_1f
    move-object v6, v5

    .line 280
    :goto_1f
    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v15, v7}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->seenFlow:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_20

    goto :goto_20

    :cond_20
    move-object v4, v5

    .line 281
    :goto_20
    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "A02"

    const-class v6, Ljava/util/Set;

    invoke-static {v4, v5, v6}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->pending:Ljava/lang/reflect/Field;

    .line 282
    const-string v4, "A08"

    const-class v5, Ljava/util/List;

    move-object/from16 v6, v26

    invoke-static {v6, v4, v5}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->raw:Ljava/lang/reflect/Field;

    const-string v4, "A0D"

    move-object/from16 v5, v25

    invoke-static {v6, v4, v5}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->remaining:Ljava/lang/reflect/Field;

    const-string v4, "A0B"

    const-class v5, Ljava/lang/String;

    move-object/from16 v9, v17

    invoke-static {v9, v4, v5}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->mediaId:Ljava/lang/reflect/Field;

    const/4 v4, 0x0

    .line 283
    new-array v5, v4, [Ljava/lang/Class;

    invoke-static {v6, v15, v9, v5}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->current:Ljava/lang/reflect/Method;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v9, v4, [Ljava/lang/Class;

    const-string v10, "A04"

    invoke-static {v6, v10, v5, v9}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->interactive:Ljava/lang/reflect/Method;

    .line 284
    const-class v5, Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Class;

    const-string v4, "getValue"

    invoke-static {v7, v4, v5, v6}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->read:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_21

    const-string v4, "HL2"

    goto :goto_21

    :cond_21
    const-string v4, "HHm"

    :goto_21
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v9, v6, v10

    invoke-static {v7, v4, v5, v6}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->write:Ljava/lang/reflect/Method;

    .line 285
    const-class v4, Ljava/lang/Object;

    new-array v5, v10, [Ljava/lang/Class;

    invoke-static {v3, v12, v4, v5}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->invoke0:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_22

    .line 286
    const-string v3, "X.04Wh"

    goto :goto_22

    :cond_22
    const-string v3, "X.05Bj"

    :goto_22
    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v2, :cond_23

    const-string v2, "X.04Wh"

    goto :goto_23

    :cond_23
    const-string v2, "X.05Bj"

    :goto_23
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v3, v8, v1}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->unit:Ljava/lang/Object;

    return-void

    .line 261
    :cond_24
    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "Compose layout"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method order(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 293
    instance-of p2, p1, Ljava/util/List;

    if-nez p2, :cond_0

    return-object v0

    .line 294
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 295
    instance-of v1, p2, Ljava/util/List;

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 296
    :cond_2
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->mediaId:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_3
    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigation;->unique(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method proxy(Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Tap;)Ljava/lang/Object;
    .locals 4

    .line 288
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->function0:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    iget-object v3, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->function0:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method state(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->read:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->viewerFlow:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
