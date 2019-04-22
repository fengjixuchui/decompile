.class public Loicq/wlogin_sdk/request/w;
.super Loicq/wlogin_sdk/request/k;
.source "request_smslogin_check.java"


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Loicq/wlogin_sdk/request/k;-><init>()V

    .line 10
    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/w;->s:I

    .line 11
    const/16 v0, 0x11

    iput v0, p0, Loicq/wlogin_sdk/request/w;->t:I

    .line 12
    const-string v0, "wtlogin.login"

    iput-object v0, p0, Loicq/wlogin_sdk/request/w;->u:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Loicq/wlogin_sdk/request/w;->w:Loicq/wlogin_sdk/request/u;

    .line 14
    iget-object v0, p0, Loicq/wlogin_sdk/request/w;->w:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 15
    return-void
.end method


# virtual methods
.method public a(JJI[BLjava/lang/String;II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 21

    .prologue
    .line 89
    .line 90
    sget v9, Loicq/wlogin_sdk/request/u;->u:I

    .line 92
    const/4 v2, 0x0

    .line 94
    :goto_0
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v10, p6

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/w;->a(JJII[B[BII[J)[B

    move-result-object v20

    .line 100
    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/w;->h:I

    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/w;->s:I

    move-object/from16 v0, p0

    iget v13, v0, Loicq/wlogin_sdk/request/w;->i:I

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/w;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v3, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/w;->l:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/w;->m:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/w;->o:I

    move/from16 v19, v0

    move-object/from16 v10, p0

    move/from16 v18, v9

    invoke-virtual/range {v10 .. v20}, Loicq/wlogin_sdk/request/w;->a(IIIJIIII[B)V

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/w;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v3, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-virtual {v0, v3, v4, v1}, Loicq/wlogin_sdk/request/w;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v3

    .line 105
    if-eqz v3, :cond_0

    move v2, v3

    .line 116
    :goto_1
    return v2

    .line 109
    :cond_0
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/w;->b()I

    move-result v4

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retry num:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/w;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v6, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/16 v3, 0xb4

    if-eq v4, v3, :cond_1

    move v2, v4

    .line 112
    goto :goto_1

    .line 114
    :cond_1
    add-int/lit8 v3, v2, 0x1

    const/4 v5, 0x1

    if-lt v2, v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    goto/16 :goto_0
.end method

.method public a(JJII[B[BII[J)[B
    .locals 19

    .prologue
    .line 23
    const/4 v13, 0x0

    .line 24
    const/16 v4, 0x9

    new-array v15, v4, [I

    fill-array-data v15, :array_0

    .line 25
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 26
    array-length v0, v15

    move/from16 v17, v0

    .line 27
    const/4 v12, 0x0

    .line 29
    const/4 v4, 0x0

    move v14, v4

    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    .line 30
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 31
    aget v5, v15, v14

    sparse-switch v5, :sswitch_data_0

    .line 64
    :cond_0
    :goto_1
    array-length v5, v4

    const/4 v6, 0x4

    if-le v5, v6, :cond_3

    .line 65
    add-int/lit8 v6, v13, 0x1

    .line 66
    array-length v5, v4

    add-int/2addr v5, v12

    .line 67
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    move v5, v6

    .line 29
    :goto_2
    add-int/lit8 v6, v14, 0x1

    move v14, v6

    move v12, v4

    move v13, v5

    goto :goto_0

    .line 33
    :sswitch_0
    new-instance v5, Loicq/wlogin_sdk/b/c;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/c;-><init>()V

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p6

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Loicq/wlogin_sdk/b/c;->a(JJII)[B

    move-result-object v4

    goto :goto_1

    .line 37
    :sswitch_1
    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    array-length v5, v0

    if-lez v5, :cond_0

    .line 38
    new-instance v4, Loicq/wlogin_sdk/b/j;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/j;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/b/j;->a([B)[B

    move-result-object v4

    goto :goto_1

    .line 41
    :sswitch_2
    sget-object v5, Loicq/wlogin_sdk/request/u;->K:[B

    if-eqz v5, :cond_0

    sget-object v5, Loicq/wlogin_sdk/request/u;->K:[B

    array-length v5, v5

    if-lez v5, :cond_0

    .line 42
    new-instance v4, Loicq/wlogin_sdk/b/k;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/k;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->K:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/k;->a([B)[B

    move-result-object v4

    goto :goto_1

    .line 45
    :sswitch_3
    new-instance v4, Loicq/wlogin_sdk/b/cq;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cq;-><init>()V

    const/4 v5, 0x0

    sget v6, Loicq/wlogin_sdk/request/u;->s:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Loicq/wlogin_sdk/b/cq;->a(III)[B

    move-result-object v4

    goto :goto_1

    .line 48
    :sswitch_4
    new-instance v4, Loicq/wlogin_sdk/b/al;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/al;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->C:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/al;->a([B)[B

    move-result-object v4

    goto :goto_1

    .line 51
    :sswitch_5
    new-instance v4, Loicq/wlogin_sdk/b/ao;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ao;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->y:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/ao;->a([B)[B

    move-result-object v4

    goto :goto_1

    .line 54
    :sswitch_6
    new-instance v4, Loicq/wlogin_sdk/b/av;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/av;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/w;->w:Loicq/wlogin_sdk/request/u;

    iget v5, v5, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/av;->b(I)[B

    move-result-object v4

    goto/16 :goto_1

    .line 57
    :sswitch_7
    new-instance v4, Loicq/wlogin_sdk/b/q;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/q;-><init>()V

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/b/q;->a([B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 60
    :sswitch_8
    new-instance v4, Loicq/wlogin_sdk/b/t;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/t;-><init>()V

    move/from16 v0, p9

    move/from16 v1, p10

    move-object/from16 v2, p11

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/t;->a(II[J)[B

    move-result-object v4

    goto/16 :goto_1

    .line 72
    :cond_1
    new-array v7, v12, [B

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v4, 0x0

    move v6, v5

    move v5, v4

    :goto_3
    if-ge v5, v13, :cond_2

    .line 75
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 76
    const/4 v8, 0x0

    array-length v9, v4

    invoke-static {v4, v8, v7, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    array-length v4, v4

    add-int/2addr v6, v4

    .line 74
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 80
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/w;->t:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v13}, Loicq/wlogin_sdk/request/w;->a([BII)[B

    move-result-object v4

    return-object v4

    :cond_3
    move v4, v12

    move v5, v13

    goto/16 :goto_2

    .line 24
    nop

    :array_0
    .array-data 4
        0x100
        0x108
        0x109
        0x8
        0x142
        0x145
        0x154
        0x112
        0x116
    .end array-data

    .line 31
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x100 -> :sswitch_0
        0x108 -> :sswitch_1
        0x109 -> :sswitch_2
        0x112 -> :sswitch_7
        0x116 -> :sswitch_8
        0x142 -> :sswitch_4
        0x145 -> :sswitch_5
        0x154 -> :sswitch_6
    .end sparse-switch
.end method
