.class public abstract Lcom/tencent/stat/event/f;
.super Ljava/lang/Object;


# static fields
.field protected static j:Ljava/lang/String;

.field protected static l:I


# instance fields
.field private a:Lcom/tencent/stat/StatSpecifyReportedInfo;

.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:I

.field protected e:Lcom/tencent/stat/common/DeviceInfo;

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected k:Z

.field protected m:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/event/f;->j:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/tencent/stat/event/f;->l:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/tencent/stat/StatSpecifyReportedInfo;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/stat/event/f;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/stat/event/f;->e:Lcom/tencent/stat/common/DeviceInfo;

    iput-object v1, p0, Lcom/tencent/stat/event/f;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/stat/event/f;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/stat/event/f;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/stat/event/f;->k:Z

    iput-object v1, p0, Lcom/tencent/stat/event/f;->a:Lcom/tencent/stat/StatSpecifyReportedInfo;

    iput-object p1, p0, Lcom/tencent/stat/event/f;->m:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/stat/event/f;->c:J

    iput p2, p0, Lcom/tencent/stat/event/f;->d:I

    invoke-static {p1}, Lcom/tencent/stat/StatConfig;->getInstallChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/event/f;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/stat/common/StatCommonHelper;->getCurAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/event/f;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/stat/StatConfig;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/event/f;->b:Ljava/lang/String;

    if-eqz p3, :cond_3

    iput-object p3, p0, Lcom/tencent/stat/event/f;->a:Lcom/tencent/stat/StatSpecifyReportedInfo;

    invoke-virtual {p3}, Lcom/tencent/stat/StatSpecifyReportedInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/tencent/stat/StatSpecifyReportedInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/event/f;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {p3}, Lcom/tencent/stat/StatSpecifyReportedInfo;->getInstallChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/tencent/stat/StatSpecifyReportedInfo;->getInstallChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/event/f;->h:Ljava/lang/String;

    :cond_1
    invoke-virtual {p3}, Lcom/tencent/stat/StatSpecifyReportedInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/tencent/stat/StatSpecifyReportedInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/event/f;->i:Ljava/lang/String;

    :cond_2
    invoke-virtual {p3}, Lcom/tencent/stat/StatSpecifyReportedInfo;->isImportant()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/stat/event/f;->k:Z

    :cond_3
    invoke-static {p1}, Lcom/tencent/stat/StatConfig;->getCustomUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/event/f;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/stat/ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/stat/ba;->b(Landroid/content/Context;)Lcom/tencent/stat/common/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/event/f;->e:Lcom/tencent/stat/common/DeviceInfo;

    invoke-virtual {p0}, Lcom/tencent/stat/event/f;->a()Lcom/tencent/stat/event/EventType;

    move-result-object v0

    sget-object v1, Lcom/tencent/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/stat/event/EventType;

    if-eq v0, v1, :cond_6

    invoke-static {p1}, Lcom/tencent/stat/common/StatCommonHelper;->getNextEventIndexNo(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/stat/event/f;->f:I

    :goto_0
    sget-object v0, Lcom/tencent/stat/event/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/tencent/stat/StatConfig;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/event/f;->j:Ljava/lang/String;

    sget-object v0, Lcom/tencent/stat/event/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "0"

    sput-object v0, Lcom/tencent/stat/event/f;->j:Ljava/lang/String;

    :cond_4
    sget v0, Lcom/tencent/stat/event/f;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    invoke-static {p1}, Lcom/tencent/stat/common/StatCommonHelper;->hasRootAccess(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/tencent/stat/event/f;->l:I

    :cond_5
    return-void

    :cond_6
    sget-object v0, Lcom/tencent/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/stat/event/EventType;

    invoke-virtual {v0}, Lcom/tencent/stat/event/EventType;->a()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/tencent/stat/event/f;->f:I

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lcom/tencent/stat/event/EventType;
.end method

.method public abstract a(Lorg/json/JSONObject;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public b(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v1, "ky"

    iget-object v2, p0, Lcom/tencent/stat/event/f;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "et"

    invoke-virtual {p0}, Lcom/tencent/stat/event/f;->a()Lcom/tencent/stat/event/EventType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/stat/event/EventType;->a()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/stat/event/f;->e:Lcom/tencent/stat/common/DeviceInfo;

    if-eqz v1, :cond_0

    const-string v1, "ui"

    iget-object v2, p0, Lcom/tencent/stat/event/f;->e:Lcom/tencent/stat/common/DeviceInfo;

    invoke-virtual {v2}, Lcom/tencent/stat/common/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/stat/event/f;->e:Lcom/tencent/stat/common/DeviceInfo;

    invoke-virtual {v1}, Lcom/tencent/stat/common/DeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mc"

    invoke-static {p1, v2, v1}, Lcom/tencent/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/stat/event/f;->e:Lcom/tencent/stat/common/DeviceInfo;

    invoke-virtual {v1}, Lcom/tencent/stat/common/DeviceInfo;->getUserType()I

    move-result v1

    const-string v2, "ut"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/stat/event/f;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/stat/common/StatCommonHelper;->isTheFirstTimeActivate(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "ia"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "cui"

    iget-object v2, p0, Lcom/tencent/stat/event/f;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "av"

    iget-object v2, p0, Lcom/tencent/stat/event/f;->i:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "ch"

    iget-object v2, p0, Lcom/tencent/stat/event/f;->h:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/stat/event/f;->k:Z

    if-eqz v1, :cond_1

    const-string v1, "impt"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "mid"

    sget-object v2, Lcom/tencent/stat/event/f;->j:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "idx"

    iget v2, p0, Lcom/tencent/stat/event/f;->f:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "si"

    iget v2, p0, Lcom/tencent/stat/event/f;->d:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ts"

    iget-wide v2, p0, Lcom/tencent/stat/event/f;->c:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "dts"

    iget-object v2, p0, Lcom/tencent/stat/event/f;->m:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/stat/common/StatCommonHelper;->getDiffTime(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "os"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ov"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/tencent/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "md"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jb"

    sget v2, Lcom/tencent/stat/event/f;->l:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mf"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getCustomGlobalReportContent()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "cc"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/stat/event/f;->a(Lorg/json/JSONObject;)Z

    move-result v0

    :goto_1
    return v0

    :cond_3
    const-string v2, "av"

    invoke-static {p1, v2, v1}, Lcom/tencent/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appv"

    iget-object v2, p0, Lcom/tencent/stat/event/f;->i:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/event/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/stat/event/f;->c:J

    return-wide v0
.end method

.method public e()Lcom/tencent/stat/StatSpecifyReportedInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/event/f;->a:Lcom/tencent/stat/StatSpecifyReportedInfo;

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/event/f;->m:Landroid/content/Context;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/stat/event/f;->k:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/stat/event/f;->b(Lorg/json/JSONObject;)Z

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
