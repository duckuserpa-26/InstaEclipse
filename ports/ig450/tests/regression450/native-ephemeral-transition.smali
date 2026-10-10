.method public final A0x(Lcom/instagram/model/direct/DirectThreadKey;Z)V
    .locals 30

    const/4 v12, 0x0

    move-object/from16 v29, p0

    move-object/from16 v28, p1

    if-eqz p2, :cond_0

    move-object/from16 v0, v29

    iget-object v2, v0, LX/02Uw;->A0U:LX/00BU;

    check-cast v2, LX/00BW;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, LX/00BW;->A0Q(Lcom/instagram/model/direct/DirectThreadKey;)LX/04k3;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LX/04k3;->A0X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, LX/00BW;->A0L(LX/00BW;LX/04k3;)V

    :cond_0
    move-object/from16 v0, v29

    iget-object v13, v0, LX/02Uw;->A0U:LX/00BU;

    check-cast v13, LX/00BW;

    iget-object v0, v13, LX/00BW;->A0C:Lcom/instagram/common/session/UserSession;

    invoke-static {v0, v12}, LX/01qA;->A02(LX/06c1;Z)LX/0AO7;

    move-result-object v2

    const-wide v0, 0x208105c400111ae8L    # 4.062712608195716E-152

    check-cast v2, Lcom/facebook/mobileconfig/factory/MobileConfigUnsafeContext;

    invoke-interface {v2, v0, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigUnsafeContext;->BYe(J)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_21

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, LX/00BW;->A0Q(Lcom/instagram/model/direct/DirectThreadKey;)LX/04k3;

    move-result-object v10

    if-eqz v10, :cond_21

    monitor-enter v10

    :try_start_0
    iget-object v1, v10, LX/04k3;->A0A:LX/02rM;

    invoke-virtual {v1}, LX/02rM;->EUV()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v1}, LX/02rM;->Dr4()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, LX/02rM;->Dgb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v1

    const/4 v0, 0x2

    if-lt v1, v0, :cond_20

    if-eqz v9, :cond_20

    iget-object v8, v10, LX/04k3;->A09:Lcom/instagram/common/session/UserSession;

    iget-object v0, v10, LX/04k3;->A0B:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-class v27, LX/03Lc;

    monitor-enter v27

    const/4 v7, 0x1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v2}, LX/03Lc;->A03(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    if-eqz v6, :cond_1f

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_1
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX/0038;

    invoke-virtual {v3}, LX/0038;->A0n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1b

    invoke-virtual {v3}, LX/0038;->A1i()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v25, LX/03Lc;->A01:LX/03Lc;

    monitor-enter v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, LX/0038;->A0g()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, LX/0009;->A01:Ljava/lang/Integer;

    const/16 v24, 0x0

    if-ne v0, v2, :cond_d

    invoke-virtual {v3}, LX/0038;->A0k()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {v3}, LX/0038;->A12()Ljava/util/List;

    move-result-object v0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, LX/005U;

    iget-object v0, v0, LX/005U;->A03:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v14, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    move-object/from16 v22, v1

    goto :goto_5

    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v0, v22

    check-cast v0, LX/005U;

    iget-object v0, v0, LX/005U;->A03:Ljava/lang/Long;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v20

    :cond_5
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, LX/005U;

    iget-object v0, v0, LX/005U;->A03:Ljava/lang/Long;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    goto :goto_3

    :cond_6
    const-wide/16 v15, -0x1

    :goto_3
    cmp-long v0, v20, v15

    if-gez v0, :cond_8

    move-object/from16 v22, v19

    move-wide/from16 v20, v15

    goto :goto_4

    :cond_7
    const-wide/16 v20, -0x1

    goto :goto_2

    :cond_8
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_9
    :goto_5
    check-cast v22, LX/005U;

    if-eqz v22, :cond_a

    invoke-virtual/range {v22 .. v22}, LX/005U;->A01()Ljava/lang/String;

    move-result-object v1

    :cond_a
    iget-object v15, v3, LX/037A;->A1H:Ljava/lang/String;

    iget-object v0, v8, Lcom/instagram/common/session/UserSession;->userId:Ljava/lang/String;

    invoke-static {v15, v0}, LX/00P9;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    iget-object v15, v3, LX/0038;->A0N:LX/05x6;

    iget-object v0, v8, Lcom/instagram/common/session/UserSession;->userId:Ljava/lang/String;

    invoke-static {v1, v0}, LX/00P9;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v16, :cond_b

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v8, v12}, LX/01qA;->A02(LX/06c1;Z)LX/0AO7;

    move-result-object v14

    const-wide v0, 0x8105c400301af2L

    check-cast v14, Lcom/facebook/mobileconfig/factory/MobileConfigUnsafeContext;

    invoke-interface {v14, v0, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigUnsafeContext;->BYe(J)Z

    move-result v0

    goto :goto_6

    :cond_b
    if-eqz v15, :cond_c

    iget v0, v15, LX/05x6;->A00:I

    if-nez v0, :cond_c

    invoke-static {v8, v12}, LX/01qA;->A02(LX/06c1;Z)LX/0AO7;

    move-result-object v14

    const-wide v0, 0x8105c400301af2L

    check-cast v14, Lcom/facebook/mobileconfig/factory/MobileConfigUnsafeContext;

    invoke-interface {v14, v0, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigUnsafeContext;->BYe(J)Z

    move-result v0

    :goto_6
    if-nez v0, :cond_d

    :cond_c
    const/16 v24, 0x1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    :try_start_3
    monitor-exit v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v4}, LX/0BWc;->A1F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/0AaZ;

    if-eqz v0, :cond_e

    iget-object v0, v0, LX/0AaZ;->A01:LX/0L0N;

    iget v0, v0, LX/0L0N;->A00:I

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const-string v2, ""

    const/4 v0, -0x1

    new-instance v1, LX/0L0N;

    invoke-direct {v1}, LX/0L0N;-><init>()V

    iput v12, v1, LX/0L0N;->A00:I

    iput-object v2, v1, LX/0L0N;->A02:Ljava/lang/String;

    iput-object v2, v1, LX/0L0N;->A03:Ljava/lang/String;

    iput v0, v1, LX/0L0N;->A01:I

    iput-object v2, v1, LX/0L0N;->A04:Ljava/lang/String;

    iput-object v2, v1, LX/0L0N;->A05:Ljava/lang/String;

    new-instance v0, LX/0AaZ;

    invoke-direct {v0, v1, v11}, LX/0AaZ;-><init>(LX/0L0N;LX/0038;)V

    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    invoke-static {v4}, LX/0BWc;->A1F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/0AaZ;

    if-eqz v0, :cond_10

    iget-object v0, v0, LX/0AaZ;->A00:LX/0038;

    if-eqz v0, :cond_10

    iget-object v1, v3, LX/037A;->A0i:Ljava/lang/Long;

    iget-object v0, v0, LX/037A;->A0i:Ljava/lang/Long;

    invoke-static {v1, v0}, LX/00P9;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_11

    :cond_10
    const/4 v0, 0x0

    :cond_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {v4}, LX/0BWc;->A1F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/0AaZ;

    if-eqz v0, :cond_13

    iget-object v0, v0, LX/0AaZ;->A01:LX/0L0N;

    iget v0, v0, LX/0L0N;->A00:I

    if-nez v0, :cond_13

    :cond_12
    :goto_7
    iget-object v14, v3, LX/037A;->A14:Ljava/lang/String;

    invoke-virtual {v3}, LX/0038;->A0n()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v3, LX/037A;->A0i:Ljava/lang/Long;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    long-to-int v0, v15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto :goto_8

    :cond_13
    const-string v14, ""

    const/4 v0, -0x1

    new-instance v1, LX/0L0N;

    invoke-direct {v1}, LX/0L0N;-><init>()V

    iput v12, v1, LX/0L0N;->A00:I

    iput-object v14, v1, LX/0L0N;->A02:Ljava/lang/String;

    iput-object v14, v1, LX/0L0N;->A03:Ljava/lang/String;

    iput v0, v1, LX/0L0N;->A01:I

    iput-object v14, v1, LX/0L0N;->A04:Ljava/lang/String;

    iput-object v14, v1, LX/0L0N;->A05:Ljava/lang/String;

    new-instance v0, LX/0AaZ;

    invoke-direct {v0, v1, v11}, LX/0AaZ;-><init>(LX/0L0N;LX/0038;)V

    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_14
    const/16 v16, 0x0

    :goto_8
    if-eqz v14, :cond_1

    if-eqz v1, :cond_1

    if-eqz v16, :cond_1

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v15, LX/0L0N;

    invoke-direct {v15}, LX/0L0N;-><init>()V

    iput v7, v15, LX/0L0N;->A00:I

    iput-object v1, v15, LX/0L0N;->A02:Ljava/lang/String;

    iput-object v14, v15, LX/0L0N;->A03:Ljava/lang/String;

    iput v0, v15, LX/0L0N;->A01:I

    iput-object v1, v15, LX/0L0N;->A04:Ljava/lang/String;

    iput-object v14, v15, LX/0L0N;->A05:Ljava/lang/String;

    new-instance v0, LX/0AaZ;

    invoke-direct {v0, v15, v3}, LX/0AaZ;-><init>(LX/0L0N;LX/0038;)V

    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_9
    invoke-virtual {v3}, LX/0038;->A0g()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_b

    :cond_16
    invoke-static {v4}, LX/0BWc;->A1F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/0AaZ;

    if-eqz v0, :cond_17

    iget-object v0, v0, LX/0AaZ;->A01:LX/0L0N;

    iget v0, v0, LX/0L0N;->A00:I

    const/4 v15, 0x1

    if-eqz v0, :cond_18

    :cond_17
    const/4 v15, 0x0

    :cond_18
    invoke-static {v4}, LX/0BWc;->A1F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/0AaZ;

    if-eqz v15, :cond_19

    if-eqz v0, :cond_1a

    iget-object v15, v0, LX/0AaZ;->A01:LX/0L0N;

    if-eqz v15, :cond_1a

    iput v7, v15, LX/0L0N;->A00:I

    iput-object v1, v15, LX/0L0N;->A02:Ljava/lang/String;

    iput-object v14, v15, LX/0L0N;->A03:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, v15, LX/0L0N;->A01:I

    iput-object v1, v15, LX/0L0N;->A04:Ljava/lang/String;

    iput-object v14, v15, LX/0L0N;->A05:Ljava/lang/String;

    goto :goto_a

    :cond_19
    if-eqz v0, :cond_1a

    iget-object v15, v0, LX/0AaZ;->A01:LX/0L0N;

    if-eqz v15, :cond_1a

    iget v0, v15, LX/0L0N;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v15, LX/0L0N;->A00:I

    iput-object v1, v15, LX/0L0N;->A02:Ljava/lang/String;

    iput-object v14, v15, LX/0L0N;->A03:Ljava/lang/String;

    :cond_1a
    :goto_a
    invoke-static {v4}, LX/0BWc;->A1F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/0AaZ;

    if-eqz v0, :cond_15

    iput-object v3, v0, LX/0AaZ;->A00:LX/0038;

    goto :goto_9

    :goto_b
    if-ne v0, v2, :cond_1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, LX/0038;->A1O(Ljava/lang/Long;)V

    goto/16 :goto_0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_1b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, LX/0AaZ;

    iget-object v0, v0, LX/0AaZ;->A01:LX/0L0N;

    iget v0, v0, LX/0L0N;->A00:I

    if-eqz v0, :cond_1c

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1d
    invoke-static {v3}, LX/00K8;->A0F(Ljava/lang/Iterable;)I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/0AaZ;

    iget-object v0, v0, LX/0AaZ;->A01:LX/0L0N;

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1e
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v5, LX/0Eax;

    invoke-direct {v5}, LX/0Eax;-><init>()V

    iput-object v9, v5, LX/0Eax;->A01:Ljava/lang/String;

    iput-object v2, v5, LX/0Eax;->A02:Ljava/util/List;

    move-wide/from16 v0, v17

    iput-wide v0, v5, LX/0Eax;->A00:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1f
    :try_start_6
    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v10

    if-eqz v5, :cond_21

    move-object/from16 v0, v29

    iget-object v0, v0, LX/02Uw;->A11:LX/02XZ;

    invoke-virtual {v0, v5}, LX/02XZ;->A00(LX/0Eax;)V

    goto :goto_e

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :cond_20
    monitor-exit v10

    :cond_21
    :goto_e
    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, LX/00BW;->A0Q(Lcom/instagram/model/direct/DirectThreadKey;)LX/04k3;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2, v12}, LX/04k3;->A0Z(Z)Z

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_22

    invoke-static {v13, v2}, LX/00BW;->A0L(LX/00BW;LX/04k3;)V

    :cond_22
    return-void
.end method