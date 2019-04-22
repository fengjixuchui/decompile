.class public Loicq/wlogin_sdk/request/x;
.super Loicq/wlogin_sdk/request/k;
.source "request_smslogin_refresh.java"


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Loicq/wlogin_sdk/request/k;-><init>()V

    .line 10
    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/x;->s:I

    .line 11
    const/16 v0, 0x13

    iput v0, p0, Loicq/wlogin_sdk/request/x;->t:I

    .line 12
    const-string v0, "wtlogin.login"

    iput-object v0, p0, Loicq/wlogin_sdk/request/x;->u:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Loicq/wlogin_sdk/request/x;->w:Loicq/wlogin_sdk/request/u;

    .line 14
    iget-object v0, p0, Loicq/wlogin_sdk/request/x;->w:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 15
    return-void
.end method


# virtual methods
.method public a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    .prologue
    .line 61
    .line 62
    sget v10, Loicq/wlogin_sdk/request/u;->u:I

    .line 64
    const/4 v2, 0x0

    move v13, v2

    .line 66
    :goto_0
    invoke-virtual/range {p0 .. p3}, Loicq/wlogin_sdk/request/x;->a(II[J)[B

    move-result-object v12

    .line 68
    iget v3, p0, Loicq/wlogin_sdk/request/x;->h:I

    iget v4, p0, Loicq/wlogin_sdk/request/x;->s:I

    iget v5, p0, Loicq/wlogin_sdk/request/x;->i:I

    iget-object v2, p0, Loicq/wlogin_sdk/request/x;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v2, Loicq/wlogin_sdk/request/u;->f:J

    iget v8, p0, Loicq/wlogin_sdk/request/x;->l:I

    iget v9, p0, Loicq/wlogin_sdk/request/x;->m:I

    iget v11, p0, Loicq/wlogin_sdk/request/x;->o:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/x;->a(IIIJIIII[B)V

    .line 72
    iget-object v2, p0, Loicq/wlogin_sdk/request/x;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {p0, v2, v3, v0}, Loicq/wlogin_sdk/request/x;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 73
    if-eqz v2, :cond_0

    .line 84
    :goto_1
    return v2

    .line 77
    :cond_0
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/x;->b()I

    move-result v3

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry num:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ret:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Loicq/wlogin_sdk/request/x;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/16 v2, 0xb4

    if-eq v3, v2, :cond_1

    move v2, v3

    .line 80
    goto :goto_1

    .line 82
    :cond_1
    add-int/lit8 v2, v13, 0x1

    const/4 v4, 0x1

    if-lt v13, v4, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v13, v2

    goto :goto_0
.end method

.method public a(II[J)[B
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 20
    .line 21
    const/4 v0, 0x3

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    .line 22
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 23
    array-length v7, v5

    .line 26
    iget-object v0, p0, Loicq/wlogin_sdk/request/x;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v8

    move v4, v3

    move v1, v3

    move v2, v3

    .line 27
    :goto_0
    if-ge v4, v7, :cond_1

    .line 28
    new-array v0, v3, [B

    .line 29
    aget v9, v5, v4

    sparse-switch v9, :sswitch_data_0

    .line 41
    :goto_1
    array-length v9, v0

    const/4 v10, 0x4

    if-le v9, v10, :cond_0

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    array-length v9, v0

    add-int/2addr v1, v9

    .line 44
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    move v1, v2

    .line 27
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 31
    :sswitch_0
    iget-object v0, v8, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/f;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/f;->a()[B

    move-result-object v0

    goto :goto_1

    .line 34
    :sswitch_1
    new-instance v0, Loicq/wlogin_sdk/b/cq;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/cq;-><init>()V

    sget v9, Loicq/wlogin_sdk/request/u;->s:I

    invoke-virtual {v0, v3, v9, v3}, Loicq/wlogin_sdk/b/cq;->a(III)[B

    move-result-object v0

    goto :goto_1

    .line 37
    :sswitch_2
    new-instance v0, Loicq/wlogin_sdk/b/t;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/t;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Loicq/wlogin_sdk/b/t;->a(II[J)[B

    move-result-object v0

    goto :goto_1

    .line 48
    :cond_1
    new-array v5, v1, [B

    move v1, v3

    move v4, v3

    .line 50
    :goto_2
    if-ge v1, v2, :cond_2

    .line 51
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 52
    array-length v7, v0

    invoke-static {v0, v3, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    array-length v0, v0

    add-int/2addr v4, v0

    .line 50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 56
    :cond_2
    iget v0, p0, Loicq/wlogin_sdk/request/x;->t:I

    invoke-virtual {p0, v5, v0, v2}, Loicq/wlogin_sdk/request/x;->a([BII)[B

    move-result-object v0

    return-object v0

    .line 21
    :array_0
    .array-data 4
        0x104
        0x8
        0x116
    .end array-data

    .line 29
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x104 -> :sswitch_0
        0x116 -> :sswitch_2
    .end sparse-switch
.end method
