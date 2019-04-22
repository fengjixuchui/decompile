.class public abstract Lcom/tencent/wstt/gt/manager/ClientFactory;
.super Ljava/lang/Object;
.source "ClientFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract creatClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;
.end method

.method public orderClient(Ljava/lang/String;I[Lcom/tencent/wstt/gt/OutPara;[Lcom/tencent/wstt/gt/InPara;)Lcom/tencent/wstt/gt/manager/Client;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "intKey"    # I
    .param p3, "outParas"    # [Lcom/tencent/wstt/gt/OutPara;
    .param p4, "inParas"    # [Lcom/tencent/wstt/gt/InPara;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/ClientFactory;->creatClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 43
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p4}, Lcom/tencent/wstt/gt/manager/Client;->initInParas([Lcom/tencent/wstt/gt/InPara;)Lcom/tencent/wstt/gt/manager/IInParaManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/manager/Client;->setInParaManager(Lcom/tencent/wstt/gt/manager/IInParaManager;)V

    .line 44
    invoke-virtual {v0, p3}, Lcom/tencent/wstt/gt/manager/Client;->initOutParas([Lcom/tencent/wstt/gt/OutPara;)Lcom/tencent/wstt/gt/manager/IOutParaManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/manager/Client;->setOutParaManager(Lcom/tencent/wstt/gt/manager/IOutParaManager;)V

    .line 45
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/tencent/wstt/gt/manager/ClientManager;->addClient(Ljava/lang/String;ILcom/tencent/wstt/gt/manager/Client;)V

    .line 46
    return-object v0
.end method
