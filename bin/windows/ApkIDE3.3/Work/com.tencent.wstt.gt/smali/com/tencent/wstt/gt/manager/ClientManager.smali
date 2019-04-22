.class public Lcom/tencent/wstt/gt/manager/ClientManager;
.super Ljava/lang/Object;
.source "ClientManager.java"


# static fields
.field public static final AUT_CLIENT:Ljava/lang/String; = "_AUT__"

.field public static final DEFAULT_CLIENT:Ljava/lang/String; = "_DEFAULT__"

.field public static final EMPTY_CLIENT:Ljava/lang/String; = "_EMPTY__"

.field public static final GLOBAL_CLIENT:Ljava/lang/String; = "_GLOBAL__"

.field public static INSTANCE:Lcom/tencent/wstt/gt/manager/ClientManager;


# instance fields
.field autClient:Lcom/tencent/wstt/gt/manager/Client;

.field private clientMapI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/wstt/gt/manager/Client;",
            ">;"
        }
    .end annotation
.end field

.field private clientMapS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wstt/gt/manager/Client;",
            ">;"
        }
    .end annotation
.end field

.field defaultClient:Lcom/tencent/wstt/gt/manager/Client;

.field emptyClient:Lcom/tencent/wstt/gt/manager/Client;

.field globalClient:Lcom/tencent/wstt/gt/manager/Client;

.field private keyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/tencent/wstt/gt/manager/ClientManager;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/ClientManager;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/manager/ClientManager;->INSTANCE:Lcom/tencent/wstt/gt/manager/ClientManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->clientMapS:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->clientMapI:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->keyMap:Ljava/util/Map;

    .line 56
    invoke-static {}, Lcom/tencent/wstt/gt/manager/EmptyClient;->getInstance()Lcom/tencent/wstt/gt/manager/EmptyClient;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->emptyClient:Lcom/tencent/wstt/gt/manager/Client;

    .line 57
    return-void
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/wstt/gt/manager/ClientManager;->INSTANCE:Lcom/tencent/wstt/gt/manager/ClientManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addClient(Ljava/lang/String;ILcom/tencent/wstt/gt/manager/Client;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "intKey"    # I
    .param p3, "client"    # Lcom/tencent/wstt/gt/manager/Client;

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->clientMapS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->clientMapS:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->clientMapI:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->keyMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAUTClient()Lcom/tencent/wstt/gt/manager/Client;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->autClient:Lcom/tencent/wstt/gt/manager/Client;

    return-object v0
.end method

.method public declared-synchronized getAllClient()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/tencent/wstt/gt/manager/Client;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->clientMapS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getClient(I)Lcom/tencent/wstt/gt/manager/Client;
    .locals 2
    .param p1, "intKey"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->clientMapI:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/manager/Client;

    return-object v0
.end method

.method public getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->clientMapS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/manager/Client;

    return-object v0
.end method

.method public getClientKey(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->keyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDefaultClient()Lcom/tencent/wstt/gt/manager/Client;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->defaultClient:Lcom/tencent/wstt/gt/manager/Client;

    return-object v0
.end method

.method public getEmptyClient()Lcom/tencent/wstt/gt/manager/Client;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->emptyClient:Lcom/tencent/wstt/gt/manager/Client;

    return-object v0
.end method

.method public getGlobalClient()Lcom/tencent/wstt/gt/manager/Client;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    return-object v0
.end method

.method public declared-synchronized removeClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->clientMapS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->keyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 133
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->clientMapI:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->keyMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/manager/Client;

    .line 132
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/Client;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAUTClient(Lcom/tencent/wstt/gt/manager/Client;)V
    .locals 0
    .param p1, "client"    # Lcom/tencent/wstt/gt/manager/Client;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->autClient:Lcom/tencent/wstt/gt/manager/Client;

    .line 87
    return-void
.end method

.method public setDefaultClient(Lcom/tencent/wstt/gt/manager/Client;)V
    .locals 0
    .param p1, "client"    # Lcom/tencent/wstt/gt/manager/Client;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->defaultClient:Lcom/tencent/wstt/gt/manager/Client;

    .line 97
    return-void
.end method

.method public setGlobalClient(Lcom/tencent/wstt/gt/manager/Client;)V
    .locals 0
    .param p1, "client"    # Lcom/tencent/wstt/gt/manager/Client;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tencent/wstt/gt/manager/ClientManager;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    .line 107
    return-void
.end method
