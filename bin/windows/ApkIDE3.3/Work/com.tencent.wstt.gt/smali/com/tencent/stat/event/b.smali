.class public Lcom/tencent/stat/event/b;
.super Lcom/tencent/stat/event/k;


# static fields
.field private static p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/stat/event/b;->p:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/Long;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/stat/event/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    sget v0, Lcom/tencent/stat/event/b;->p:I

    if-nez v0, :cond_0

    const-string v0, "back_ev_index"

    invoke-static {p1, v0, v7}, Lcom/tencent/stat/common/StatPreferences;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/stat/event/b;->p:I

    sget v0, Lcom/tencent/stat/event/b;->p:I

    const v1, 0x7ffe795f

    if-le v0, v1, :cond_0

    sput v7, Lcom/tencent/stat/event/b;->p:I

    :cond_0
    sget v0, Lcom/tencent/stat/event/b;->p:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/stat/event/b;->p:I

    const-string v0, "back_ev_index"

    sget v1, Lcom/tencent/stat/event/b;->p:I

    invoke-static {p1, v0, v1}, Lcom/tencent/stat/common/StatPreferences;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/stat/event/EventType;->BACKGROUND:Lcom/tencent/stat/event/EventType;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "bc"

    sget v1, Lcom/tencent/stat/event/b;->p:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-super {p0, p1}, Lcom/tencent/stat/event/k;->a(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method
