.class public Lcom/tencent/wstt/gt/utils/WtloginUtil;
.super Ljava/lang/Object;
.source "WtloginUtil.java"


# static fields
.field public static final REQ_QLOGIN:I = 0x100

.field public static final REQ_VCODE:I = 0x2

.field private static final appid:J = 0x5f5e1173L

.field private static mLoginHelper:Loicq/wlogin_sdk/request/WtloginHelper; = null

.field public static mMainSigMap:I = 0x0

.field private static final subid:I = 0x1

.field private static uin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/tencent/wstt/gt/utils/WtloginUtil;->mLoginHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    .line 39
    sput-object v0, Lcom/tencent/wstt/gt/utils/WtloginUtil;->uin:Ljava/lang/String;

    .line 49
    const v0, 0x100200

    sput v0, Lcom/tencent/wstt/gt/utils/WtloginUtil;->mMainSigMap:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHelper()Loicq/wlogin_sdk/request/WtloginHelper;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/tencent/wstt/gt/utils/WtloginUtil;->mLoginHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/wstt/gt/utils/WtloginUtil;->mLoginHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    .line 57
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/utils/WtloginUtil;->mLoginHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    return-object v0
.end method

.method public static getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 91
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getHelper()Loicq/wlogin_sdk/request/WtloginHelper;

    move-result-object v1

    const-wide/32 v2, 0x5f5e1173

    const-wide/16 v4, 0x1

    const-string v6, "1"

    invoke-virtual/range {v1 .. v6}, Loicq/wlogin_sdk/request/WtloginHelper;->PrepareQloginIntent(JJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getLsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "uin"    # Ljava/lang/String;

    .prologue
    .line 83
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 86
    :goto_0
    return-object v1

    .line 84
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getHelper()Loicq/wlogin_sdk/request/WtloginHelper;

    move-result-object v1

    .line 85
    const-wide/32 v2, 0x5f5e1173

    const/16 v4, 0x200

    .line 84
    invoke-virtual {v1, p0, v2, v3, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    .line 86
    .local v0, "ticketLsk":Loicq/wlogin_sdk/request/Ticket;
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static getPsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "uin"    # Ljava/lang/String;

    .prologue
    .line 76
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 79
    :goto_0
    return-object v1

    .line 77
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getHelper()Loicq/wlogin_sdk/request/WtloginHelper;

    move-result-object v1

    .line 78
    const-wide/32 v2, 0x5f5e1173

    const/high16 v4, 0x100000

    .line 77
    invoke-virtual {v1, p0, v2, v3, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    .line 79
    .local v0, "ticketLsk":Loicq/wlogin_sdk/request/Ticket;
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static getSKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "uin"    # Ljava/lang/String;

    .prologue
    .line 69
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    .line 70
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getHelper()Loicq/wlogin_sdk/request/WtloginHelper;

    move-result-object v1

    .line 71
    const-wide/32 v2, 0x5f5e1173

    const/16 v4, 0x1000

    .line 70
    invoke-virtual {v1, p0, v2, v3, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    .line 72
    .local v0, "ticketLsk":Loicq/wlogin_sdk/request/Ticket;
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static getSigInfo(Landroid/content/Intent;)Loicq/wlogin_sdk/request/WUserSigInfo;
    .locals 1
    .param p0, "data"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getHelper()Loicq/wlogin_sdk/request/WtloginHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Loicq/wlogin_sdk/request/WtloginHelper;->ResolveQloginIntent(Landroid/content/Intent;)Loicq/wlogin_sdk/request/WUserSigInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getStWithPasswd(Loicq/wlogin_sdk/request/WUserSigInfo;)V
    .locals 9
    .param p0, "sigInfo"    # Loicq/wlogin_sdk/request/WUserSigInfo;

    .prologue
    .line 101
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getHelper()Loicq/wlogin_sdk/request/WtloginHelper;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    const-wide/32 v2, 0x5f5e1173

    const-wide/16 v4, 0x1

    sget v6, Lcom/tencent/wstt/gt/utils/WtloginUtil;->mMainSigMap:I

    const-string v7, ""

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JJILjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    .line 102
    return-void
.end method

.method public static getUin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/wstt/gt/utils/WtloginUtil;->uin:Ljava/lang/String;

    return-object v0
.end method

.method public static setUin(Ljava/lang/String;)V
    .locals 0
    .param p0, "uin"    # Ljava/lang/String;

    .prologue
    .line 65
    sput-object p0, Lcom/tencent/wstt/gt/utils/WtloginUtil;->uin:Ljava/lang/String;

    .line 66
    return-void
.end method
