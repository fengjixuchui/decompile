.class public Lcom/tencent/wstt/gt/manager/SingleInstanceClientFactory;
.super Lcom/tencent/wstt/gt/manager/ClientFactory;
.source "SingleInstanceClientFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/tencent/wstt/gt/manager/ClientFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public creatClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    if-nez p1, :cond_0

    .line 36
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/manager/ClientManager;->getEmptyClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    .line 39
    :cond_0
    const-string v1, "_AUT__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    new-instance v0, Lcom/tencent/wstt/gt/manager/AUTClient;

    .end local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/AUTClient;-><init>()V

    .line 42
    .restart local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wstt/gt/manager/ClientManager;->setAUTClient(Lcom/tencent/wstt/gt/manager/Client;)V

    .line 55
    :cond_1
    :goto_1
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/tencent/wstt/gt/manager/ClientManager;->addClient(Ljava/lang/String;ILcom/tencent/wstt/gt/manager/Client;)V

    move-object v1, v0

    .line 56
    goto :goto_0

    .line 45
    :cond_2
    const-string v1, "_DEFAULT__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    new-instance v0, Lcom/tencent/wstt/gt/manager/DefaultClient;

    .end local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/DefaultClient;-><init>()V

    .line 48
    .restart local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wstt/gt/manager/ClientManager;->setDefaultClient(Lcom/tencent/wstt/gt/manager/Client;)V

    goto :goto_1

    .line 50
    :cond_3
    const-string v1, "_GLOBAL__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    new-instance v0, Lcom/tencent/wstt/gt/manager/GlobalClient;

    .end local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/GlobalClient;-><init>()V

    .line 53
    .restart local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wstt/gt/manager/ClientManager;->setGlobalClient(Lcom/tencent/wstt/gt/manager/Client;)V

    goto :goto_1
.end method
