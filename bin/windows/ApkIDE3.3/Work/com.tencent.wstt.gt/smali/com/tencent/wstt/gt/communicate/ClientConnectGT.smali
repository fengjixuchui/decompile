.class public Lcom/tencent/wstt/gt/communicate/ClientConnectGT;
.super Ljava/lang/Object;
.source "ClientConnectGT.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIsCanConnect(Ljava/lang/String;I)I
    .locals 3
    .param p0, "cur_pkgName"    # Ljava/lang/String;
    .param p1, "versionId"    # I

    .prologue
    .line 47
    const/16 v1, 0x898

    if-eq p1, v1, :cond_0

    .line 49
    const/16 v1, 0x196

    .line 60
    :goto_0
    return v1

    .line 53
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 56
    .local v0, "prop":Ljava/util/Properties;
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Connected AUT"

    invoke-static {v1, v2, v0}, Lcom/tencent/stat/StatService;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    .line 60
    .end local v0    # "prop":Ljava/util/Properties;
    :cond_1
    const/16 v1, 0xc8

    goto :goto_0
.end method

.method public static disconnectGT(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v2, 0x1

    .line 92
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 93
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/Client;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    :cond_0
    :goto_0
    return v2

    .line 98
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initConnectGT(Ljava/lang/String;II)V
    .locals 5
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "intKey"    # I
    .param p2, "pid"    # I

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getGTRunStatus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 73
    .local v2, "gtContext":Landroid/content/Context;
    invoke-static {v2}, Lcom/tencent/wstt/gt/communicate/ClientConnectGT;->openGTService(Landroid/content/Context;)V

    .line 76
    .end local v2    # "gtContext":Landroid/content/Context;
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v1

    .line 77
    .local v1, "client":Lcom/tencent/wstt/gt/manager/Client;
    if-nez v1, :cond_1

    .line 79
    new-instance v0, Lcom/tencent/wstt/gt/manager/ConnectedClientFactory;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/ConnectedClientFactory;-><init>()V

    .line 85
    .local v0, "cf":Lcom/tencent/wstt/gt/manager/ClientFactory;
    invoke-virtual {v0, p0, p1, v4, v4}, Lcom/tencent/wstt/gt/manager/ClientFactory;->orderClient(Ljava/lang/String;I[Lcom/tencent/wstt/gt/OutPara;[Lcom/tencent/wstt/gt/InPara;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v1

    .line 87
    .end local v0    # "cf":Lcom/tencent/wstt/gt/manager/ClientFactory;
    :cond_1
    return-void
.end method

.method private static openGTService(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/tencent/wstt/gt/activity/GTEntrance;->GTopen(Landroid/content/Context;)V

    .line 108
    return-void
.end method
