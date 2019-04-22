.class public Lcom/tencent/wstt/gt/manager/ConnectedClientFactory;
.super Lcom/tencent/wstt/gt/manager/ClientFactory;
.source "ConnectedClientFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/wstt/gt/manager/ClientFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public creatClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 32
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/tencent/wstt/gt/manager/ConnectedClient;

    .end local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-direct {v0, p1}, Lcom/tencent/wstt/gt/manager/ConnectedClient;-><init>(Ljava/lang/String;)V

    .line 37
    .restart local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    :cond_0
    return-object v0
.end method
