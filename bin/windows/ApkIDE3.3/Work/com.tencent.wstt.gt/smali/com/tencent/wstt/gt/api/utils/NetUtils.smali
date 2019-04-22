.class public Lcom/tencent/wstt/gt/api/utils/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# static fields
.field private static final B2K:F = 1024.0f

.field private static final TYPE_3G:I = 0x1

.field private static final TYPE_CASE1:I = 0x1

.field private static final TYPE_CASE2:I = 0x2

.field private static final TYPE_CASE3:I = 0x3

.field private static final TYPE_GPRS:I = 0x2

.field private static final TYPE_WIFI:I

.field private static netCase:I

.field public static netInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wstt/gt/api/utils/NetUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static r_add_2G:D

.field private static r_add_3G:D

.field private static r_add_wifi:D

.field private static r_base_2G:J

.field private static r_base_3G:J

.field private static r_base_wifi:J

.field private static r_cur_2G:J

.field private static r_cur_3G:J

.field private static r_cur_wifi:J

.field private static t_add_2G:D

.field private static t_add_3G:D

.field private static t_add_wifi:D

.field private static t_base_2G:J

.field private static t_base_3G:J

.field private static t_base_wifi:J

.field private static t_cur_2G:J

.field private static t_cur_3G:J

.field private static t_cur_wifi:J


# instance fields
.field private p_r_add:D

.field private p_r_base:J

.field private p_r_cur:J

.field private p_t_add:D

.field private p_t_base:J

.field private p_t_cur:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netInfoMap:Ljava/util/Map;

    .line 53
    const/4 v0, 0x1

    sput v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netCase:I

    .line 270
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_base_wifi:J

    .line 271
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_base_3G:J

    .line 272
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_base_2G:J

    .line 273
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_base_wifi:J

    .line 274
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_base_3G:J

    .line 275
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_base_2G:J

    .line 277
    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_wifi:D

    .line 278
    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_3G:D

    .line 279
    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_2G:D

    .line 280
    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_wifi:D

    .line 281
    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_3G:D

    .line 282
    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_2G:D

    .line 322
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_cur_wifi:J

    .line 323
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_cur_3G:J

    .line 324
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_cur_2G:J

    .line 325
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_cur_wifi:J

    .line 326
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_cur_3G:J

    .line 327
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_cur_2G:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_t_base:J

    .line 401
    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_r_base:J

    .line 403
    iput-wide v2, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_t_add:D

    .line 404
    iput-wide v2, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_r_add:D

    .line 427
    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_t_cur:J

    .line 428
    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_r_cur:J

    .line 415
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->initProcessNetValue(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public static clearNetValue(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 450
    if-nez p0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const-string v1, ""

    .line 453
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 454
    .local v0, "netUtils":Lcom/tencent/wstt/gt/api/utils/NetUtils;
    const-string v2, "NET"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->initNetValue()V

    goto :goto_0

    .line 458
    :cond_2
    const-string v2, "Pnet:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    const-string v2, "Pnet:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 461
    sget-object v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "netUtils":Lcom/tencent/wstt/gt/api/utils/NetUtils;
    check-cast v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;

    .line 462
    .restart local v0    # "netUtils":Lcom/tencent/wstt/gt/api/utils/NetUtils;
    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->initProcessNetValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInOctets(Ljava/lang/String;)J
    .locals 14
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v13, 0x2

    .line 170
    invoke-static {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->getProcessUID(Ljava/lang/String;)I

    move-result v8

    .line 171
    .local v8, "uid":I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "/proc/uid_stat/"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/tcp_rcv"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "netPath":Ljava/lang/String;
    sget v9, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netCase:I

    packed-switch v9, :pswitch_data_0

    :goto_0
    move-wide v6, v10

    .line 210
    :cond_0
    :goto_1
    return-wide v6

    .line 176
    :pswitch_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 179
    sput v13, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netCase:I

    .line 199
    .end local v1    # "f":Ljava/io/File;
    :goto_2
    :pswitch_1
    invoke-static {v8}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    .line 200
    .local v6, "r":J
    cmp-long v9, v6, v10

    if-gez v9, :cond_0

    .line 204
    const/4 v9, 0x3

    sput v9, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netCase:I

    goto :goto_0

    .line 184
    .end local v6    # "r":J
    .restart local v1    # "f":Ljava/io/File;
    :cond_1
    :try_start_0
    const-string v5, "0"

    .line 185
    .local v5, "ret":Ljava/lang/String;
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v3, v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 187
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 189
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    goto :goto_1

    .line 190
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    sput v13, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netCase:I

    goto :goto_2

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetRxMobileBytes()J
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 82
    .local v0, "total":J
    return-wide v0
.end method

.method public static getNetRxTotalBytes()J
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    .line 62
    .local v0, "total":J
    return-wide v0
.end method

.method public static getNetRxTotalPackets()J
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxPackets()J

    move-result-wide v0

    .line 102
    .local v0, "total":J
    return-wide v0
.end method

.method public static getNetRxWifiBytes()J
    .locals 6

    .prologue
    .line 91
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetRxTotalBytes()J

    move-result-wide v2

    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetRxMobileBytes()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 92
    .local v0, "total":J
    return-wide v0
.end method

.method public static getNetTxMobileBytes()J
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 77
    .local v0, "total":J
    return-wide v0
.end method

.method public static getNetTxTotalBytes()J
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    .line 72
    .local v0, "total":J
    return-wide v0
.end method

.method public static getNetTxTotalPackets()J
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxPackets()J

    move-result-wide v0

    .line 112
    .local v0, "total":J
    return-wide v0
.end method

.method public static getNetTxWifiBytes()J
    .locals 6

    .prologue
    .line 86
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetTxTotalBytes()J

    move-result-wide v2

    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetTxMobileBytes()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 87
    .local v0, "total":J
    return-wide v0
.end method

.method public static getNetValue()Ljava/lang/String;
    .locals 9

    .prologue
    const/high16 v8, 0x44800000    # 1024.0f

    .line 330
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetWorkType()I

    move-result v0

    .line 333
    .local v0, "cur_net_type":I
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, "df":Ljava/text/DecimalFormat;
    packed-switch v0, :pswitch_data_0

    .line 397
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 336
    :pswitch_0
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetTxWifiBytes()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_cur_wifi:J

    .line 337
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetRxWifiBytes()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_cur_wifi:J

    .line 338
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_cur_wifi:J

    sget-wide v6, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_base_wifi:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    div-float/2addr v3, v8

    float-to-double v4, v3

    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_wifi:D

    .line 339
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_cur_wifi:J

    sget-wide v6, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_base_wifi:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    div-float/2addr v3, v8

    float-to-double v4, v3

    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_wifi:D

    .line 341
    const-string v3, "wifi:t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_wifi:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    const-string v3, "KB|r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_wifi:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    const-string v3, "KB  3G:t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_3G:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    const-string v3, "KB|r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_3G:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    const-string v3, "KB  2G:t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_2G:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    const-string v3, "KB|r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_2G:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 356
    :pswitch_1
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetTxMobileBytes()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_cur_3G:J

    .line 357
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetRxMobileBytes()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_cur_3G:J

    .line 358
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_cur_3G:J

    sget-wide v6, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_base_3G:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    div-float/2addr v3, v8

    float-to-double v4, v3

    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_3G:D

    .line 359
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_cur_3G:J

    sget-wide v6, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_base_3G:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    div-float/2addr v3, v8

    float-to-double v4, v3

    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_3G:D

    .line 361
    const-string v3, "3G:t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_3G:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const-string v3, "KB|r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_3G:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    const-string v3, "KB  wifi:t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_wifi:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const-string v3, "KB|r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_wifi:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const-string v3, "KB  2G:t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_2G:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string v3, "KB|r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_2G:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 376
    :pswitch_2
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetTxMobileBytes()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_cur_2G:J

    .line 377
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetRxMobileBytes()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_cur_2G:J

    .line 378
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_cur_2G:J

    sget-wide v6, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_base_2G:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    div-float/2addr v3, v8

    float-to-double v4, v3

    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_2G:D

    .line 379
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_cur_2G:J

    sget-wide v6, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_base_2G:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    div-float/2addr v3, v8

    float-to-double v4, v3

    sput-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_2G:D

    .line 381
    const-string v3, "2G:t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_2G:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const-string v3, "KB|r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_2G:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    const-string v3, "KB  wifi:t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_wifi:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    const-string v3, "KB|r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_wifi:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    const-string v3, "KB  3G:t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_3G:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v3, "KB|r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    sget-wide v4, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_3G:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final getNetWorkType()I
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x2

    .line 241
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 243
    .local v0, "c":Landroid/content/Context;
    const-string v8, "connectivity"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 244
    .local v1, "conn":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v5

    .line 247
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 248
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 251
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 252
    .local v4, "type":I
    if-ne v4, v7, :cond_2

    .line 253
    const/4 v5, 0x0

    goto :goto_0

    .line 256
    :cond_2
    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 255
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 257
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move v5, v7

    .line 265
    goto :goto_0

    :pswitch_1
    move v5, v6

    .line 259
    goto :goto_0

    :pswitch_2
    move v5, v6

    .line 261
    goto :goto_0

    :pswitch_3
    move v5, v6

    .line 263
    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getOutOctets(Ljava/lang/String;)J
    .locals 14
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v13, 0x2

    .line 121
    invoke-static {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->getProcessUID(Ljava/lang/String;)I

    move-result v8

    .line 122
    .local v8, "uid":I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "/proc/uid_stat/"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/tcp_snd"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "netPath":Ljava/lang/String;
    sget v9, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netCase:I

    packed-switch v9, :pswitch_data_0

    :goto_0
    move-wide v6, v10

    .line 161
    :cond_0
    :goto_1
    return-wide v6

    .line 127
    :pswitch_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 130
    sput v13, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netCase:I

    .line 150
    .end local v1    # "f":Ljava/io/File;
    :goto_2
    :pswitch_1
    invoke-static {v8}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    .line 151
    .local v6, "s":J
    cmp-long v9, v6, v10

    if-gez v9, :cond_0

    .line 155
    const/4 v9, 0x3

    sput v9, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netCase:I

    goto :goto_0

    .line 135
    .end local v6    # "s":J
    .restart local v1    # "f":Ljava/io/File;
    :cond_1
    :try_start_0
    const-string v5, "0"

    .line 136
    .local v5, "ret":Ljava/lang/String;
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v3, v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 138
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 140
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    goto :goto_1

    .line 141
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    sput v13, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netCase:I

    goto :goto_2

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getR_add_2G()D
    .locals 2

    .prologue
    .line 305
    sget-wide v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_2G:D

    return-wide v0
.end method

.method public static getR_add_3G()D
    .locals 2

    .prologue
    .line 301
    sget-wide v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_3G:D

    return-wide v0
.end method

.method public static getR_add_wifi()D
    .locals 2

    .prologue
    .line 297
    sget-wide v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_wifi:D

    return-wide v0
.end method

.method public static getT_add_2G()D
    .locals 2

    .prologue
    .line 293
    sget-wide v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_2G:D

    return-wide v0
.end method

.method public static getT_add_3G()D
    .locals 2

    .prologue
    .line 289
    sget-wide v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_3G:D

    return-wide v0
.end method

.method public static getT_add_wifi()D
    .locals 2

    .prologue
    .line 285
    sget-wide v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_wifi:D

    return-wide v0
.end method

.method public static getUidRBytes(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 220
    invoke-static {p0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 221
    .local v0, "rBytes":J
    return-wide v0
.end method

.method public static getUidTBytes(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 231
    invoke-static {p0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    .line 232
    .local v0, "tBytes":J
    return-wide v0
.end method

.method public static initNetValue()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 309
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetTxWifiBytes()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_base_wifi:J

    .line 310
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetTxMobileBytes()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_base_2G:J

    sput-wide v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_base_3G:J

    .line 311
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetRxWifiBytes()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_base_wifi:J

    .line 312
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetRxMobileBytes()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_base_2G:J

    sput-wide v0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_base_3G:J

    .line 314
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_wifi:D

    .line 315
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_3G:D

    .line 316
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->t_add_2G:D

    .line 317
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_wifi:D

    .line 318
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_3G:D

    .line 319
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/NetUtils;->r_add_2G:D

    .line 320
    return-void
.end method

.method public static isWifiActive()Z
    .locals 6

    .prologue
    .line 470
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 472
    .local v0, "c":Landroid/content/Context;
    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 471
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 474
    .local v3, "manager":Landroid/net/ConnectivityManager;
    if-eqz v3, :cond_0

    .line 475
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 476
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 477
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    .line 485
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 478
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    const-string v4, "WIFI"

    aget-object v5, v2, v1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 479
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 480
    const/4 v4, 0x1

    goto :goto_1

    .line 477
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getP_r_add()D
    .locals 2

    .prologue
    .line 411
    iget-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_r_add:D

    return-wide v0
.end method

.method public getP_t_add()D
    .locals 2

    .prologue
    .line 407
    iget-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_t_add:D

    return-wide v0
.end method

.method public getProcessNetValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    const/high16 v6, 0x44800000    # 1024.0f

    .line 431
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 433
    .local v1, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-static {p1}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getOutOctets(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_t_cur:J

    .line 435
    invoke-static {p1}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getInOctets(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_r_cur:J

    .line 436
    iget-wide v2, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_t_cur:J

    iget-wide v4, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_t_base:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v6

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_t_add:D

    .line 437
    iget-wide v2, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_r_cur:J

    iget-wide v4, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_r_base:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v6

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_r_add:D

    .line 439
    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    iget-wide v2, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_t_add:D

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const-string v2, "KB|r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    iget-wide v2, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_r_add:D

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const-string v2, "KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public initProcessNetValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 420
    invoke-static {p1}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getOutOctets(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_t_base:J

    .line 421
    invoke-static {p1}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getInOctets(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_r_base:J

    .line 423
    iput-wide v2, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_t_add:D

    .line 424
    iput-wide v2, p0, Lcom/tencent/wstt/gt/api/utils/NetUtils;->p_r_add:D

    .line 425
    return-void
.end method
