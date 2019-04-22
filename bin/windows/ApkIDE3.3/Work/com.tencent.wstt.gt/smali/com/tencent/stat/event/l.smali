.class public Lcom/tencent/stat/event/l;
.super Lcom/tencent/stat/event/f;


# instance fields
.field private a:Lcom/tencent/stat/common/a;

.field private n:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/stat/event/f;-><init>(Landroid/content/Context;ILcom/tencent/stat/StatSpecifyReportedInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/event/l;->n:Lorg/json/JSONObject;

    new-instance v0, Lcom/tencent/stat/common/a;

    invoke-direct {v0, p1}, Lcom/tencent/stat/common/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/stat/event/l;->a:Lcom/tencent/stat/common/a;

    iput-object p3, p0, Lcom/tencent/stat/event/l;->n:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/stat/event/EventType;->SESSION_ENV:Lcom/tencent/stat/event/EventType;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/stat/event/f;->e:Lcom/tencent/stat/common/DeviceInfo;

    if-eqz v0, :cond_0

    const-string v0, "ut"

    iget-object v1, p0, Lcom/tencent/stat/event/f;->e:Lcom/tencent/stat/common/DeviceInfo;

    invoke-virtual {v1}, Lcom/tencent/stat/common/DeviceInfo;->getUserType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/tencent/stat/event/l;->n:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    const-string v0, "cfg"

    iget-object v1, p0, Lcom/tencent/stat/event/l;->n:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/tencent/stat/event/l;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->needCheckTime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ncts"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/tencent/stat/event/l;->a:Lcom/tencent/stat/common/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/stat/common/a;->a(Lorg/json/JSONObject;Ljava/lang/Thread;)V

    return v2
.end method
