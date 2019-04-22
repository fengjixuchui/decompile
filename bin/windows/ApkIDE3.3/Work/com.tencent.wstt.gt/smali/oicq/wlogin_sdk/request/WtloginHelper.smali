.class public Loicq/wlogin_sdk/request/WtloginHelper;
.super Loicq/wlogin_sdk/request/WtloginListener;
.source "WtloginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;,
        Loicq/wlogin_sdk/request/WtloginHelper$SigType;
    }
.end annotation


# instance fields
.field private isForLocal:Z

.field private mAysncSeq:J

.field private mContext:Landroid/content/Context;

.field private mG:Loicq/wlogin_sdk/request/u;

.field private mHelperHandler:Landroid/os/Handler;

.field private mListener:Loicq/wlogin_sdk/request/WtloginListener;

.field private mMainSigMap:I

.field private mMiscBitmap:I

.field private mOpenAppid:J

.field private mRegStatus:Loicq/wlogin_sdk/a/h;

.field private mSubSigMap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginListener;-><init>()V

    .line 57
    new-instance v0, Loicq/wlogin_sdk/request/u;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    .line 58
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->newHelperHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    .line 60
    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    .line 61
    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    .line 62
    new-instance v0, Loicq/wlogin_sdk/a/h;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/h;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    .line 64
    const v0, 0xff32f2

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    .line 65
    const v0, 0x10400

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    .line 66
    const v0, 0x1ff7c

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    .line 68
    const-wide/32 v0, 0x2a9e5427

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 72
    iput-boolean v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    .line 117
    iput-boolean v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    .line 118
    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->a(Landroid/content/Context;)V

    .line 120
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestInit()I

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginListener;-><init>()V

    .line 57
    new-instance v0, Loicq/wlogin_sdk/request/u;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    .line 58
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->newHelperHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    .line 60
    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    .line 61
    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    .line 62
    new-instance v0, Loicq/wlogin_sdk/a/h;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/h;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    .line 64
    const v0, 0xff32f2

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    .line 65
    const v0, 0x10400

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    .line 66
    const v0, 0x1ff7c

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    .line 68
    const-wide/32 v0, 0x2a9e5427

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    .line 129
    iput-boolean p2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    .line 131
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->a(Landroid/content/Context;)V

    .line 137
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestInit()I

    .line 138
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    .line 134
    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printThrowable(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private AsyncGenRSAKey()V
    .locals 2

    .prologue
    .line 2856
    iget-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    if-eqz v0, :cond_0

    .line 2864
    :goto_0
    return-void

    .line 2858
    :cond_0
    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$1;

    const-string v1, "AsyncGenRSAKey"

    invoke-direct {v0, p0, v1}, Loicq/wlogin_sdk/request/WtloginHelper$1;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;)V

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/WtloginHelper$1;->start()V

    goto :goto_0
.end method

.method private CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I
    .locals 56

    .prologue
    .line 1932
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1933
    :cond_0
    const/16 v8, -0x3f9

    .line 2140
    :goto_0
    return v8

    .line 1937
    :cond_1
    if-nez p5, :cond_2

    .line 1938
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v10, "CheckPictureAndGetSt"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BLjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 1941
    const/16 v8, -0x3e9

    goto :goto_0

    .line 1946
    :cond_2
    const/4 v9, 0x0

    .line 1949
    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1950
    move-object/from16 v0, p0

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v0, p3

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 1952
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p3

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v54

    .line 1953
    move-object/from16 v0, v54

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p3

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 1954
    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v55

    .line 1956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CheckPictureAndGetSt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v54

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    move-object/from16 v0, p1

    move-object/from16 v1, v54

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 1960
    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v55

    iput-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 1962
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1964
    move-object/from16 v0, v54

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1965
    if-eqz v2, :cond_4

    .line 1966
    const/4 v9, 0x1

    .line 1973
    :cond_4
    :goto_1
    const/4 v3, 0x1

    if-ne v9, v3, :cond_5

    .line 1974
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v54

    iput-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 1979
    :cond_5
    new-instance v2, Loicq/wlogin_sdk/request/o;

    move-object/from16 v0, v54

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/o;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v55

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Loicq/wlogin_sdk/request/o;->a([BII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v8

    .line 1982
    const/16 v2, 0xcc

    if-ne v8, v2, :cond_6

    .line 1983
    new-instance v2, Loicq/wlogin_sdk/request/q;

    move-object/from16 v0, v54

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/q;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v55

    iget-object v5, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Loicq/wlogin_sdk/request/q;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v8

    .line 1987
    :cond_6
    if-eqz v8, :cond_c

    .line 2111
    :cond_7
    :goto_2
    const/16 v2, 0x80

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v2

    .line 2112
    if-nez v2, :cond_8

    .line 2113
    new-instance v2, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v2}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    .line 2115
    :cond_8
    sget-object v3, Loicq/wlogin_sdk/request/u;->ag:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v54

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v54

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v8}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v7

    invoke-virtual/range {v3 .. v8}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    .line 2117
    if-nez v8, :cond_1a

    .line 2118
    iget-object v3, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v3, :cond_9

    iget-object v3, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v3, v3

    if-eqz v3, :cond_9

    .line 2119
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v54

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v55

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    .line 2127
    :cond_9
    :goto_3
    move-object/from16 v0, v54

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    if-eqz v3, :cond_a

    move-object/from16 v0, v54

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    invoke-virtual {v3}, Loicq/wlogin_sdk/b/at;->f()I

    move-result v3

    if-eqz v3, :cond_a

    .line 2128
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v54

    iget-object v4, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    iput-object v4, v3, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    .line 2129
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v54

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v55

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    .line 2134
    :cond_a
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    .line 2137
    invoke-virtual/range {v54 .. v54}, Loicq/wlogin_sdk/request/u;->h()V

    .line 2138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CheckPictureAndGetSt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v54

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v54

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1969
    :cond_b
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1970
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1992
    :cond_c
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1994
    move-object/from16 v0, v54

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1995
    if-eqz v3, :cond_1b

    .line 1996
    const/4 v2, 0x1

    move-object/from16 v53, v3

    .line 2003
    :goto_4
    if-nez v2, :cond_e

    .line 2004
    const/16 v8, -0x3eb

    .line 2005
    goto/16 :goto_2

    .line 1999
    :cond_d
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2000
    const/4 v2, 0x1

    move-object/from16 v53, v3

    goto :goto_4

    .line 2008
    :cond_e
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v54

    iput-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 2009
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v2, :cond_10

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v2, v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_10

    .line 2010
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v2

    move-object/from16 v0, v54

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    .line 2011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSF SSO SEQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v54

    iget v3, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    :goto_5
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v55

    iget-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v3, v4, v5}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    .line 2016
    if-eqz v2, :cond_12

    .line 2018
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 2021
    move-object/from16 v0, v55

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_11

    if-eqz p4, :cond_11

    move-object/from16 v0, v55

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p4

    array-length v3, v0

    if-ne v2, v3, :cond_11

    .line 2023
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    move-object/from16 v0, v55

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_11

    move-object/from16 v0, v55

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    if-ge v3, v2, :cond_11

    .line 2025
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v55

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    aget-wide v6, v2, v3

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v5, v6, v7}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 2026
    if-eqz v4, :cond_f

    .line 2027
    mul-int/lit8 v5, v3, 0x2

    iget-object v2, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v5

    .line 2028
    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v5, v2, 0x1

    iget-object v2, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v5

    .line 2023
    :cond_f
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 2013
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, v54

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto :goto_5

    .line 2033
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2038
    :cond_12
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    if-eqz v2, :cond_14

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    array-length v2, v2

    if-lez v2, :cond_14

    .line 2040
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object/from16 v25, v2

    .line 2047
    :goto_7
    move-object/from16 v0, v55

    iget v2, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    if-eqz v2, :cond_15

    .line 2048
    new-instance v2, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, v54

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, v55

    iget-wide v3, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v55

    iget-wide v5, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    const/4 v7, 0x1

    move-object/from16 v0, v54

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    const/4 v10, 0x0

    sget-object v11, Loicq/wlogin_sdk/request/u;->ab:[B

    move-object/from16 v0, v55

    iget-object v12, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v15, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v55

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v16, v0

    move-object/from16 v0, v55

    iget v0, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    move/from16 v17, v0

    move-object/from16 v0, v55

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    sget v21, Loicq/wlogin_sdk/request/u;->w:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v26, p3

    invoke-virtual/range {v2 .. v26}, Loicq/wlogin_sdk/request/l;->a(JJIJI[B[B[BII[JIJIIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v8

    .line 2074
    :goto_8
    const/16 v2, 0xcc

    if-ne v8, v2, :cond_13

    .line 2075
    new-instance v2, Loicq/wlogin_sdk/request/q;

    move-object/from16 v0, v54

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/q;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v55

    iget-object v5, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Loicq/wlogin_sdk/request/q;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v8

    .line 2080
    :cond_13
    if-nez v8, :cond_7

    .line 2084
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v55

    iget-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v3, v4, v5}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    .line 2085
    if-nez v2, :cond_17

    .line 2086
    const/16 v8, -0x3ec

    goto/16 :goto_2

    .line 2044
    :cond_14
    sget-object v25, Loicq/wlogin_sdk/request/u;->Y:[B

    goto/16 :goto_7

    .line 2060
    :cond_15
    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v36, v0

    .line 2061
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-wide v6, Loicq/wlogin_sdk/request/u;->aa:J

    add-long/2addr v4, v6

    move-object/from16 v0, v36

    invoke-static {v0, v2, v4, v5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 2062
    move-object/from16 v0, v55

    iget-boolean v2, v0, Loicq/wlogin_sdk/request/async_context;->_isSmslogin:Z

    if-eqz v2, :cond_16

    const/16 v39, 0x3

    .line 2063
    :goto_9
    new-instance v26, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, v55

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v55

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-wide/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v0, v54

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    sget-object v35, Loicq/wlogin_sdk/request/u;->ab:[B

    const/16 v37, 0x0

    move-object/from16 v0, v55

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v41, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v42, v0

    move-object/from16 v0, v55

    iget v0, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    move/from16 v43, v0

    move-object/from16 v0, v55

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-wide/from16 v44, v0

    const/16 v46, 0x1

    sget v47, Loicq/wlogin_sdk/request/u;->w:I

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x1

    move-object/from16 v51, v25

    move-object/from16 v52, p3

    invoke-virtual/range {v26 .. v52}, Loicq/wlogin_sdk/request/l;->a(JJIJI[B[BI[BIII[JIJIIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v8

    goto/16 :goto_8

    .line 2062
    :cond_16
    const/16 v39, 0x1

    goto :goto_9

    .line 2089
    :cond_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 2092
    move-object/from16 v0, v55

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_19

    if-eqz p4, :cond_19

    move-object/from16 v0, v55

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p4

    array-length v3, v0

    if-ne v2, v3, :cond_19

    .line 2094
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    move-object/from16 v0, v55

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_19

    move-object/from16 v0, v55

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    if-ge v3, v2, :cond_19

    .line 2096
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v55

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    aget-wide v6, v2, v3

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v5, v6, v7}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 2097
    if-eqz v4, :cond_18

    .line 2098
    mul-int/lit8 v5, v3, 0x2

    iget-object v2, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v5

    .line 2099
    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v5, v2, 0x1

    iget-object v2, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v5

    .line 2094
    :cond_18
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a

    .line 2104
    :cond_19
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2123
    :cond_1a
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v54

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v55

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_3

    :cond_1b
    move v2, v9

    move-object/from16 v53, v3

    goto/16 :goto_4
.end method

.method private CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I
    .locals 20

    .prologue
    .line 2255
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2256
    :cond_0
    const/16 v8, -0x3f9

    .line 2369
    :goto_0
    return v8

    .line 2260
    :cond_1
    if-nez p5, :cond_2

    .line 2261
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v10, "CheckSMSAndGetSt"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BLjava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 2264
    const/16 v8, -0x3e9

    goto :goto_0

    .line 2271
    :cond_2
    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2272
    move-object/from16 v0, p0

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v0, p3

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2274
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p3

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v9

    .line 2275
    iget-wide v2, v9, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p3

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2276
    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v19

    .line 2278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CheckSMSAndGetSt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v9, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    move-object/from16 v0, p1

    iput-object v0, v9, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2282
    const-wide/16 v2, 0x0

    iput-wide v2, v9, Loicq/wlogin_sdk/request/u;->f:J

    .line 2283
    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v19

    iput-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 2284
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v2, :cond_7

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v2, v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_7

    .line 2285
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v2

    iput v2, v9, Loicq/wlogin_sdk/request/u;->i:I

    .line 2286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSF SSO SEQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    :goto_1
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2295
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2296
    if-nez v2, :cond_e

    .line 2297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " have not found uin record."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    const/16 v8, -0x3eb

    .line 2339
    :goto_2
    const/16 v2, 0x80

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v2

    .line 2340
    if-nez v2, :cond_4

    .line 2341
    new-instance v2, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v2}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    .line 2343
    :cond_4
    sget-object v3, Loicq/wlogin_sdk/request/u;->ag:Loicq/wlogin_sdk/report/report_t1;

    iget-wide v4, v9, Loicq/wlogin_sdk/request/u;->f:J

    iget-object v6, v9, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v8}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v7

    invoke-virtual/range {v3 .. v8}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    .line 2345
    if-nez v8, :cond_d

    .line 2346
    iget-object v3, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v3, :cond_5

    iget-object v3, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v3, v3

    if-eqz v3, :cond_5

    .line 2347
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    iget-wide v14, v9, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v19

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    .line 2355
    :cond_5
    :goto_3
    iget-object v3, v9, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    if-eqz v3, :cond_6

    iget-object v3, v9, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    invoke-virtual {v3}, Loicq/wlogin_sdk/b/at;->f()I

    move-result v3

    if-eqz v3, :cond_6

    .line 2356
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-object v4, v9, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    iput-object v4, v3, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    .line 2357
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    iget-wide v14, v9, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v19

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    .line 2362
    :cond_6
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    .line 2365
    invoke-virtual {v9}, Loicq/wlogin_sdk/request/u;->h()V

    .line 2366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CheckSMSAndGetSt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v9, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v9, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2288
    :cond_7
    const/4 v2, 0x0

    iput v2, v9, Loicq/wlogin_sdk/request/u;->i:I

    goto/16 :goto_1

    .line 2303
    :cond_8
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v8, v2

    .line 2305
    :goto_4
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v9, Loicq/wlogin_sdk/request/u;->f:J

    .line 2308
    new-instance v2, Loicq/wlogin_sdk/request/p;

    invoke-direct {v2, v9}, Loicq/wlogin_sdk/request/p;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v19

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Loicq/wlogin_sdk/request/p;->a([BII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 2311
    if-eqz v2, :cond_9

    move v8, v2

    .line 2312
    goto/16 :goto_2

    .line 2315
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v19

    iget-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    invoke-virtual {v9, v2, v3, v4, v5}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    .line 2316
    if-nez v2, :cond_a

    .line 2317
    const/16 v8, -0x3ec

    .line 2318
    goto/16 :goto_2

    .line 2321
    :cond_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 2324
    move-object/from16 v0, v19

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_c

    if-eqz p4, :cond_c

    move-object/from16 v0, v19

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p4

    array-length v3, v0

    if-ne v2, v3, :cond_c

    .line 2325
    const/4 v2, 0x0

    move v3, v2

    :goto_5
    move-object/from16 v0, v19

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_c

    move-object/from16 v0, v19

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    if-ge v3, v2, :cond_c

    .line 2326
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v19

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    aget-wide v6, v2, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 2327
    if-eqz v4, :cond_b

    .line 2328
    mul-int/lit8 v5, v3, 0x2

    iget-object v2, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v5

    .line 2329
    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v5, v2, 0x1

    iget-object v2, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v5

    .line 2325
    :cond_b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 2334
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2351
    :cond_d
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    iget-wide v14, v9, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v19

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_3

    :cond_e
    move-object v8, v2

    goto/16 :goto_4
.end method

.method private CheckSMSVerifyLoginAccount(JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 17

    .prologue
    .line 2501
    const/4 v2, 0x0

    sput-boolean v2, Loicq/wlogin_sdk/a/h;->v:Z

    .line 2502
    const-wide/16 v2, 0x0

    sput-wide v2, Loicq/wlogin_sdk/a/h;->w:J

    .line 2504
    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 2505
    :cond_0
    const/16 v2, -0x3f9

    .line 2540
    :goto_0
    return v2

    .line 2508
    :cond_1
    if-nez p7, :cond_2

    .line 2509
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v12, "CheckSMSVerifyLoginAccount"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v12}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 2513
    const/16 v2, -0x3e9

    goto :goto_0

    .line 2518
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v15

    .line 2519
    iget-wide v2, v15, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p6

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2520
    iget-wide v2, v15, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 2521
    iget-wide v2, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v2

    .line 2523
    move-object/from16 v0, p5

    iput-object v0, v15, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CheckSMSVerifyLoginAccount ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    move-object/from16 v0, p6

    iget v3, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    iput v3, v2, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    .line 2530
    new-instance v3, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v3}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v3, v2, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 2532
    new-instance v3, Loicq/wlogin_sdk/request/w;

    invoke-direct {v3, v15}, Loicq/wlogin_sdk/request/w;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    sget-object v9, Loicq/wlogin_sdk/request/u;->Y:[B

    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    const/4 v13, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v10, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/w;->a(JJI[BLjava/lang/String;II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 2534
    const/16 v3, 0xd0

    if-ne v2, v3, :cond_3

    .line 2535
    const/4 v2, 0x0

    .line 2538
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CheckSMSVerifyLoginAccount ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-lez v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1
.end method

.method private FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;
    .locals 1

    .prologue
    .line 2870
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1, p2, p3, p4}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    .line 2871
    return-object v0
.end method

.method private GetA1ByAccount(Ljava/lang/String;J)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 450
    if-nez p1, :cond_0

    move-object v0, v1

    .line 482
    :goto_0
    return-object v0

    .line 456
    :cond_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 457
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 458
    if-nez v0, :cond_4

    move-object v0, v1

    .line 473
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    if-eqz v2, :cond_2

    iget-object v2, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v2, v2

    if-gtz v2, :cond_5

    .line 474
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userAccount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dwAppid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " GetA1ByAccount return: null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 476
    goto :goto_0

    .line 463
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 467
    :cond_4
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    .line 468
    if-nez v0, :cond_1

    goto :goto_1

    .line 479
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dwAppid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GetA1ByAccount return: not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto/16 :goto_0
.end method

.method private GetA1WithA1(Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I
    .locals 32

    .prologue
    .line 1117
    if-eqz p1, :cond_0

    if-eqz p7, :cond_0

    if-eqz p14, :cond_0

    if-eqz p15, :cond_0

    if-eqz p16, :cond_0

    if-nez p17, :cond_1

    .line 1118
    :cond_0
    const/16 v10, -0x3f9

    .line 1259
    :goto_0
    return v10

    .line 1122
    :cond_1
    move/from16 v0, p6

    or-int/lit16 v14, v0, 0xc0

    .line 1125
    if-nez p18, :cond_2

    .line 1126
    new-instance v5, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v26, "GetA1WithA1"

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object/from16 v15, p7

    move-wide/from16 v16, p8

    move-wide/from16 v18, p10

    move-wide/from16 v20, p12

    move-object/from16 v22, p14

    move-object/from16 v23, p15

    move-object/from16 v24, p16

    move-object/from16 v25, p17

    invoke-direct/range {v5 .. v26}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-virtual {v5, v4}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 1131
    const/16 v10, -0x3e9

    goto :goto_0

    .line 1134
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v30

    .line 1135
    move-object/from16 v0, v30

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p16

    iput-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 1136
    move-object/from16 v0, v30

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v4

    .line 1143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wtlogin login with GetA1WithA1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwSrcAppid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwMainSigMap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwSubSrcAppid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dstAppName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwDstAppid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p10

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwSubDstAppid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p12

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Seq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v5

    .line 1151
    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v6

    sput v6, Loicq/wlogin_sdk/request/u;->B:I

    .line 1152
    sget v6, Loicq/wlogin_sdk/request/u;->B:I

    if-eq v5, v6, :cond_3

    .line 1154
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v6, Loicq/wlogin_sdk/request/u;->B:I

    invoke-static {v5, v6}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    .line 1157
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    sput-object v5, Loicq/wlogin_sdk/request/u;->D:[B

    .line 1159
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 1160
    const-wide/16 v6, 0x0

    move-object/from16 v0, v30

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 1161
    move-wide/from16 v0, p2

    iput-wide v0, v4, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    .line 1162
    move-wide/from16 v0, p2

    iput-wide v0, v4, Loicq/wlogin_sdk/request/async_context;->_appid:J

    .line 1163
    move-wide/from16 v0, p4

    iput-wide v0, v4, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    .line 1164
    iput v14, v4, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    .line 1165
    new-instance v5, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v5}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v5, v4, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 1170
    sget-object v4, Loicq/wlogin_sdk/request/u;->ag:Loicq/wlogin_sdk/report/report_t1;

    new-instance v15, Loicq/wlogin_sdk/report/report_t2;

    const-string v16, "login"

    new-instance v17, Ljava/lang/String;

    sget-object v5, Loicq/wlogin_sdk/request/u;->A:[B

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/16 v24, 0x0

    move-wide/from16 v20, p10

    move-wide/from16 v22, p12

    invoke-direct/range {v15 .. v24}, Loicq/wlogin_sdk/report/report_t2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ[J)V

    invoke-virtual {v4, v15}, Loicq/wlogin_sdk/report/report_t1;->add_t2(Loicq/wlogin_sdk/report/report_t2;)V

    .line 1174
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1176
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 1177
    if-nez v4, :cond_9

    .line 1178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " have not found uin record."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const/16 v10, -0x3eb

    .line 1223
    :cond_4
    :goto_1
    const/16 v4, 0x80

    move-object/from16 v0, p16

    invoke-static {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    .line 1224
    if-nez v4, :cond_5

    .line 1225
    new-instance v4, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    .line 1227
    :cond_5
    sget-object v5, Loicq/wlogin_sdk/request/u;->ag:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v30

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v30

    iget-object v8, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v10}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v9

    invoke-virtual/range {v5 .. v10}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    .line 1229
    if-nez v10, :cond_d

    .line 1231
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_6

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-eqz v5, :cond_6

    .line 1232
    const/16 v17, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v18, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v20, v0

    move-object/from16 v16, p0

    move-wide/from16 v22, p2

    invoke-direct/range {v16 .. v23}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    .line 1240
    :cond_6
    :goto_2
    move-object/from16 v0, v30

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    if-eqz v5, :cond_7

    move-object/from16 v0, v30

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    invoke-virtual {v5}, Loicq/wlogin_sdk/b/at;->f()I

    move-result v5

    if-eqz v5, :cond_7

    .line 1241
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v30

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    iput-object v6, v5, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    .line 1242
    const/16 v17, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v18, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v20, v0

    const/16 v24, 0x1

    move-object/from16 v16, p0

    move-wide/from16 v22, p2

    invoke-direct/range {v16 .. v24}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    .line 1247
    :cond_7
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    .line 1250
    invoke-virtual/range {v30 .. v30}, Loicq/wlogin_sdk/request/u;->h()V

    .line 1251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wtlogin login with GetA1WithA1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSrcAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubSrcAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dstAppName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p10

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p12

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1183
    :cond_8
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1185
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v30

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 1187
    invoke-virtual/range {v30 .. v30}, Loicq/wlogin_sdk/request/u;->j()V

    .line 1189
    invoke-direct/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1ByAccount(Ljava/lang/String;J)[B

    move-result-object v15

    .line 1190
    invoke-direct/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetNoPicSigByAccount(Ljava/lang/String;J)[B

    move-result-object v16

    .line 1191
    if-eqz v15, :cond_a

    array-length v5, v15

    if-gtz v5, :cond_b

    .line 1192
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " have no a1 or pic_sig."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const/16 v10, -0x3f8

    .line 1194
    goto/16 :goto_1

    .line 1197
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " login with A1 exchange A1."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    new-instance v6, Loicq/wlogin_sdk/request/m;

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Loicq/wlogin_sdk/request/m;-><init>(Loicq/wlogin_sdk/request/u;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-object/from16 v20, p7

    move-wide/from16 v21, p8

    move-wide/from16 v23, p10

    move-wide/from16 v25, p12

    move-object/from16 v27, p14

    move-object/from16 v28, p15

    move-object/from16 v29, p16

    invoke-virtual/range {v6 .. v29}, Loicq/wlogin_sdk/request/m;->a(JJJII[B[BII[J[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    .line 1205
    if-nez v10, :cond_4

    .line 1209
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v30

    move-wide/from16 v1, p2

    invoke-virtual {v0, v4, v5, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 1210
    if-nez v4, :cond_c

    .line 1211
    const/16 v10, -0x3ec

    .line 1212
    goto/16 :goto_1

    .line 1214
    :cond_c
    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 1216
    move-object/from16 v0, v30

    iget-object v4, v0, Loicq/wlogin_sdk/request/u;->j:Loicq/wlogin_sdk/request/WFastLoginInfo;

    .line 1217
    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WFastLoginInfo;->get_clone(Loicq/wlogin_sdk/request/WFastLoginInfo;)V

    goto/16 :goto_1

    .line 1236
    :cond_d
    const/16 v17, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v18, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v20, v0

    const/16 v24, 0x0

    move-object/from16 v16, p0

    move-wide/from16 v22, p2

    invoke-direct/range {v16 .. v24}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_2
.end method

.method private GetFastLoginInfo([BLoicq/wlogin_sdk/request/async_context;)I
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v0, -0x3f9

    .line 1328
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v7, :cond_0

    if-nez p2, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return v0

    .line 1335
    :cond_1
    new-instance v1, Loicq/wlogin_sdk/b/h;

    invoke-direct {v1}, Loicq/wlogin_sdk/b/h;-><init>()V

    .line 1336
    new-instance v2, Loicq/wlogin_sdk/b/n;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/n;-><init>()V

    .line 1337
    new-instance v3, Loicq/wlogin_sdk/b/bc;

    invoke-direct {v3}, Loicq/wlogin_sdk/b/bc;-><init>()V

    .line 1338
    new-instance v4, Loicq/wlogin_sdk/b/ao;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ao;-><init>()V

    .line 1341
    array-length v5, p1

    .line 1344
    invoke-virtual {v1, p1, v7, v5}, Loicq/wlogin_sdk/b/h;->b([BII)I

    move-result v6

    .line 1345
    if-gez v6, :cond_2

    .line 1346
    const-string v1, "fast login info no tgtgt data"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1350
    :cond_2
    invoke-virtual {v2, p1, v7, v5}, Loicq/wlogin_sdk/b/n;->b([BII)I

    move-result v6

    .line 1351
    if-gez v6, :cond_3

    .line 1352
    const-string v1, "fast login info no gtkey data"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1356
    :cond_3
    invoke-virtual {v3, p1, v7, v5}, Loicq/wlogin_sdk/b/bc;->b([BII)I

    move-result v6

    .line 1357
    if-gez v6, :cond_4

    .line 1358
    const-string v1, "fast login info no nopicsig data"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    :cond_4
    invoke-virtual {v4, p1, v7, v5}, Loicq/wlogin_sdk/b/ao;->b([BII)I

    move-result v0

    .line 1363
    if-lez v0, :cond_5

    .line 1364
    invoke-virtual {v4}, Loicq/wlogin_sdk/b/ao;->b()[B

    move-result-object v4

    .line 1365
    sget-object v0, Loicq/wlogin_sdk/request/u;->y:[B

    .line 1367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new imei:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old imei:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;)V

    .line 1370
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1371
    const-string v0, "fast login info imei not equal"

    const-string v5, ""

    invoke-static {v0, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    sget-object v0, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v0, v4}, Loicq/wlogin_sdk/tools/util;->save_file_imei(Landroid/content/Context;[B)V

    .line 1374
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->y:[B

    .line 1375
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->z:[B

    .line 1379
    :cond_5
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/h;->b()[B

    move-result-object v0

    invoke-virtual {v2}, Loicq/wlogin_sdk/b/n;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/k;->b([B[B)[B

    move-result-object v0

    iput-object v0, p2, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    .line 1380
    invoke-virtual {v3}, Loicq/wlogin_sdk/b/bc;->b()[B

    move-result-object v0

    iput-object v0, p2, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    .line 1382
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static GetFastLoginUrl(Ljava/lang/String;J)Loicq/wlogin_sdk/request/WFastLoginInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2756
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 2781
    :goto_0
    return-object v0

    .line 2759
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " uin:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    const-string v0, "http://imgcache.qq.com/wtlogin"

    .line 2763
    const-wide/32 v2, 0x64ace75a

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 2764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/test"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2768
    :goto_1
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2769
    const/4 v0, 0x0

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 2770
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2769
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2766
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/app"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2774
    :cond_3
    new-instance v0, Loicq/wlogin_sdk/request/WFastLoginInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/request/WFastLoginInfo;-><init>()V

    .line 2775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/icon.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Loicq/wlogin_sdk/request/WFastLoginInfo;->iconUrl:Ljava/lang/String;

    .line 2776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ad_img.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Loicq/wlogin_sdk/request/WFastLoginInfo;->adUrl:Ljava/lang/String;

    .line 2777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/profile.js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Loicq/wlogin_sdk/request/WFastLoginInfo;->profileUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2780
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 2781
    goto/16 :goto_0
.end method

.method private GetNoPicSigByAccount(Ljava/lang/String;J)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 496
    if-nez p1, :cond_0

    move-object v0, v1

    .line 527
    :goto_0
    return-object v0

    .line 502
    :cond_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 503
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 504
    if-nez v0, :cond_4

    move-object v0, v1

    .line 518
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    if-eqz v2, :cond_2

    iget-object v2, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    array-length v2, v2

    if-gtz v2, :cond_5

    .line 519
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userAccount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dwAppid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " GetNoPicSigByAccount return: null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 521
    goto :goto_0

    .line 509
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 512
    :cond_4
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    .line 513
    if-nez v0, :cond_1

    goto :goto_1

    .line 524
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dwAppid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GetNoPicSigByAccount return: not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto/16 :goto_0
.end method

.method private GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I
    .locals 66

    .prologue
    .line 1387
    if-eqz p1, :cond_0

    if-nez p10, :cond_1

    .line 1388
    :cond_0
    const/16 v10, -0x3f9

    .line 1657
    :goto_0
    return v10

    .line 1392
    :cond_1
    move/from16 v0, p4

    or-int/lit16 v11, v0, 0xc0

    .line 1395
    if-nez p13, :cond_2

    .line 1396
    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v20, "GetStWithPasswd"

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    move/from16 v19, p12

    invoke-direct/range {v4 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZLjava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 1399
    const/16 v10, -0x3e9

    goto :goto_0

    .line 1403
    :cond_2
    const/4 v6, 0x1

    .line 1408
    if-eqz p12, :cond_e

    sget-boolean v4, Loicq/wlogin_sdk/a/h;->v:Z

    if-nez v4, :cond_e

    .line 1409
    move-object/from16 v0, p10

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    .line 1410
    move-object/from16 v0, p0

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v0, p10

    iput-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 1412
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p10

    iget-wide v8, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v4, v8, v9}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v4

    .line 1413
    iget-wide v8, v4, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p10

    iput-wide v8, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    move-object/from16 v63, v4

    .line 1420
    :goto_1
    move-object/from16 v0, v63

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v64

    .line 1422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wtlogin login with GetStWithPasswd:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    move/from16 v0, p12

    move-object/from16 v1, v64

    iput-boolean v0, v1, Loicq/wlogin_sdk/request/async_context;->_isSmslogin:Z

    .line 1429
    sget-wide v4, Loicq/wlogin_sdk/a/h;->w:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4

    .line 1430
    sget-wide v4, Loicq/wlogin_sdk/a/h;->w:J

    move-object/from16 v0, v64

    iput-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    .line 1431
    const-wide/16 v4, 0x0

    sput-wide v4, Loicq/wlogin_sdk/a/h;->w:J

    .line 1434
    :cond_4
    if-eqz p12, :cond_5

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 1435
    move-object/from16 v0, v64

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    move-object/from16 p9, v0

    .line 1437
    :cond_5
    const/4 v4, 0x0

    sput-boolean v4, Loicq/wlogin_sdk/a/h;->v:Z

    .line 1438
    const-string v4, ""

    sput-object v4, Loicq/wlogin_sdk/a/h;->x:Ljava/lang/String;

    .line 1441
    if-eqz p9, :cond_6

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_6

    .line 1442
    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p9

    .line 1446
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v4

    .line 1447
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v5

    sput v5, Loicq/wlogin_sdk/request/u;->B:I

    .line 1448
    sget v5, Loicq/wlogin_sdk/request/u;->B:I

    if-eq v4, v5, :cond_7

    .line 1449
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v5, Loicq/wlogin_sdk/request/u;->B:I

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    .line 1452
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sput-object v4, Loicq/wlogin_sdk/request/u;->D:[B

    .line 1454
    move-object/from16 v0, p1

    move-object/from16 v1, v63

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 1455
    const-wide/16 v4, 0x0

    move-object/from16 v0, v63

    iput-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 1456
    move-wide/from16 v0, p2

    move-object/from16 v2, v64

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    .line 1457
    move-wide/from16 v0, p2

    move-object/from16 v2, v64

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_appid:J

    .line 1458
    const/4 v4, 0x0

    move-object/from16 v0, v64

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    .line 1459
    move-wide/from16 v0, p5

    move-object/from16 v2, v64

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    .line 1460
    move-object/from16 v0, v64

    iput v11, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    .line 1461
    move-object/from16 v0, p10

    iget v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    move-object/from16 v0, v64

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    .line 1462
    new-instance v4, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v64

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 1463
    if-eqz p7, :cond_8

    .line 1464
    invoke-virtual/range {p7 .. p7}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move-object/from16 v0, v64

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    .line 1466
    :cond_8
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v4, :cond_f

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v4, v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_f

    .line 1467
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v4

    move-object/from16 v0, v63

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    .line 1468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSF SSO SEQ:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    iget v5, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :goto_2
    sget-object v4, Loicq/wlogin_sdk/request/u;->ag:Loicq/wlogin_sdk/report/report_t1;

    new-instance v13, Loicq/wlogin_sdk/report/report_t2;

    const-string v14, "login"

    new-instance v15, Ljava/lang/String;

    sget-object v5, Loicq/wlogin_sdk/request/u;->A:[B

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v18, p2

    move-wide/from16 v20, p5

    move-object/from16 v22, p7

    invoke-direct/range {v13 .. v22}, Loicq/wlogin_sdk/report/report_t2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ[J)V

    invoke-virtual {v4, v13}, Loicq/wlogin_sdk/report/report_t1;->add_t2(Loicq/wlogin_sdk/report/report_t2;)V

    .line 1481
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1483
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 1484
    if-nez v5, :cond_9

    .line 1485
    const/4 v4, 0x0

    move v6, v4

    .line 1491
    :cond_9
    :goto_3
    if-eqz p9, :cond_12

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12

    .line 1492
    if-eqz p8, :cond_11

    .line 1494
    :try_start_0
    const-string v4, "ISO-8859-1"

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v0, v64

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, v64

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    .line 1531
    :goto_5
    if-nez v6, :cond_1a

    .line 1532
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Loicq/wlogin_sdk/tools/util;->MAX_NAME_LEN:I

    if-le v4, v5, :cond_18

    .line 1533
    const/16 v10, -0x3f0

    .line 1626
    :cond_a
    :goto_6
    const/16 v4, 0x80

    move-object/from16 v0, p10

    invoke-static {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    .line 1627
    if-nez v4, :cond_b

    .line 1628
    new-instance v4, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    .line 1630
    :cond_b
    sget-object v5, Loicq/wlogin_sdk/request/u;->ag:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v63

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v63

    iget-object v8, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v10}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v9

    invoke-virtual/range {v5 .. v10}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    .line 1632
    if-nez v10, :cond_21

    .line 1633
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_c

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-eqz v5, :cond_c

    .line 1634
    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v63

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v64

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v19}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    .line 1642
    :cond_c
    :goto_7
    move-object/from16 v0, v63

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    if-eqz v5, :cond_d

    move-object/from16 v0, v63

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    invoke-virtual {v5}, Loicq/wlogin_sdk/b/at;->f()I

    move-result v5

    if-eqz v5, :cond_d

    .line 1643
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v63

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    iput-object v6, v5, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    .line 1644
    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v63

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v64

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    .line 1649
    :cond_d
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    .line 1652
    invoke-virtual/range {v63 .. v63}, Loicq/wlogin_sdk/request/u;->h()V

    .line 1653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wtlogin login with GetStWithPasswd:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v63

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1415
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v4

    .line 1416
    iget-wide v8, v4, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p10

    iput-wide v8, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 1417
    iget-wide v8, v4, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v63, v4

    goto/16 :goto_1

    .line 1471
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, v63

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto/16 :goto_2

    .line 1488
    :cond_10
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_3

    .line 1495
    :catch_0
    move-exception v4

    .line 1496
    const/16 v10, -0x3f5

    .line 1497
    goto/16 :goto_6

    .line 1500
    :cond_11
    invoke-static/range {p9 .. p9}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v64

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    goto/16 :goto_4

    .line 1505
    :cond_12
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    if-eqz v4, :cond_13

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    array-length v4, v4

    if-lez v4, :cond_13

    .line 1506
    const-string v4, "GetFastLoginInfo ..."

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetFastLoginInfo([BLoicq/wlogin_sdk/request/async_context;)I

    move-result v4

    if-gez v4, :cond_14

    .line 1508
    const-string v4, "GetFastLoginInfo failed"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    const/16 v10, -0x3f9

    .line 1510
    goto/16 :goto_6

    .line 1512
    :cond_13
    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    if-eqz v4, :cond_16

    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    array-length v4, v4

    if-lez v4, :cond_16

    .line 1513
    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    move-object/from16 v0, v64

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    .line 1514
    sget-object v4, Loicq/wlogin_sdk/code2d/c;->r:[B

    move-object/from16 v0, v64

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    .line 1515
    const/4 v4, 0x0

    sput-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    .line 1516
    const/4 v4, 0x0

    sput-object v4, Loicq/wlogin_sdk/code2d/c;->r:[B

    .line 1522
    :cond_14
    :goto_8
    move-object/from16 v0, v64

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    if-eqz v4, :cond_15

    move-object/from16 v0, v64

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    array-length v4, v4

    const/16 v7, 0x10

    if-ge v4, v7, :cond_17

    .line 1523
    :cond_15
    const/16 v10, -0x3f8

    .line 1524
    goto/16 :goto_6

    .line 1518
    :cond_16
    invoke-direct/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1ByAccount(Ljava/lang/String;J)[B

    move-result-object v4

    move-object/from16 v0, v64

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    .line 1519
    invoke-direct/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetNoPicSigByAccount(Ljava/lang/String;J)[B

    move-result-object v4

    move-object/from16 v0, v64

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    goto :goto_8

    .line 1527
    :cond_17
    const/4 v4, 0x1

    move-object/from16 v0, v64

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    goto/16 :goto_5

    .line 1536
    :cond_18
    new-instance v5, Loicq/wlogin_sdk/request/t;

    move-object/from16 v0, v63

    invoke-direct {v5, v0}, Loicq/wlogin_sdk/request/t;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    sget v13, Loicq/wlogin_sdk/request/u;->w:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v18, v0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p5

    move-object/from16 v19, p7

    move-object/from16 v20, p10

    invoke-virtual/range {v5 .. v20}, Loicq/wlogin_sdk/request/t;->a(JJII[BIIIIII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    .line 1543
    if-nez v10, :cond_a

    .line 1548
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 1549
    if-nez v4, :cond_19

    .line 1550
    const/16 v10, -0x3eb

    .line 1551
    goto/16 :goto_6

    :cond_19
    move-object v5, v4

    .line 1555
    :cond_1a
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v63

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 1559
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    if-eqz v4, :cond_1c

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    array-length v4, v4

    if-lez v4, :cond_1c

    .line 1560
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v35, v4

    .line 1565
    :goto_9
    move-object/from16 v0, v64

    iget v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    if-eqz v4, :cond_1d

    .line 1566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " login with saved A1."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v63

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    new-instance v12, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, v63

    invoke-direct {v12, v0}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/16 v17, 0x1

    move-object/from16 v0, v63

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    sget-object v21, Loicq/wlogin_sdk/request/u;->ab:[B

    move-object/from16 v0, v64

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v25, v0

    const/16 v30, 0x1

    sget v31, Loicq/wlogin_sdk/request/u;->w:I

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p5

    move-object/from16 v26, p7

    move/from16 v27, v11

    move-wide/from16 v28, p5

    move-object/from16 v36, p10

    invoke-virtual/range {v12 .. v36}, Loicq/wlogin_sdk/request/l;->a(JJIJI[B[B[BII[JIJIIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    .line 1592
    :goto_a
    const/16 v4, 0xcc

    if-ne v10, v4, :cond_1b

    .line 1593
    new-instance v4, Loicq/wlogin_sdk/request/q;

    move-object/from16 v0, v63

    invoke-direct {v4, v0}, Loicq/wlogin_sdk/request/q;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v7, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, p7

    move-object/from16 v1, p10

    invoke-virtual {v4, v6, v7, v0, v1}, Loicq/wlogin_sdk/request/q;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    .line 1598
    :cond_1b
    if-nez v10, :cond_a

    .line 1602
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v63

    move-wide/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 1603
    if-nez v4, :cond_1f

    .line 1604
    const/16 v10, -0x3ec

    goto/16 :goto_6

    .line 1562
    :cond_1c
    sget-object v35, Loicq/wlogin_sdk/request/u;->Y:[B

    goto/16 :goto_9

    .line 1578
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " login with input password."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v63

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const/4 v4, 0x4

    new-array v0, v4, [B

    move-object/from16 v46, v0

    .line 1580
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sget-wide v8, Loicq/wlogin_sdk/request/u;->aa:J

    add-long/2addr v6, v8

    move-object/from16 v0, v46

    invoke-static {v0, v4, v6, v7}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 1581
    if-eqz p12, :cond_1e

    const/16 v49, 0x3

    .line 1582
    :goto_b
    new-instance v36, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, v36

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/16 v41, 0x1

    move-object/from16 v0, v63

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v42, v0

    const/16 v44, 0x0

    sget-object v45, Loicq/wlogin_sdk/request/u;->ab:[B

    const/16 v47, 0x0

    move-object/from16 v0, v64

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v51, v0

    const/16 v56, 0x1

    sget v57, Loicq/wlogin_sdk/request/u;->w:I

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x1

    move-wide/from16 v37, p2

    move-wide/from16 v39, p5

    move-object/from16 v52, p7

    move/from16 v53, v11

    move-wide/from16 v54, p5

    move-object/from16 v61, v35

    move-object/from16 v62, p10

    invoke-virtual/range {v36 .. v62}, Loicq/wlogin_sdk/request/l;->a(JJIJI[B[BI[BIII[JIJIIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    goto/16 :goto_a

    .line 1581
    :cond_1e
    const/16 v49, 0x1

    goto :goto_b

    .line 1608
    :cond_1f
    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 1611
    if-eqz p7, :cond_a

    if-eqz p11, :cond_a

    move-object/from16 v0, p7

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p11

    array-length v6, v0

    if-ne v4, v6, :cond_a

    .line 1613
    const/4 v4, 0x0

    move v6, v4

    :goto_c
    if-eqz p7, :cond_a

    move-object/from16 v0, p7

    array-length v4, v0

    if-ge v6, v4, :cond_a

    .line 1615
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aget-wide v12, p7, v6

    move-object/from16 v0, v63

    invoke-virtual {v0, v8, v9, v12, v13}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v7

    .line 1616
    if-eqz v7, :cond_20

    .line 1617
    mul-int/lit8 v8, v6, 0x2

    iget-object v4, v7, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, p11, v8

    .line 1618
    mul-int/lit8 v4, v6, 0x2

    add-int/lit8 v8, v4, 0x1

    iget-object v4, v7, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, p11, v8

    .line 1613
    :cond_20
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_c

    .line 1637
    :cond_21
    const/4 v5, 0x2

    if-eq v10, v5, :cond_c

    const/16 v5, 0xa0

    if-eq v10, v5, :cond_c

    .line 1638
    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v63

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v64

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_7
.end method

.method private GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BI)I
    .locals 46

    .prologue
    .line 661
    if-eqz p1, :cond_0

    if-nez p12, :cond_1

    .line 662
    :cond_0
    const/16 v10, -0x3f9

    .line 884
    :goto_0
    return v10

    .line 666
    :cond_1
    move/from16 v0, p8

    or-int/lit16 v0, v0, 0xc0

    move/from16 v16, v0

    .line 669
    if-nez p15, :cond_2

    .line 670
    new-instance v5, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v23, "GetStWithoutPasswd"

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move-wide/from16 v17, p9

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    invoke-direct/range {v5 .. v23}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BLjava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v5, v4}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 673
    const/16 v10, -0x3e9

    goto :goto_0

    .line 680
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v43

    .line 681
    move-object/from16 v0, v43

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p12

    iput-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 682
    move-object/from16 v0, v43

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v44

    .line 684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wtlogin login with GetStWithoutPasswd:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSrcAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppPri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v4

    .line 692
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v5

    sput v5, Loicq/wlogin_sdk/request/u;->B:I

    .line 693
    sget v5, Loicq/wlogin_sdk/request/u;->B:I

    if-eq v4, v5, :cond_3

    .line 695
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    .line 696
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v5, Loicq/wlogin_sdk/request/u;->B:I

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    .line 698
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sput-object v4, Loicq/wlogin_sdk/request/u;->D:[B

    .line 700
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 701
    const-wide/16 v4, 0x0

    move-object/from16 v0, v43

    iput-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 703
    move-wide/from16 v0, p2

    move-object/from16 v2, v44

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    .line 704
    move-wide/from16 v0, p4

    move-object/from16 v2, v44

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_appid:J

    .line 705
    move-wide/from16 v0, p9

    move-object/from16 v2, v44

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    .line 706
    move/from16 v0, v16

    move-object/from16 v1, v44

    iput v0, v1, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    .line 707
    new-instance v4, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v44

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 708
    if-eqz p11, :cond_4

    .line 709
    invoke-virtual/range {p11 .. p11}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move-object/from16 v0, v44

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    .line 711
    :cond_4
    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v4, :cond_9

    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v4, v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_9

    .line 712
    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSF SSO SEQ:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    iget v5, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :goto_1
    sget-object v4, Loicq/wlogin_sdk/request/u;->ag:Loicq/wlogin_sdk/report/report_t1;

    new-instance v5, Loicq/wlogin_sdk/report/report_t2;

    const-string v6, "exchg"

    new-instance v7, Ljava/lang/String;

    sget-object v8, Loicq/wlogin_sdk/request/u;->A:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-direct/range {v5 .. v14}, Loicq/wlogin_sdk/report/report_t2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ[J)V

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/report/report_t1;->add_t2(Loicq/wlogin_sdk/report/report_t2;)V

    .line 725
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a

    .line 727
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 728
    if-nez v4, :cond_19

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " have not found uin record."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const/16 v10, -0x3eb

    .line 851
    :cond_5
    :goto_2
    const/16 v4, 0x80

    move-object/from16 v0, p12

    invoke-static {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    .line 852
    if-nez v4, :cond_6

    .line 853
    new-instance v4, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    .line 855
    :cond_6
    sget-object v5, Loicq/wlogin_sdk/request/u;->ag:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v43

    iget-object v8, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v10}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v9

    invoke-virtual/range {v5 .. v10}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    .line 857
    if-nez v10, :cond_18

    .line 858
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_7

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-eqz v5, :cond_7

    .line 859
    const/16 v19, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v20, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v24, v0

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v25}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    .line 867
    :cond_7
    :goto_3
    move-object/from16 v0, v43

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    if-eqz v5, :cond_8

    move-object/from16 v0, v43

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    invoke-virtual {v5}, Loicq/wlogin_sdk/b/at;->f()I

    move-result v5

    if-eqz v5, :cond_8

    .line 868
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v43

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    iput-object v6, v5, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    .line 869
    const/16 v19, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v20, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v26}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    .line 874
    :cond_8
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    .line 877
    invoke-virtual/range {v43 .. v43}, Loicq/wlogin_sdk/request/u;->h()V

    .line 878
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wtlogin login with GetStWithoutPasswd:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSrcAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppPri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 715
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, v43

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto/16 :goto_1

    .line 735
    :cond_a
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, v4

    .line 737
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v43

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 739
    if-eqz p14, :cond_d

    move-object/from16 v0, p14

    array-length v4, v0

    const/4 v6, 0x4

    if-ne v4, v6, :cond_d

    const/4 v4, 0x0

    aget-object v4, p14, v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    aget-object v4, p14, v4

    array-length v4, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_d

    const/4 v4, 0x0

    aget-object v4, p14, v4

    const/4 v6, 0x0

    aget-byte v4, v4, v6

    const/4 v6, 0x1

    if-ne v4, v6, :cond_d

    .line 742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " exchange A2 from A2/D2/KEY."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const/4 v4, 0x1

    aget-object v4, p14, v4

    if-eqz v4, :cond_b

    const/4 v4, 0x2

    aget-object v4, p14, v4

    if-eqz v4, :cond_b

    const/4 v4, 0x3

    aget-object v4, p14, v4

    if-nez v4, :cond_c

    .line 744
    :cond_b
    const/16 v10, -0x3ec

    .line 745
    goto/16 :goto_2

    .line 748
    :cond_c
    const/4 v4, 0x3

    aget-object v4, p14, v4

    invoke-static {v4}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v4

    move-object/from16 v0, v43

    iput-object v4, v0, Loicq/wlogin_sdk/request/u;->b:[B

    .line 749
    new-instance v8, Loicq/wlogin_sdk/request/n;

    move-object/from16 v0, v43

    invoke-direct {v8, v0}, Loicq/wlogin_sdk/request/n;-><init>(Loicq/wlogin_sdk/request/u;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v15, 0x1

    const/4 v4, 0x1

    aget-object v17, p14, v4

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v19, v0

    const/4 v4, 0x2

    aget-object v21, p14, v4

    move-wide/from16 v11, p4

    move-wide/from16 v13, p9

    move-object/from16 v20, p11

    move-object/from16 v22, p12

    invoke-virtual/range {v8 .. v22}, Loicq/wlogin_sdk/request/n;->a(JJJII[BII[J[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    .line 827
    :goto_5
    if-nez v10, :cond_5

    .line 829
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v43

    move-wide/from16 v1, p4

    invoke-virtual {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 830
    if-nez v4, :cond_16

    .line 831
    const/16 v10, -0x3ec

    goto/16 :goto_2

    .line 753
    :cond_d
    if-eqz p14, :cond_10

    move-object/from16 v0, p14

    array-length v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_10

    const/4 v4, 0x0

    aget-object v4, p14, v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    aget-object v4, p14, v4

    array-length v4, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_10

    const/4 v4, 0x0

    aget-object v4, p14, v4

    const/4 v6, 0x0

    aget-byte v4, v4, v6

    const/4 v6, 0x2

    if-ne v4, v6, :cond_10

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " exchange A2 from A2/A2KEY."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/4 v4, 0x1

    aget-object v4, p14, v4

    if-eqz v4, :cond_e

    const/4 v4, 0x2

    aget-object v4, p14, v4

    if-nez v4, :cond_f

    .line 758
    :cond_e
    const/16 v10, -0x3ec

    .line 759
    goto/16 :goto_2

    .line 762
    :cond_f
    const/4 v4, 0x2

    aget-object v4, p14, v4

    move-object/from16 v0, v43

    iput-object v4, v0, Loicq/wlogin_sdk/request/u;->b:[B

    .line 763
    new-instance v8, Loicq/wlogin_sdk/request/n;

    move-object/from16 v0, v43

    invoke-direct {v8, v0}, Loicq/wlogin_sdk/request/n;-><init>(Loicq/wlogin_sdk/request/u;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v15, 0x1

    const/4 v4, 0x1

    aget-object v17, p14, v4

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v19, v0

    const/16 v21, 0x0

    move-wide/from16 v11, p4

    move-wide/from16 v13, p9

    move-object/from16 v20, p11

    move-object/from16 v22, p12

    invoke-virtual/range {v8 .. v22}, Loicq/wlogin_sdk/request/n;->a(JJJII[BII[J[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    goto/16 :goto_5

    .line 769
    :cond_10
    invoke-virtual/range {v43 .. v43}, Loicq/wlogin_sdk/request/u;->j()V

    .line 771
    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1ByAccount(Ljava/lang/String;J)[B

    move-result-object v26

    .line 772
    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetNoPicSigByAccount(Ljava/lang/String;J)[B

    move-result-object v27

    .line 774
    if-eqz v26, :cond_13

    move-object/from16 v0, v26

    array-length v4, v0

    if-lez v4, :cond_13

    if-eqz v27, :cond_13

    move-object/from16 v0, v27

    array-length v4, v0

    if-lez v4, :cond_13

    .line 775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " exchange A2 from A1."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    move-object/from16 v0, v26

    move-object/from16 v1, v44

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    .line 777
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    .line 779
    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    if-eqz v4, :cond_12

    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    array-length v4, v4

    if-lez v4, :cond_12

    .line 781
    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v39, v4

    .line 788
    :goto_6
    new-instance v18, Loicq/wlogin_sdk/request/z;

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/z;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/16 v21, 0x1

    move-object/from16 v0, v43

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    sget-object v25, Loicq/wlogin_sdk/request/u;->ab:[B

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v29, v0

    const/16 v34, 0x1

    sget v35, Loicq/wlogin_sdk/request/u;->w:I

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x1

    move-wide/from16 v19, p4

    move-object/from16 v30, p11

    move/from16 v31, v16

    move-wide/from16 v32, p9

    move-wide/from16 v40, p2

    move-object/from16 v42, p12

    invoke-virtual/range {v18 .. v42}, Loicq/wlogin_sdk/request/z;->a(JIJI[B[B[BII[JIJIIIII[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    .line 800
    const/16 v6, 0xcc

    if-ne v4, v6, :cond_11

    .line 801
    new-instance v4, Loicq/wlogin_sdk/request/q;

    move-object/from16 v0, v43

    invoke-direct {v4, v0}, Loicq/wlogin_sdk/request/q;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v7, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, p11

    move-object/from16 v1, p12

    invoke-virtual {v4, v6, v7, v0, v1}, Loicq/wlogin_sdk/request/q;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    :cond_11
    move v10, v4

    .line 805
    goto/16 :goto_5

    .line 785
    :cond_12
    sget-object v39, Loicq/wlogin_sdk/request/u;->Y:[B

    goto :goto_6

    .line 808
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " exchange A2 from A2."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v43

    move-wide/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 810
    if-eqz v4, :cond_14

    iget-object v6, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    if-eqz v6, :cond_14

    iget-object v6, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    array-length v6, v6

    if-eqz v6, :cond_14

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->iSExpireA2(J)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 812
    :cond_14
    const/16 v10, -0x3ec

    .line 813
    goto/16 :goto_2

    .line 817
    :cond_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exchange A2 from A2 without Priority."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v43

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v6, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGTKey:[B

    move-object/from16 v0, v43

    iput-object v6, v0, Loicq/wlogin_sdk/request/u;->b:[B

    .line 820
    new-instance v8, Loicq/wlogin_sdk/request/n;

    move-object/from16 v0, v43

    invoke-direct {v8, v0}, Loicq/wlogin_sdk/request/n;-><init>(Loicq/wlogin_sdk/request/u;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v15, 0x1

    iget-object v0, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v19, v0

    const/16 v21, 0x0

    move-wide/from16 v11, p4

    move-wide/from16 v13, p9

    move-object/from16 v20, p11

    move-object/from16 v22, p12

    invoke-virtual/range {v8 .. v22}, Loicq/wlogin_sdk/request/n;->a(JJJII[BII[J[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    goto/16 :goto_5

    .line 834
    :cond_16
    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 837
    if-eqz p11, :cond_5

    if-eqz p13, :cond_5

    move-object/from16 v0, p11

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p13

    array-length v6, v0

    if-ne v4, v6, :cond_5

    .line 838
    const/4 v4, 0x0

    move v6, v4

    :goto_7
    move-object/from16 v0, p11

    array-length v4, v0

    if-ge v6, v4, :cond_5

    .line 839
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aget-wide v12, p11, v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v8, v9, v12, v13}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v7

    .line 840
    if-eqz v7, :cond_17

    .line 841
    mul-int/lit8 v8, v6, 0x2

    iget-object v4, v7, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, p13, v8

    .line 842
    mul-int/lit8 v4, v6, 0x2

    add-int/lit8 v8, v4, 0x1

    iget-object v4, v7, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, p13, v8

    .line 838
    :cond_17
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_7

    .line 863
    :cond_18
    const/16 v19, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v20, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v26}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_3

    :cond_19
    move-object v5, v4

    goto/16 :goto_4
.end method

.method public static GetTicketSig(Loicq/wlogin_sdk/request/WUserSigInfo;I)[B
    .locals 1

    .prologue
    .line 1010
    invoke-static {p0, p1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    .line 1011
    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, v0, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    .line 1014
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static GetTicketSigKey(Loicq/wlogin_sdk/request/WUserSigInfo;I)[B
    .locals 1

    .prologue
    .line 1028
    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_0

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_0

    const v0, 0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x1000000

    if-eq p1, v0, :cond_0

    .line 1031
    const/4 v0, 0x0

    throw v0

    .line 1034
    :cond_0
    invoke-static {p0, p1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    .line 1035
    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, v0, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    .line 1038
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/high16 v8, 0x4000000

    const/high16 v1, 0x400000

    const/4 v3, 0x0

    .line 964
    if-ne p1, v1, :cond_0

    .line 965
    const-string v0, "get lhsig"

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    sget-object v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_LHSig:[B

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v4

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    .line 999
    :goto_0
    return-object v0

    .line 968
    :cond_0
    if-ne p1, v8, :cond_1

    .line 969
    const-string v0, "get qrpushsig"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    sget-object v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_QRPUSHSig:[B

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v4

    move v1, v8

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    goto :goto_0

    .line 973
    :cond_1
    if-nez p0, :cond_2

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userInfo is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 975
    goto :goto_0

    .line 976
    :cond_2
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    if-nez v0, :cond_3

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tickets is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 978
    goto :goto_0

    .line 981
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ticket type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 985
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 986
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/Ticket;

    .line 988
    iget v2, v0, Loicq/wlogin_sdk/request/Ticket;->_type:I

    if-ne v2, p1, :cond_4

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " create time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Loicq/wlogin_sdk/request/Ticket;->_create_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expire time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Loicq/wlogin_sdk/request/Ticket;->_expire_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 985
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    .line 999
    goto/16 :goto_0
.end method

.method private OnDeviceLockRequest(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 10

    .prologue
    .line 3612
    sget-object v2, Loicq/wlogin_sdk/devicelock/DevlockBase;->rst:Loicq/wlogin_sdk/devicelock/DevlockRst;

    .line 3613
    new-instance v3, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {v3}, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;-><init>()V

    iput-object v3, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    .line 3615
    new-instance v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-direct {v3}, Loicq/wlogin_sdk/devicelock/DevlockInfo;-><init>()V

    .line 3616
    new-instance v4, Loicq/wlogin_sdk/tools/ErrMsg;

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-direct {v4, v5, v6, v7, v8}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3618
    if-eqz p8, :cond_0

    .line 3619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnDeviceLockRequest ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    invoke-static/range {p8 .. p8}, Loicq/wlogin_sdk/tools/util;->get_error_msg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    .line 3622
    sget-object v5, Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;->MSG_5:Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/InternationMsg;->a(Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/tools/ErrMsg;->setTitle(Ljava/lang/String;)V

    .line 3625
    :cond_0
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 3743
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 3627
    :pswitch_1
    if-nez p8, :cond_5

    .line 3628
    new-instance v5, Loicq/wlogin_sdk/devicelock/a;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/a;-><init>()V

    .line 3629
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Loicq/wlogin_sdk/devicelock/a;->parse_rsp([B)I

    move-result p8

    .line 3630
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDevLockStatus ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3632
    const/16 v5, -0x3f1

    move/from16 v0, p8

    if-eq v0, v5, :cond_5

    .line 3633
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {p0, v5, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 3634
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    if-eqz v5, :cond_2

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/i;->get_data_len()I

    move-result v5

    if-lez v5, :cond_2

    .line 3635
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/i;->a:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->DevSetup:I

    .line 3636
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/i;->b:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->AllowSet:I

    .line 3637
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devGuideInfo:Loicq/wlogin_sdk/devicelock/h;

    if-eqz v5, :cond_6

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devGuideInfo:Loicq/wlogin_sdk/devicelock/h;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/h;->get_data_len()I

    move-result v5

    if-lez v5, :cond_6

    .line 3638
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devGuideInfo:Loicq/wlogin_sdk/devicelock/h;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/h;->a:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->ProtectIntro:Ljava/lang/String;

    .line 3642
    :goto_1
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/i;->g:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->WarningInfo:Ljava/lang/String;

    .line 3643
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/i;->e:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->WarningTitle:Ljava/lang/String;

    .line 3644
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/i;->f:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->WarningMsg:Ljava/lang/String;

    .line 3645
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/i;->c:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->WarningInfoType:I

    .line 3647
    :cond_2
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    if-eqz v5, :cond_3

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/k;->get_data_len()I

    move-result v5

    if-lez v5, :cond_3

    .line 3648
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/k;->a:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->CountryCode:Ljava/lang/String;

    .line 3649
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/k;->b:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->Mobile:Ljava/lang/String;

    .line 3650
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/k;->c:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbItemSmsCodeStatus:I

    .line 3651
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/k;->d:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->AvailableMsgCount:I

    .line 3652
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/k;->e:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->TimeLimit:I

    .line 3654
    :cond_3
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    if-eqz v5, :cond_4

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/j;->get_data_len()I

    move-result v5

    if-lez v5, :cond_4

    .line 3655
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/j;->c:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideType:I

    .line 3656
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/j;->d:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideInfoType:I

    .line 3657
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/j;->b:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideInfo:Ljava/lang/String;

    .line 3658
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/j;->a:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideMsg:Ljava/lang/String;

    .line 3660
    :cond_4
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->transferInfo:Loicq/wlogin_sdk/devicelock/e;

    if-eqz v5, :cond_5

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->transferInfo:Loicq/wlogin_sdk/devicelock/e;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/e;->get_data_len()I

    move-result v5

    if-lez v5, :cond_5

    .line 3661
    iget-object v2, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->transferInfo:Loicq/wlogin_sdk/devicelock/e;

    invoke-virtual {v2}, Loicq/wlogin_sdk/devicelock/e;->get_data()[B

    move-result-object v2

    iput-object v2, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->TransferInfo:[B

    .line 3665
    :cond_5
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_1

    .line 3666
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v3, v1, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnCheckDevLockStatus(Loicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/devicelock/DevlockInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto/16 :goto_0

    .line 3640
    :cond_6
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/i;->d:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->ProtectIntro:Ljava/lang/String;

    goto/16 :goto_1

    .line 3670
    :pswitch_2
    if-nez p8, :cond_9

    .line 3671
    new-instance v3, Loicq/wlogin_sdk/devicelock/b;

    invoke-direct {v3}, Loicq/wlogin_sdk/devicelock/b;-><init>()V

    .line 3672
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Loicq/wlogin_sdk/devicelock/b;->parse_rsp([B)I

    move-result p8

    .line 3673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CloseDevLock ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3675
    const/16 v3, -0x3f1

    move/from16 v0, p8

    if-eq v0, v3, :cond_9

    .line 3676
    iget-object v2, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {p0, v2, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 3681
    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3682
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3685
    :goto_2
    iget-object v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v5, v2, v3, p2, p3}, Loicq/wlogin_sdk/request/u;->b(JJ)I

    .line 3687
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    move-object/from16 v0, p7

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    .line 3688
    move-object/from16 v0, p7

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loicq/wlogin_sdk/request/Ticket;

    .line 3690
    iget v2, v2, Loicq/wlogin_sdk/request/Ticket;->_type:I

    const/high16 v5, 0x2000000

    if-ne v2, v5, :cond_7

    .line 3691
    move-object/from16 v0, p7

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3687
    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 3684
    :cond_8
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_2

    .line 3694
    :catch_0
    move-exception v2

    .line 3695
    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;)V

    .line 3700
    :cond_9
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_1

    .line 3701
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnCloseDevLock(Loicq/wlogin_sdk/request/WUserSigInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto/16 :goto_0

    .line 3705
    :pswitch_3
    if-nez p8, :cond_a

    .line 3706
    new-instance v5, Loicq/wlogin_sdk/devicelock/d;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/d;-><init>()V

    .line 3707
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Loicq/wlogin_sdk/devicelock/d;->parse_rsp([B)I

    move-result p8

    .line 3708
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AskDevLockSms ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    const/16 v5, -0x3f1

    move/from16 v0, p8

    if-eq v0, v5, :cond_a

    .line 3712
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {p0, v5, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 3714
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->smsInfo:Loicq/wlogin_sdk/devicelock/m;

    if-eqz v5, :cond_a

    .line 3715
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->smsInfo:Loicq/wlogin_sdk/devicelock/m;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/m;->a:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->AvailableMsgCount:I

    .line 3716
    iget-object v2, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->smsInfo:Loicq/wlogin_sdk/devicelock/m;

    iget v2, v2, Loicq/wlogin_sdk/devicelock/m;->b:I

    iput v2, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->TimeLimit:I

    .line 3721
    :cond_a
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_1

    .line 3722
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v3, v1, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnAskDevLockSms(Loicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/devicelock/DevlockInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto/16 :goto_0

    .line 3726
    :pswitch_4
    if-nez p8, :cond_b

    .line 3727
    new-instance v3, Loicq/wlogin_sdk/devicelock/f;

    invoke-direct {v3}, Loicq/wlogin_sdk/devicelock/f;-><init>()V

    .line 3728
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Loicq/wlogin_sdk/devicelock/f;->parse_rsp([B)I

    move-result p8

    .line 3729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckDevLockSms ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3731
    const/16 v3, -0x3f1

    move/from16 v0, p8

    if-eq v0, v3, :cond_b

    .line 3732
    iget-object v2, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {p0, v2, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 3736
    :cond_b
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_1

    .line 3737
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnCheckDevLockSms(Loicq/wlogin_sdk/request/WUserSigInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto/16 :goto_0

    .line 3625
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private OnRequestCode2d(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 12

    .prologue
    .line 3524
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-nez v2, :cond_0

    .line 3593
    :goto_0
    return-void

    .line 3527
    :cond_0
    sget-object v11, Loicq/wlogin_sdk/code2d/b;->_status:Loicq/wlogin_sdk/code2d/c;

    .line 3529
    if-eqz p8, :cond_1

    .line 3530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnRequestCode2d ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3533
    :cond_1
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v2

    .line 3534
    sparse-switch v2, :sswitch_data_0

    .line 3589
    const-string v2, "OnRequestName unhandle cmd"

    const-string v3, ""

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3590
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    new-instance v3, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v3}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    const/16 v4, 0x9

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v4, v0}, Loicq/wlogin_sdk/request/WtloginListener;->OnException(Loicq/wlogin_sdk/tools/ErrMsg;ILoicq/wlogin_sdk/request/WUserSigInfo;)V

    goto :goto_0

    .line 3536
    :sswitch_0
    if-eqz p8, :cond_2

    .line 3537
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->d:[B

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v8, v11, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    iget-object v10, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    move-object v4, p1

    move-object/from16 v9, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Loicq/wlogin_sdk/request/WtloginListener;->OnVerifyCode(Ljava/lang/String;[BJLjava/util/List;Loicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto :goto_0

    .line 3540
    :cond_2
    new-instance v2, Loicq/wlogin_sdk/code2d/e;

    invoke-direct {v2}, Loicq/wlogin_sdk/code2d/e;-><init>()V

    .line 3541
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/code2d/e;->a([B)I

    move-result v2

    iput v2, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    .line 3542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VerifyCode ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3543
    iget v2, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    if-nez v2, :cond_3

    iget-object v2, v11, Loicq/wlogin_sdk/code2d/c;->g:[B

    if-eqz v2, :cond_3

    iget-object v2, v11, Loicq/wlogin_sdk/code2d/c;->g:[B

    array-length v2, v2

    if-lez v2, :cond_3

    .line 3546
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v11, Loicq/wlogin_sdk/code2d/c;->a:J

    iget-object v8, v11, Loicq/wlogin_sdk/code2d/c;->g:[B

    move-wide v6, p2

    invoke-virtual/range {v3 .. v8}, Loicq/wlogin_sdk/request/u;->a(JJ[B)I

    .line 3549
    :cond_3
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->d:[B

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v8, v11, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    iget-object v10, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    iget v11, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    move-object v4, p1

    move-object/from16 v9, p7

    invoke-virtual/range {v3 .. v11}, Loicq/wlogin_sdk/request/WtloginListener;->OnVerifyCode(Ljava/lang/String;[BJLjava/util/List;Loicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    .line 3553
    :sswitch_1
    if-eqz p8, :cond_4

    .line 3554
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->d:[B

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v9, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    move-object v4, p1

    move-object/from16 v8, p7

    move/from16 v10, p8

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnCloseCode(Ljava/lang/String;[BJLoicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    .line 3557
    :cond_4
    new-instance v2, Loicq/wlogin_sdk/code2d/a;

    invoke-direct {v2}, Loicq/wlogin_sdk/code2d/a;-><init>()V

    .line 3558
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    sget-object v4, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-virtual {v2, v3, p2, p3, v4}, Loicq/wlogin_sdk/code2d/a;->a([BJLandroid/content/Context;)I

    move-result v2

    iput v2, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    .line 3559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloseCode ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3561
    const/4 v2, 0x0

    sput-boolean v2, Loicq/wlogin_sdk/code2d/c;->s:Z

    .line 3562
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->d:[B

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v9, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    iget v10, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    move-object v4, p1

    move-object/from16 v8, p7

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnCloseCode(Ljava/lang/String;[BJLoicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    .line 3567
    :sswitch_2
    if-nez p8, :cond_6

    .line 3568
    new-instance v2, Loicq/wlogin_sdk/code2d/fetch_code;

    invoke-direct {v2}, Loicq/wlogin_sdk/code2d/fetch_code;-><init>()V

    .line 3569
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/code2d/fetch_code;->get_response([B)I

    move-result v10

    .line 3570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchCodeSig ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    :goto_1
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v11, Loicq/wlogin_sdk/code2d/c;->j:[B

    iget-wide v4, v11, Loicq/wlogin_sdk/code2d/c;->k:J

    iget v6, v11, Loicq/wlogin_sdk/code2d/c;->l:I

    int-to-long v6, v6

    iget-object v9, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnFetchCodeSig([BJJLoicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    .line 3578
    :sswitch_3
    if-nez p8, :cond_5

    .line 3579
    new-instance v2, Loicq/wlogin_sdk/code2d/d;

    invoke-direct {v2}, Loicq/wlogin_sdk/code2d/d;-><init>()V

    .line 3580
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/code2d/d;->a([B)I

    move-result v10

    .line 3581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryCodeResult ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3584
    :goto_2
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-wide v3, v11, Loicq/wlogin_sdk/code2d/c;->a:J

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v9, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnQueryCodeResult(JLjava/util/List;JLoicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    :cond_5
    move/from16 v10, p8

    goto :goto_2

    :cond_6
    move/from16 v10, p8

    goto :goto_1

    .line 3534
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x31 -> :sswitch_2
    .end sparse-switch
.end method

.method private OnRequestRegister(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 11

    .prologue
    .line 3112
    sget-object v2, Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;->MSG_3:Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/InternationMsg;->a(Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;)Ljava/lang/String;

    move-result-object v2

    .line 3113
    if-eqz p8, :cond_1

    .line 3114
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v3, :cond_0

    .line 3115
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v3, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    .line 3314
    :cond_0
    :goto_0
    return-void

    .line 3120
    :cond_1
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    .line 3122
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_6

    .line 3123
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v4}, Loicq/wlogin_sdk/a/a;->a([BLoicq/wlogin_sdk/a/h;)I

    move-result v3

    .line 3124
    if-eqz v3, :cond_2

    .line 3125
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    .line 3126
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto :goto_0

    .line 3131
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3134
    iget v2, v4, Loicq/wlogin_sdk/a/h;->d:I

    if-nez v2, :cond_3

    .line 3135
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3136
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v4, Loicq/wlogin_sdk/a/h;->l:I

    iget-object v4, v4, Loicq/wlogin_sdk/a/h;->m:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckDownloadMsg(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto :goto_0

    .line 3139
    :cond_3
    iget v2, v4, Loicq/wlogin_sdk/a/h;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 3140
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3141
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v4, Loicq/wlogin_sdk/a/h;->n:[B

    iget-object v4, v4, Loicq/wlogin_sdk/a/h;->o:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckUploadMsg(Loicq/wlogin_sdk/request/WUserSigInfo;[B[B)V

    goto :goto_0

    .line 3144
    :cond_4
    iget v2, v4, Loicq/wlogin_sdk/a/h;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 3145
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3146
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v4, Loicq/wlogin_sdk/a/h;->p:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckValidUrl(Loicq/wlogin_sdk/request/WUserSigInfo;[B)V

    goto/16 :goto_0

    .line 3150
    :cond_5
    const-string v2, "OnRequestRegister 0xa return code:"

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3152
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    iget-object v4, v4, Loicq/wlogin_sdk/a/h;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3156
    :cond_6
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_b

    .line 3157
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v4}, Loicq/wlogin_sdk/a/a;->a([BLoicq/wlogin_sdk/a/h;)I

    move-result v3

    .line 3158
    if-eqz v3, :cond_7

    .line 3159
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    .line 3160
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3165
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    iget v2, v4, Loicq/wlogin_sdk/a/h;->d:I

    if-nez v2, :cond_8

    .line 3169
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3170
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    iget v5, v4, Loicq/wlogin_sdk/a/h;->q:I

    iget v4, v4, Loicq/wlogin_sdk/a/h;->r:I

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v5, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegQueryClientSendedMsgStatus(Loicq/wlogin_sdk/request/WUserSigInfo;III)V

    goto/16 :goto_0

    .line 3173
    :cond_8
    iget v2, v4, Loicq/wlogin_sdk/a/h;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 3174
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3175
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v4, Loicq/wlogin_sdk/a/h;->p:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckValidUrl(Loicq/wlogin_sdk/request/WUserSigInfo;[B)V

    goto/16 :goto_0

    .line 3178
    :cond_9
    iget v2, v4, Loicq/wlogin_sdk/a/h;->d:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    .line 3179
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3180
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    iget v5, v4, Loicq/wlogin_sdk/a/h;->q:I

    iget v4, v4, Loicq/wlogin_sdk/a/h;->r:I

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v5, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegQueryClientSendedMsgStatus(Loicq/wlogin_sdk/request/WUserSigInfo;III)V

    goto/16 :goto_0

    .line 3184
    :cond_a
    const-string v2, "OnRequestRegister 0x3 return code:"

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3186
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    iget-object v4, v4, Loicq/wlogin_sdk/a/h;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3190
    :cond_b
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_10

    .line 3191
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v4}, Loicq/wlogin_sdk/a/a;->a([BLoicq/wlogin_sdk/a/h;)I

    move-result v3

    .line 3192
    if-eqz v3, :cond_c

    .line 3193
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    .line 3194
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3199
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3202
    iget v2, v4, Loicq/wlogin_sdk/a/h;->d:I

    if-nez v2, :cond_d

    .line 3203
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3204
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    iget v5, v4, Loicq/wlogin_sdk/a/h;->q:I

    iget v4, v4, Loicq/wlogin_sdk/a/h;->r:I

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v5, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegRequestServerResendMsg(Loicq/wlogin_sdk/request/WUserSigInfo;III)V

    goto/16 :goto_0

    .line 3207
    :cond_d
    iget v2, v4, Loicq/wlogin_sdk/a/h;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    .line 3208
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3209
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v4, Loicq/wlogin_sdk/a/h;->p:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckValidUrl(Loicq/wlogin_sdk/request/WUserSigInfo;[B)V

    goto/16 :goto_0

    .line 3212
    :cond_e
    iget v2, v4, Loicq/wlogin_sdk/a/h;->d:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_f

    .line 3213
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3214
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    iget v5, v4, Loicq/wlogin_sdk/a/h;->q:I

    iget v4, v4, Loicq/wlogin_sdk/a/h;->r:I

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v5, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegRequestServerResendMsg(Loicq/wlogin_sdk/request/WUserSigInfo;III)V

    goto/16 :goto_0

    .line 3218
    :cond_f
    const-string v2, "OnRequestRegister 0x4 return code:"

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3220
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    iget-object v4, v4, Loicq/wlogin_sdk/a/h;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3224
    :cond_10
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_12

    .line 3225
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v4}, Loicq/wlogin_sdk/a/a;->b([BLoicq/wlogin_sdk/a/h;)I

    move-result v3

    .line 3226
    if-eqz v3, :cond_11

    .line 3227
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    .line 3228
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3233
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3237
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    iget-object v4, v4, Loicq/wlogin_sdk/a/h;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegSubmitMsgChk(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3240
    :cond_12
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_18

    .line 3241
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v4}, Loicq/wlogin_sdk/a/a;->c([BLoicq/wlogin_sdk/a/h;)I

    move-result v3

    .line 3242
    if-eqz v3, :cond_13

    .line 3243
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    .line 3244
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3249
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3252
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3253
    iget-object v2, v4, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v4, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_14

    .line 3254
    iget-object v2, v4, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3255
    iget-object v3, v4, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3256
    const-string v5, "86"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 3257
    iget-object v3, v4, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    .line 3262
    :cond_14
    :goto_1
    iget-object v2, v4, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, v4, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    .line 3263
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-object v3, v4, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/u;->d(Ljava/lang/String;)V

    .line 3264
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 3266
    sget-object v2, Loicq/wlogin_sdk/a/h;->x:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 3278
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v5, v4, Loicq/wlogin_sdk/a/h;->d:I

    iget-wide v6, v4, Loicq/wlogin_sdk/a/h;->s:J

    iget-object v8, v4, Loicq/wlogin_sdk/a/h;->t:[B

    iget-object v9, v4, Loicq/wlogin_sdk/a/h;->u:[B

    iget-object v10, v4, Loicq/wlogin_sdk/a/h;->f:[B

    move-object/from16 v4, p7

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegGetSMSVerifyLoginAccount(Loicq/wlogin_sdk/request/WUserSigInfo;IJ[B[B[B)V

    goto/16 :goto_0

    .line 3259
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    goto :goto_1

    .line 3282
    :cond_17
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v5, v4, Loicq/wlogin_sdk/a/h;->d:I

    iget-wide v6, v4, Loicq/wlogin_sdk/a/h;->s:J

    iget-object v8, v4, Loicq/wlogin_sdk/a/h;->t:[B

    iget-object v9, v4, Loicq/wlogin_sdk/a/h;->u:[B

    iget-object v10, v4, Loicq/wlogin_sdk/a/h;->f:[B

    move-object/from16 v4, p7

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegGetAccount(Loicq/wlogin_sdk/request/WUserSigInfo;IJ[B[B[B)V

    goto/16 :goto_0

    .line 3291
    :cond_18
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_1a

    .line 3292
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v4}, Loicq/wlogin_sdk/a/a;->d([BLoicq/wlogin_sdk/a/h;)I

    move-result v3

    .line 3293
    if-eqz v3, :cond_19

    .line 3294
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    .line 3295
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3300
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3304
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v4, Loicq/wlogin_sdk/a/h;->d:I

    iget-object v4, v4, Loicq/wlogin_sdk/a/h;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegQueryAccount(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3308
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnRequestRegister unhandle cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3310
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v3, :cond_0

    .line 3311
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    const/16 v4, -0x3f2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v3, v0, v4, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0
.end method

.method private RefreshPictureData(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 1817
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1818
    :cond_0
    const/16 v0, -0x3f9

    .line 1873
    :goto_0
    return v0

    .line 1822
    :cond_1
    if-nez p3, :cond_2

    .line 1823
    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v6, "RefreshPictureData"

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 1825
    const/16 v0, -0x3e9

    goto :goto_0

    .line 1832
    :cond_2
    iget-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 1833
    iget-wide v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 1835
    :cond_3
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v1, v2, v3}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v3

    .line 1836
    iget-wide v4, v3, Loicq/wlogin_sdk/request/u;->h:J

    iput-wide v4, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 1837
    iget-wide v4, v3, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v4

    .line 1839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, v3, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RefreshPictureData ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    iput-object p1, v3, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 1844
    new-instance v1, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v1}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v1, v4, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 1846
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1848
    invoke-virtual {v3, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 1849
    if-eqz v1, :cond_7

    move-object v2, v1

    move v1, v7

    .line 1857
    :goto_1
    if-ne v1, v7, :cond_4

    .line 1858
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Loicq/wlogin_sdk/request/u;->f:J

    .line 1862
    :cond_4
    new-instance v1, Loicq/wlogin_sdk/request/r;

    invoke-direct {v1, v3}, Loicq/wlogin_sdk/request/r;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    iget v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    iget-object v4, v4, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    invoke-virtual {v1, v2, v5, v4, p2}, Loicq/wlogin_sdk/request/r;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v1

    .line 1864
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1870
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v3, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RefreshPictureData ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1853
    :cond_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, v1

    move v1, v7

    .line 1854
    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move-object v2, v1

    move v1, v0

    goto :goto_1
.end method

.method private RefreshSMSData(Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2169
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 2170
    :cond_0
    const/16 v0, -0x3f9

    .line 2225
    :goto_0
    return v0

    .line 2174
    :cond_1
    if-nez p5, :cond_2

    .line 2175
    new-instance v1, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v9, "RefreshSMSData"

    move-object v2, p0

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 2178
    const/16 v0, -0x3e9

    goto :goto_0

    .line 2185
    :cond_2
    iget-wide v4, p4, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 2186
    iget-wide v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-wide v4, p4, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2188
    :cond_3
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v4, p4, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v1, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v8

    .line 2189
    iget-wide v4, v8, Loicq/wlogin_sdk/request/u;->h:J

    iput-wide v4, p4, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2190
    iget-wide v4, v8, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v6

    .line 2192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " smsAppid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Seq:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v8, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " RefreshSMSData ..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    iput-object p1, v8, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2196
    new-instance v1, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v1}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v1, v6, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 2198
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2200
    invoke-virtual {v8, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2201
    if-eqz v1, :cond_7

    move-object v3, v1

    move v1, v2

    .line 2209
    :goto_1
    if-ne v1, v2, :cond_4

    .line 2210
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v8, Loicq/wlogin_sdk/request/u;->f:J

    .line 2214
    :cond_4
    new-instance v1, Loicq/wlogin_sdk/request/s;

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/request/s;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    iget v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    iget-object v6, v6, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-wide v2, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Loicq/wlogin_sdk/request/s;->a(JII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v1

    .line 2217
    const/16 v2, 0xa0

    if-ne v1, v2, :cond_6

    .line 2223
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " smsAppid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RefreshSMSData ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2205
    :cond_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, v1

    move v1, v2

    .line 2206
    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move-object v3, v1

    move v1, v0

    goto :goto_1
.end method

.method private RefreshSMSVerifyLoginCode(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 7

    .prologue
    .line 2555
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2556
    :cond_0
    const/16 v0, -0x3f9

    .line 2587
    :goto_0
    return v0

    .line 2559
    :cond_1
    if-nez p3, :cond_2

    .line 2560
    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v6, "RefreshSMSVerifyLoginCode"

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 2563
    const/16 v0, -0x3e9

    goto :goto_0

    .line 2568
    :cond_2
    iget-wide v0, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 2569
    iget-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-wide v0, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2571
    :cond_3
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v0, v2, v3}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v0

    .line 2572
    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    iput-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2573
    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v1

    .line 2576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RefreshSMSVerifyLoginCode ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    iput-object p1, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2581
    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v2, v1, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 2583
    new-instance v1, Loicq/wlogin_sdk/request/x;

    invoke-direct {v1, v0}, Loicq/wlogin_sdk/request/x;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    iget v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p2}, Loicq/wlogin_sdk/request/x;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v1

    .line 2585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " RefreshSMSVerifyLoginCode ret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2587
    goto/16 :goto_0

    .line 2585
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method private RequestInit()I
    .locals 5

    .prologue
    .line 2788
    .line 2789
    monitor-enter p0

    .line 2793
    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v0

    .line 2796
    invoke-static {}, Loicq/wlogin_sdk/request/u;->d()V

    .line 2799
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->ShareKeyInit()I

    move-result v1

    .line 2802
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->AsyncGenRSAKey()V

    .line 2804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WtloginHelper init ok, ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " android version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Loicq/wlogin_sdk/request/u;->H:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " saved_network_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " network_type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Loicq/wlogin_sdk/request/u;->B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " release time:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_release_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " svn verion:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x411

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Loicq/wlogin_sdk/request/u;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    monitor-exit p0

    .line 2816
    return v1

    .line 2814
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private RequestReport(I[B[BJJ)I
    .locals 14

    .prologue
    .line 2904
    if-nez p1, :cond_0

    .line 2905
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v12, "RequestReport"

    move-object v3, p0

    move-object v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v2 .. v12}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;[B[BJJLjava/lang/String;)V

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 2907
    const/16 v2, -0x3e9

    .line 2928
    :goto_0
    return v2

    .line 2910
    :cond_0
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v11

    .line 2911
    move-wide/from16 v0, p4

    iput-wide v0, v11, Loicq/wlogin_sdk/request/u;->f:J

    .line 2913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v11, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RequestReport..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    new-instance v2, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v2, v11}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v5, 0x0

    new-instance v10, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v10}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    move-wide/from16 v3, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/aa;->a(J[B[B[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 2924
    invoke-virtual {v11}, Loicq/wlogin_sdk/request/u;->i()V

    .line 2926
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v11, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestReport ret="

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

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private RequestReportError(I[B[BJJI)I
    .locals 14

    .prologue
    .line 2876
    if-nez p1, :cond_0

    .line 2877
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v13, "RequestReportError"

    move-object v3, p0

    move-object v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    invoke-direct/range {v2 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;[B[BJJILjava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 2879
    const/16 v2, -0x3e9

    .line 2898
    :goto_0
    return v2

    .line 2882
    :cond_0
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v11

    .line 2883
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-object v2, v2, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    iput-object v2, v11, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/at;

    .line 2884
    move-wide/from16 v0, p4

    iput-wide v0, v11, Loicq/wlogin_sdk/request/u;->f:J

    .line 2886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v11, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RequestReportError..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    new-instance v2, Loicq/wlogin_sdk/request/v;

    invoke-direct {v2, v11}, Loicq/wlogin_sdk/request/v;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v5, 0x0

    move-wide/from16 v3, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/v;->a(J[B[B[BJI)I

    move-result v2

    .line 2896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v11, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestReportError ret="

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

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private ShareKeyInit()I
    .locals 5

    .prologue
    .line 2825
    iget-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    if-eqz v0, :cond_0

    .line 2826
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-string v1, "020b03cf3d99541f29ffec281bebbd4ea211292ac1f53d7128"

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/request/u;->n:[B

    .line 2827
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-string v1, "4da0f614fc9f29c2054c77048a6566d7"

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/request/u;->o:[B

    .line 2829
    const/4 v0, 0x0

    .line 2849
    :goto_0
    return v0

    .line 2832
    :cond_0
    new-instance v0, Loicq/wlogin_sdk/tools/EcdhCrypt;

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/tools/EcdhCrypt;-><init>(Landroid/content/Context;)V

    .line 2833
    invoke-virtual {v0}, Loicq/wlogin_sdk/tools/EcdhCrypt;->GenereateKey()I

    move-result v1

    .line 2834
    invoke-virtual {v0}, Loicq/wlogin_sdk/tools/EcdhCrypt;->get_c_pub_key()[B

    move-result-object v2

    .line 2835
    invoke-virtual {v0}, Loicq/wlogin_sdk/tools/EcdhCrypt;->get_g_share_key()[B

    move-result-object v3

    .line 2836
    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    if-eqz v3, :cond_1

    array-length v0, v3

    if-lez v0, :cond_1

    .line 2838
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v4, Loicq/wlogin_sdk/request/u;->n:[B

    .line 2839
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v2, Loicq/wlogin_sdk/request/u;->o:[B

    :goto_1
    move v0, v1

    .line 2849
    goto :goto_0

    .line 2841
    :cond_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-string v2, "020b03cf3d99541f29ffec281bebbd4ea211292ac1f53d7128"

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Loicq/wlogin_sdk/request/u;->n:[B

    .line 2842
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-string v2, "4da0f614fc9f29c2054c77048a6566d7"

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Loicq/wlogin_sdk/request/u;->o:[B

    goto :goto_1
.end method

.method private VerifySMSVerifyLoginCode(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 8

    .prologue
    .line 2602
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2604
    :cond_0
    const/16 v0, -0x3f9

    .line 2637
    :goto_0
    return v0

    .line 2607
    :cond_1
    if-nez p4, :cond_2

    .line 2608
    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v7, "VerifySMSVerifyLoginCode"

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 2611
    const/16 v0, -0x3e9

    goto :goto_0

    .line 2616
    :cond_2
    iget-wide v0, p3, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 2617
    iget-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-wide v0, p3, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2619
    :cond_3
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v2, p3, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v0, v2, v3}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v6

    .line 2620
    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->h:J

    iput-wide v0, p3, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2621
    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 2623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v6, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VerifySMSVerifyLoginCode ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    iput-object p1, v6, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2628
    new-instance v1, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v1}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v1, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 2630
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_mpasswd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    .line 2633
    new-instance v0, Loicq/wlogin_sdk/request/y;

    invoke-direct {v0, v6}, Loicq/wlogin_sdk/request/y;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    iget v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    const/4 v4, 0x0

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Loicq/wlogin_sdk/request/y;->a(Ljava/lang/String;II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v1

    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Seq:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v6, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " VerifySMSVerifyLoginAccount ret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2637
    goto/16 :goto_0

    .line 2635
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic access$000(Loicq/wlogin_sdk/request/WtloginHelper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Loicq/wlogin_sdk/request/WtloginHelper;)Loicq/wlogin_sdk/request/WtloginListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    return-object v0
.end method

.method static synthetic access$1000(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BI)I
    .locals 2

    .prologue
    .line 54
    invoke-direct/range {p0 .. p15}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Loicq/wlogin_sdk/request/WtloginHelper;)J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    return-wide v0
.end method

.method static synthetic access$1200(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I
    .locals 2

    .prologue
    .line 54
    invoke-direct/range {p0 .. p18}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1WithA1(Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Loicq/wlogin_sdk/request/WtloginHelper;I[B[BJJ)I
    .locals 2

    .prologue
    .line 54
    invoke-direct/range {p0 .. p7}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->OnRequestRegister(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V

    return-void
.end method

.method static synthetic access$1500(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->OnRequestCode2d(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V

    return-void
.end method

.method static synthetic access$1600(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->OnDeviceLockRequest(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V

    return-void
.end method

.method static synthetic access$1700(Loicq/wlogin_sdk/request/WtloginHelper;JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p7}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSVerifyLoginAccount(JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Loicq/wlogin_sdk/request/WtloginHelper;->VerifySMSVerifyLoginCode(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshSMSVerifyLoginCode(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Loicq/wlogin_sdk/request/WtloginHelper;)Loicq/wlogin_sdk/request/u;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    return-object v0
.end method

.method static synthetic access$2000(Loicq/wlogin_sdk/request/WtloginHelper;I[B[BJJI)I
    .locals 2

    .prologue
    .line 54
    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Loicq/wlogin_sdk/request/WtloginHelper;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->newHelperHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I
    .locals 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshPictureData(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I
    .locals 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 2

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshSMSData(Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I
    .locals 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method private newHelperHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 143
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 149
    :goto_0
    return-object v0

    .line 146
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V
    .locals 2

    .prologue
    .line 3596
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->get_data_len()I

    move-result v0

    if-nez v0, :cond_1

    .line 3604
    :cond_0
    :goto_0
    return-void

    .line 3600
    :cond_1
    iget v0, p1, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrInfoType:I

    invoke-virtual {p2, v0}, Loicq/wlogin_sdk/tools/ErrMsg;->setType(I)V

    .line 3601
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrInfo:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Loicq/wlogin_sdk/tools/ErrMsg;->setOtherinfo(Ljava/lang/String;)V

    .line 3602
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrTitle:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Loicq/wlogin_sdk/tools/ErrMsg;->setTitle(Ljava/lang/String;)V

    .line 3603
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrMsg:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public AskDevLockSms(Ljava/lang/String;JJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    .prologue
    .line 4017
    if-nez p1, :cond_0

    .line 4018
    const/16 v0, -0x3f9

    .line 4038
    :goto_0
    return v0

    .line 4021
    :cond_0
    new-instance v0, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 4022
    invoke-virtual {p0, p1, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4023
    const/16 v0, -0x3eb

    goto :goto_0

    .line 4025
    :cond_1
    iget-wide v2, v0, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    .line 4027
    const-string v0, "AskDevLockSms ..."

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4029
    new-instance v1, Loicq/wlogin_sdk/devicelock/d;

    invoke-direct {v1}, Loicq/wlogin_sdk/devicelock/d;-><init>()V

    .line 4030
    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4032
    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_devlock_req()V

    .line 4033
    invoke-virtual {v1}, Loicq/wlogin_sdk/devicelock/d;->get_msgType()I

    move-result v0

    invoke-virtual {v8, v0}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    move-wide v4, p2

    move-wide v6, p4

    .line 4034
    invoke-virtual/range {v1 .. v7}, Loicq/wlogin_sdk/devicelock/d;->a(JJJ)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4035
    iget-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-eqz v0, :cond_2

    iget-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v0, v0

    if-nez v0, :cond_3

    .line 4036
    :cond_2
    const/16 v0, -0x3f9

    goto :goto_0

    .line 4038
    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, v1, Loicq/wlogin_sdk/devicelock/d;->Role:I

    int-to-long v6, v0

    move-object v0, p0

    move v1, v3

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public CancelRequest()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x1

    iput v1, v0, Loicq/wlogin_sdk/request/u;->q:I

    .line 159
    return-void
.end method

.method public CheckDevLockSms(Ljava/lang/String;JJLjava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    .prologue
    .line 4052
    if-nez p1, :cond_0

    .line 4053
    const/16 v4, -0x3f9

    .line 4085
    :goto_0
    return v4

    .line 4056
    :cond_0
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 4057
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4058
    const/16 v4, -0x3eb

    goto :goto_0

    .line 4060
    :cond_1
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    .line 4062
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v8

    .line 4063
    if-nez v8, :cond_2

    .line 4064
    const/16 v4, -0x3ec

    goto :goto_0

    .line 4066
    :cond_2
    if-eqz p7, :cond_3

    move-object/from16 v0, p7

    array-length v4, v0

    if-lez v4, :cond_3

    .line 4067
    sget-object v4, Loicq/wlogin_sdk/devicelock/DevlockBase;->rst:Loicq/wlogin_sdk/devicelock/DevlockRst;

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/devicelock/DevlockRst;->setSppKey([B)V

    .line 4069
    :cond_3
    const-string v4, "CheckDevLockSms ..."

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4071
    new-instance v5, Loicq/wlogin_sdk/devicelock/f;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/f;-><init>()V

    .line 4072
    new-instance v19, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4074
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 4075
    if-nez v4, :cond_4

    .line 4076
    const-string v4, ""

    .line 4078
    :cond_4
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;->set_devlock_req()V

    .line 4079
    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/f;->get_msgType()I

    move-result v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4080
    iget-object v12, v8, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    sget-object v13, Loicq/wlogin_sdk/request/u;->y:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->C:[B

    const-string v8, "5.4.0.7"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v8, "android"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    if-nez p6, :cond_6

    const/16 v18, 0x0

    :goto_1
    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v5 .. v18}, Loicq/wlogin_sdk/devicelock/f;->a(JJJ[B[B[B[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4082
    move-object/from16 v0, v19

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-eqz v4, :cond_5

    move-object/from16 v0, v19

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v4, v4

    if-nez v4, :cond_7

    .line 4083
    :cond_5
    const/16 v4, -0x3f9

    goto/16 :goto_0

    .line 4080
    :cond_6
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    goto :goto_1

    .line 4085
    :cond_7
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/devicelock/f;->Role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v19

    move-object/from16 v13, p8

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public CheckDevLockStatus(Ljava/lang/String;JJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    .prologue
    .line 3936
    if-nez p1, :cond_0

    .line 3937
    const/16 v4, -0x3f9

    .line 3963
    :goto_0
    return v4

    .line 3940
    :cond_0
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 3941
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3942
    const/16 v4, -0x3eb

    goto :goto_0

    .line 3944
    :cond_1
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    .line 3946
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 3947
    if-nez v4, :cond_2

    .line 3948
    const/16 v4, -0x3ec

    goto :goto_0

    .line 3950
    :cond_2
    const-string v5, "CheckDevLockStatus ..."

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3952
    new-instance v5, Loicq/wlogin_sdk/devicelock/DevlockRst;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/DevlockRst;-><init>()V

    sput-object v5, Loicq/wlogin_sdk/devicelock/DevlockBase;->rst:Loicq/wlogin_sdk/devicelock/DevlockRst;

    .line 3953
    new-instance v5, Loicq/wlogin_sdk/devicelock/a;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/a;-><init>()V

    .line 3954
    new-instance v18, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3956
    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->set_devlock_req()V

    .line 3957
    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/a;->get_msgType()I

    move-result v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3958
    iget-object v12, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    sget-object v13, Loicq/wlogin_sdk/request/u;->y:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->C:[B

    const-string v4, "5.4.0.7"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    sget-object v16, Loicq/wlogin_sdk/request/u;->I:[B

    sget-object v17, Loicq/wlogin_sdk/request/u;->H:[B

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v5 .. v17}, Loicq/wlogin_sdk/devicelock/a;->a(JJJ[B[B[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3960
    move-object/from16 v0, v18

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-eqz v4, :cond_3

    move-object/from16 v0, v18

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v4, v4

    if-nez v4, :cond_4

    .line 3961
    :cond_3
    const/16 v4, -0x3f9

    goto :goto_0

    .line 3963
    :cond_4
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/devicelock/a;->Role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v18

    move-object/from16 v13, p6

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1912
    sput-boolean v5, Loicq/wlogin_sdk/request/o;->D:Z

    .line 1913
    const/4 v4, 0x0

    check-cast v4, [[B

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[B)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1926
    sput-boolean v5, Loicq/wlogin_sdk/request/o;->D:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1927
    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 6

    .prologue
    .line 2237
    const/4 v4, 0x0

    check-cast v4, [[B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[B)I
    .locals 6

    .prologue
    .line 2250
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckSMSVerifyLoginAccount(JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 9

    .prologue
    .line 2497
    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSVerifyLoginAccount(JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public CheckWebsigAndGetSt(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 6

    .prologue
    .line 1885
    const/4 v0, 0x1

    sput-boolean v0, Loicq/wlogin_sdk/request/o;->D:Z

    .line 1886
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x0

    check-cast v4, [[B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckWebsigAndGetSt(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[B)I
    .locals 6

    .prologue
    .line 1899
    const/4 v0, 0x1

    sput-boolean v0, Loicq/wlogin_sdk/request/o;->D:Z

    .line 1900
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public ClearUserLoginData(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " appid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ClearUserLoginData ..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2651
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2675
    :goto_0
    return-object v0

    .line 2656
    :cond_1
    monitor-enter p0

    .line 2658
    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2660
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2661
    if-nez v2, :cond_3

    .line 2662
    const/4 v0, 0x0

    .line 2670
    :goto_1
    if-ne v0, v1, :cond_2

    .line 2671
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2, p3}, Loicq/wlogin_sdk/request/u;->c(JJ)V

    .line 2673
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2675
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2664
    :cond_3
    :try_start_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->d(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    .line 2667
    :cond_4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    goto :goto_1

    .line 2673
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public CloseCode(Ljava/lang/String;J[BILjava/util/List;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[BI",
            "Ljava/util/List",
            "<[B>;",
            "Loicq/wlogin_sdk/request/WUserSigInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3855
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 3856
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3857
    const/16 v4, -0x3eb

    .line 3875
    :goto_0
    return v4

    .line 3859
    :cond_0
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    .line 3860
    const-wide/16 v10, 0x1

    .line 3862
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 3863
    if-nez v4, :cond_1

    .line 3864
    const/16 v4, -0x3ec

    goto :goto_0

    .line 3866
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " CloseCode ..."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3868
    new-instance v5, Loicq/wlogin_sdk/code2d/a;

    invoke-direct {v5}, Loicq/wlogin_sdk/code2d/a;-><init>()V

    .line 3869
    new-instance v23, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v23 .. v23}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3871
    invoke-virtual/range {v23 .. v23}, Loicq/wlogin_sdk/request/TransReqContext;->set_code2d_func_req()V

    .line 3872
    invoke-virtual {v5}, Loicq/wlogin_sdk/code2d/a;->get_cmd()I

    move-result v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3873
    iget-object v13, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->y:[B

    iget-object v0, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    move-object/from16 v17, v0

    iget-object v0, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    int-to-long v0, v4

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    move-wide/from16 v8, p2

    move-object/from16 v12, p4

    move/from16 v15, p5

    move-object/from16 v16, p6

    invoke-virtual/range {v5 .. v22}, Loicq/wlogin_sdk/code2d/a;->a(JJJ[B[B[BILjava/util/List;[B[BJJ)[B

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3875
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/code2d/a;->_role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v23

    move-object/from16 v13, p7

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public CloseDevLock(Ljava/lang/String;JJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    .prologue
    .line 3975
    if-nez p1, :cond_0

    .line 3976
    const/16 v4, -0x3f9

    .line 4005
    :goto_0
    return v4

    .line 3979
    :cond_0
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 3980
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3981
    const/16 v4, -0x3eb

    goto :goto_0

    .line 3983
    :cond_1
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    .line 3985
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v8

    .line 3986
    if-nez v8, :cond_2

    .line 3987
    const/16 v4, -0x3ec

    goto :goto_0

    .line 3989
    :cond_2
    const-string v4, "CloseDevLock ..."

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3991
    new-instance v5, Loicq/wlogin_sdk/devicelock/b;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/b;-><init>()V

    .line 3992
    new-instance v18, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3994
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3995
    if-nez v4, :cond_3

    .line 3996
    const-string v4, ""

    .line 3998
    :cond_3
    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->set_devlock_req()V

    .line 3999
    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/b;->get_msgType()I

    move-result v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4000
    iget-object v12, v8, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    sget-object v13, Loicq/wlogin_sdk/request/u;->y:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->C:[B

    const-string v8, "5.4.0.7"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v8, "android"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v5 .. v17}, Loicq/wlogin_sdk/devicelock/b;->a(JJJ[B[B[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4002
    move-object/from16 v0, v18

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-eqz v4, :cond_4

    move-object/from16 v0, v18

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v4, v4

    if-nez v4, :cond_5

    .line 4003
    :cond_4
    const/16 v4, -0x3f9

    goto :goto_0

    .line 4005
    :cond_5
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/devicelock/b;->Role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v18

    move-object/from16 v13, p6

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public FetchCodeSig(JJLoicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 19

    .prologue
    .line 3887
    const-string v2, " FetchCodeSig ..."

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3889
    new-instance v3, Loicq/wlogin_sdk/code2d/fetch_code;

    invoke-direct {v3}, Loicq/wlogin_sdk/code2d/fetch_code;-><init>()V

    .line 3890
    new-instance v17, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v17 .. v17}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3892
    invoke-virtual/range {v17 .. v17}, Loicq/wlogin_sdk/request/TransReqContext;->set_code2d_func_req()V

    .line 3893
    invoke-virtual {v3}, Loicq/wlogin_sdk/code2d/fetch_code;->get_cmd()I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3894
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    new-array v10, v2, [B

    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    int-to-long v12, v2

    const-wide/16 v14, 0x0

    sget-object v16, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_QRPUSHSig:[B

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v11, p5

    invoke-virtual/range {v3 .. v16}, Loicq/wlogin_sdk/code2d/fetch_code;->get_request(JJJ[BLoicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;JJ[B)[B

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3896
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v2, v3, Loicq/wlogin_sdk/code2d/fetch_code;->_role:I

    int-to-long v8, v2

    move-object/from16 v2, p0

    move v3, v6

    move-wide/from16 v6, p1

    move-object/from16 v10, v17

    move-object/from16 v11, p6

    invoke-virtual/range {v2 .. v11}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    return v2
.end method

.method public GetA1WithA1(Ljava/lang/String;JJ[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;)I
    .locals 21

    .prologue
    .line 1110
    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const/16 v20, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    invoke-direct/range {v2 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1WithA1(Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I

    move-result v2

    return v2
.end method

.method public GetA2A2KeyBuf(Ljava/lang/String;J)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1050
    .line 1053
    const/16 v1, 0x40

    invoke-virtual {p0, p1, p2, p3, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v1

    .line 1055
    if-eqz v1, :cond_0

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v2, :cond_0

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    if-eqz v2, :cond_0

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v2, v2

    if-gtz v2, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-object v0

    .line 1060
    :cond_1
    sget-object v2, Loicq/wlogin_sdk/request/u;->z:[B

    if-eqz v2, :cond_0

    sget-object v2, Loicq/wlogin_sdk/request/u;->z:[B

    array-length v2, v2

    if-lez v2, :cond_0

    .line 1065
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v2, v2

    add-int/2addr v0, v2

    .line 1067
    new-array v0, v0, [B

    .line 1069
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v5, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 1070
    const/4 v2, 0x2

    .line 1071
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1073
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    .line 1075
    invoke-static {v0, v2, p2, p3}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    .line 1076
    add-int/lit8 v2, v2, 0x8

    .line 1078
    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v3, v3

    invoke-static {v0, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 1079
    add-int/lit8 v2, v2, 0x2

    .line 1080
    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v4, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1081
    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v3, v3

    add-int/2addr v2, v3

    .line 1083
    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v3, v3

    invoke-static {v0, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 1084
    add-int/lit8 v2, v2, 0x2

    .line 1085
    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    iget-object v4, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1086
    iget-object v1, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v1, v1

    add-int/2addr v1, v2

    .line 1088
    array-length v1, v0

    sget-object v2, Loicq/wlogin_sdk/request/u;->z:[B

    invoke-static {v0, v5, v1, v2}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public GetAllLoginInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Loicq/wlogin_sdk/sharemem/WloginLoginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/u;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public GetAppidFromUrl(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 3775
    if-nez p1, :cond_0

    move-wide v0, v2

    .line 3793
    :goto_0
    return-wide v0

    .line 3777
    :cond_0
    const-string v0, "f="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3778
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_2

    :cond_1
    move-wide v0, v2

    .line 3779
    goto :goto_0

    .line 3780
    :cond_2
    add-int/lit8 v1, v0, 0x2

    .line 3782
    const-string v0, ""

    .line 3783
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 3784
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x26

    if-ne v4, v5, :cond_4

    .line 3791
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 3786
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3787
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3792
    :catch_0
    move-exception v0

    move-wide v0, v2

    .line 3793
    goto :goto_0
.end method

.method public GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/4 v11, 0x0

    .line 2688
    .line 2691
    if-nez p1, :cond_0

    .line 2692
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2729
    :goto_0
    return-object v0

    .line 2696
    :cond_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2698
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2699
    if-nez v1, :cond_5

    move v12, v11

    .line 2706
    :goto_1
    if-ne v12, v0, :cond_3

    .line 2707
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->d(J)Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    move-result-object v10

    .line 2708
    if-nez v10, :cond_2

    move v1, v11

    .line 2724
    :goto_2
    if-ne v1, v0, :cond_4

    .line 2729
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2702
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move v12, v0

    goto :goto_1

    .line 2715
    :cond_2
    if-eqz p2, :cond_3

    .line 2716
    new-instance v1, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    iget-wide v2, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iget-object v4, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_face:[B

    iget-object v5, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_age:[B

    iget-object v6, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_gender:[B

    iget-object v7, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_nick:[B

    iget-object v8, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_type:[B

    iget-object v9, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_format:[B

    iget-object v10, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_url:[B

    invoke-direct/range {v1 .. v10}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>(J[B[B[B[B[B[B[B)V

    invoke-virtual {p2, v1}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)V

    :cond_3
    move v1, v12

    goto :goto_2

    :cond_4
    move v0, v11

    .line 2727
    goto :goto_3

    :cond_5
    move v12, v0

    goto :goto_1
.end method

.method public GetDevLockInfo(Ljava/lang/String;)Loicq/wlogin_sdk/devicelock/DevlockInfo;
    .locals 2

    .prologue
    .line 1783
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetDevLockInfo(Ljava/lang/String;J)Loicq/wlogin_sdk/devicelock/DevlockInfo;

    move-result-object v0

    return-object v0
.end method

.method public GetDevLockInfo(Ljava/lang/String;J)Loicq/wlogin_sdk/devicelock/DevlockInfo;
    .locals 2

    .prologue
    .line 1794
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 1795
    iget-wide p2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 1797
    :cond_0
    invoke-static {p2, p3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 1798
    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    return-object v0
.end method

.method public GetGuid()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2738
    const/4 v0, 0x0

    .line 2739
    sget-object v1, Loicq/wlogin_sdk/request/u;->y:[B

    if-eqz v1, :cond_0

    sget-object v1, Loicq/wlogin_sdk/request/u;->y:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 2740
    sget-object v0, Loicq/wlogin_sdk/request/u;->y:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 2741
    sget-object v1, Loicq/wlogin_sdk/request/u;->y:[B

    sget-object v2, Loicq/wlogin_sdk/request/u;->y:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2744
    :cond_0
    return-object v0
.end method

.method public GetLastLoginInfo()Loicq/wlogin_sdk/request/WloginLastLoginInfo;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 371
    .line 372
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/u;->k()Ljava/util/List;

    move-result-object v0

    .line 373
    if-nez v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-object v2

    .line 375
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    .line 376
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;

    .line 378
    if-nez v1, :cond_2

    move-object v1, v0

    .line 380
    goto :goto_1

    .line 382
    :cond_2
    iget-wide v4, v0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mCreateTime:J

    iget-wide v6, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mCreateTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    :goto_2
    move-object v1, v0

    .line 384
    goto :goto_1

    .line 386
    :cond_3
    if-eqz v1, :cond_0

    .line 388
    iget-object v0, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAccount:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAccount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 389
    new-instance v2, Loicq/wlogin_sdk/request/WloginLastLoginInfo;

    iget-object v0, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAccount:Ljava/lang/String;

    iget-wide v4, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mUin:J

    invoke-direct {v2, v0, v4, v5}, Loicq/wlogin_sdk/request/WloginLastLoginInfo;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    .line 391
    :cond_4
    new-instance v2, Loicq/wlogin_sdk/request/WloginLastLoginInfo;

    iget-wide v4, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mUin:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v4, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mUin:J

    invoke-direct {v2, v0, v4, v5}, Loicq/wlogin_sdk/request/WloginLastLoginInfo;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public GetLocalSig(Ljava/lang/String;J)Loicq/wlogin_sdk/request/WUserSigInfo;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 902
    .line 906
    if-nez p1, :cond_1

    .line 907
    const-string v0, "userAccount null"

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :cond_0
    :goto_0
    return-object v1

    .line 912
    :cond_1
    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 914
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_0

    .line 921
    :goto_1
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    .line 922
    if-eqz v2, :cond_3

    .line 923
    new-instance v0, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :try_start_1
    iput-object p1, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 925
    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v0

    .line 932
    goto :goto_0

    .line 918
    :cond_2
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    .line 928
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 929
    :goto_3
    invoke-static {v1, p1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2

    .line 928
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;
    .locals 2

    .prologue
    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetLocalTicket appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    if-nez p1, :cond_0

    .line 946
    const-string v0, "userAccount null"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const/4 v0, 0x0

    .line 953
    :goto_0
    return-object v0

    .line 950
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalSig(Ljava/lang/String;J)Loicq/wlogin_sdk/request/WUserSigInfo;

    move-result-object v0

    .line 951
    invoke-static {v0, p4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    goto :goto_0
.end method

.method public GetOpenKeyWithoutPasswd(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    .prologue
    .line 541
    move-object/from16 v0, p0

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    const-wide/16 v8, -0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    check-cast v15, [[B

    const/16 v16, 0x0

    check-cast v16, [[B

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v10, p6

    move-wide/from16 v11, p4

    move-object/from16 v14, p7

    invoke-direct/range {v2 .. v17}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BI)I

    move-result v2

    return v2
.end method

.method public GetPictureData(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 1667
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetPictureData(Ljava/lang/String;J)[B

    move-result-object v0

    return-object v0
.end method

.method public GetPictureData(Ljava/lang/String;J)[B
    .locals 2

    .prologue
    .line 1678
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 1679
    iget-wide p2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 1681
    :cond_0
    invoke-static {p2, p3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 1682
    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_t105:Loicq/wlogin_sdk/b/g;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/g;->f()[B

    move-result-object v0

    .line 1684
    return-object v0
.end method

.method public GetPicturePrompt(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 1697
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetPicturePrompt(Ljava/lang/String;J)[B

    move-result-object v0

    return-object v0
.end method

.method public GetPicturePrompt(Ljava/lang/String;J)[B
    .locals 2

    .prologue
    .line 1767
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 1768
    iget-wide p2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 1770
    :cond_0
    invoke-static {p2, p3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 1771
    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_t165:Loicq/wlogin_sdk/b/ay;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/ay;->b()[B

    move-result-object v0

    .line 1773
    return-object v0
.end method

.method public GetPicturePromptValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1706
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetPicturePromptValue(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetPicturePromptValue(Ljava/lang/String;J)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1715
    invoke-virtual {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetPicturePrompt(Ljava/lang/String;J)[B

    move-result-object v4

    .line 1716
    const-string v0, ""

    .line 1717
    if-eqz v4, :cond_0

    array-length v2, v4

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 1719
    invoke-static {v4, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v5

    .line 1720
    const/4 v2, 0x4

    move v9, v1

    move v1, v2

    move v2, v9

    .line 1721
    :goto_0
    if-ge v2, v5, :cond_0

    .line 1722
    array-length v3, v4

    add-int/lit8 v6, v1, 0x1

    if-ge v3, v6, :cond_1

    .line 1753
    :cond_0
    :goto_1
    return-object v0

    .line 1726
    :cond_1
    invoke-static {v4, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v3

    .line 1727
    add-int/lit8 v1, v1, 0x1

    .line 1729
    array-length v6, v4

    add-int v7, v1, v3

    if-lt v6, v7, :cond_0

    .line 1732
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1733
    add-int/2addr v1, v3

    .line 1735
    array-length v3, v4

    add-int/lit8 v7, v1, 0x2

    if-lt v3, v7, :cond_0

    .line 1738
    invoke-static {v4, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v3

    .line 1739
    add-int/lit8 v7, v1, 0x4

    .line 1741
    array-length v1, v4

    add-int v8, v7, v3

    if-lt v1, v8, :cond_0

    .line 1744
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4, v7, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1745
    add-int/2addr v3, v7

    .line 1747
    const-string v7, "pic_reason"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, v1

    .line 1749
    goto :goto_1

    .line 1721
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0
.end method

.method public GetStViaSMSVerifyLogin(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    .prologue
    .line 2453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GetStViaSMSVerifyLogin ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    sget-boolean v0, Loicq/wlogin_sdk/a/h;->v:Z

    if-eqz v0, :cond_0

    sget-object v9, Loicq/wlogin_sdk/a/h;->x:Ljava/lang/String;

    .line 2457
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p6

    move-wide/from16 v5, p4

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0

    .line 2455
    :cond_0
    const-string v9, ""

    goto :goto_0
.end method

.method public GetStViaSMSVerifyLogin(Ljava/lang/String;JJ[JILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 16

    .prologue
    .line 2473
    const/4 v1, 0x0

    check-cast v1, [[B

    .line 2474
    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    array-length v2, v0

    if-lez v2, :cond_1

    .line 2475
    move-object/from16 v0, p6

    array-length v1, v0

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    move-object v12, v1

    .line 2478
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GetStViaSMSVerifyLogin ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    sget-boolean v1, Loicq/wlogin_sdk/a/h;->v:Z

    if-eqz v1, :cond_0

    sget-object v10, Loicq/wlogin_sdk/a/h;->x:Ljava/lang/String;

    .line 2482
    :goto_1
    const/4 v9, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p7

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v14}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v1

    return v1

    .line 2480
    :cond_0
    const-string v10, ""

    goto :goto_1

    :cond_1
    move-object v12, v1

    goto :goto_0
.end method

.method public GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[B)I
    .locals 14

    .prologue
    .line 1317
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithPasswd(Ljava/lang/String;JJILjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    .prologue
    .line 1274
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p6

    move-wide/from16 v5, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithPasswd(Ljava/lang/String;JLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    .prologue
    .line 1294
    iget v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithPasswdMd5(Ljava/lang/String;JJILjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    .prologue
    .line 1289
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p6

    move-wide/from16 v5, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithPasswdMd5(Ljava/lang/String;JLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    .prologue
    .line 1299
    iget v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[B)I
    .locals 16

    .prologue
    .line 656
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v15}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BI)I

    move-result v0

    return v0
.end method

.method public GetStWithoutPasswd(Ljava/lang/String;JJJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 16

    .prologue
    .line 632
    const-wide/16 v6, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    check-cast v13, [[B

    const/4 v14, 0x0

    check-cast v14, [[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p8

    move-wide/from16 v9, p6

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v15}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BI)I

    move-result v0

    return v0
.end method

.method public GetStWithoutPasswd(Ljava/lang/String;JJJI[B[B[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 16

    .prologue
    .line 610
    const/4 v0, 0x4

    new-array v14, v0, [[B

    .line 611
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-object v1, v14, v0

    .line 612
    const/4 v0, 0x0

    aget-object v0, v14, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 613
    const/4 v0, 0x1

    aput-object p9, v14, v0

    .line 614
    const/4 v0, 0x2

    aput-object p10, v14, v0

    .line 615
    const/4 v0, 0x3

    aput-object p11, v14, v0

    .line 617
    const-wide/16 v6, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    check-cast v13, [[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p8

    move-wide/from16 v9, p6

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v15}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BI)I

    move-result v0

    return v0
.end method

.method public GetStWithoutPasswd(Ljava/lang/String;JJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    .prologue
    .line 637
    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget v10, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const-wide/16 v11, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    check-cast v15, [[B

    const/16 v16, 0x0

    check-cast v16, [[B

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v14, p6

    invoke-direct/range {v2 .. v17}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BI)I

    move-result v2

    return v2
.end method

.method public GetStWithoutPasswd([BJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    .prologue
    .line 554
    const-string v2, ""

    .line 557
    const/4 v2, 0x0

    .line 561
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    if-gtz v3, :cond_1

    .line 563
    :cond_0
    const/16 v2, -0x3f9

    .line 592
    :goto_0
    return v2

    .line 565
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    sget-object v5, Loicq/wlogin_sdk/request/u;->z:[B

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v6

    .line 566
    if-eqz v6, :cond_2

    array-length v3, v6

    if-gtz v3, :cond_3

    :cond_2
    const/16 v2, -0x3f9

    goto :goto_0

    .line 568
    :cond_3
    const/4 v3, 0x2

    array-length v4, v6

    if-le v3, v4, :cond_4

    const/16 v2, -0x3f9

    goto :goto_0

    .line 569
    :cond_4
    invoke-static {v6, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    const/4 v4, 0x2

    .line 570
    if-lez v2, :cond_5

    add-int/lit8 v3, v2, 0x2

    array-length v5, v6

    if-le v3, v5, :cond_6

    :cond_5
    const/16 v2, -0x3f9

    goto :goto_0

    .line 571
    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6, v4, v2}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v2, v2, 0x2

    .line 573
    add-int/lit8 v4, v2, 0x8

    array-length v5, v6

    if-le v4, v5, :cond_7

    const/16 v2, -0x3f9

    goto :goto_0

    .line 574
    :cond_7
    invoke-static {v6, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int64([BI)J

    move-result-wide v4

    add-int/lit8 v2, v2, 0x8

    .line 576
    add-int/lit8 v7, v2, 0x2

    array-length v8, v6

    if-le v7, v8, :cond_8

    const/16 v2, -0x3f9

    goto :goto_0

    .line 577
    :cond_8
    invoke-static {v6, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v7

    add-int/lit8 v2, v2, 0x2

    .line 578
    if-lez v7, :cond_9

    add-int v8, v2, v7

    array-length v9, v6

    if-le v8, v9, :cond_a

    :cond_9
    const/16 v2, -0x3f9

    goto :goto_0

    .line 579
    :cond_a
    new-array v8, v7, [B

    const/4 v9, 0x0

    array-length v10, v8

    invoke-static {v6, v2, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v7

    .line 581
    add-int/lit8 v7, v2, 0x2

    array-length v9, v6

    if-le v7, v9, :cond_b

    const/16 v2, -0x3f9

    goto :goto_0

    .line 582
    :cond_b
    invoke-static {v6, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v7

    add-int/lit8 v2, v2, 0x2

    .line 583
    if-lez v7, :cond_c

    add-int v9, v2, v7

    array-length v10, v6

    if-le v9, v10, :cond_d

    :cond_c
    const/16 v2, -0x3f9

    goto :goto_0

    .line 584
    :cond_d
    new-array v9, v7, [B

    const/4 v10, 0x0

    array-length v11, v9

    invoke-static {v6, v2, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v7

    .line 586
    const/4 v2, 0x3

    new-array v0, v2, [[B

    move-object/from16 v16, v0

    .line 587
    const/4 v2, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [B

    aput-object v6, v16, v2

    .line 588
    const/4 v2, 0x0

    aget-object v2, v16, v2

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput-byte v7, v2, v6

    .line 589
    const/4 v2, 0x1

    aput-object v8, v16, v2

    .line 590
    const/4 v2, 0x2

    aput-object v9, v16, v2

    .line 592
    const-wide/16 v8, -0x1

    const-wide/16 v11, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    check-cast v15, [[B

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p2

    move/from16 v10, p4

    move-object/from16 v14, p5

    invoke-direct/range {v2 .. v17}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BI)I

    move-result v2

    goto/16 :goto_0
.end method

.method public GetTimeDifference()J
    .locals 2

    .prologue
    .line 255
    sget-wide v0, Loicq/wlogin_sdk/request/u;->Z:J

    return-wide v0
.end method

.method public IsNeedLoginWithPasswd(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 313
    .line 316
    if-nez p1, :cond_0

    .line 317
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    .line 320
    :cond_0
    monitor-enter p0

    .line 323
    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 325
    if-nez v2, :cond_2

    move v1, v0

    .line 351
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " need password:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 335
    :cond_2
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    .line 336
    if-eqz v2, :cond_3

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    if-eqz v3, :cond_3

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v3, v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    if-eqz v3, :cond_3

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    array-length v3, v3

    if-eqz v3, :cond_3

    .line 338
    const/4 v0, 0x2

    .line 340
    goto :goto_1

    .line 344
    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    if-eqz v3, :cond_4

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    array-length v3, v3

    if-eqz v3, :cond_4

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->iSExpireA2(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 346
    :cond_4
    const/4 v1, 0x3

    move v6, v1

    move v1, v0

    move v0, v6

    .line 347
    goto :goto_1

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public IsUserHaveA1(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 405
    if-nez p1, :cond_0

    .line 406
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    .line 411
    :cond_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 412
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 413
    if-nez v0, :cond_4

    .line 414
    const/4 v0, 0x0

    .line 428
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    if-eqz v1, :cond_2

    iget-object v0, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v0, v0

    if-gtz v0, :cond_5

    .line 429
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dwAppid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IsUserHaveA1 return: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 418
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 422
    :cond_4
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    .line 423
    if-nez v0, :cond_1

    goto :goto_1

    .line 434
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dwAppid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IsUserHaveA1 return: not null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public IsWtLoginUrl(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3752
    if-nez p1, :cond_1

    .line 3765
    :cond_0
    :goto_0
    return v0

    .line 3755
    :cond_1
    const-string v1, "?k="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3756
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 3758
    add-int/lit8 v1, v1, 0x3

    .line 3760
    add-int/lit8 v2, v1, 0x20

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3761
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v1}, Loicq/wlogin_sdk/tools/util;->base64_decode_url([BI)[B

    move-result-object v1

    .line 3762
    if-eqz v1, :cond_0

    .line 3765
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public PrepareQloginIntent(JJLjava/lang/String;)Landroid/content/Intent;
    .locals 7

    .prologue
    .line 4096
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->CheckMayFastLogin(Landroid/content/Context;)Z

    move-result v0

    .line 4097
    if-nez v0, :cond_0

    .line 4098
    const/4 v0, 0x0

    .line 4118
    :goto_0
    return-object v0

    .line 4100
    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_rsa_pubkey(Landroid/content/Context;)[B

    move-result-object v0

    .line 4101
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 4102
    :cond_1
    const-string v0, "30818902818100daaa2a418b271f3dfcf8f0a9120326d47f07618593d8d71d61a4fe987cc47740e491105bf8e68bd479bf51dfe19d3b06e12017df6d87a0f43bb82b57f59bd4220f2a3d8d68904a6ddb51197989e6e82512d8d8fa6c41b755a8ca962595d3e1e1be7ea01677249be4794cd7c6682d611c1bd81f0a16231fb83517515b94d13e5d0203010001"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v0

    .line 4104
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4107
    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4109
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4110
    const-string v3, "dstSsoVer"

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4111
    const-string v3, "dstAppid"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4112
    const-string v3, "subDstAppid"

    invoke-virtual {v2, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4113
    const-string v3, "dstAppVer"

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4114
    const-string v3, "publickey"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4115
    const-string v0, "key_params"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4116
    const-string v0, "key_action"

    const-string v2, "action_quick_login"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    .line 4118
    goto :goto_0
.end method

.method public PrepareQloginResult(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WFastLoginInfo;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 4156
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4157
    const-string v0, "quicklogin_uin"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4159
    iget-object v0, p7, Loicq/wlogin_sdk/request/WFastLoginInfo;->_outA1:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 4160
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 4161
    new-instance v2, Loicq/wlogin_sdk/tools/RSACrypt;

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Loicq/wlogin_sdk/tools/RSACrypt;-><init>(Landroid/content/Context;)V

    .line 4162
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, p3, p4, p5}, Loicq/wlogin_sdk/tools/util;->get_cp_pubkey(Landroid/content/Context;JJ)[B

    move-result-object v3

    .line 4163
    invoke-virtual {v2, v3, v0}, Loicq/wlogin_sdk/tools/RSACrypt;->EncryptData([B[B)[B

    move-result-object v0

    .line 4165
    const-string v2, "quicklogin_buff"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4167
    :cond_0
    const-string v0, "quicklogin_ret"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4169
    return-object v1
.end method

.method public PrepareSilenceLoginIntent(JJLjava/lang/String;)Landroid/content/Intent;
    .locals 7

    .prologue
    .line 4129
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_rsa_pubkey(Landroid/content/Context;)[B

    move-result-object v0

    .line 4130
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 4131
    :cond_0
    const-string v0, "30818902818100daaa2a418b271f3dfcf8f0a9120326d47f07618593d8d71d61a4fe987cc47740e491105bf8e68bd479bf51dfe19d3b06e12017df6d87a0f43bb82b57f59bd4220f2a3d8d68904a6ddb51197989e6e82512d8d8fa6c41b755a8ca962595d3e1e1be7ea01677249be4794cd7c6682d611c1bd81f0a16231fb83517515b94d13e5d0203010001"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v0

    .line 4133
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4135
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4136
    const-string v3, "dstSsoVer"

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4137
    const-string v3, "dstAppid"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4138
    const-string v3, "subDstAppid"

    invoke-virtual {v2, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4139
    const-string v3, "dstAppVer"

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4140
    const-string v3, "publickey"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4141
    const-string v0, "key_params"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4142
    const-string v0, "key_action"

    const-string v2, "action_quick_login"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4144
    return-object v1
.end method

.method public QueryCodeResult(JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 3906
    const-string v0, " QueryCodeResult ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3908
    new-instance v1, Loicq/wlogin_sdk/code2d/d;

    invoke-direct {v1}, Loicq/wlogin_sdk/code2d/d;-><init>()V

    .line 3909
    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3911
    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_code2d_func_req()V

    .line 3912
    invoke-virtual {v1}, Loicq/wlogin_sdk/code2d/d;->get_cmd()I

    move-result v0

    invoke-virtual {v8, v0}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3913
    const-wide/16 v2, 0x0

    sget-object v6, Loicq/wlogin_sdk/code2d/c;->i:[B

    new-array v7, v9, [B

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Loicq/wlogin_sdk/code2d/d;->a(JJ[B[B)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3915
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, v1, Loicq/wlogin_sdk/code2d/d;->_role:I

    int-to-long v6, v0

    move-object v0, p0

    move v1, v9

    move-wide v4, p1

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RefreshMemorySig()V
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/u;->j()V

    .line 892
    return-void
.end method

.method public RefreshPictureData(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 1

    .prologue
    .line 1809
    if-nez p2, :cond_0

    .line 1810
    new-instance p2, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {p2}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    .line 1812
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshPictureData(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public RefreshSMSData(Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 6

    .prologue
    .line 2161
    if-nez p4, :cond_0

    .line 2162
    new-instance v4, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    .line 2164
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshSMSData(Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0

    :cond_0
    move-object v4, p4

    goto :goto_0
.end method

.method public RefreshSMSVerifyLoginCode(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 1

    .prologue
    .line 2551
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshSMSVerifyLoginCode(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public RegGetAccount([B[B[B[BILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    .prologue
    .line 3458
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 3459
    :cond_0
    const/16 v2, -0x3f9

    .line 3483
    :goto_0
    return v2

    .line 3462
    :cond_1
    const-string v2, "RegGetAccount ..."

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3464
    new-instance v2, Loicq/wlogin_sdk/a/b;

    invoke-direct {v2}, Loicq/wlogin_sdk/a/b;-><init>()V

    .line 3465
    new-instance v16, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v16 .. v16}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3466
    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    move-object/from16 v17, v0

    .line 3467
    if-eqz p1, :cond_3

    .line 3468
    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/h;->j:[B

    .line 3474
    :goto_1
    const/4 v3, 0x4

    move/from16 v0, p5

    if-ne v0, v3, :cond_2

    .line 3475
    const-string v3, ""

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    .line 3477
    :cond_2
    invoke-virtual/range {v16 .. v16}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 3478
    invoke-virtual {v2}, Loicq/wlogin_sdk/a/b;->a()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3479
    move-object/from16 v0, v17

    iget-object v3, v0, Loicq/wlogin_sdk/a/h;->e:[B

    move-object/from16 v0, v17

    iget-object v4, v0, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    sget-object v14, Loicq/wlogin_sdk/request/u;->C:[B

    sget v15, Loicq/wlogin_sdk/request/u;->x:I

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v15}, Loicq/wlogin_sdk/a/b;->a([B[B[B[BI[B[BZ[BJ[BI)[B

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3483
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    iget v2, v0, Loicq/wlogin_sdk/a/h;->i:I

    int-to-long v8, v2

    move-object/from16 v2, p0

    move-object/from16 v10, v16

    move-object/from16 v11, p6

    invoke-virtual/range {v2 .. v11}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto :goto_0

    .line 3471
    :cond_3
    const/4 v3, 0x0

    new-array v3, v3, [B

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/h;->j:[B

    goto :goto_1
.end method

.method public RegGetSMSVerifyLoginAccount([B[B[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    .prologue
    .line 2417
    const-string v2, "RegGetSMSVerifyLoginAccount ..."

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    new-instance v2, Loicq/wlogin_sdk/a/b;

    invoke-direct {v2}, Loicq/wlogin_sdk/a/b;-><init>()V

    .line 2420
    new-instance v16, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v16 .. v16}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    move-object/from16 v17, v0

    .line 2422
    if-eqz p1, :cond_0

    .line 2423
    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/h;->j:[B

    .line 2428
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Loicq/wlogin_sdk/a/h;->v:Z

    .line 2429
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_mpasswd()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Loicq/wlogin_sdk/a/h;->x:Ljava/lang/String;

    .line 2431
    invoke-virtual/range {v16 .. v16}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 2432
    invoke-virtual {v2}, Loicq/wlogin_sdk/a/b;->a()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 2433
    move-object/from16 v0, v17

    iget-object v3, v0, Loicq/wlogin_sdk/a/h;->e:[B

    sget-object v4, Loicq/wlogin_sdk/a/h;->x:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v17

    iget-object v4, v0, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetGuid()[B

    move-result-object v11

    move-object/from16 v0, v17

    iget-wide v12, v0, Loicq/wlogin_sdk/a/h;->h:J

    sget-object v14, Loicq/wlogin_sdk/request/u;->C:[B

    sget v15, Loicq/wlogin_sdk/request/u;->x:I

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v15}, Loicq/wlogin_sdk/a/b;->a([B[B[B[BI[B[BZ[BJ[BI)[B

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 2438
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    iget v2, v0, Loicq/wlogin_sdk/a/h;->i:I

    int-to-long v8, v2

    move-object/from16 v2, p0

    move-object/from16 v10, v16

    move-object/from16 v11, p4

    invoke-virtual/range {v2 .. v11}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    return v2

    .line 2425
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [B

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/h;->j:[B

    goto :goto_0
.end method

.method public RegQueryAccount(I[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 3497
    if-nez p2, :cond_0

    .line 3498
    new-array p2, v1, [B

    .line 3501
    :cond_0
    const-string v0, "RegQueryAccount ..."

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    new-instance v0, Loicq/wlogin_sdk/a/h;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/h;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    .line 3504
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v0, Loicq/wlogin_sdk/a/h;->b:Ljava/lang/String;

    .line 3506
    new-instance v0, Loicq/wlogin_sdk/a/c;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/c;-><init>()V

    .line 3507
    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3508
    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    .line 3510
    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 3511
    invoke-virtual {v0}, Loicq/wlogin_sdk/a/c;->a()I

    move-result v2

    invoke-virtual {v8, v2}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3512
    invoke-virtual {v0, p1, p2, p3, p4}, Loicq/wlogin_sdk/a/c;->a(I[BJ)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3514
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget v0, v6, Loicq/wlogin_sdk/a/h;->i:I

    int-to-long v6, v0

    move-object v0, p0

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RegQueryClientSendedMsgStatus(Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    .prologue
    .line 3386
    const-string v0, "RegQueryClientSendedMsgStatus ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3388
    new-instance v0, Loicq/wlogin_sdk/a/d;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/d;-><init>()V

    .line 3389
    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3390
    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    .line 3392
    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 3393
    invoke-virtual {v0}, Loicq/wlogin_sdk/a/d;->a()I

    move-result v1

    invoke-virtual {v8, v1}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3394
    iget-object v1, v6, Loicq/wlogin_sdk/a/h;->e:[B

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    iget-object v2, v2, Loicq/wlogin_sdk/a/h;->o:[B

    invoke-virtual {v0, v1, v2}, Loicq/wlogin_sdk/a/d;->b([B[B)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3396
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget v0, v6, Loicq/wlogin_sdk/a/h;->i:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RegRequestServerResendMsg(Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 3406
    const-string v0, "RegRequestServerResendMsg ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3408
    new-instance v0, Loicq/wlogin_sdk/a/e;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/e;-><init>()V

    .line 3409
    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3410
    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    .line 3412
    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 3413
    invoke-virtual {v0}, Loicq/wlogin_sdk/a/e;->a()I

    move-result v1

    invoke-virtual {v8, v1}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3414
    iget-object v1, v6, Loicq/wlogin_sdk/a/h;->e:[B

    invoke-virtual {v0, v1, v3}, Loicq/wlogin_sdk/a/e;->b([B[B)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3416
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    iget v0, v6, Loicq/wlogin_sdk/a/h;->i:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RegSubmitMobile([B[B[BIIIJJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 25

    .prologue
    .line 3341
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v4, v0

    if-lez v4, :cond_0

    if-nez p3, :cond_1

    .line 3342
    :cond_0
    const/16 v4, -0x3f9

    .line 3376
    :goto_0
    return v4

    .line 3345
    :cond_1
    sget-object v7, Loicq/wlogin_sdk/request/u;->C:[B

    .line 3347
    const-wide/16 v20, 0x0

    .line 3348
    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v22, v0

    .line 3349
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLastLoginInfo()Loicq/wlogin_sdk/request/WloginLastLoginInfo;

    move-result-object v4

    .line 3350
    if-eqz v4, :cond_2

    .line 3351
    iget-wide v0, v4, Loicq/wlogin_sdk/request/WloginLastLoginInfo;->mUin:J

    move-wide/from16 v20, v0

    .line 3352
    iget-object v4, v4, Loicq/wlogin_sdk/request/WloginLastLoginInfo;->mAccount:Ljava/lang/String;

    const/16 v5, 0x40

    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    invoke-virtual {v0, v4, v1, v2, v5}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    .line 3353
    if-eqz v4, :cond_2

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_2

    .line 3354
    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v22, v0

    .line 3357
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has uin? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", a2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 3358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegSubmitMobile mobile ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appname: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/a/h;->c:Ljava/lang/String;

    .line 3362
    new-instance v5, Loicq/wlogin_sdk/a/f;

    invoke-direct {v5}, Loicq/wlogin_sdk/a/f;-><init>()V

    .line 3363
    new-instance v24, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v24 .. v24}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3364
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    .line 3366
    move-object/from16 v0, p1

    iput-object v0, v4, Loicq/wlogin_sdk/a/h;->k:[B

    .line 3367
    move-wide/from16 v0, p7

    iput-wide v0, v4, Loicq/wlogin_sdk/a/h;->g:J

    .line 3368
    move-wide/from16 v0, p9

    iput-wide v0, v4, Loicq/wlogin_sdk/a/h;->h:J

    .line 3369
    invoke-virtual/range {v24 .. v24}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 3370
    invoke-virtual {v5}, Loicq/wlogin_sdk/a/f;->a()I

    move-result v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3371
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->get_IMEI(Landroid/content/Context;)[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->get_IMSI(Landroid/content/Context;)[B

    move-result-object v18

    sget-object v19, Loicq/wlogin_sdk/request/u;->Y:[B

    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetGuid()[B

    move-result-object v23

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-virtual/range {v5 .. v23}, Loicq/wlogin_sdk/a/f;->a([B[B[BIIIJJ[B[B[B[BJ[B[B)[B

    move-result-object v5

    move-object/from16 v0, v24

    iput-object v5, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3376
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    iget v4, v4, Loicq/wlogin_sdk/a/h;->i:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move-object/from16 v12, v24

    move-object/from16 v13, p11

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public RegSubmitMsgChk([BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    .prologue
    .line 3427
    if-nez p1, :cond_0

    .line 3428
    const/16 v0, -0x3f9

    .line 3441
    :goto_0
    return v0

    .line 3431
    :cond_0
    const-string v0, "RegSubmitMsgChk ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    new-instance v0, Loicq/wlogin_sdk/a/g;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/g;-><init>()V

    .line 3434
    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3435
    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/h;

    .line 3437
    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 3438
    invoke-virtual {v0}, Loicq/wlogin_sdk/a/g;->a()I

    move-result v1

    invoke-virtual {v8, v1}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3439
    iget-object v1, v6, Loicq/wlogin_sdk/a/h;->e:[B

    invoke-virtual {v0, v1, p1}, Loicq/wlogin_sdk/a/g;->b([B[B)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3441
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget v0, v6, Loicq/wlogin_sdk/a/h;->i:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 16

    .prologue
    .line 2946
    if-nez p1, :cond_0

    .line 2947
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v14, "RequestTransport"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v2 .. v14}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;ILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 2950
    const/16 v2, -0x3e9

    .line 3009
    :goto_0
    return v2

    .line 2953
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v13

    .line 2955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encrypt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " role:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v13, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RequestTransport..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    move-object/from16 v0, p3

    iput-object v0, v13, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2965
    if-eqz p2, :cond_5

    .line 2966
    if-nez p3, :cond_1

    .line 2967
    const/4 v2, 0x0

    iput v2, v13, Loicq/wlogin_sdk/request/u;->m:I

    .line 2968
    new-instance v2, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v2, v13}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p8

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 3003
    :goto_1
    invoke-virtual {v13}, Loicq/wlogin_sdk/request/u;->i()V

    .line 3005
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encrypt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " role:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v13, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestTransport ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2974
    :cond_1
    new-instance v3, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v3}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 2975
    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2977
    :cond_2
    const/16 v2, -0x3eb

    .line 2978
    goto :goto_1

    .line 2981
    :cond_3
    iget-wide v4, v3, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-wide/from16 v0, p4

    invoke-virtual {v13, v4, v5, v0, v1}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v5

    .line 2982
    if-nez v5, :cond_4

    .line 2983
    const/16 v2, -0x3ec

    .line 2984
    goto :goto_1

    .line 2987
    :cond_4
    iget-wide v6, v3, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iput-wide v6, v13, Loicq/wlogin_sdk/request/u;->f:J

    .line 2988
    new-instance v2, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v2, v13}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget-wide v3, v3, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iget-object v6, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    iget-object v7, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    move-object/from16 v5, p8

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1

    .line 2994
    :cond_5
    const-wide/16 v2, 0x0

    iput-wide v2, v13, Loicq/wlogin_sdk/request/u;->f:J

    .line 2995
    new-instance v2, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v2, v13}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget-wide v3, v13, Loicq/wlogin_sdk/request/u;->f:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p8

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1
.end method

.method public RequestTransportMsf(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;)I
    .locals 16

    .prologue
    .line 3026
    if-nez p1, :cond_0

    .line 3027
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v13, "RequestTransportMsf"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;ILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 3030
    const/16 v2, -0x3e9

    .line 3101
    :goto_0
    return v2

    .line 3033
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v15

    .line 3035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encrypt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " role:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RequestTransportMsf..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    move-object/from16 v0, p3

    iput-object v0, v15, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 3046
    if-eqz p2, :cond_4

    .line 3047
    new-instance v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v2}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 3048
    if-eqz p3, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3050
    :cond_1
    const/16 v2, -0x3eb

    .line 3095
    :goto_1
    invoke-virtual {v15}, Loicq/wlogin_sdk/request/u;->i()V

    .line 3097
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encrypt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " role:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestTransportMsf ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3054
    :cond_2
    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-wide/from16 v0, p4

    invoke-virtual {v15, v4, v5, v0, v1}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    .line 3055
    if-nez v6, :cond_3

    .line 3056
    const/16 v2, -0x3ec

    .line 3057
    goto :goto_1

    .line 3060
    :cond_3
    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iput-wide v4, v15, Loicq/wlogin_sdk/request/u;->f:J

    .line 3061
    new-instance v3, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v3, v15}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iget-object v7, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    iget-object v8, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    iget-object v9, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    new-instance v14, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v14}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    move-object/from16 v6, p8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1

    .line 3066
    :cond_4
    invoke-static/range {p3 .. p3}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 3068
    const-wide/16 v2, 0x0

    iput-wide v2, v15, Loicq/wlogin_sdk/request/u;->f:J

    .line 3069
    new-instance v3, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v3, v15}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    new-array v9, v2, [B

    new-instance v14, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v14}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    move-object/from16 v6, p8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1

    .line 3072
    :cond_5
    new-instance v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v2}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 3073
    if-eqz p3, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3075
    :cond_6
    const/16 v2, -0x3eb

    .line 3076
    goto/16 :goto_1

    .line 3079
    :cond_7
    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-wide/from16 v0, p4

    invoke-virtual {v15, v4, v5, v0, v1}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    .line 3080
    if-nez v6, :cond_8

    .line 3081
    const/16 v2, -0x3ec

    .line 3082
    goto/16 :goto_1

    .line 3085
    :cond_8
    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iput-wide v4, v15, Loicq/wlogin_sdk/request/u;->f:J

    .line 3086
    new-instance v3, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v3, v15}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    new-instance v14, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v14}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    move-object/from16 v6, p8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1
.end method

.method public ResolveQloginIntent(Landroid/content/Intent;)Loicq/wlogin_sdk/request/WUserSigInfo;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4178
    if-nez p1, :cond_1

    .line 4197
    :cond_0
    :goto_0
    return-object v0

    .line 4180
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "quicklogin_ret"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 4181
    if-nez v1, :cond_0

    .line 4183
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "quicklogin_uin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4184
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "quicklogin_buff"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 4185
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 4188
    new-instance v1, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v1}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    .line 4189
    new-instance v4, Loicq/wlogin_sdk/tools/RSACrypt;

    iget-object v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Loicq/wlogin_sdk/tools/RSACrypt;-><init>(Landroid/content/Context;)V

    .line 4190
    invoke-virtual {v4, v0, v3}, Loicq/wlogin_sdk/tools/RSACrypt;->DecryptData([B[B)[B

    move-result-object v3

    iput-object v3, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    .line 4191
    iget-object v3, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    if-nez v3, :cond_2

    .line 4192
    const-string v1, "rsa decrypt failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4195
    :cond_2
    iput-object v2, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    move-object v0, v1

    .line 4197
    goto :goto_0
.end method

.method public SetAppClientVersion(I)V
    .locals 0

    .prologue
    .line 187
    sput p1, Loicq/wlogin_sdk/request/u;->u:I

    .line 188
    return-void
.end method

.method public SetCanWebVerify(Z)V
    .locals 0

    .prologue
    .line 273
    sput-boolean p1, Loicq/wlogin_sdk/request/l;->D:Z

    .line 274
    return-void
.end method

.method public SetDevlockMobileType(I)V
    .locals 0

    .prologue
    .line 2149
    sput p1, Loicq/wlogin_sdk/request/s;->D:I

    .line 2150
    return-void
.end method

.method public SetImgType(I)V
    .locals 1

    .prologue
    .line 223
    sput p1, Loicq/wlogin_sdk/request/u;->v:I

    .line 224
    iget v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    .line 225
    return-void
.end method

.method public SetListener(Loicq/wlogin_sdk/request/WtloginListener;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    .line 168
    return-void
.end method

.method public SetLocalId(I)V
    .locals 0

    .prologue
    .line 246
    sput p1, Loicq/wlogin_sdk/request/u;->s:I

    .line 247
    return-void
.end method

.method public SetMsfTransportFlag(I)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iput p1, v0, Loicq/wlogin_sdk/request/u;->k:I

    .line 196
    if-eqz p1, :cond_0

    .line 197
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->ab:[B

    .line 198
    const-wide/16 v0, 0x0

    sput-wide v0, Loicq/wlogin_sdk/request/u;->aa:J

    .line 199
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const v1, 0xafc8

    iput v1, v0, Loicq/wlogin_sdk/request/u;->l:I

    .line 201
    :cond_0
    return-void
.end method

.method public SetNeedForPayToken(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 2

    .prologue
    .line 284
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/l;->E:[B

    .line 289
    if-eqz p3, :cond_0

    .line 290
    sput-object p3, Loicq/wlogin_sdk/request/l;->G:[B

    .line 292
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 293
    :cond_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->getChannelId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 294
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/l;->F:[B

    .line 296
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 297
    :cond_3
    const/4 v0, -0x2

    .line 299
    :goto_0
    return v0

    .line 287
    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    .line 299
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetPicType(I)V
    .locals 0

    .prologue
    .line 235
    sput p1, Loicq/wlogin_sdk/request/u;->w:I

    .line 236
    return-void
.end method

.method public SetRegDevLockFlag(I)V
    .locals 0

    .prologue
    .line 3322
    sput p1, Loicq/wlogin_sdk/request/u;->x:I

    .line 3323
    return-void
.end method

.method public SetSigMap(I)V
    .locals 1

    .prologue
    .line 210
    or-int/lit16 v0, p1, 0xc0

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    .line 211
    return-void
.end method

.method public SetTestHost(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    invoke-static {p1, p2}, Loicq/wlogin_sdk/request/k;->a(ILjava/lang/String;)V

    .line 178
    return-void
.end method

.method public SetTimeOut(I)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iput p1, v0, Loicq/wlogin_sdk/request/u;->l:I

    .line 266
    return-void
.end method

.method public VerifyCode(Ljava/lang/String;JZ[B[IILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    .prologue
    .line 3810
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 3811
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3812
    const/16 v4, -0x3eb

    .line 3840
    :goto_0
    return v4

    .line 3814
    :cond_0
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    .line 3816
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v15

    .line 3817
    if-nez v15, :cond_1

    .line 3818
    const/16 v4, -0x3ec

    goto :goto_0

    .line 3821
    :cond_1
    new-instance v4, Loicq/wlogin_sdk/b/cm;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cm;-><init>()V

    .line 3822
    const/4 v5, 0x0

    new-array v0, v5, [B

    move-object/from16 v17, v0

    .line 3823
    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    if-eqz v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    array-length v5, v5

    if-lez v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    if-eqz v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    array-length v5, v5

    if-lez v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    if-eqz v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    array-length v5, v5

    if-lez v5, :cond_2

    .line 3826
    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    sget-object v8, Loicq/wlogin_sdk/request/u;->y:[B

    iget-object v9, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    const-wide/16 v12, 0x1

    iget-object v14, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    move-wide/from16 v10, p2

    invoke-virtual/range {v4 .. v14}, Loicq/wlogin_sdk/b/cm;->a([BJ[B[BJJ[B)[B

    .line 3828
    invoke-virtual {v4}, Loicq/wlogin_sdk/b/cm;->b()[B

    move-result-object v17

    .line 3831
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " VerifyCode ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3833
    new-instance v5, Loicq/wlogin_sdk/code2d/e;

    invoke-direct {v5}, Loicq/wlogin_sdk/code2d/e;-><init>()V

    .line 3834
    new-instance v18, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3836
    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->set_code2d_func_req()V

    .line 3837
    invoke-virtual {v5}, Loicq/wlogin_sdk/code2d/e;->get_cmd()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3838
    iget-object v13, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->y:[B

    sget-object v15, Loicq/wlogin_sdk/request/u;->C:[B

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v16, p7

    invoke-virtual/range {v5 .. v17}, Loicq/wlogin_sdk/code2d/e;->a(JJZ[B[I[B[B[BI[B)[B

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3840
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/code2d/e;->_role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v18

    move-object/from16 v13, p8

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public VerifySMSVerifyLoginCode(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 1

    .prologue
    .line 2598
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->VerifySMSVerifyLoginCode(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public getHasPassword(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2389
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1, p1, p2}, Loicq/wlogin_sdk/request/u;->e(J)Ljava/lang/String;

    move-result-object v1

    .line 2390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHasPasswd ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    if-nez v1, :cond_1

    .line 2402
    :cond_0
    :goto_0
    return v0

    .line 2394
    :cond_1
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2, v1}, Loicq/wlogin_sdk/request/u;->c(Ljava/lang/String;)Loicq/wlogin_sdk/request/UinInfo;

    move-result-object v2

    .line 2395
    if-eqz v2, :cond_0

    .line 2398
    invoke-virtual {v2}, Loicq/wlogin_sdk/request/UinInfo;->getHasPassword()Z

    move-result v0

    .line 2400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHasPasswd userAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasPasswd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHasPassword(JZ)V
    .locals 3

    .prologue
    .line 2376
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1, p2}, Loicq/wlogin_sdk/request/u;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 2377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasPasswd ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    if-nez v0, :cond_0

    .line 2383
    :goto_0
    return-void

    .line 2381
    :cond_0
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p3}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 2382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasPasswd userAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasPassword:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMsgType(III)V
    .locals 0

    .prologue
    .line 3922
    sput p1, Loicq/wlogin_sdk/devicelock/DevlockBase$a;->a:I

    .line 3923
    sput p2, Loicq/wlogin_sdk/devicelock/DevlockBase$a;->b:I

    .line 3924
    sput p3, Loicq/wlogin_sdk/devicelock/DevlockBase$a;->c:I

    .line 3925
    return-void
.end method
