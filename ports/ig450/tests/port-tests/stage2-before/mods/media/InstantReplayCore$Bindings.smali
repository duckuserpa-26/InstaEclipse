.class final Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;
.super Ljava/lang/Object;
.source "InstantReplayCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lps/reso/instaeclipse/mods/media/InstantReplayCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Bindings"
.end annotation


# instance fields
.field final consumptionInvoke:Ljava/lang/reflect/Method;

.field final consumptionSeen:Ljava/lang/reflect/Field;

.field final consumptionSuspend:Ljava/lang/reflect/Method;

.field final finalFilter:Ljava/lang/reflect/Method;

.field final flowRead:Ljava/lang/reflect/Method;

.field final flowWrite:Ljava/lang/reflect/Method;

.field final flushViewer:Ljava/lang/reflect/Method;

.field final fragmentView:Ljava/lang/reflect/Method;

.field final fragmentViewer:Ljava/lang/reflect/Method;

.field final persistSeen:Ljava/lang/reflect/Method;

.field final profile:Ljava/lang/String;

.field final responseMedia:Ljava/lang/reflect/Field;

.field final serverSeen:Ljava/lang/reflect/Method;

.field final storeConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final storeFlow:Ljava/lang/reflect/Field;

.field final storePending:Ljava/lang/reflect/Field;

.field final viewerConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final viewerStore:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>(Ljava/lang/ClassLoader;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x1c1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const/16 v6, 0x1c0

    if-ne v2, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    const/16 v7, 0x1bf

    if-ne v2, v7, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_2
    if-eqz v3, :cond_3

    .line 156
    const-string v7, "449.0.0.52.84-385511888"

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    const-string v7, "448.0.0.52.84-385412078"

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 157
    const-string v7, "447.0.0.55.81-385311927"

    goto :goto_3

    :cond_5
    const-string v7, "446-installed"

    :goto_3
    iput-object v7, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->profile:Ljava/lang/String;

    .line 158
    const-string v7, "com.instagram.quicksnap.data.api.QuickSnapApi"

    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v3, :cond_6

    .line 159
    const-string v8, "X.0FwO"

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_7

    const-string v8, "X.0Pvq"

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_8

    const-string v8, "X.HAU"

    goto :goto_4

    :cond_8
    const-string v8, "X.0ARk"

    :goto_4
    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 160
    const-string v9, "com.instagram.quicksnap.data.repository.QuickSnapRepository$quickSnapConsumptionFlow$1"

    invoke-virtual {v1, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    if-eqz v3, :cond_9

    .line 161
    const-string v10, "X.06zG"

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_a

    const-string v10, "X.03bC"

    goto :goto_5

    :cond_a
    if-eqz v2, :cond_b

    const-string v10, "X.8vJ"

    goto :goto_5

    :cond_b
    const-string v10, "X.01Sg"

    :goto_5
    invoke-virtual {v1, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    if-eqz v3, :cond_c

    .line 162
    const-string v11, "X.04ZY"

    goto :goto_6

    :cond_c
    if-eqz v6, :cond_d

    const-string v11, "X.06Ud"

    goto :goto_6

    :cond_d
    if-eqz v2, :cond_e

    const-string v11, "X.7MB"

    goto :goto_6

    :cond_e
    const-string v11, "X.05YN"

    :goto_6
    invoke-virtual {v1, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 163
    const-string v12, "com.instagram.common.session.UserSession"

    invoke-virtual {v1, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    if-eqz v3, :cond_f

    .line 164
    const-string v13, "X.0qlG"

    goto :goto_7

    :cond_f
    if-eqz v6, :cond_10

    const-string v13, "X.105z"

    goto :goto_7

    :cond_10
    if-eqz v2, :cond_11

    const-string v13, "X.snm"

    goto :goto_7

    :cond_11
    const-string v13, "X.0rfL"

    :goto_7
    invoke-virtual {v1, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 165
    const-class v14, Ljava/lang/Object;

    const/4 v15, 0x2

    new-array v4, v15, [Ljava/lang/Class;

    const-class v17, Ljava/util/List;

    aput-object v17, v4, v5

    const/16 v16, 0x1

    aput-object v8, v4, v16

    const-string v8, "A0A"

    invoke-static {v7, v8, v14, v4}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->serverSeen:Ljava/lang/reflect/Method;

    .line 166
    const-class v7, Ljava/lang/Object;

    const/4 v14, 0x5

    new-array v15, v14, [Ljava/lang/Class;

    const-class v17, Ljava/lang/Object;

    aput-object v17, v15, v5

    const-class v17, Ljava/lang/Object;

    aput-object v17, v15, v16

    const-class v17, Ljava/lang/Object;

    const/16 v18, 0x2

    aput-object v17, v15, v18

    const-class v17, Ljava/lang/Object;

    const/4 v14, 0x3

    aput-object v17, v15, v14

    const-class v17, Ljava/lang/Object;

    const/4 v14, 0x4

    aput-object v17, v15, v14

    const-string v14, "invoke"

    invoke-static {v9, v14, v7, v15}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->consumptionInvoke:Ljava/lang/reflect/Method;

    .line 168
    const-class v14, Ljava/lang/Object;

    move-object/from16 v19, v8

    const/4 v15, 0x1

    new-array v8, v15, [Ljava/lang/Class;

    const-class v15, Ljava/lang/Object;

    aput-object v15, v8, v5

    const-string v15, "invokeSuspend"

    invoke-static {v9, v15, v14, v8}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->consumptionSuspend:Ljava/lang/reflect/Method;

    .line 169
    const-class v14, Ljava/lang/Object;

    const-string v15, "A01"

    invoke-static {v9, v15, v14}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v9

    iput-object v9, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->consumptionSeen:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_12

    .line 170
    const-string v9, "X.08hH"

    goto :goto_8

    :cond_12
    if-eqz v6, :cond_13

    const-string v9, "X.03bX"

    goto :goto_8

    :cond_13
    if-eqz v2, :cond_14

    const-string v9, "X.0l0"

    goto :goto_8

    :cond_14
    const-string v9, "X.01Td"

    :goto_8
    invoke-virtual {v1, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    if-nez v3, :cond_16

    if-eqz v6, :cond_15

    goto :goto_9

    .line 171
    :cond_15
    const-string v14, "A0B"

    goto :goto_a

    :cond_16
    :goto_9
    move-object/from16 v14, v19

    :goto_a
    const-class v5, Ljava/util/List;

    .line 170
    invoke-static {v9, v14, v5}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->responseMedia:Ljava/lang/reflect/Field;

    .line 172
    const-string v5, "A03"

    invoke-static {v10, v5, v13}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->storeFlow:Ljava/lang/reflect/Field;

    .line 173
    const-string v5, "A02"

    const-class v9, Ljava/util/Set;

    invoke-static {v10, v5, v9}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->storePending:Ljava/lang/reflect/Field;

    .line 174
    const-class v5, Ljava/lang/Object;

    const/4 v9, 0x0

    new-array v14, v9, [Ljava/lang/Class;

    const-string v9, "getValue"

    invoke-static {v13, v9, v5, v14}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->flowRead:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_17

    .line 175
    const-string v9, "HL2"

    goto :goto_b

    :cond_17
    if-eqz v6, :cond_18

    const-string v9, "HHm"

    goto :goto_b

    :cond_18
    if-eqz v2, :cond_19

    const-string v9, "HEn"

    goto :goto_b

    :cond_19
    const-string v9, "HD2"

    :goto_b
    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v21, v5

    move-object/from16 v20, v15

    const/4 v15, 0x1

    new-array v5, v15, [Ljava/lang/Class;

    const-class v16, Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v16, v5, v19

    invoke-static {v13, v9, v14, v5}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->flowWrite:Ljava/lang/reflect/Method;

    .line 176
    new-array v9, v15, [Ljava/lang/Class;

    aput-object v12, v9, v19

    invoke-virtual {v10, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    iput-object v9, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->storeConstructor:Ljava/lang/reflect/Constructor;

    const/4 v9, 0x7

    .line 177
    new-array v9, v9, [Ljava/lang/Class;

    if-eqz v3, :cond_1a

    const-string v13, "X.0490"

    goto :goto_c

    :cond_1a
    if-eqz v6, :cond_1b

    const-string v13, "X.0357"

    goto :goto_c

    :cond_1b
    if-eqz v2, :cond_1c

    const-string v13, "X.CR8"

    goto :goto_c

    :cond_1c
    const-string v13, "X.0PF8"

    :goto_c
    invoke-virtual {v1, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v9, v14

    const/4 v13, 0x1

    aput-object v12, v9, v13

    const-string v12, "com.instagram.quicksnap.data.repository.QuickSnapRepository"

    .line 178
    invoke-virtual {v1, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v9, v13

    const/4 v12, 0x3

    aput-object v10, v9, v12

    if-eqz v3, :cond_1d

    .line 179
    const-string v12, "X.04ZN"

    goto :goto_d

    :cond_1d
    if-eqz v6, :cond_1e

    const-string v12, "X.06Ub"

    goto :goto_d

    :cond_1e
    if-eqz v2, :cond_1f

    const-string v12, "X.7Lv"

    goto :goto_d

    :cond_1f
    const-string v12, "X.05YJ"

    :goto_d
    invoke-virtual {v1, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x4

    aput-object v12, v9, v13

    const-class v12, Ljava/lang/String;

    const/4 v13, 0x5

    aput-object v12, v9, v13

    const-class v12, Ljava/lang/String;

    const/4 v13, 0x6

    aput-object v12, v9, v13

    .line 177
    invoke-virtual {v11, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    iput-object v9, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->viewerConstructor:Ljava/lang/reflect/Constructor;

    .line 180
    const-string v9, "A00"

    if-eqz v3, :cond_20

    :goto_e
    move-object/from16 v15, v20

    goto :goto_f

    :cond_20
    if-eqz v6, :cond_22

    :cond_21
    move-object v15, v9

    goto :goto_f

    :cond_22
    if-eqz v2, :cond_21

    goto :goto_e

    :goto_f
    sget-object v12, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-static {v10, v15, v12, v13}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    iput-object v12, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->persistSeen:Ljava/lang/reflect/Method;

    if-nez v3, :cond_25

    if-eqz v6, :cond_23

    goto :goto_10

    :cond_23
    if-eqz v2, :cond_24

    .line 181
    const-string v13, "A16"

    goto :goto_11

    :cond_24
    const-string v13, "A13"

    goto :goto_11

    :cond_25
    :goto_10
    const-string v13, "A18"

    :goto_11
    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v22, v5

    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/Class;

    invoke-static {v11, v13, v14, v5}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->flushViewer:Ljava/lang/reflect/Method;

    .line 182
    const-string v13, "A06"

    if-nez v3, :cond_28

    if-eqz v6, :cond_26

    goto :goto_12

    :cond_26
    if-eqz v2, :cond_27

    goto :goto_12

    :cond_27
    const-string v13, "A05"

    :cond_28
    :goto_12
    if-eqz v3, :cond_29

    .line 183
    const-string v2, "X.04ah"

    goto :goto_13

    :cond_29
    if-eqz v6, :cond_2a

    const-string v2, "X.02bG"

    goto :goto_13

    :cond_2a
    if-eqz v2, :cond_2b

    const-string v2, "X.0gS"

    goto :goto_13

    :cond_2b
    const-string v2, "X.01cE"

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v11, v15, v14

    const-class v14, Ljava/util/List;

    const/16 v16, 0x1

    aput-object v14, v15, v16

    .line 182
    invoke-static {v11, v13, v2, v15}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->finalFilter:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2d

    if-eqz v6, :cond_2c

    goto :goto_14

    :cond_2c
    const/4 v1, 0x0

    .line 191
    iput-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->fragmentViewer:Ljava/lang/reflect/Method;

    iput-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->fragmentView:Ljava/lang/reflect/Method;

    iput-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->viewerStore:Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_2d
    :goto_14
    if-eqz v3, :cond_2e

    .line 185
    const-string v3, "X.0bqi"

    goto :goto_15

    :cond_2e
    const-string v3, "X.0EQi"

    :goto_15
    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 186
    const-string v6, "android.view.View"

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Class;

    const-string v13, "android.view.LayoutInflater"

    .line 187
    invoke-virtual {v1, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v14, v15

    const-string v13, "android.view.ViewGroup"

    invoke-virtual {v1, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v14, v15

    const-string v13, "android.os.Bundle"

    .line 188
    invoke-virtual {v1, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v13, 0x2

    aput-object v1, v14, v13

    .line 186
    const-string v1, "onCreateView"

    invoke-static {v3, v1, v6, v14}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->fragmentView:Ljava/lang/reflect/Method;

    .line 189
    new-array v1, v15, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v1, v6

    invoke-static {v3, v9, v11, v1}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->fragmentViewer:Ljava/lang/reflect/Method;

    .line 190
    const-string v1, "A0R"

    invoke-static {v11, v1, v10}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->viewerStore:Ljava/lang/reflect/Field;

    .line 192
    :goto_16
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x6

    .line 195
    new-array v2, v1, [Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    const/4 v3, 0x2

    aput-object v8, v2, v3

    const/4 v3, 0x3

    aput-object v5, v2, v3

    const/4 v3, 0x4

    aput-object v21, v2, v3

    const/4 v3, 0x5

    aput-object v22, v2, v3

    const/4 v9, 0x0

    :goto_17
    if-ge v9, v1, :cond_30

    aget-object v3, v2, v9

    .line 196
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_2f

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_2f
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "unexpected static method "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    const/4 v1, 0x4

    .line 198
    new-array v2, v1, [Ljava/lang/reflect/Field;

    iget-object v3, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->consumptionSeen:Ljava/lang/reflect/Field;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->responseMedia:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->storeFlow:Ljava/lang/reflect/Field;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget-object v3, v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->storePending:Ljava/lang/reflect/Field;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    move v5, v4

    :goto_18
    if-ge v5, v1, :cond_32

    aget-object v3, v2, v5

    .line 199
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_31

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_31
    new-instance v1, Ljava/lang/NoSuchFieldException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "unexpected static field "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    return-void

    .line 193
    :cond_33
    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "unexpected static layout"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static resolve(Ljava/lang/ClassLoader;)Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/lang/ReflectiveOperationException;

    const-string v1, "No complete verified Instant replay layout"

    invoke-direct {v0, v1}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1bf

    const/16 v2, 0x1be

    const/16 v3, 0x1c1

    const/16 v4, 0x1c0

    .line 143
    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    aget v3, v1, v2

    .line 144
    :try_start_0
    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;

    invoke-direct {v4, p0, v3}, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;-><init>(Ljava/lang/ClassLoader;I)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 145
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/ReflectiveOperationException;->addSuppressed(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_0
    throw v0
.end method


# virtual methods
.method resetSession(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->storeFlow:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->flowRead:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 206
    instance-of v2, v1, Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->storePending:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 208
    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 209
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    .line 211
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 212
    iget-object p1, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->flowWrite:Ljava/lang/reflect/Method;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "session reset reason="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " seen="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " pending="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void

    .line 206
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "seen state is not Set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
