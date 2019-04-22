.class public Lcom/tencent/wstt/gt/manager/GlobalClient;
.super Lcom/tencent/wstt/gt/manager/Client;
.source "GlobalClient.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "_GLOBAL__"

    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/manager/Client;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public initInParas([Lcom/tencent/wstt/gt/InPara;)Lcom/tencent/wstt/gt/manager/IInParaManager;
    .locals 4
    .param p1, "inParas"    # [Lcom/tencent/wstt/gt/InPara;

    .prologue
    .line 41
    new-instance v0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;-><init>(Lcom/tencent/wstt/gt/manager/Client;)V

    .line 42
    .local v0, "im":Lcom/tencent/wstt/gt/manager/IInParaManager;
    if-eqz p1, :cond_0

    .line 44
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 50
    :cond_0
    return-object v0

    .line 44
    :cond_1
    aget-object v1, p1, v2

    .line 46
    .local v1, "ip":Lcom/tencent/wstt/gt/InPara;
    invoke-interface {v0, v1}, Lcom/tencent/wstt/gt/manager/IInParaManager;->register(Lcom/tencent/wstt/gt/InPara;)V

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public initOutParas([Lcom/tencent/wstt/gt/OutPara;)Lcom/tencent/wstt/gt/manager/IOutParaManager;
    .locals 4
    .param p1, "outParas"    # [Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 55
    new-instance v0, Lcom/tencent/wstt/gt/manager/ConnectedOutParaManager;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/manager/ConnectedOutParaManager;-><init>(Lcom/tencent/wstt/gt/manager/Client;)V

    .line 56
    .local v0, "om":Lcom/tencent/wstt/gt/manager/IOutParaManager;
    if-eqz p1, :cond_0

    .line 58
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 64
    :cond_0
    return-object v0

    .line 58
    :cond_1
    aget-object v1, p1, v2

    .line 60
    .local v1, "op":Lcom/tencent/wstt/gt/OutPara;
    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->register(Lcom/tencent/wstt/gt/OutPara;)V

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
