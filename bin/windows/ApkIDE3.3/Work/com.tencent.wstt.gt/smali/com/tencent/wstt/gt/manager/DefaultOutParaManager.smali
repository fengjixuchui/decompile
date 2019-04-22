.class public Lcom/tencent/wstt/gt/manager/DefaultOutParaManager;
.super Lcom/tencent/wstt/gt/manager/IOutParaManager;
.source "DefaultOutParaManager.java"


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/manager/Client;)V
    .locals 0
    .param p1, "client"    # Lcom/tencent/wstt/gt/manager/Client;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/manager/IOutParaManager;-><init>(Lcom/tencent/wstt/gt/manager/Client;)V

    .line 35
    return-void
.end method


# virtual methods
.method public register(Lcom/tencent/wstt/gt/OutPara;)V
    .locals 2
    .param p1, "para"    # Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/manager/DefaultOutParaManager;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/DefaultOutParaManager;->client:Lcom/tencent/wstt/gt/manager/Client;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/Client;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/wstt/gt/OutPara;->setClient(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CPU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/wstt/gt/OutPara;->setDisplayProperty(I)V

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/DefaultOutParaManager;->outParaMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/wstt/gt/OutPara;->setDisplayProperty(I)V

    goto :goto_0
.end method
