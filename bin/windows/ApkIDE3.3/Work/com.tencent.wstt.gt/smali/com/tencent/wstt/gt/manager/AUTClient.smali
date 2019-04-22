.class public Lcom/tencent/wstt/gt/manager/AUTClient;
.super Lcom/tencent/wstt/gt/manager/Client;
.source "AUTClient.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "_AUT__"

    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/manager/Client;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public initInParas([Lcom/tencent/wstt/gt/InPara;)Lcom/tencent/wstt/gt/manager/IInParaManager;
    .locals 4
    .param p1, "inParas"    # [Lcom/tencent/wstt/gt/InPara;

    .prologue
    .line 40
    new-instance v0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;-><init>(Lcom/tencent/wstt/gt/manager/Client;)V

    .line 41
    .local v0, "im":Lcom/tencent/wstt/gt/manager/IInParaManager;
    if-eqz p1, :cond_0

    .line 43
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 49
    :cond_0
    return-object v0

    .line 43
    :cond_1
    aget-object v1, p1, v2

    .line 45
    .local v1, "ip":Lcom/tencent/wstt/gt/InPara;
    invoke-interface {v0, v1}, Lcom/tencent/wstt/gt/manager/IInParaManager;->register(Lcom/tencent/wstt/gt/InPara;)V

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public initOutParas([Lcom/tencent/wstt/gt/OutPara;)Lcom/tencent/wstt/gt/manager/IOutParaManager;
    .locals 4
    .param p1, "outParas"    # [Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 54
    new-instance v0, Lcom/tencent/wstt/gt/manager/ConnectedOutParaManager;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/manager/ConnectedOutParaManager;-><init>(Lcom/tencent/wstt/gt/manager/Client;)V

    .line 55
    .local v0, "om":Lcom/tencent/wstt/gt/manager/IOutParaManager;
    if-eqz p1, :cond_0

    .line 57
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 63
    :cond_0
    return-object v0

    .line 57
    :cond_1
    aget-object v1, p1, v2

    .line 59
    .local v1, "op":Lcom/tencent/wstt/gt/OutPara;
    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->register(Lcom/tencent/wstt/gt/OutPara;)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
