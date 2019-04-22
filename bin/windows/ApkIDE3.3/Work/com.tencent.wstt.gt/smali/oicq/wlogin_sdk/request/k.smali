.class public Loicq/wlogin_sdk/request/k;
.super Ljava/lang/Object;
.source "oicq_request.java"


# static fields
.field static A:I

.field static B:Ljava/lang/String;

.field static C:Ljava/lang/String;

.field static x:[Ljava/lang/String;

.field static y:[Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field public e:I

.field protected f:I

.field protected g:[B

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field p:Ljava/net/InetSocketAddress;

.field q:I

.field r:[B

.field protected s:I

.field protected t:I

.field protected u:Ljava/lang/String;

.field v:B

.field public w:Loicq/wlogin_sdk/request/u;

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "183.60.18.138"

    aput-object v1, v0, v3

    const-string v1, "112.90.85.191"

    aput-object v1, v0, v4

    const-string v1, "112.90.85.193"

    aput-object v1, v0, v5

    const-string v1, "183.60.18.150"

    aput-object v1, v0, v6

    const-string v1, "183.61.37.157"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "120.204.200.34"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "163.177.90.224"

    aput-object v2, v0, v1

    sput-object v0, Loicq/wlogin_sdk/request/k;->x:[Ljava/lang/String;

    .line 96
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "112.90.141.48"

    aput-object v1, v0, v3

    const-string v1, "113.108.11.157"

    aput-object v1, v0, v4

    const-string v1, "113.108.11.159"

    aput-object v1, v0, v5

    const-string v1, "183.61.37.156"

    aput-object v1, v0, v6

    sput-object v0, Loicq/wlogin_sdk/request/k;->y:[Ljava/lang/String;

    .line 104
    sput v3, Loicq/wlogin_sdk/request/k;->A:I

    .line 105
    const-string v0, ""

    sput-object v0, Loicq/wlogin_sdk/request/k;->B:Ljava/lang/String;

    .line 106
    const-string v0, ""

    sput-object v0, Loicq/wlogin_sdk/request/k;->C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x1000

    iput v0, p0, Loicq/wlogin_sdk/request/k;->a:I

    .line 60
    iput v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 61
    const/16 v0, 0x1b

    iput v0, p0, Loicq/wlogin_sdk/request/k;->c:I

    .line 62
    iput v1, p0, Loicq/wlogin_sdk/request/k;->d:I

    .line 63
    const/16 v0, 0xf

    iput v0, p0, Loicq/wlogin_sdk/request/k;->e:I

    .line 64
    iput v1, p0, Loicq/wlogin_sdk/request/k;->f:I

    .line 65
    iget v0, p0, Loicq/wlogin_sdk/request/k;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    .line 67
    const/16 v0, 0x1f41

    iput v0, p0, Loicq/wlogin_sdk/request/k;->h:I

    .line 68
    iput v1, p0, Loicq/wlogin_sdk/request/k;->i:I

    .line 69
    const/4 v0, 0x3

    iput v0, p0, Loicq/wlogin_sdk/request/k;->j:I

    .line 70
    iput v1, p0, Loicq/wlogin_sdk/request/k;->k:I

    .line 71
    iput v1, p0, Loicq/wlogin_sdk/request/k;->l:I

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/request/k;->m:I

    .line 73
    iput v1, p0, Loicq/wlogin_sdk/request/k;->n:I

    .line 74
    iput v1, p0, Loicq/wlogin_sdk/request/k;->o:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    .line 77
    iput v1, p0, Loicq/wlogin_sdk/request/k;->q:I

    .line 78
    const/16 v0, 0x1800

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/k;->r:[B

    .line 80
    iput v1, p0, Loicq/wlogin_sdk/request/k;->s:I

    .line 81
    iput v1, p0, Loicq/wlogin_sdk/request/k;->t:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/request/k;->u:Ljava/lang/String;

    .line 102
    iput v1, p0, Loicq/wlogin_sdk/request/k;->z:I

    .line 114
    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    sput p0, Loicq/wlogin_sdk/request/k;->A:I

    .line 129
    sput-object p1, Loicq/wlogin_sdk/request/k;->B:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static b([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 951
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 952
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 953
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 954
    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 1002
    iput p1, v0, Loicq/wlogin_sdk/request/async_context;->_last_flowid:I

    return p1
.end method

.method public a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 3

    .prologue
    .line 456
    .line 457
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/u;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/k;->b(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    .line 465
    :goto_0
    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_0

    .line 466
    new-instance v1, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v1}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    .line 467
    sget-object v2, Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;->MSG_4:Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/InternationMsg;->a(Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/request/k;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 470
    :cond_0
    return v0

    .line 462
    :cond_1
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/k;->e()I

    move-result v0

    goto :goto_0
.end method

.method public a(Loicq/wlogin_sdk/b/aw;)I
    .locals 6

    .prologue
    .line 1172
    .line 1173
    new-instance v0, Loicq/wlogin_sdk/b/bj;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/bj;-><init>()V

    .line 1174
    new-instance v1, Loicq/wlogin_sdk/b/bi;

    invoke-direct {v1}, Loicq/wlogin_sdk/b/bi;-><init>()V

    .line 1176
    invoke-virtual {p1}, Loicq/wlogin_sdk/b/aw;->b()[B

    move-result-object v2

    .line 1177
    const/4 v3, 0x2

    .line 1178
    array-length v4, v2

    .line 1181
    invoke-virtual {v0, v2, v3, v4}, Loicq/wlogin_sdk/b/bj;->b([BII)I

    move-result v5

    .line 1182
    if-lez v5, :cond_0

    .line 1183
    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/k;->a(Loicq/wlogin_sdk/b/bj;)I

    .line 1187
    :cond_0
    invoke-virtual {v1, v2, v3, v4}, Loicq/wlogin_sdk/b/bi;->b([BII)I

    move-result v0

    .line 1188
    if-lez v0, :cond_1

    .line 1190
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    const/4 v2, 0x1

    iput v2, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 1191
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1}, Loicq/wlogin_sdk/b/bi;->b()[B

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/request/u;->p:[B

    .line 1192
    const-string v0, "get rollback sig"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public a(Loicq/wlogin_sdk/b/bj;)I
    .locals 9

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1128
    invoke-virtual {p1}, Loicq/wlogin_sdk/b/bj;->b()[B

    move-result-object v3

    .line 1129
    const/4 v2, 0x1

    .line 1130
    if-eqz v3, :cond_0

    array-length v4, v3

    if-le v4, v0, :cond_0

    .line 1131
    invoke-static {v3, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v4

    move v2, v0

    move v0, v1

    .line 1133
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1134
    array-length v5, v3

    add-int/lit8 v6, v2, 0x1

    if-ge v5, v6, :cond_1

    .line 1163
    :cond_0
    return v1

    .line 1137
    :cond_1
    invoke-static {v3, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v5

    .line 1138
    add-int/lit8 v2, v2, 0x1

    .line 1140
    array-length v6, v3

    add-int/lit8 v7, v2, 0x2

    if-lt v6, v7, :cond_0

    .line 1143
    invoke-static {v3, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v6

    .line 1144
    add-int/lit8 v2, v2, 0x2

    .line 1146
    array-length v7, v3

    add-int v8, v2, v6

    if-lt v7, v8, :cond_0

    .line 1149
    new-array v7, v6, [B

    .line 1150
    invoke-static {v3, v2, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1151
    add-int/2addr v2, v6

    .line 1153
    array-length v6, v3

    add-int/lit8 v8, v2, 0x2

    if-lt v6, v8, :cond_0

    .line 1156
    invoke-static {v3, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v6

    .line 1157
    add-int/lit8 v2, v2, 0x2

    .line 1159
    invoke-virtual {p0, v5, v7, v6}, Loicq/wlogin_sdk/request/k;->a(I[BI)V

    .line 1133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([BII[B)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-static {p1, p2, p3, p4}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v1

    .line 261
    if-nez v1, :cond_0

    .line 262
    const/16 v0, -0x3ea

    .line 276
    :goto_0
    return v0

    .line 264
    :cond_0
    array-length v2, v1

    iput v2, p0, Loicq/wlogin_sdk/request/k;->f:I

    .line 266
    array-length v2, v1

    iget v3, p0, Loicq/wlogin_sdk/request/k;->e:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Loicq/wlogin_sdk/request/k;->a:I

    if-le v2, v3, :cond_1

    .line 267
    array-length v2, v1

    iget v3, p0, Loicq/wlogin_sdk/request/k;->e:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Loicq/wlogin_sdk/request/k;->a:I

    .line 268
    iget v2, p0, Loicq/wlogin_sdk/request/k;->a:I

    new-array v2, v2, [B

    .line 269
    iget-object v3, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v4, p0, Loicq/wlogin_sdk/request/k;->b:I

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iput-object v2, p0, Loicq/wlogin_sdk/request/k;->g:[B

    .line 272
    :cond_1
    iput v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 273
    iget-object v2, p0, Loicq/wlogin_sdk/request/k;->g:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget v2, p0, Loicq/wlogin_sdk/request/k;->b:I

    iget v3, p0, Loicq/wlogin_sdk/request/k;->e:I

    add-int/lit8 v3, v3, 0x2

    array-length v1, v1

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    goto :goto_0
.end method

.method public a(IZ)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 423
    const-string v0, ""

    .line 424
    div-int/lit8 v1, p1, 0x2

    .line 425
    sget v2, Loicq/wlogin_sdk/request/k;->A:I

    if-eqz v2, :cond_1

    sget-object v2, Loicq/wlogin_sdk/request/k;->B:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Loicq/wlogin_sdk/request/k;->B:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 426
    sget-object v0, Loicq/wlogin_sdk/request/k;->B:Ljava/lang/String;

    .line 449
    :cond_0
    :goto_0
    sput-object v0, Loicq/wlogin_sdk/request/k;->C:Ljava/lang/String;

    .line 450
    const-string v2, "resolve_server_addr OK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tryno:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-object v0

    .line 427
    :cond_1
    if-ge v1, v3, :cond_7

    .line 428
    if-eqz p2, :cond_5

    .line 429
    sget v2, Loicq/wlogin_sdk/request/u;->B:I

    if-ne v2, v3, :cond_4

    .line 430
    new-instance v0, Ljava/lang/String;

    sget-object v2, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->get_wap_server_host1(Landroid/content/Context;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 441
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 442
    :cond_3
    invoke-virtual {p0, p2}, Loicq/wlogin_sdk/request/k;->b(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 431
    :cond_4
    sget v2, Loicq/wlogin_sdk/request/u;->B:I

    if-ne v2, v4, :cond_2

    .line 432
    new-instance v0, Ljava/lang/String;

    sget-object v2, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->get_wap_server_host2(Landroid/content/Context;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 435
    :cond_5
    sget v2, Loicq/wlogin_sdk/request/u;->B:I

    if-ne v2, v3, :cond_6

    .line 436
    new-instance v0, Ljava/lang/String;

    sget-object v2, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->get_server_host1(Landroid/content/Context;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 437
    :cond_6
    sget v2, Loicq/wlogin_sdk/request/u;->B:I

    if-ne v2, v4, :cond_2

    .line 438
    new-instance v0, Ljava/lang/String;

    sget-object v2, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->get_server_host2(Landroid/content/Context;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 443
    :cond_7
    if-ge v1, v4, :cond_8

    .line 444
    invoke-virtual {p0, p2}, Loicq/wlogin_sdk/request/k;->b(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_8
    invoke-virtual {p0, p2}, Loicq/wlogin_sdk/request/k;->a(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    .line 118
    if-nez p1, :cond_0

    .line 119
    sget-object v0, Loicq/wlogin_sdk/request/k;->x:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    sget-object v2, Loicq/wlogin_sdk/request/k;->x:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 122
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Loicq/wlogin_sdk/request/k;->y:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    sget-object v2, Loicq/wlogin_sdk/request/k;->y:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 167
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 168
    return-void
.end method

.method public a(IIIJIIIII)V
    .locals 4

    .prologue
    .line 135
    iget v0, p0, Loicq/wlogin_sdk/request/k;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/k;->i:I

    .line 136
    const/4 v1, 0x0

    iput v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 138
    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/request/k;->b:I

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 139
    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 140
    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/request/k;->b:I

    iget v3, p0, Loicq/wlogin_sdk/request/k;->c:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p10

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 141
    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 142
    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/request/k;->b:I

    invoke-static {v1, v2, p1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 143
    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 144
    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/request/k;->b:I

    invoke-static {v1, v2, p2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 145
    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 146
    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/request/k;->b:I

    invoke-static {v1, v2, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 147
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 148
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    long-to-int v2, p4

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 149
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 150
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 151
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 152
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 153
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 154
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    invoke-static {v0, v1, p6}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 155
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 156
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    invoke-static {v0, v1, p7}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 157
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 158
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    invoke-static {v0, v1, p8}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 159
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 160
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    invoke-static {v0, v1, p9}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 161
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 162
    return-void
.end method

.method public a(IIIJIIII[B)V
    .locals 14

    .prologue
    .line 199
    move-object/from16 v0, p10

    array-length v13, v0

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v13}, Loicq/wlogin_sdk/request/k;->a(IIIJIIII[BI)V

    .line 202
    return-void
.end method

.method public a(IIIJIIII[BI)V
    .locals 14

    .prologue
    .line 188
    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p11

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/k;->a(IIIJIIIII)V

    .line 189
    move-object/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/request/k;->a([BI)V

    .line 190
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/k;->a()V

    .line 191
    return-void
.end method

.method a(I[BI)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1100
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    if-ne p1, v1, :cond_4

    .line 1105
    sget v0, Loicq/wlogin_sdk/request/u;->B:I

    if-ne v0, v1, :cond_3

    .line 1106
    sget-object v0, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v0, p2}, Loicq/wlogin_sdk/tools/util;->set_server_host1(Landroid/content/Context;[B)V

    .line 1118
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "net type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Loicq/wlogin_sdk/request/u;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1107
    :cond_3
    sget v0, Loicq/wlogin_sdk/request/u;->B:I

    if-ne v0, v2, :cond_2

    .line 1108
    sget-object v0, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v0, p2}, Loicq/wlogin_sdk/tools/util;->set_server_host2(Landroid/content/Context;[B)V

    goto :goto_1

    .line 1110
    :cond_4
    if-ne p1, v2, :cond_2

    .line 1111
    sget v0, Loicq/wlogin_sdk/request/u;->B:I

    if-ne v0, v1, :cond_5

    .line 1112
    sget-object v0, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v0, p2}, Loicq/wlogin_sdk/tools/util;->set_wap_server_host1(Landroid/content/Context;[B)V

    goto :goto_1

    .line 1113
    :cond_5
    sget v0, Loicq/wlogin_sdk/request/u;->B:I

    if-ne v0, v2, :cond_2

    .line 1114
    sget-object v0, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v0, p2}, Loicq/wlogin_sdk/tools/util;->set_wap_server_host2(Landroid/content/Context;[B)V

    goto :goto_1
.end method

.method public a(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iput-object p1, v0, Loicq/wlogin_sdk/request/u;->ac:Ljava/net/Socket;

    .line 389
    return-void
.end method

.method public a(Loicq/wlogin_sdk/b/as;)V
    .locals 3

    .prologue
    .line 935
    :try_start_0
    new-instance v0, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v0}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    .line 936
    if-eqz p1, :cond_0

    .line 937
    invoke-virtual {p1}, Loicq/wlogin_sdk/b/as;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/tools/ErrMsg;->setType(I)V

    .line 938
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Loicq/wlogin_sdk/b/as;->g()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/tools/ErrMsg;->setTitle(Ljava/lang/String;)V

    .line 939
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Loicq/wlogin_sdk/b/as;->h()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    .line 940
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Loicq/wlogin_sdk/b/as;->i()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/tools/ErrMsg;->setOtherinfo(Ljava/lang/String;)V

    .line 942
    new-instance v1, Loicq/wlogin_sdk/request/e;

    sget-object v2, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Loicq/wlogin_sdk/request/e;-><init>(Landroid/content/Context;Loicq/wlogin_sdk/tools/ErrMsg;)V

    invoke-virtual {v1}, Loicq/wlogin_sdk/request/e;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 944
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Loicq/wlogin_sdk/tools/ErrMsg;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 921
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v1

    .line 922
    new-instance v0, Loicq/wlogin_sdk/tools/ErrMsg;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v5, v2, v3, v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 924
    if-eqz p1, :cond_0

    .line 926
    :try_start_0
    invoke-virtual {p1}, Loicq/wlogin_sdk/tools/ErrMsg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/tools/ErrMsg;

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 927
    :catch_0
    move-exception v0

    .line 928
    new-instance v0, Loicq/wlogin_sdk/tools/ErrMsg;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v5, v2, v3, v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    goto :goto_0
.end method

.method public a([BI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Loicq/wlogin_sdk/request/k;->a:I

    if-le v0, v1, :cond_0

    .line 174
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit16 v0, v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/request/k;->a:I

    .line 175
    iget v0, p0, Loicq/wlogin_sdk/request/k;->a:I

    new-array v0, v0, [B

    .line 176
    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/request/k;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iput-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    .line 179
    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->b:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 181
    return-void
.end method

.method public a(Loicq/wlogin_sdk/b/bb;)[B
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 1038
    .line 1040
    new-instance v1, Loicq/wlogin_sdk/b/h;

    invoke-direct {v1}, Loicq/wlogin_sdk/b/h;-><init>()V

    .line 1041
    new-instance v2, Loicq/wlogin_sdk/b/n;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/n;-><init>()V

    .line 1042
    new-instance v3, Loicq/wlogin_sdk/b/bc;

    invoke-direct {v3}, Loicq/wlogin_sdk/b/bc;-><init>()V

    .line 1043
    new-instance v4, Loicq/wlogin_sdk/b/ao;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ao;-><init>()V

    .line 1045
    invoke-virtual {p1}, Loicq/wlogin_sdk/b/bb;->b()[B

    move-result-object v5

    .line 1046
    const/4 v6, 0x2

    .line 1047
    array-length v7, v5

    .line 1050
    invoke-virtual {v1, v5, v6, v7}, Loicq/wlogin_sdk/b/h;->b([BII)I

    move-result v8

    .line 1051
    if-gez v8, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-object v0

    .line 1055
    :cond_1
    invoke-virtual {v2, v5, v6, v7}, Loicq/wlogin_sdk/b/n;->b([BII)I

    move-result v8

    .line 1056
    if-ltz v8, :cond_0

    .line 1060
    invoke-virtual {v3, v5, v6, v7}, Loicq/wlogin_sdk/b/bc;->b([BII)I

    move-result v5

    .line 1061
    if-ltz v5, :cond_0

    .line 1065
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/h;->a()[B

    move-result-object v1

    .line 1066
    invoke-virtual {v2}, Loicq/wlogin_sdk/b/n;->a()[B

    move-result-object v2

    .line 1067
    invoke-virtual {v3}, Loicq/wlogin_sdk/b/bc;->a()[B

    move-result-object v3

    .line 1068
    sget-object v0, Loicq/wlogin_sdk/request/u;->y:[B

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/b/ao;->a([B)[B

    move-result-object v4

    .line 1069
    const/4 v5, 0x4

    .line 1072
    array-length v0, v1

    add-int/lit8 v0, v0, 0x3

    array-length v6, v2

    add-int/2addr v0, v6

    array-length v6, v3

    add-int/2addr v0, v6

    array-length v6, v4

    add-int/2addr v0, v6

    .line 1074
    new-array v0, v0, [B

    .line 1076
    const/16 v6, 0x40

    aput-byte v6, v0, v9

    .line 1077
    const/4 v6, 0x1

    .line 1079
    invoke-static {v0, v6, v5}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 1080
    const/4 v5, 0x3

    .line 1081
    array-length v6, v1

    invoke-static {v1, v9, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1082
    array-length v1, v1

    add-int/lit8 v1, v1, 0x3

    .line 1083
    array-length v5, v2

    invoke-static {v2, v9, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1084
    array-length v2, v2

    add-int/2addr v1, v2

    .line 1085
    array-length v2, v3

    invoke-static {v3, v9, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1086
    array-length v2, v3

    add-int/2addr v1, v2

    .line 1087
    array-length v2, v4

    invoke-static {v4, v9, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1088
    array-length v2, v4

    add-int/2addr v1, v2

    .line 1090
    goto :goto_0
.end method

.method protected a([B)[B
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget v0, v0, Loicq/wlogin_sdk/request/u;->m:I

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v0, v0, Loicq/wlogin_sdk/request/u;->c:[B

    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v1, v1, Loicq/wlogin_sdk/request/u;->n:[B

    iget-object v2, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v2, v2, Loicq/wlogin_sdk/request/u;->o:[B

    invoke-virtual {p0, p1, v0, v1, v2}, Loicq/wlogin_sdk/request/k;->a([B[B[B[B)[B

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v0, v0, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {p0, p1, v0}, Loicq/wlogin_sdk/request/k;->a([B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method a([BII)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 356
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 357
    invoke-static {v0, v3, p2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 358
    const/4 v1, 0x2

    invoke-static {v0, v1, p3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 359
    const/4 v1, 0x4

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget v1, v1, Loicq/wlogin_sdk/request/u;->m:I

    if-nez v1, :cond_0

    .line 363
    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v1, v1, Loicq/wlogin_sdk/request/u;->c:[B

    iget-object v2, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v2, v2, Loicq/wlogin_sdk/request/u;->n:[B

    iget-object v3, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->o:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/k;->a([B[B[B[B)[B

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v1, v1, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/request/k;->a([B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method a([B[B)[B
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x2

    const/4 v5, 0x0

    .line 321
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 322
    :cond_0
    new-array v0, v5, [B

    .line 350
    :goto_0
    return-object v0

    .line 325
    :cond_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget v0, v0, Loicq/wlogin_sdk/request/u;->m:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 327
    :goto_1
    array-length v2, p1

    invoke-static {p1, v5, v2, p2}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v3

    .line 328
    array-length v2, p2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    array-length v4, v3

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 330
    invoke-static {v2, v5, v6}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 333
    invoke-static {v2, v6, v0}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 336
    array-length v0, p2

    invoke-static {p2, v5, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    .line 339
    const/16 v1, 0x102

    invoke-static {v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 340
    add-int/lit8 v0, v0, 0x2

    .line 342
    invoke-static {v2, v0, v5}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 343
    add-int/lit8 v0, v0, 0x2

    .line 345
    array-length v1, v3

    invoke-static {v3, v5, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    array-length v1, v3

    add-int/2addr v0, v1

    move-object v0, v2

    .line 350
    goto :goto_0

    :cond_2
    move v0, v1

    .line 325
    goto :goto_1
.end method

.method public a([B[B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1013
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1014
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1029
    :goto_0
    return-object v0

    .line 1017
    :cond_1
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1020
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1021
    array-length v1, p1

    add-int/2addr v1, v3

    .line 1023
    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1024
    array-length v2, p2

    add-int/2addr v1, v2

    .line 1026
    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1027
    array-length v2, p3

    add-int/2addr v1, v2

    .line 1029
    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method a([B[B[B[B)[B
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 282
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 284
    :cond_0
    new-array v0, v4, [B

    .line 315
    :goto_0
    return-object v0

    .line 288
    :cond_1
    array-length v0, p1

    invoke-static {p1, v4, v0, p4}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v1

    .line 289
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    array-length v2, p3

    add-int/2addr v0, v2

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 292
    invoke-static {v0, v4, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 295
    invoke-static {v0, v3, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 296
    const/4 v2, 0x2

    .line 298
    array-length v3, p2

    invoke-static {p2, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    array-length v2, p2

    add-int/lit8 v2, v2, 0x2

    .line 301
    const/16 v3, 0x102

    invoke-static {v0, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 302
    add-int/lit8 v2, v2, 0x2

    .line 304
    array-length v3, p3

    invoke-static {v0, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 305
    add-int/lit8 v2, v2, 0x2

    .line 307
    array-length v3, p3

    invoke-static {p3, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    array-length v3, p3

    add-int/2addr v2, v3

    .line 310
    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    array-length v1, v1

    add-int/2addr v1, v2

    .line 315
    goto :goto_0
.end method

.method public b()I
    .locals 4

    .prologue
    .line 206
    .line 207
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 209
    iget v1, p0, Loicq/wlogin_sdk/request/k;->e:I

    add-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_1

    .line 210
    const/16 v0, -0x3f1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    iget v1, p0, Loicq/wlogin_sdk/request/k;->e:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Loicq/wlogin_sdk/request/k;->f:I

    .line 214
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget v0, v0, Loicq/wlogin_sdk/request/u;->m:I

    if-nez v0, :cond_3

    .line 215
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/k;->f:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->o:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/k;->a([BII[B)I

    move-result v0

    .line 216
    if-gez v0, :cond_2

    .line 217
    const-string v0, "use ecdh decrypt_body failed"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/k;->f:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/k;->a([BII[B)I

    move-result v0

    .line 221
    if-gez v0, :cond_2

    .line 222
    const-string v1, "use kc decrypt_body failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_2
    :goto_1
    if-ltz v0, :cond_0

    .line 235
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/k;->f:I

    invoke-virtual {p0, v0, v1, v2}, Loicq/wlogin_sdk/request/k;->c([BII)I

    move-result v0

    goto :goto_0

    .line 226
    :cond_3
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/request/k;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/k;->f:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/k;->a([BII[B)I

    move-result v0

    .line 227
    if-gez v0, :cond_2

    .line 228
    const-string v1, "use kc decrypt_body failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 13

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":snd_rcv_req_msf ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget v4, v0, Loicq/wlogin_sdk/request/u;->l:I

    .line 479
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/k;->c()[B

    move-result-object v3

    .line 480
    const/4 v7, 0x0

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 485
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WtloginMsfListener uin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " service_cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v10, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v0, Loicq/wlogin_sdk/request/WtloginMsfListener;

    iget-object v2, p0, Loicq/wlogin_sdk/request/k;->u:Ljava/lang/String;

    move-object v1, p1

    move v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginMsfListener;-><init>(Ljava/lang/String;Ljava/lang/String;[BIZLoicq/wlogin_sdk/request/WUserSigInfo;)V

    .line 489
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 490
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 491
    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 494
    invoke-virtual {v0}, Loicq/wlogin_sdk/request/WtloginMsfListener;->getRetData()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 495
    if-nez v1, :cond_1

    .line 496
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recv data from server failed, ret="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/WtloginMsfListener;->getRet()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 497
    const/16 v0, -0x3e8

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    .line 510
    :goto_0
    iget v2, p0, Loicq/wlogin_sdk/request/k;->s:I

    const/16 v4, 0x812

    if-eq v2, v4, :cond_0

    .line 511
    new-instance v2, Loicq/wlogin_sdk/report/report_t3;

    invoke-direct {v2}, Loicq/wlogin_sdk/report/report_t3;-><init>()V

    .line 512
    iget v4, p0, Loicq/wlogin_sdk/request/k;->s:I

    iput v4, v2, Loicq/wlogin_sdk/report/report_t3;->_cmd:I

    .line 513
    iget v4, p0, Loicq/wlogin_sdk/request/k;->t:I

    iput v4, v2, Loicq/wlogin_sdk/report/report_t3;->_sub:I

    .line 514
    iput v1, v2, Loicq/wlogin_sdk/report/report_t3;->_rst2:I

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 516
    sub-long/2addr v4, v8

    long-to-int v4, v4

    iput v4, v2, Loicq/wlogin_sdk/report/report_t3;->_used:I

    .line 517
    const/4 v4, 0x0

    iput v4, v2, Loicq/wlogin_sdk/report/report_t3;->_try:I

    .line 518
    const-string v4, ""

    iput-object v4, v2, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    .line 519
    const-string v4, ""

    iput-object v4, v2, Loicq/wlogin_sdk/report/report_t3;->_ip:Ljava/lang/String;

    .line 520
    const/4 v4, 0x0

    iput v4, v2, Loicq/wlogin_sdk/report/report_t3;->_port:I

    .line 521
    const/4 v4, 0x0

    iput v4, v2, Loicq/wlogin_sdk/report/report_t3;->_conn:I

    .line 522
    const/4 v4, 0x0

    iput v4, v2, Loicq/wlogin_sdk/report/report_t3;->_net:I

    .line 523
    const-string v4, ""

    iput-object v4, v2, Loicq/wlogin_sdk/report/report_t3;->_str:Ljava/lang/String;

    .line 524
    if-nez v1, :cond_2

    .line 525
    array-length v3, v3

    iput v3, v2, Loicq/wlogin_sdk/report/report_t3;->_slen:I

    .line 526
    array-length v0, v0

    iput v0, v2, Loicq/wlogin_sdk/report/report_t3;->_rlen:I

    .line 531
    :goto_1
    const/4 v0, 0x3

    iput v0, v2, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    .line 533
    sget-object v0, Loicq/wlogin_sdk/request/u;->ag:Loicq/wlogin_sdk/report/report_t1;

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/report/report_t1;->add_t3(Loicq/wlogin_sdk/report/report_t3;)V

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":snd_rcv_req_msf ret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v3, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return v1

    .line 501
    :cond_1
    :try_start_2
    array-length v0, v1

    invoke-virtual {p0, v1, v0}, Loicq/wlogin_sdk/request/k;->b([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 503
    const/4 v0, 0x0

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    .line 507
    goto/16 :goto_0

    .line 504
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 505
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 506
    const/16 v1, -0x3e8

    goto/16 :goto_0

    .line 528
    :cond_2
    const/4 v0, 0x0

    iput v0, v2, Loicq/wlogin_sdk/report/report_t3;->_slen:I

    .line 529
    const/4 v0, 0x0

    iput v0, v2, Loicq/wlogin_sdk/report/report_t3;->_rlen:I

    goto :goto_1

    .line 504
    :catch_1
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_2
.end method

.method public b([B)I
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x1

    invoke-static {p1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    return v0
.end method

.method public b(Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 393
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 395
    if-eqz p1, :cond_0

    .line 397
    const-string v1, "wlogin.qq.com"

    aput-object v1, v0, v2

    .line 398
    const-string v1, "wlogin1.qq.com"

    aput-object v1, v0, v3

    .line 406
    :goto_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 407
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 408
    array-length v2, v0

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 410
    aget-object v0, v0, v1

    return-object v0

    .line 402
    :cond_0
    const-string v1, "wtlogin.qq.com"

    aput-object v1, v0, v2

    .line 403
    const-string v1, "wtlogin1.qq.com"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public b([BI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    iget v0, p0, Loicq/wlogin_sdk/request/k;->a:I

    if-le p2, v0, :cond_0

    .line 242
    add-int/lit16 v0, p2, 0x80

    iput v0, p0, Loicq/wlogin_sdk/request/k;->a:I

    .line 243
    iget v0, p0, Loicq/wlogin_sdk/request/k;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    .line 246
    :cond_0
    iput p2, p0, Loicq/wlogin_sdk/request/k;->b:I

    .line 247
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->g:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    return-void
.end method

.method public b([BII)V
    .locals 5

    .prologue
    .line 906
    new-instance v0, Loicq/wlogin_sdk/b/ap;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/ap;-><init>()V

    .line 907
    invoke-virtual {v0, p1, p2, p3}, Loicq/wlogin_sdk/b/ap;->b([BII)I

    move-result v1

    .line 909
    iget-object v2, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v2

    .line 911
    if-ltz v1, :cond_0

    .line 912
    iget-object v1, v2, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/ap;->f()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Loicq/wlogin_sdk/tools/ErrMsg;->setTitle(Ljava/lang/String;)V

    .line 913
    iget-object v1, v2, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/ap;->g()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    .line 914
    iget-object v1, v2, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/ap;->h()I

    move-result v3

    invoke-virtual {v1, v3}, Loicq/wlogin_sdk/tools/ErrMsg;->setType(I)V

    .line 915
    iget-object v1, v2, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/ap;->i()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Loicq/wlogin_sdk/tools/ErrMsg;->setOtherinfo(Ljava/lang/String;)V

    .line 917
    :cond_0
    return-void
.end method

.method public c(Z)I
    .locals 1

    .prologue
    const/16 v0, 0x1bb

    .line 415
    if-eqz p1, :cond_0

    .line 418
    :cond_0
    return v0
.end method

.method public c([BI)I
    .locals 1

    .prologue
    .line 899
    aget-byte v0, p1, p2

    iput-byte v0, p0, Loicq/wlogin_sdk/request/k;->v:B

    .line 900
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public c([BII)I
    .locals 91

    .prologue
    .line 1201
    const/4 v4, 0x5

    move/from16 v0, p3

    if-ge v0, v4, :cond_1

    .line 1202
    const/16 v4, -0x3f1

    .line 2006
    :cond_0
    :goto_0
    return v4

    .line 1204
    :cond_1
    const-wide/16 v44, 0x0

    const-wide/32 v14, 0x20f580

    .line 1205
    const-wide/32 v16, 0x190c80

    const-wide/16 v20, 0xb40

    const-wide/32 v22, 0x1a5e00

    .line 1206
    const-wide/32 v26, 0x11940

    const-wide/16 v46, 0x1770

    const-wide/32 v48, 0x1a5e00

    .line 1207
    const-wide/32 v50, 0x1a5e00

    .line 1208
    const-wide v12, 0xffffffffL

    .line 1209
    new-instance v6, Loicq/wlogin_sdk/b/f;

    invoke-direct {v6}, Loicq/wlogin_sdk/b/f;-><init>()V

    .line 1210
    new-instance v9, Loicq/wlogin_sdk/b/g;

    invoke-direct {v9}, Loicq/wlogin_sdk/b/g;-><init>()V

    .line 1211
    new-instance v18, Loicq/wlogin_sdk/b/r;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/b/r;-><init>()V

    .line 1212
    new-instance v19, Loicq/wlogin_sdk/b/u;

    invoke-direct/range {v19 .. v19}, Loicq/wlogin_sdk/b/u;-><init>()V

    .line 1214
    new-instance v28, Loicq/wlogin_sdk/b/o;

    invoke-direct/range {v28 .. v28}, Loicq/wlogin_sdk/b/o;-><init>()V

    .line 1215
    new-instance v39, Loicq/wlogin_sdk/b/p;

    invoke-direct/range {v39 .. v39}, Loicq/wlogin_sdk/b/p;-><init>()V

    .line 1216
    new-instance v25, Loicq/wlogin_sdk/b/l;

    invoke-direct/range {v25 .. v25}, Loicq/wlogin_sdk/b/l;-><init>()V

    .line 1217
    new-instance v43, Loicq/wlogin_sdk/b/s;

    invoke-direct/range {v43 .. v43}, Loicq/wlogin_sdk/b/s;-><init>()V

    .line 1218
    new-instance v24, Loicq/wlogin_sdk/b/e;

    invoke-direct/range {v24 .. v24}, Loicq/wlogin_sdk/b/e;-><init>()V

    .line 1219
    new-instance v52, Loicq/wlogin_sdk/b/v;

    invoke-direct/range {v52 .. v52}, Loicq/wlogin_sdk/b/v;-><init>()V

    .line 1221
    new-instance v35, Loicq/wlogin_sdk/b/d;

    invoke-direct/range {v35 .. v35}, Loicq/wlogin_sdk/b/d;-><init>()V

    .line 1222
    new-instance v37, Loicq/wlogin_sdk/b/m;

    invoke-direct/range {v37 .. v37}, Loicq/wlogin_sdk/b/m;-><init>()V

    .line 1223
    new-instance v38, Loicq/wlogin_sdk/b/w;

    invoke-direct/range {v38 .. v38}, Loicq/wlogin_sdk/b/w;-><init>()V

    .line 1224
    new-instance v53, Loicq/wlogin_sdk/b/x;

    invoke-direct/range {v53 .. v53}, Loicq/wlogin_sdk/b/x;-><init>()V

    .line 1225
    new-instance v54, Loicq/wlogin_sdk/b/z;

    invoke-direct/range {v54 .. v54}, Loicq/wlogin_sdk/b/z;-><init>()V

    .line 1226
    new-instance v55, Loicq/wlogin_sdk/b/aa;

    invoke-direct/range {v55 .. v55}, Loicq/wlogin_sdk/b/aa;-><init>()V

    .line 1227
    new-instance v56, Loicq/wlogin_sdk/b/ag;

    invoke-direct/range {v56 .. v56}, Loicq/wlogin_sdk/b/ag;-><init>()V

    .line 1228
    new-instance v57, Loicq/wlogin_sdk/b/j;

    invoke-direct/range {v57 .. v57}, Loicq/wlogin_sdk/b/j;-><init>()V

    .line 1229
    new-instance v58, Loicq/wlogin_sdk/b/h;

    invoke-direct/range {v58 .. v58}, Loicq/wlogin_sdk/b/h;-><init>()V

    .line 1230
    new-instance v59, Loicq/wlogin_sdk/b/n;

    invoke-direct/range {v59 .. v59}, Loicq/wlogin_sdk/b/n;-><init>()V

    .line 1231
    new-instance v60, Loicq/wlogin_sdk/b/ac;

    invoke-direct/range {v60 .. v60}, Loicq/wlogin_sdk/b/ac;-><init>()V

    .line 1232
    new-instance v61, Loicq/wlogin_sdk/b/y;

    invoke-direct/range {v61 .. v61}, Loicq/wlogin_sdk/b/y;-><init>()V

    .line 1233
    new-instance v62, Loicq/wlogin_sdk/b/aj;

    invoke-direct/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;-><init>()V

    .line 1234
    new-instance v63, Loicq/wlogin_sdk/b/ah;

    invoke-direct/range {v63 .. v63}, Loicq/wlogin_sdk/b/ah;-><init>()V

    .line 1235
    new-instance v64, Loicq/wlogin_sdk/b/as;

    invoke-direct/range {v64 .. v64}, Loicq/wlogin_sdk/b/as;-><init>()V

    .line 1236
    new-instance v41, Loicq/wlogin_sdk/b/at;

    invoke-direct/range {v41 .. v41}, Loicq/wlogin_sdk/b/at;-><init>()V

    .line 1238
    new-instance v65, Loicq/wlogin_sdk/b/am;

    invoke-direct/range {v65 .. v65}, Loicq/wlogin_sdk/b/am;-><init>()V

    .line 1239
    new-instance v66, Loicq/wlogin_sdk/b/cl;

    invoke-direct/range {v66 .. v66}, Loicq/wlogin_sdk/b/cl;-><init>()V

    .line 1240
    new-instance v67, Loicq/wlogin_sdk/b/ax;

    invoke-direct/range {v67 .. v67}, Loicq/wlogin_sdk/b/ax;-><init>()V

    .line 1241
    new-instance v68, Loicq/wlogin_sdk/b/ay;

    invoke-direct/range {v68 .. v68}, Loicq/wlogin_sdk/b/ay;-><init>()V

    .line 1242
    new-instance v69, Loicq/wlogin_sdk/b/ba;

    invoke-direct/range {v69 .. v69}, Loicq/wlogin_sdk/b/ba;-><init>()V

    .line 1243
    new-instance v70, Loicq/wlogin_sdk/b/bc;

    invoke-direct/range {v70 .. v70}, Loicq/wlogin_sdk/b/bc;-><init>()V

    .line 1244
    new-instance v71, Loicq/wlogin_sdk/b/bb;

    invoke-direct/range {v71 .. v71}, Loicq/wlogin_sdk/b/bb;-><init>()V

    .line 1245
    new-instance v72, Loicq/wlogin_sdk/b/aw;

    invoke-direct/range {v72 .. v72}, Loicq/wlogin_sdk/b/aw;-><init>()V

    .line 1246
    new-instance v73, Loicq/wlogin_sdk/b/bh;

    invoke-direct/range {v73 .. v73}, Loicq/wlogin_sdk/b/bh;-><init>()V

    .line 1247
    new-instance v74, Loicq/wlogin_sdk/b/be;

    invoke-direct/range {v74 .. v74}, Loicq/wlogin_sdk/b/be;-><init>()V

    .line 1248
    new-instance v75, Loicq/wlogin_sdk/b/bf;

    invoke-direct/range {v75 .. v75}, Loicq/wlogin_sdk/b/bf;-><init>()V

    .line 1249
    new-instance v76, Loicq/wlogin_sdk/b/bk;

    invoke-direct/range {v76 .. v76}, Loicq/wlogin_sdk/b/bk;-><init>()V

    .line 1250
    new-instance v77, Loicq/wlogin_sdk/b/bm;

    invoke-direct/range {v77 .. v77}, Loicq/wlogin_sdk/b/bm;-><init>()V

    .line 1251
    new-instance v78, Loicq/wlogin_sdk/b/bn;

    invoke-direct/range {v78 .. v78}, Loicq/wlogin_sdk/b/bn;-><init>()V

    .line 1252
    new-instance v79, Loicq/wlogin_sdk/b/br;

    invoke-direct/range {v79 .. v79}, Loicq/wlogin_sdk/b/br;-><init>()V

    .line 1253
    new-instance v80, Loicq/wlogin_sdk/b/bs;

    invoke-direct/range {v80 .. v80}, Loicq/wlogin_sdk/b/bs;-><init>()V

    .line 1255
    new-instance v81, Loicq/wlogin_sdk/b/ad;

    invoke-direct/range {v81 .. v81}, Loicq/wlogin_sdk/b/ad;-><init>()V

    .line 1256
    new-instance v82, Loicq/wlogin_sdk/b/bu;

    invoke-direct/range {v82 .. v82}, Loicq/wlogin_sdk/b/bu;-><init>()V

    .line 1257
    new-instance v83, Loicq/wlogin_sdk/b/bv;

    invoke-direct/range {v83 .. v83}, Loicq/wlogin_sdk/b/bv;-><init>()V

    .line 1258
    new-instance v84, Loicq/wlogin_sdk/b/by;

    invoke-direct/range {v84 .. v84}, Loicq/wlogin_sdk/b/by;-><init>()V

    .line 1260
    new-instance v85, Loicq/wlogin_sdk/b/co;

    invoke-direct/range {v85 .. v85}, Loicq/wlogin_sdk/b/co;-><init>()V

    .line 1261
    new-instance v86, Loicq/wlogin_sdk/b/cp;

    invoke-direct/range {v86 .. v86}, Loicq/wlogin_sdk/b/cp;-><init>()V

    .line 1263
    const/16 v31, 0x0

    .line 1264
    const/16 v30, 0x0

    .line 1265
    const/16 v32, 0x0

    .line 1266
    const/16 v33, 0x0

    .line 1267
    const/16 v34, 0x0

    .line 1268
    const/16 v29, 0x0

    .line 1269
    const/4 v5, 0x0

    .line 1270
    const/16 v36, 0x0

    .line 1272
    new-instance v87, Loicq/wlogin_sdk/b/ai;

    invoke-direct/range {v87 .. v87}, Loicq/wlogin_sdk/b/ai;-><init>()V

    .line 1286
    const/4 v4, 0x0

    .line 1287
    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v10, v7, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v10, v11}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v88

    .line 1288
    move-object/from16 v0, v88

    iget-wide v7, v0, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    .line 1289
    move-object/from16 v0, v88

    iget-wide v10, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    .line 1291
    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/k;->s:I

    move/from16 v40, v0

    const/16 v42, 0x810

    move/from16 v0, v40

    move/from16 v1, v42

    if-ne v0, v1, :cond_5d

    .line 1292
    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/k;->t:I

    move/from16 v40, v0

    packed-switch v40, :pswitch_data_0

    .line 1334
    :pswitch_0
    const/16 v4, -0x3f4

    goto/16 :goto_0

    .line 1294
    :pswitch_1
    const/4 v4, 0x0

    move/from16 v40, v4

    .line 1338
    :goto_1
    add-int/lit8 v4, p2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/k;->c([BI)I

    move-result v42

    .line 1339
    add-int/lit8 v89, p2, 0x5

    .line 1341
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    const/16 v90, 0x0

    move-object/from16 v0, v90

    iput-object v0, v4, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    .line 1343
    sparse-switch v42, :sswitch_data_0

    .line 1984
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/k;->b([BII)V

    move/from16 v5, v42

    .line 1989
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ret:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v5, :cond_59

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v7, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    if-nez v5, :cond_2

    .line 1993
    const/4 v4, 0x0

    check-cast v4, Loicq/wlogin_sdk/tools/ErrMsg;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/k;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 1997
    :cond_2
    const/16 v4, 0xa

    if-eq v5, v4, :cond_3

    const/16 v4, 0xa1

    if-eq v5, v4, :cond_3

    const/16 v4, 0xa2

    if-eq v5, v4, :cond_3

    const/16 v4, 0xa4

    if-eq v5, v4, :cond_3

    const/16 v4, 0xa5

    if-eq v5, v4, :cond_3

    const/16 v4, 0xa6

    if-eq v5, v4, :cond_3

    const/16 v4, 0x9a

    if-eq v5, v4, :cond_3

    const/16 v4, 0x80

    if-lt v5, v4, :cond_5a

    const/16 v4, 0x8f

    if-gt v5, v4, :cond_5a

    .line 2000
    :cond_3
    const/16 v5, -0x3e8

    move v4, v5

    .line 2004
    :goto_4
    const/4 v5, 0x2

    move/from16 v0, v40

    if-eq v0, v5, :cond_0

    const/4 v5, 0x6

    move/from16 v0, v40

    if-eq v0, v5, :cond_0

    const/4 v5, 0x7

    move/from16 v0, v40

    if-eq v0, v5, :cond_0

    .line 2005
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/k;->a(I)I

    goto/16 :goto_0

    .line 1299
    :pswitch_2
    const/4 v4, 0x1

    move/from16 v40, v4

    .line 1300
    goto/16 :goto_1

    .line 1303
    :pswitch_3
    const/4 v4, 0x2

    move/from16 v40, v4

    .line 1304
    goto/16 :goto_1

    .line 1307
    :pswitch_4
    const/4 v4, 0x3

    move/from16 v40, v4

    .line 1308
    goto/16 :goto_1

    .line 1311
    :pswitch_5
    const/4 v4, 0x4

    move/from16 v40, v4

    .line 1312
    goto/16 :goto_1

    .line 1314
    :pswitch_6
    const/4 v4, 0x5

    move/from16 v40, v4

    .line 1315
    goto/16 :goto_1

    .line 1318
    :pswitch_7
    const/4 v4, 0x6

    move/from16 v40, v4

    .line 1319
    goto/16 :goto_1

    .line 1322
    :pswitch_8
    const/4 v4, 0x7

    move/from16 v40, v4

    .line 1323
    goto/16 :goto_1

    :pswitch_9
    move/from16 v40, v4

    .line 1328
    goto/16 :goto_1

    :pswitch_a
    move/from16 v40, v4

    .line 1331
    goto/16 :goto_1

    .line 1347
    :sswitch_0
    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_7

    .line 1349
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->b:[B

    if-nez v4, :cond_4

    .line 1350
    const/16 v4, -0x3ee

    goto/16 :goto_0

    .line 1353
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/at;->b([BII)I

    move-result v4

    .line 1354
    if-ltz v4, :cond_5

    .line 1355
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v41

    iput-object v0, v4, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    .line 1358
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v72

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/aw;->b([BII)I

    move-result v4

    .line 1359
    if-ltz v4, :cond_6

    .line 1360
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/k;->a(Loicq/wlogin_sdk/b/aw;)I

    .line 1363
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->b:[B

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4, v6}, Loicq/wlogin_sdk/b/u;->a([BII[B)I

    move-result v4

    .line 1430
    :goto_5
    if-gez v4, :cond_14

    move v5, v4

    .line 1432
    goto/16 :goto_2

    .line 1366
    :cond_7
    const/4 v4, 0x2

    move/from16 v0, v40

    if-ne v0, v4, :cond_d

    .line 1369
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/k;->f()I

    move-result v4

    const/4 v9, 0x3

    if-ne v4, v9, :cond_a

    .line 1370
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/r;->b([BII)I

    move-result v4

    .line 1371
    if-ltz v4, :cond_8

    .line 1372
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/b/r;->f()J

    move-result-wide v8

    iput-wide v8, v4, Loicq/wlogin_sdk/request/u;->f:J

    .line 1373
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v7, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1376
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/f;->b([BII)I

    move-result v4

    .line 1377
    if-ltz v4, :cond_9

    .line 1378
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/f;

    .line 1381
    :cond_9
    const/4 v4, 0x0

    move v5, v4

    .line 1382
    goto/16 :goto_2

    .line 1384
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/at;->b([BII)I

    move-result v4

    .line 1385
    if-ltz v4, :cond_b

    .line 1386
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v41

    iput-object v0, v4, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    .line 1389
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v72

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/aw;->b([BII)I

    move-result v4

    .line 1390
    if-ltz v4, :cond_c

    .line 1391
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/k;->a(Loicq/wlogin_sdk/b/aw;)I

    .line 1394
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v88

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_tgtgt_key:[B

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4, v6}, Loicq/wlogin_sdk/b/u;->a([BII[B)I

    move-result v4

    goto/16 :goto_5

    .line 1397
    :cond_d
    const/4 v4, 0x3

    move/from16 v0, v40

    if-eq v0, v4, :cond_e

    const/4 v4, 0x7

    move/from16 v0, v40

    if-ne v0, v4, :cond_11

    .line 1399
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/r;->b([BII)I

    move-result v4

    .line 1400
    if-gez v4, :cond_f

    move v5, v4

    .line 1401
    goto/16 :goto_2

    .line 1402
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/b/r;->f()J

    move-result-wide v8

    iput-wide v8, v4, Loicq/wlogin_sdk/request/u;->f:J

    .line 1403
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v7, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1405
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/f;->b([BII)I

    move-result v4

    .line 1406
    if-gez v4, :cond_10

    move v5, v4

    .line 1407
    goto/16 :goto_2

    .line 1408
    :cond_10
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/f;

    .line 1410
    const/4 v4, 0x0

    move v5, v4

    .line 1411
    goto/16 :goto_2

    .line 1415
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/at;->b([BII)I

    move-result v4

    .line 1416
    if-ltz v4, :cond_12

    .line 1417
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v41

    iput-object v0, v4, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    .line 1420
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v72

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/aw;->b([BII)I

    move-result v4

    .line 1421
    if-ltz v4, :cond_13

    .line 1422
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/k;->a(Loicq/wlogin_sdk/b/aw;)I

    .line 1425
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v88

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_tgtgt_key:[B

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4, v6}, Loicq/wlogin_sdk/b/u;->a([BII[B)I

    move-result v4

    .line 1427
    const/4 v6, 0x0

    sput v6, Loicq/wlogin_sdk/request/s;->D:I

    goto/16 :goto_5

    .line 1434
    :cond_14
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/b/u;->b()[B

    move-result-object v68

    .line 1435
    const/16 v41, 0x2

    .line 1436
    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v72, v0

    .line 1439
    move-object/from16 v0, v64

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/as;->b([BII)I

    move-result v4

    .line 1440
    if-lez v4, :cond_15

    .line 1441
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/k;->a(Loicq/wlogin_sdk/b/as;)V

    .line 1445
    :cond_15
    move-object/from16 v0, v56

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/ag;->b([BII)I

    move-result v4

    .line 1446
    if-lez v4, :cond_16

    .line 1447
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    invoke-virtual/range {v56 .. v56}, Loicq/wlogin_sdk/b/ag;->f()[B

    move-result-object v6

    invoke-virtual/range {v56 .. v56}, Loicq/wlogin_sdk/b/ag;->g()[B

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Loicq/wlogin_sdk/request/u;->a([B[B)V

    .line 1450
    :cond_16
    move-object/from16 v0, v28

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/o;->b([BII)I

    .line 1451
    move-object/from16 v0, v39

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/p;->b([BII)I

    .line 1452
    move-object/from16 v0, v25

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/l;->b([BII)I

    .line 1453
    move-object/from16 v0, v43

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/s;->b([BII)I

    .line 1456
    move-object/from16 v0, v52

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/v;->b([BII)I

    move-result v4

    .line 1457
    if-gez v4, :cond_17

    move v5, v4

    .line 1458
    goto/16 :goto_2

    .line 1461
    :cond_17
    move-object/from16 v0, v24

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/e;->b([BII)I

    move-result v4

    .line 1462
    if-ltz v4, :cond_18

    .line 1463
    invoke-virtual/range {v24 .. v24}, Loicq/wlogin_sdk/b/e;->b()[B

    move-result-object v29

    .line 1466
    :cond_18
    move-object/from16 v0, v57

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/j;->b([BII)I

    move-result v4

    .line 1467
    if-ltz v4, :cond_19

    .line 1468
    sget-object v4, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-virtual/range {v57 .. v57}, Loicq/wlogin_sdk/b/j;->b()[B

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->set_ksid(Landroid/content/Context;[B)V

    .line 1471
    :cond_19
    move-object/from16 v0, v35

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/d;->b([BII)I

    move-result v4

    .line 1472
    if-ltz v4, :cond_1a

    .line 1473
    invoke-virtual/range {v35 .. v35}, Loicq/wlogin_sdk/b/d;->b()[B

    move-result-object v31

    .line 1476
    :cond_1a
    move-object/from16 v0, v37

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/m;->b([BII)I

    move-result v4

    .line 1477
    if-ltz v4, :cond_1b

    .line 1478
    invoke-virtual/range {v37 .. v37}, Loicq/wlogin_sdk/b/m;->b()[B

    move-result-object v30

    .line 1481
    :cond_1b
    move-object/from16 v0, v38

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/w;->b([BII)I

    move-result v4

    .line 1482
    if-ltz v4, :cond_1c

    .line 1483
    invoke-virtual/range {v38 .. v38}, Loicq/wlogin_sdk/b/w;->b()[B

    move-result-object v32

    .line 1486
    :cond_1c
    move-object/from16 v0, v54

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/z;->b([BII)I

    move-result v4

    .line 1487
    if-ltz v4, :cond_1d

    .line 1488
    invoke-virtual/range {v54 .. v54}, Loicq/wlogin_sdk/b/z;->b()[B

    move-result-object v33

    .line 1491
    :cond_1d
    move-object/from16 v0, v55

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/aa;->b([BII)I

    move-result v4

    .line 1492
    if-ltz v4, :cond_1e

    .line 1493
    invoke-virtual/range {v55 .. v55}, Loicq/wlogin_sdk/b/aa;->b()[B

    move-result-object v34

    .line 1496
    :cond_1e
    move-object/from16 v0, v60

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/ac;->b([BII)I

    move-result v4

    .line 1497
    if-ltz v4, :cond_1f

    .line 1498
    invoke-virtual/range {v60 .. v60}, Loicq/wlogin_sdk/b/ac;->f()[B

    move-result-object v4

    .line 1499
    invoke-virtual/range {v60 .. v60}, Loicq/wlogin_sdk/b/ac;->g()[B

    move-result-object v36

    move-object v5, v4

    .line 1502
    :cond_1f
    move-object/from16 v0, v84

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/by;->b([BII)I

    move-result v4

    .line 1503
    if-ltz v4, :cond_21

    .line 1504
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 1505
    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1507
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Loicq/wlogin_sdk/request/u;->e(J)Ljava/lang/String;

    move-result-object v4

    .line 1508
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_20

    .line 1509
    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v9, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual/range {v84 .. v84}, Loicq/wlogin_sdk/b/by;->f()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v4, v9, v0}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 1515
    :cond_20
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "put t186: name: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " uin: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " pwd="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v84 .. v84}, Loicq/wlogin_sdk/b/by;->f()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tgt len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Loicq/wlogin_sdk/b/l;->b()[B

    move-result-object v6

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " tgt_key len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Loicq/wlogin_sdk/b/o;->b()[B

    move-result-object v6

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " st len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v43 .. v43}, Loicq/wlogin_sdk/b/s;->b()[B

    move-result-object v6

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " st_key len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v39 .. v39}, Loicq/wlogin_sdk/b/p;->b()[B

    move-result-object v6

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " stwx_web len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " a8 len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v31 .. v31}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " a5 len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lskey len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v32 .. v32}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " skey len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v33 .. v33}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " sig64 len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v34 .. v34}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " openid len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " openkey len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v36 .. v36}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " pwdflag: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v84 .. v84}, Loicq/wlogin_sdk/b/by;->c()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v84 .. v84}, Loicq/wlogin_sdk/b/by;->f()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v9, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    move-object/from16 v0, v71

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/bb;->b([BII)I

    move-result v4

    .line 1535
    if-ltz v4, :cond_22

    .line 1536
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/k;->a(Loicq/wlogin_sdk/b/bb;)[B

    move-result-object v4

    .line 1537
    if-eqz v4, :cond_25

    array-length v6, v4

    if-lez v6, :cond_25

    .line 1538
    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    new-instance v9, Loicq/wlogin_sdk/request/WFastLoginInfo;

    invoke-direct {v9, v4}, Loicq/wlogin_sdk/request/WFastLoginInfo;-><init>([B)V

    iput-object v9, v6, Loicq/wlogin_sdk/request/u;->j:Loicq/wlogin_sdk/request/WFastLoginInfo;

    .line 1545
    :cond_22
    :goto_7
    const/4 v4, 0x3

    const/4 v6, 0x0

    filled-new-array {v4, v6}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [[B

    .line 1547
    move-object/from16 v0, v69

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/ba;->b([BII)I

    move-result v4

    .line 1548
    if-ltz v4, :cond_23

    .line 1549
    const/4 v4, 0x0

    invoke-virtual/range {v69 .. v69}, Loicq/wlogin_sdk/b/ba;->f()[B

    move-result-object v6

    aput-object v6, v24, v4

    .line 1550
    const/4 v4, 0x1

    invoke-virtual/range {v69 .. v69}, Loicq/wlogin_sdk/b/ba;->g()[B

    move-result-object v6

    aput-object v6, v24, v4

    .line 1551
    const/4 v4, 0x2

    invoke-virtual/range {v69 .. v69}, Loicq/wlogin_sdk/b/ba;->h()[B

    move-result-object v6

    aput-object v6, v24, v4

    .line 1560
    :cond_23
    const/4 v4, 0x5

    const/4 v6, 0x0

    filled-new-array {v4, v6}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[B

    .line 1561
    const/4 v4, 0x0

    :goto_8
    const/4 v6, 0x5

    if-ge v4, v6, :cond_26

    .line 1562
    const/4 v6, 0x0

    new-array v6, v6, [B

    aput-object v6, v9, v4

    .line 1561
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1512
    :cond_24
    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v9, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual/range {v84 .. v84}, Loicq/wlogin_sdk/b/by;->f()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v4, v9, v0}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;Z)V

    goto/16 :goto_6

    .line 1541
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    new-instance v6, Loicq/wlogin_sdk/request/WFastLoginInfo;

    invoke-direct {v6}, Loicq/wlogin_sdk/request/WFastLoginInfo;-><init>()V

    iput-object v6, v4, Loicq/wlogin_sdk/request/u;->j:Loicq/wlogin_sdk/request/WFastLoginInfo;

    goto :goto_7

    .line 1565
    :cond_26
    move-object/from16 v0, v59

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/n;->b([BII)I

    move-result v4

    .line 1566
    move-object/from16 v0, v58

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/h;->b([BII)I

    move-result v6

    .line 1567
    if-ltz v6, :cond_27

    if-ltz v4, :cond_27

    .line 1569
    invoke-virtual/range {v59 .. v59}, Loicq/wlogin_sdk/b/n;->b()[B

    move-result-object v4

    .line 1570
    invoke-virtual/range {v58 .. v58}, Loicq/wlogin_sdk/b/h;->b()[B

    move-result-object v6

    invoke-static {v6, v4}, Loicq/wlogin_sdk/request/k;->b([B[B)[B

    move-result-object v4

    .line 1571
    const/4 v6, 0x0

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v9, v6

    .line 1574
    :cond_27
    move-object/from16 v0, v70

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/bc;->b([BII)I

    move-result v4

    .line 1575
    if-ltz v4, :cond_28

    .line 1576
    const/4 v4, 0x1

    invoke-virtual/range {v70 .. v70}, Loicq/wlogin_sdk/b/bc;->b()[B

    move-result-object v6

    aput-object v6, v9, v4

    .line 1579
    :cond_28
    move-object/from16 v0, v86

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/cp;->b([BII)I

    move-result v4

    .line 1580
    if-ltz v4, :cond_29

    .line 1581
    const/4 v4, 0x4

    invoke-virtual/range {v86 .. v86}, Loicq/wlogin_sdk/b/cp;->b()[B

    move-result-object v6

    aput-object v6, v9, v4

    .line 1585
    :cond_29
    move-object/from16 v0, v88

    iget-boolean v4, v0, Loicq/wlogin_sdk/request/async_context;->_sec_guid_flag:Z

    if-eqz v4, :cond_2a

    .line 1586
    const/4 v4, 0x2

    move-object/from16 v0, v88

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_G:[B

    aput-object v6, v9, v4

    .line 1587
    const/4 v4, 0x3

    move-object/from16 v0, v88

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_dpwd:[B

    aput-object v6, v9, v4

    .line 1588
    const/4 v4, 0x4

    move-object/from16 v0, v88

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t403:Loicq/wlogin_sdk/b/cp;

    invoke-virtual {v6}, Loicq/wlogin_sdk/b/cp;->b()[B

    move-result-object v6

    aput-object v6, v9, v4

    .line 1590
    const/4 v4, 0x0

    move-object/from16 v0, v88

    iput-boolean v4, v0, Loicq/wlogin_sdk/request/async_context;->_sec_guid_flag:Z

    .line 1599
    :cond_2a
    const/16 v4, 0xc

    const/4 v6, 0x0

    filled-new-array {v4, v6}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [[B

    .line 1600
    const/4 v4, 0x0

    :goto_9
    const/16 v6, 0xc

    if-ge v4, v6, :cond_2b

    .line 1601
    const/4 v6, 0x0

    new-array v6, v6, [B

    aput-object v6, v37, v4

    .line 1600
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1604
    :cond_2b
    move-object/from16 v0, v87

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/ai;->b([BII)I

    move-result v4

    .line 1605
    if-ltz v4, :cond_2c

    .line 1606
    const/4 v4, 0x0

    invoke-virtual/range {v87 .. v87}, Loicq/wlogin_sdk/b/ai;->b()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 1609
    :cond_2c
    move-object/from16 v0, v63

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/ah;->b([BII)I

    move-result v4

    .line 1610
    if-ltz v4, :cond_2d

    .line 1611
    const/4 v4, 0x1

    invoke-virtual/range {v63 .. v63}, Loicq/wlogin_sdk/b/ah;->f()[B

    move-result-object v5

    aput-object v5, v37, v4

    .line 1612
    invoke-virtual/range {v63 .. v63}, Loicq/wlogin_sdk/b/ah;->g()[B

    move-result-object v5

    .line 1615
    :cond_2d
    move-object/from16 v0, v65

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/am;->b([BII)I

    move-result v4

    .line 1616
    if-ltz v4, :cond_2e

    .line 1617
    const/4 v4, 0x2

    invoke-virtual/range {v65 .. v65}, Loicq/wlogin_sdk/b/am;->b()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 1620
    :cond_2e
    move-object/from16 v0, v66

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/cl;->b([BII)I

    move-result v4

    .line 1621
    if-ltz v4, :cond_2f

    .line 1622
    const/4 v4, 0x3

    invoke-virtual/range {v66 .. v66}, Loicq/wlogin_sdk/b/cl;->b()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 1625
    :cond_2f
    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/ax;->b([BII)I

    move-result v4

    .line 1626
    if-ltz v4, :cond_30

    .line 1627
    const/4 v4, 0x4

    invoke-virtual/range {v67 .. v67}, Loicq/wlogin_sdk/b/ax;->b()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 1630
    :cond_30
    move-object/from16 v0, v73

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/bh;->b([BII)I

    move-result v4

    .line 1631
    if-ltz v4, :cond_31

    .line 1632
    const/4 v4, 0x5

    invoke-virtual/range {v73 .. v73}, Loicq/wlogin_sdk/b/bh;->b()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 1635
    :cond_31
    move-object/from16 v0, v74

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/be;->b([BII)I

    move-result v4

    .line 1636
    if-ltz v4, :cond_32

    .line 1637
    const/4 v4, 0x6

    invoke-virtual/range {v74 .. v74}, Loicq/wlogin_sdk/b/be;->b()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 1640
    :cond_32
    move-object/from16 v0, v75

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/bf;->b([BII)I

    move-result v4

    .line 1641
    if-ltz v4, :cond_33

    .line 1642
    const/4 v4, 0x7

    invoke-virtual/range {v75 .. v75}, Loicq/wlogin_sdk/b/bf;->b()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 1645
    :cond_33
    new-instance v4, Loicq/wlogin_sdk/b/cg;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cg;-><init>()V

    .line 1646
    move-object/from16 v0, v68

    move/from16 v1, v41

    move/from16 v2, v72

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/cg;->b([BII)I

    move-result v6

    .line 1647
    if-ltz v6, :cond_5c

    .line 1648
    const/16 v5, 0x8

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/cg;->g()[B

    move-result-object v6

    aput-object v6, v37, v5

    .line 1649
    invoke-virtual {v4}, Loicq/wlogin_sdk/b/cg;->f()[B

    move-result-object v35

    .line 1651
    :goto_a
    new-instance v4, Loicq/wlogin_sdk/b/ci;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ci;-><init>()V

    .line 1652
    move-object/from16 v0, v68

    move/from16 v1, v41

    move/from16 v2, v72

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/ci;->b([BII)I

    move-result v5

    .line 1653
    if-ltz v5, :cond_34

    .line 1654
    const/16 v5, 0x9

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/ci;->f()[B

    move-result-object v6

    aput-object v6, v37, v5

    .line 1655
    const/16 v5, 0xa

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/ci;->g()[B

    move-result-object v4

    aput-object v4, v37, v5

    .line 1658
    :cond_34
    new-instance v4, Loicq/wlogin_sdk/b/a;

    const/16 v5, 0x203

    invoke-direct {v4, v5}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 1659
    move-object/from16 v0, v68

    move/from16 v1, v41

    move/from16 v2, v72

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/a;->b([BII)I

    move-result v5

    .line 1660
    if-ltz v5, :cond_35

    .line 1661
    const/16 v5, 0xb

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/a;->b()[B

    move-result-object v4

    aput-object v4, v37, v5

    .line 1664
    :cond_35
    new-instance v4, Loicq/wlogin_sdk/b/a;

    const/16 v5, 0x317

    invoke-direct {v4, v5}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 1665
    move-object/from16 v0, v68

    move/from16 v1, v41

    move/from16 v2, v72

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/a;->b([BII)I

    move-result v5

    .line 1666
    if-ltz v5, :cond_36

    .line 1667
    invoke-virtual {v4}, Loicq/wlogin_sdk/b/a;->b()[B

    move-result-object v4

    sput-object v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_QRPUSHSig:[B

    .line 1670
    :cond_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encrypt_a1 len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v9, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no_pic_sig len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v9, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " G len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v9, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dpwd len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v9, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " randseed len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v5, v9, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vkey len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v37, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " openid len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v35 .. v35}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " access_token len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v37, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " d2 len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v37, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " d2_key len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v37, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sid len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v5, v37, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " aq_sig len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v5, v37, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pskey len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x6

    aget-object v5, v37, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " super_key len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x7

    aget-object v5, v37, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " paytoken len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x8

    aget-object v5, v37, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pf len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x9

    aget-object v5, v37, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pfkey len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    aget-object v5, v37, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " da2 len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xb

    aget-object v5, v37, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    move-object/from16 v0, v61

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/y;->b([BII)I

    move-result v4

    .line 1692
    if-ltz v4, :cond_37

    .line 1693
    invoke-virtual/range {v61 .. v61}, Loicq/wlogin_sdk/b/y;->f()I

    move-result v4

    int-to-long v4, v4

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v4

    .line 1696
    :cond_37
    const/4 v4, 0x7

    new-array v0, v4, [J

    move-object/from16 v38, v0

    move/from16 v4, v41

    move-wide/from16 v18, v14

    .line 1698
    :goto_b
    move-object/from16 v0, v62

    move-object/from16 v1, v68

    move/from16 v2, v72

    invoke-virtual {v0, v1, v4, v2}, Loicq/wlogin_sdk/b/aj;->b([BII)I

    move-result v4

    if-ltz v4, :cond_3f

    .line 1700
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->f()I

    move-result v5

    if-eqz v5, :cond_5b

    .line 1701
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->f()I

    move-result v5

    int-to-long v14, v5

    .line 1704
    :goto_c
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->g()I

    move-result v5

    if-eqz v5, :cond_38

    .line 1705
    const/4 v5, 0x0

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->g()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    .line 1710
    :goto_d
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->h()I

    move-result v5

    if-eqz v5, :cond_39

    .line 1711
    const/4 v5, 0x1

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->h()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    .line 1716
    :goto_e
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->i()I

    move-result v5

    if-eqz v5, :cond_3a

    .line 1717
    const/4 v5, 0x2

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->i()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    .line 1722
    :goto_f
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->j()I

    move-result v5

    if-eqz v5, :cond_3b

    .line 1723
    const/4 v5, 0x3

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->j()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    .line 1728
    :goto_10
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->k()I

    move-result v5

    if-eqz v5, :cond_3c

    .line 1729
    const/4 v5, 0x4

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->k()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    .line 1734
    :goto_11
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->l()I

    move-result v5

    if-eqz v5, :cond_3d

    .line 1735
    const/4 v5, 0x5

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->l()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    .line 1740
    :goto_12
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->m()I

    move-result v5

    if-eqz v5, :cond_3e

    .line 1741
    const/4 v5, 0x6

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/aj;->m()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    move-wide/from16 v18, v14

    goto/16 :goto_b

    .line 1707
    :cond_38
    const/4 v5, 0x0

    aput-wide v16, v38, v5

    goto :goto_d

    .line 1713
    :cond_39
    const/4 v5, 0x1

    aput-wide v20, v38, v5

    goto :goto_e

    .line 1719
    :cond_3a
    const/4 v5, 0x2

    aput-wide v22, v38, v5

    goto :goto_f

    .line 1725
    :cond_3b
    const/4 v5, 0x3

    aput-wide v26, v38, v5

    goto :goto_10

    .line 1731
    :cond_3c
    const/4 v5, 0x4

    aput-wide v46, v38, v5

    goto :goto_11

    .line 1737
    :cond_3d
    const/4 v5, 0x5

    aput-wide v48, v38, v5

    goto :goto_12

    .line 1743
    :cond_3e
    const/4 v5, 0x6

    aput-wide v50, v38, v5

    move-wide/from16 v18, v14

    goto/16 :goto_b

    .line 1747
    :cond_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sappid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " app_pri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " login_bitmap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v88

    iget v5, v0, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tk_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a2_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lskey_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " skey_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vkey_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a8_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stweb_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " d2_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sid_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x6

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v6, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v5, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v14

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v16

    add-long v16, v16, v44

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v20

    add-long v18, v18, v20

    invoke-virtual/range {v52 .. v52}, Loicq/wlogin_sdk/b/v;->f()[B

    move-result-object v20

    invoke-virtual/range {v52 .. v52}, Loicq/wlogin_sdk/b/v;->g()[B

    move-result-object v21

    invoke-virtual/range {v52 .. v52}, Loicq/wlogin_sdk/b/v;->h()[B

    move-result-object v22

    invoke-virtual/range {v52 .. v52}, Loicq/wlogin_sdk/b/v;->i()[B

    move-result-object v23

    invoke-virtual/range {v25 .. v25}, Loicq/wlogin_sdk/b/l;->b()[B

    move-result-object v25

    invoke-virtual/range {v28 .. v28}, Loicq/wlogin_sdk/b/o;->b()[B

    move-result-object v26

    invoke-virtual/range {v43 .. v43}, Loicq/wlogin_sdk/b/s;->b()[B

    move-result-object v27

    invoke-virtual/range {v39 .. v39}, Loicq/wlogin_sdk/b/p;->b()[B

    move-result-object v28

    move-object/from16 v0, v88

    iget v0, v0, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    move/from16 v39, v0

    invoke-virtual/range {v4 .. v39}, Loicq/wlogin_sdk/request/u;->a(JJ[[BJJJJJ[B[B[B[B[[B[B[B[B[B[B[B[B[B[B[B[B[B[[B[JI)I

    move-result v4

    .line 1769
    if-eqz v4, :cond_40

    .line 1770
    new-instance v5, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v5}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    .line 1771
    sget-object v6, Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;->MSG_2:Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;

    invoke-static {v6}, Loicq/wlogin_sdk/tools/InternationMsg;->a(Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    .line 1772
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/request/k;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 1773
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "put_siginfo fail,ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v7, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 1774
    goto/16 :goto_2

    .line 1779
    :cond_40
    :goto_13
    move-object/from16 v0, v53

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/x;->b([BII)I

    move-result v41

    if-ltz v41, :cond_41

    .line 1780
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v4, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual/range {v53 .. v53}, Loicq/wlogin_sdk/b/x;->f()J

    move-result-wide v8

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v10

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v12

    add-long v12, v12, v44

    invoke-virtual/range {v53 .. v53}, Loicq/wlogin_sdk/b/x;->h()[B

    move-result-object v14

    invoke-virtual/range {v53 .. v53}, Loicq/wlogin_sdk/b/x;->g()[B

    move-result-object v15

    invoke-virtual/range {v5 .. v15}, Loicq/wlogin_sdk/request/u;->a(JJJJ[B[B)I

    goto :goto_13

    .line 1786
    :cond_41
    const/4 v4, 0x0

    move v5, v4

    .line 1787
    goto/16 :goto_2

    .line 1792
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v10, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v4, v10, v11, v7, v8}, Loicq/wlogin_sdk/request/u;->c(JJ)V

    .line 1794
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/k;->b([BII)V

    move/from16 v5, v42

    .line 1796
    goto/16 :goto_2

    .line 1802
    :sswitch_2
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/f;->b([BII)I

    move-result v4

    .line 1803
    if-gez v4, :cond_42

    move v5, v4

    .line 1804
    goto/16 :goto_2

    .line 1805
    :cond_42
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/f;

    .line 1808
    new-instance v4, Loicq/wlogin_sdk/b/cc;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cc;-><init>()V

    .line 1809
    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v5, v5, v89

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v4, v0, v1, v5}, Loicq/wlogin_sdk/b/cc;->b([BII)I

    move-result v5

    .line 1810
    if-ltz v5, :cond_43

    .line 1812
    new-instance v5, Loicq/wlogin_sdk/tools/ErrMsg;

    const-string v6, ""

    const-string v7, ""

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/cc;->f()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v42

    invoke-direct {v5, v0, v6, v7, v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/request/k;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    :goto_14
    move/from16 v5, v42

    .line 1830
    goto/16 :goto_2

    .line 1815
    :cond_43
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v9, v0, v1, v4}, Loicq/wlogin_sdk/b/g;->b([BII)I

    move-result v4

    .line 1816
    if-gez v4, :cond_44

    move v5, v4

    .line 1817
    goto/16 :goto_2

    .line 1818
    :cond_44
    move-object/from16 v0, v88

    iput-object v9, v0, Loicq/wlogin_sdk/request/async_context;->_t105:Loicq/wlogin_sdk/b/g;

    .line 1819
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v68

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/ay;->b([BII)I

    move-result v4

    .line 1820
    if-ltz v4, :cond_45

    .line 1821
    move-object/from16 v0, v68

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t165:Loicq/wlogin_sdk/b/ay;

    .line 1826
    :goto_15
    const/4 v4, 0x0

    check-cast v4, Loicq/wlogin_sdk/tools/ErrMsg;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/k;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    goto :goto_14

    .line 1823
    :cond_45
    new-instance v4, Loicq/wlogin_sdk/b/ay;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ay;-><init>()V

    move-object/from16 v0, v88

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_t165:Loicq/wlogin_sdk/b/ay;

    goto :goto_15

    .line 1833
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v10, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v4, v10, v11, v7, v8}, Loicq/wlogin_sdk/request/u;->c(JJ)V

    .line 1835
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v56

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/ag;->b([BII)I

    move-result v4

    .line 1836
    if-gez v4, :cond_46

    move v5, v4

    .line 1837
    goto/16 :goto_2

    .line 1838
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    invoke-virtual/range {v56 .. v56}, Loicq/wlogin_sdk/b/ag;->f()[B

    move-result-object v5

    invoke-virtual/range {v56 .. v56}, Loicq/wlogin_sdk/b/ag;->g()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Loicq/wlogin_sdk/request/u;->a([B[B)V

    .line 1840
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/k;->b([BII)V

    move/from16 v5, v42

    .line 1842
    goto/16 :goto_2

    .line 1846
    :sswitch_4
    new-instance v5, Loicq/wlogin_sdk/b/a;

    const/16 v4, 0x195

    invoke-direct {v5, v4}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 1847
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v5, v0, v1, v4}, Loicq/wlogin_sdk/b/a;->b([BII)I

    move-result v4

    .line 1848
    if-gez v4, :cond_47

    move v5, v4

    .line 1849
    goto/16 :goto_2

    .line 1850
    :cond_47
    invoke-virtual {v5}, Loicq/wlogin_sdk/b/a;->b()[B

    move-result-object v4

    sput-object v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_LHSig:[B

    .line 1852
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/k;->b([BII)V

    move/from16 v5, v42

    .line 1854
    goto/16 :goto_2

    .line 1857
    :sswitch_5
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/f;->b([BII)I

    move-result v4

    .line 1858
    if-gez v4, :cond_48

    move v5, v4

    .line 1859
    goto/16 :goto_2

    .line 1860
    :cond_48
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/f;

    .line 1862
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v76

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bk;->b([BII)I

    move-result v4

    .line 1863
    if-gez v4, :cond_49

    move v5, v4

    .line 1864
    goto/16 :goto_2

    .line 1865
    :cond_49
    move-object/from16 v0, v76

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t174:Loicq/wlogin_sdk/b/bk;

    .line 1867
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v77

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bm;->b([BII)I

    move-result v4

    .line 1868
    if-ltz v4, :cond_4a

    .line 1869
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v77 .. v77}, Loicq/wlogin_sdk/b/bm;->f()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->CountryCode:Ljava/lang/String;

    .line 1870
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v77 .. v77}, Loicq/wlogin_sdk/b/bm;->g()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->Mobile:Ljava/lang/String;

    .line 1871
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual/range {v77 .. v77}, Loicq/wlogin_sdk/b/bm;->h()I

    move-result v5

    iput v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbItemSmsCodeStatus:I

    .line 1872
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual/range {v77 .. v77}, Loicq/wlogin_sdk/b/bm;->i()I

    move-result v5

    iput v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->AvailableMsgCount:I

    .line 1873
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual/range {v77 .. v77}, Loicq/wlogin_sdk/b/bm;->j()I

    move-result v5

    iput v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->TimeLimit:I

    .line 1876
    :cond_4a
    new-instance v4, Loicq/wlogin_sdk/b/cf;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cf;-><init>()V

    .line 1877
    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v5, v5, v89

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v4, v0, v1, v5}, Loicq/wlogin_sdk/b/cf;->b([BII)I

    move-result v5

    .line 1878
    if-ltz v5, :cond_4b

    .line 1879
    move-object/from16 v0, v88

    iget-object v5, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/cf;->g()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Loicq/wlogin_sdk/devicelock/DevlockInfo;->BakCountryCode:Ljava/lang/String;

    .line 1880
    move-object/from16 v0, v88

    iget-object v5, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/cf;->h()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Loicq/wlogin_sdk/devicelock/DevlockInfo;->BakMobile:Ljava/lang/String;

    .line 1881
    move-object/from16 v0, v88

    iget-object v5, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/cf;->f()I

    move-result v4

    iput v4, v5, Loicq/wlogin_sdk/devicelock/DevlockInfo;->BakMobileState:I

    .line 1884
    :cond_4b
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v78

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bn;->b([BII)I

    move-result v4

    .line 1885
    if-ltz v4, :cond_4c

    .line 1886
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v78 .. v78}, Loicq/wlogin_sdk/b/bn;->f()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->UnionVerifyUrl:Ljava/lang/String;

    .line 1889
    :cond_4c
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v79

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/br;->b([BII)I

    move-result v4

    .line 1890
    if-ltz v4, :cond_4d

    .line 1891
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual/range {v79 .. v79}, Loicq/wlogin_sdk/b/br;->f()I

    move-result v5

    iput v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideType:I

    .line 1892
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v79 .. v79}, Loicq/wlogin_sdk/b/br;->g()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideMsg:Ljava/lang/String;

    .line 1893
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual/range {v79 .. v79}, Loicq/wlogin_sdk/b/br;->h()I

    move-result v5

    iput v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideInfoType:I

    .line 1894
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v79 .. v79}, Loicq/wlogin_sdk/b/br;->i()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideInfo:Ljava/lang/String;

    .line 1897
    :cond_4d
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v80

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bs;->b([BII)I

    move-result v4

    .line 1898
    if-ltz v4, :cond_4e

    .line 1899
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v80 .. v80}, Loicq/wlogin_sdk/b/bs;->b()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->VerifyReason:Ljava/lang/String;

    .line 1902
    :cond_4e
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v85

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/co;->b([BII)I

    move-result v4

    .line 1903
    if-ltz v4, :cond_4f

    .line 1904
    move-object/from16 v0, v85

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t402:Loicq/wlogin_sdk/b/co;

    .line 1909
    :goto_16
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v86

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/cp;->b([BII)I

    move-result v4

    .line 1910
    if-ltz v4, :cond_50

    .line 1911
    move-object/from16 v0, v86

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t403:Loicq/wlogin_sdk/b/cp;

    .line 1916
    :goto_17
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/k;->b([BII)V

    move/from16 v5, v42

    .line 1918
    goto/16 :goto_2

    .line 1906
    :cond_4f
    new-instance v4, Loicq/wlogin_sdk/b/co;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/co;-><init>()V

    move-object/from16 v0, v88

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_t402:Loicq/wlogin_sdk/b/co;

    goto :goto_16

    .line 1913
    :cond_50
    new-instance v4, Loicq/wlogin_sdk/b/cp;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cp;-><init>()V

    move-object/from16 v0, v88

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_t403:Loicq/wlogin_sdk/b/cp;

    goto :goto_17

    .line 1921
    :sswitch_6
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/k;->b([BII)V

    .line 1923
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;)V

    move/from16 v5, v42

    .line 1924
    goto/16 :goto_2

    .line 1927
    :sswitch_7
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v72

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/aw;->b([BII)I

    move-result v4

    .line 1928
    if-gez v4, :cond_51

    move v5, v4

    .line 1929
    goto/16 :goto_2

    .line 1930
    :cond_51
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/k;->a(Loicq/wlogin_sdk/b/aw;)I

    .line 1933
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/k;->b([BII)V

    move/from16 v5, v42

    .line 1935
    goto/16 :goto_2

    .line 1938
    :sswitch_8
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/f;->b([BII)I

    move-result v4

    .line 1939
    if-gez v4, :cond_52

    move v5, v4

    .line 1940
    goto/16 :goto_2

    .line 1941
    :cond_52
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/f;

    .line 1942
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v85

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/co;->b([BII)I

    move-result v4

    .line 1943
    if-gez v4, :cond_53

    move v5, v4

    .line 1944
    goto/16 :goto_2

    .line 1945
    :cond_53
    move-object/from16 v0, v85

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t402:Loicq/wlogin_sdk/b/co;

    .line 1946
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v86

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/cp;->b([BII)I

    move-result v4

    .line 1947
    if-gez v4, :cond_54

    move v5, v4

    .line 1948
    goto/16 :goto_2

    .line 1949
    :cond_54
    move-object/from16 v0, v86

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t403:Loicq/wlogin_sdk/b/cp;

    .line 1954
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/k;->b([BII)V

    move/from16 v5, v42

    .line 1956
    goto/16 :goto_2

    .line 1959
    :sswitch_9
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/f;->b([BII)I

    move-result v4

    .line 1960
    if-gez v4, :cond_55

    move v5, v4

    .line 1961
    goto/16 :goto_2

    .line 1962
    :cond_55
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/f;

    .line 1964
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/ad;->b([BII)I

    move-result v4

    .line 1965
    if-gez v4, :cond_56

    move v5, v4

    .line 1966
    goto/16 :goto_2

    .line 1967
    :cond_56
    move-object/from16 v0, v81

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t126:Loicq/wlogin_sdk/b/ad;

    .line 1969
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v82

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bu;->b([BII)I

    move-result v4

    .line 1970
    if-gez v4, :cond_57

    move v5, v4

    .line 1971
    goto/16 :goto_2

    .line 1972
    :cond_57
    invoke-virtual/range {v82 .. v82}, Loicq/wlogin_sdk/b/bu;->f()I

    move-result v4

    move-object/from16 v0, v88

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_smslogin_msgcnt:I

    .line 1973
    invoke-virtual/range {v82 .. v82}, Loicq/wlogin_sdk/b/bu;->g()I

    move-result v4

    move-object/from16 v0, v88

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_smslogin_timelimit:I

    .line 1975
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->b:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v83

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bv;->b([BII)I

    move-result v4

    .line 1976
    if-gez v4, :cond_58

    move v5, v4

    .line 1977
    goto/16 :goto_2

    .line 1978
    :cond_58
    invoke-virtual/range {v83 .. v83}, Loicq/wlogin_sdk/b/bv;->f()J

    move-result-wide v4

    move-object/from16 v0, v88

    iput-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    .line 1980
    const/4 v4, 0x0

    move v5, v4

    .line 1981
    goto/16 :goto_2

    .line 1989
    :cond_59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_3

    :cond_5a
    move v4, v5

    goto/16 :goto_4

    :cond_5b
    move-wide/from16 v14, v18

    goto/16 :goto_c

    :cond_5c
    move-object/from16 v35, v5

    goto/16 :goto_a

    :cond_5d
    move/from16 v40, v4

    goto/16 :goto_1

    .line 1292
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1343
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_3
        0x29 -> :sswitch_4
        0x74 -> :sswitch_4
        0xa0 -> :sswitch_5
        0xb0 -> :sswitch_6
        0xb4 -> :sswitch_7
        0xcc -> :sswitch_8
        0xd0 -> :sswitch_9
    .end sparse-switch
.end method

.method public c()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    iget v0, p0, Loicq/wlogin_sdk/request/k;->b:I

    new-array v0, v0, [B

    .line 253
    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/request/k;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    return-object v0
.end method

.method public c([B)[B
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 958
    const-string v1, "%4;7t>;28<fc.5*6"

    .line 963
    sget-object v0, Loicq/wlogin_sdk/request/u;->z:[B

    if-eqz v0, :cond_0

    sget-object v0, Loicq/wlogin_sdk/request/u;->z:[B

    array-length v0, v0

    if-gtz v0, :cond_3

    .line 964
    :cond_0
    array-length v0, p1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p1, v4, v0, v1}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v0

    .line 983
    :cond_1
    :goto_0
    if-nez v0, :cond_8

    .line 984
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v1, v0

    .line 985
    :goto_1
    if-eqz v1, :cond_2

    array-length v0, v1

    if-ge v0, v5, :cond_7

    .line 986
    :cond_2
    const/4 v0, 0x0

    check-cast v0, [B

    .line 996
    :goto_2
    return-object v0

    .line 966
    :cond_3
    new-array v2, v5, [B

    .line 967
    sget-object v0, Loicq/wlogin_sdk/request/u;->z:[B

    array-length v0, v0

    array-length v3, v2

    if-le v0, v3, :cond_6

    .line 968
    sget-object v0, Loicq/wlogin_sdk/request/u;->z:[B

    array-length v3, v2

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 975
    :cond_4
    array-length v0, p1

    invoke-static {p1, v4, v0, v2}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v0

    .line 978
    if-eqz v0, :cond_5

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 979
    :cond_5
    array-length v0, p1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p1, v4, v0, v1}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v0

    goto :goto_0

    .line 970
    :cond_6
    sget-object v0, Loicq/wlogin_sdk/request/u;->z:[B

    sget-object v3, Loicq/wlogin_sdk/request/u;->z:[B

    array-length v3, v3

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 971
    sget-object v0, Loicq/wlogin_sdk/request/u;->z:[B

    array-length v0, v0

    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 972
    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 987
    :cond_7
    array-length v0, v1

    add-int/lit8 v2, v0, -0x10

    .line 988
    new-array v0, v2, [B

    .line 989
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 990
    new-array v3, v5, [B

    .line 991
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 993
    iget-object v1, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v1, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v1

    .line 994
    iput-object v3, v1, Loicq/wlogin_sdk/request/async_context;->_tgtgt_key:[B

    goto :goto_2

    :cond_8
    move-object v1, v0

    goto :goto_1
.end method

.method public d()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-object v0, v0, Loicq/wlogin_sdk/request/u;->ac:Ljava/net/Socket;

    return-object v0
.end method

.method public e()I
    .locals 19

    .prologue
    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":snd_rcv_req_tcp ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/k;->c()[B

    move-result-object v14

    .line 550
    const/4 v7, 0x0

    .line 551
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 552
    const-wide/16 v10, 0x0

    .line 555
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/k;->d()Ljava/net/Socket;

    move-result-object v2

    .line 556
    const/4 v8, 0x0

    .line 557
    const/4 v3, 0x0

    .line 559
    const/4 v6, 0x0

    move v9, v5

    move v5, v7

    move-object v7, v2

    move v2, v8

    .line 561
    :goto_0
    const/4 v8, 0x6

    if-ge v4, v8, :cond_27

    .line 562
    if-eqz v4, :cond_0

    .line 563
    sget-object v2, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->chg_retry_type(Landroid/content/Context;)V

    .line 565
    :cond_0
    sget-object v2, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->is_wap_retry(Landroid/content/Context;)Z

    move-result v8

    .line 566
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    .line 569
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/k;->s:I

    const/16 v12, 0x812

    if-eq v2, v12, :cond_2

    .line 570
    new-instance v2, Loicq/wlogin_sdk/report/report_t3;

    invoke-direct {v2}, Loicq/wlogin_sdk/report/report_t3;-><init>()V

    .line 571
    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/k;->s:I

    iput v12, v2, Loicq/wlogin_sdk/report/report_t3;->_cmd:I

    .line 572
    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/k;->t:I

    iput v12, v2, Loicq/wlogin_sdk/report/report_t3;->_sub:I

    .line 573
    iput v9, v2, Loicq/wlogin_sdk/report/report_t3;->_rst2:I

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 575
    sub-long v10, v12, v10

    long-to-int v9, v10

    iput v9, v2, Loicq/wlogin_sdk/report/report_t3;->_used:I

    .line 576
    iput v4, v2, Loicq/wlogin_sdk/report/report_t3;->_try:I

    .line 577
    sget-object v9, Loicq/wlogin_sdk/request/k;->C:Ljava/lang/String;

    iput-object v9, v2, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    .line 578
    iget-object v9, v2, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 579
    const-string v9, ""

    iput-object v9, v2, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    .line 580
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    if-nez v9, :cond_5

    .line 581
    const-string v9, ""

    iput-object v9, v2, Loicq/wlogin_sdk/report/report_t3;->_ip:Ljava/lang/String;

    .line 585
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/k;->c(Z)I

    move-result v9

    iput v9, v2, Loicq/wlogin_sdk/report/report_t3;->_port:I

    .line 586
    iput v6, v2, Loicq/wlogin_sdk/report/report_t3;->_conn:I

    .line 587
    sget v9, Loicq/wlogin_sdk/request/u;->B:I

    iput v9, v2, Loicq/wlogin_sdk/report/report_t3;->_net:I

    .line 588
    const-string v9, ""

    iput-object v9, v2, Loicq/wlogin_sdk/report/report_t3;->_str:Ljava/lang/String;

    .line 589
    const/4 v9, 0x0

    iput v9, v2, Loicq/wlogin_sdk/report/report_t3;->_slen:I

    .line 590
    const/4 v9, 0x0

    iput v9, v2, Loicq/wlogin_sdk/report/report_t3;->_rlen:I

    .line 591
    if-eqz v8, :cond_7

    .line 592
    if-eqz v3, :cond_6

    .line 593
    const/4 v9, 0x2

    iput v9, v2, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    .line 600
    :goto_2
    sget-object v9, Loicq/wlogin_sdk/request/u;->ag:Loicq/wlogin_sdk/report/report_t1;

    invoke-virtual {v9, v2}, Loicq/wlogin_sdk/report/report_t1;->add_t3(Loicq/wlogin_sdk/report/report_t3;)V

    .line 603
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 606
    if-eqz v8, :cond_d

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "try http connect "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " ..."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v12, v12, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v2, ""

    .line 611
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Loicq/wlogin_sdk/request/k;->a(IZ)Ljava/lang/String;

    move-result-object v13

    .line 614
    const/4 v12, 0x0

    .line 615
    const/4 v9, -0x1

    .line 616
    :try_start_0
    sget-object v2, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->is_wap_proxy_retry(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 617
    if-eqz v2, :cond_26

    .line 618
    :try_start_1
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_proxy_ip()Ljava/lang/String;

    move-result-object v9

    .line 619
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_proxy_port()I

    move-result v3

    .line 620
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    const/4 v12, -0x1

    if-ne v3, v12, :cond_25

    .line 622
    :cond_3
    const/4 v2, 0x0

    .line 623
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "proxy_ip="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, ",proxy_port="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, ",set is_wap_proxy_retry="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object v12, v9

    move v9, v3

    move v3, v2

    .line 630
    :goto_3
    if-eqz v3, :cond_8

    .line 631
    :try_start_2
    new-instance v2, Ljava/net/URL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, ":"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/cgi-bin/wlogin_proxy_login"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 637
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "try http proxy="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " connect to "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v15, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 641
    const-string v9, "POST"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 643
    if-eqz v3, :cond_4

    .line 644
    const-string v9, "X-Online-Host"

    invoke-virtual {v2, v9, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_4
    const-string v9, "Content-Type"

    const-string v12, "application/octet-stream"

    invoke-virtual {v2, v9, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v9, "Content-Disposition"

    const-string v12, "attachment; filename=micromsgresp.dat"

    invoke-virtual {v2, v9, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v9, "Content-Length"

    array-length v12, v14

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget v9, v9, Loicq/wlogin_sdk/request/u;->l:I

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 654
    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget v9, v9, Loicq/wlogin_sdk/request/u;->l:I

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 656
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 657
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 659
    const-string v9, "http request connect ..."

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v13, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget v9, v9, Loicq/wlogin_sdk/request/u;->l:I

    int-to-long v12, v9

    invoke-static {v2, v12, v13}, Loicq/wlogin_sdk/request/i;->a(Ljava/net/HttpURLConnection;J)Z

    move-result v9

    if-nez v9, :cond_9

    .line 661
    const-string v2, "http request connect failed"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v12, v12, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 662
    const/16 v2, -0x3e8

    .line 663
    add-int/lit8 v4, v4, 0x1

    move v9, v2

    move v2, v8

    .line 664
    goto/16 :goto_0

    .line 583
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Loicq/wlogin_sdk/report/report_t3;->_ip:Ljava/lang/String;

    goto/16 :goto_1

    .line 595
    :cond_6
    const/4 v9, 0x1

    iput v9, v2, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    goto/16 :goto_2

    .line 598
    :cond_7
    const/4 v9, 0x0

    iput v9, v2, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    goto/16 :goto_2

    .line 634
    :cond_8
    :try_start_3
    new-instance v2, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/cgi-bin/wlogin_proxy_login"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 683
    :catch_0
    move-exception v2

    move v2, v3

    .line 684
    :goto_5
    const/16 v9, -0x3e8

    .line 685
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v8

    .line 686
    goto/16 :goto_0

    .line 666
    :cond_9
    const-string v9, "http request write ..."

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v13, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 668
    const/4 v12, 0x0

    array-length v13, v14

    invoke-virtual {v9, v14, v12, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 669
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 671
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 672
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http request response code="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v15, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const/16 v12, 0xc8

    if-eq v12, v9, :cond_a

    .line 676
    const/16 v2, -0x3e8

    .line 677
    add-int/lit8 v4, v4, 0x1

    move v9, v2

    move v2, v8

    .line 678
    goto/16 :goto_0

    .line 681
    :cond_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    move-object v13, v2

    move-object v2, v7

    move v7, v3

    .line 753
    :goto_6
    :try_start_4
    const-string v3, "recv data from server ..."

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v12, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const/4 v3, 0x0

    .line 756
    const/4 v9, 0x0

    .line 757
    :goto_7
    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/k;->e:I

    add-int/lit8 v12, v12, 0x1

    if-ge v9, v12, :cond_b

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/k;->r:[B

    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/k;->e:I

    add-int/lit8 v12, v12, 0x1

    sub-int/2addr v12, v9

    invoke-virtual {v13, v3, v9, v12}, Ljava/io/InputStream;->read([BII)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result v3

    .line 760
    if-gez v3, :cond_11

    .line 765
    :cond_b
    if-gez v3, :cond_12

    .line 766
    const/16 v9, -0x3e8

    .line 767
    add-int/lit8 v3, v4, 0x1

    .line 768
    if-nez v8, :cond_c

    .line 769
    :try_start_5
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 770
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    .line 771
    const/4 v2, 0x0

    .line 772
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/k;->a(Ljava/net/Socket;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_c
    move v4, v3

    move v3, v7

    move-object v7, v2

    move v2, v8

    .line 774
    goto/16 :goto_0

    .line 691
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "try bin connect "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " ..."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v12, v12, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    if-nez v7, :cond_10

    .line 695
    const-string v2, ""

    .line 696
    const/4 v6, 0x1

    .line 697
    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    if-nez v9, :cond_e

    .line 698
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Loicq/wlogin_sdk/request/k;->a(IZ)Ljava/lang/String;

    move-result-object v2

    .line 700
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DNS for "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " request ..."

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v13, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/k;->c(Z)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Loicq/wlogin_sdk/request/k;->q:I

    .line 703
    move-object/from16 v0, p0

    iget v9, v0, Loicq/wlogin_sdk/request/k;->q:I

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget v12, v12, Loicq/wlogin_sdk/request/u;->l:I

    int-to-long v12, v12

    invoke-static {v2, v9, v12, v13}, Loicq/wlogin_sdk/request/a;->a(Ljava/lang/String;IJ)Ljava/net/InetSocketAddress;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 708
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    if-nez v9, :cond_f

    .line 709
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DNS for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " request failed"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v12, v9, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const/16 v7, -0x3ef

    .line 712
    add-int/lit8 v4, v4, 0x1

    .line 713
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    .line 714
    const/4 v2, 0x0

    .line 715
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/k;->a(Ljava/net/Socket;)V

    move v9, v7

    move-object v7, v2

    move v2, v8

    .line 716
    goto/16 :goto_0

    .line 719
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DNS for "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ") request OK"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v12, v12, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_10
    if-nez v7, :cond_24

    .line 725
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tcp connect to "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " request ..."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v12, v9, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 728
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/k;->a(Ljava/net/Socket;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget v9, v9, Loicq/wlogin_sdk/request/u;->l:I

    invoke-virtual {v2, v7, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget v7, v7, Loicq/wlogin_sdk/request/u;->l:I

    invoke-virtual {v2, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 731
    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/k;->r:[B

    array-length v7, v7

    invoke-virtual {v2, v7}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 732
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tcp connect to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " OK"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v12, v12, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :goto_9
    const-string v7, "tcp request write ..."

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v12, v12, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 737
    const/4 v9, 0x0

    array-length v12, v14

    invoke-virtual {v7, v14, v9, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 738
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 740
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v7

    move-object v13, v7

    move v7, v3

    .line 748
    goto/16 :goto_6

    .line 741
    :catch_1
    move-exception v2

    .line 742
    const/16 v7, -0x3e8

    .line 743
    add-int/lit8 v4, v4, 0x1

    .line 744
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    .line 745
    const/4 v2, 0x0

    .line 746
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/k;->a(Ljava/net/Socket;)V

    move v9, v7

    move-object v7, v2

    move v2, v8

    .line 747
    goto/16 :goto_0

    .line 763
    :cond_11
    add-int/2addr v9, v3

    goto/16 :goto_7

    .line 778
    :cond_12
    :try_start_8
    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->r:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Loicq/wlogin_sdk/request/k;->b([B)I

    move-result v5

    .line 779
    move-object/from16 v0, p0

    iget v9, v0, Loicq/wlogin_sdk/request/k;->e:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    add-int/lit8 v9, v9, 0x1

    if-gt v5, v9, :cond_14

    .line 780
    const/16 v9, -0x3e8

    .line 781
    add-int/lit8 v3, v4, 0x1

    .line 782
    if-nez v8, :cond_13

    .line 783
    :try_start_9
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 784
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    .line 785
    const/4 v2, 0x0

    .line 786
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/k;->a(Ljava/net/Socket;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    :cond_13
    move v4, v3

    move v3, v7

    move-object v7, v2

    move v2, v8

    .line 788
    goto/16 :goto_0

    .line 791
    :cond_14
    :try_start_a
    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/k;->r:[B

    array-length v9, v9
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    if-lt v5, v9, :cond_16

    .line 792
    const/16 v9, -0x3e8

    .line 793
    add-int/lit8 v3, v4, 0x1

    .line 794
    if-nez v8, :cond_15

    .line 795
    :try_start_b
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 796
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    .line 797
    const/4 v2, 0x0

    .line 798
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/k;->a(Ljava/net/Socket;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    :cond_15
    move v4, v3

    move v3, v7

    move-object v7, v2

    move v2, v8

    .line 800
    goto/16 :goto_0

    .line 803
    :cond_16
    :try_start_c
    move-object/from16 v0, p0

    iget v9, v0, Loicq/wlogin_sdk/request/k;->e:I

    add-int/lit8 v12, v9, 0x1

    .line 804
    sub-int v9, v5, v12

    .line 807
    :goto_a
    if-lez v9, :cond_17

    .line 808
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/k;->r:[B

    invoke-virtual {v13, v3, v12, v9}, Ljava/io/InputStream;->read([BII)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    move-result v3

    .line 809
    const/4 v15, -0x1

    if-ne v3, v15, :cond_19

    .line 815
    :cond_17
    const/4 v9, -0x1

    if-ne v3, v9, :cond_1a

    .line 816
    const/16 v9, -0x3e8

    .line 817
    add-int/lit8 v3, v4, 0x1

    .line 818
    if-nez v8, :cond_18

    .line 819
    :try_start_d
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 820
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    .line 821
    const/4 v2, 0x0

    .line 822
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/k;->a(Ljava/net/Socket;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    :cond_18
    move v4, v3

    move v3, v7

    move-object v7, v2

    move v2, v8

    .line 824
    goto/16 :goto_0

    .line 812
    :cond_19
    add-int/2addr v12, v3

    .line 813
    sub-int/2addr v9, v3

    goto :goto_a

    :cond_1a
    move v3, v6

    move v6, v8

    move-wide v8, v10

    move/from16 v18, v7

    move v7, v5

    move/from16 v5, v18

    .line 846
    :goto_b
    const/4 v2, 0x6

    if-lt v4, v2, :cond_20

    .line 847
    const/16 v2, -0x3e8

    .line 852
    :goto_c
    if-nez v2, :cond_1b

    .line 853
    move-object/from16 v0, p0

    iget-object v10, v0, Loicq/wlogin_sdk/request/k;->r:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v7}, Loicq/wlogin_sdk/request/k;->b([BI)V

    .line 859
    :cond_1b
    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget v10, v0, Loicq/wlogin_sdk/request/k;->s:I

    const/16 v11, 0x812

    if-eq v10, v11, :cond_1d

    .line 860
    new-instance v10, Loicq/wlogin_sdk/report/report_t3;

    invoke-direct {v10}, Loicq/wlogin_sdk/report/report_t3;-><init>()V

    .line 861
    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/k;->s:I

    iput v11, v10, Loicq/wlogin_sdk/report/report_t3;->_cmd:I

    .line 862
    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/k;->t:I

    iput v11, v10, Loicq/wlogin_sdk/report/report_t3;->_sub:I

    .line 863
    iput v2, v10, Loicq/wlogin_sdk/report/report_t3;->_rst2:I

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 865
    sub-long v8, v12, v8

    long-to-int v8, v8

    iput v8, v10, Loicq/wlogin_sdk/report/report_t3;->_used:I

    .line 866
    iput v4, v10, Loicq/wlogin_sdk/report/report_t3;->_try:I

    .line 867
    sget-object v4, Loicq/wlogin_sdk/request/k;->C:Ljava/lang/String;

    iput-object v4, v10, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    .line 868
    iget-object v4, v10, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    if-nez v4, :cond_1c

    .line 869
    const-string v4, ""

    iput-object v4, v10, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    .line 870
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    if-nez v4, :cond_21

    .line 871
    const-string v4, ""

    iput-object v4, v10, Loicq/wlogin_sdk/report/report_t3;->_ip:Ljava/lang/String;

    .line 875
    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/k;->q:I

    iput v4, v10, Loicq/wlogin_sdk/report/report_t3;->_port:I

    .line 876
    iput v3, v10, Loicq/wlogin_sdk/report/report_t3;->_conn:I

    .line 877
    sget v3, Loicq/wlogin_sdk/request/u;->B:I

    iput v3, v10, Loicq/wlogin_sdk/report/report_t3;->_net:I

    .line 878
    const-string v3, ""

    iput-object v3, v10, Loicq/wlogin_sdk/report/report_t3;->_str:Ljava/lang/String;

    .line 879
    array-length v3, v14

    iput v3, v10, Loicq/wlogin_sdk/report/report_t3;->_slen:I

    .line 880
    iput v7, v10, Loicq/wlogin_sdk/report/report_t3;->_rlen:I

    .line 881
    if-eqz v6, :cond_23

    .line 882
    if-eqz v5, :cond_22

    .line 883
    const/4 v3, 0x2

    iput v3, v10, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    .line 890
    :goto_e
    sget-object v3, Loicq/wlogin_sdk/request/u;->ag:Loicq/wlogin_sdk/report/report_t1;

    invoke-virtual {v3, v10}, Loicq/wlogin_sdk/report/report_t1;->add_t3(Loicq/wlogin_sdk/report/report_t3;)V

    .line 893
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":snd_rcv_req_tcp ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    return v2

    .line 827
    :catch_2
    move-exception v3

    move v3, v4

    move v4, v5

    .line 828
    :goto_f
    const/16 v5, -0x3e8

    .line 829
    add-int/lit8 v3, v3, 0x1

    .line 830
    if-nez v8, :cond_1f

    .line 832
    :try_start_e
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 833
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 836
    :cond_1e
    :goto_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    .line 837
    const/4 v2, 0x0

    .line 838
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/k;->a(Ljava/net/Socket;)V

    :cond_1f
    move v9, v5

    move v5, v4

    move v4, v3

    move v3, v7

    move-object v7, v2

    move v2, v8

    .line 840
    goto/16 :goto_0

    .line 849
    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 873
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/k;->p:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Loicq/wlogin_sdk/report/report_t3;->_ip:Ljava/lang/String;

    goto/16 :goto_d

    .line 885
    :cond_22
    const/4 v3, 0x1

    iput v3, v10, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    goto :goto_e

    .line 888
    :cond_23
    const/4 v3, 0x0

    iput v3, v10, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    goto :goto_e

    .line 834
    :catch_3
    move-exception v2

    goto :goto_10

    .line 827
    :catch_4
    move-exception v4

    move v4, v5

    goto :goto_f

    .line 705
    :catch_5
    move-exception v9

    goto/16 :goto_8

    .line 683
    :catch_6
    move-exception v3

    goto/16 :goto_5

    :cond_24
    move-object v2, v7

    goto/16 :goto_9

    :cond_25
    move-object v12, v9

    move v9, v3

    move v3, v2

    goto/16 :goto_3

    :cond_26
    move v3, v2

    goto/16 :goto_3

    :cond_27
    move-wide v8, v10

    move v7, v5

    move v5, v3

    move v3, v6

    move v6, v2

    goto/16 :goto_b
.end method

.method public f()I
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Loicq/wlogin_sdk/request/k;->w:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 1008
    iget v0, v0, Loicq/wlogin_sdk/request/async_context;->_last_flowid:I

    return v0
.end method
