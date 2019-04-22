.class public Lcom/tencent/wstt/gt/manager/ConnectedOutParaManager;
.super Lcom/tencent/wstt/gt/manager/IOutParaManager;
.source "ConnectedOutParaManager.java"


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/manager/Client;)V
    .locals 0
    .param p1, "client"    # Lcom/tencent/wstt/gt/manager/Client;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/manager/IOutParaManager;-><init>(Lcom/tencent/wstt/gt/manager/Client;)V

    .line 32
    return-void
.end method


# virtual methods
.method public register(Lcom/tencent/wstt/gt/OutPara;)V
    .locals 2
    .param p1, "para"    # Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/manager/ConnectedOutParaManager;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ConnectedOutParaManager;->client:Lcom/tencent/wstt/gt/manager/Client;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/Client;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/wstt/gt/OutPara;->setClient(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ConnectedOutParaManager;->outParaMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/tencent/wstt/gt/manager/OpUIManager;->addItemToAC(Lcom/tencent/wstt/gt/OutPara;)V

    .line 49
    :cond_0
    return-void
.end method
