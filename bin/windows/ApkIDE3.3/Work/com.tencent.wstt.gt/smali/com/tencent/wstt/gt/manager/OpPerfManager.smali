.class public Lcom/tencent/wstt/gt/manager/OpPerfManager;
.super Ljava/lang/Object;
.source "OpPerfManager.java"


# static fields
.field private static final EMPTY:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

.field private static INSTANCE:Lcom/tencent/wstt/gt/manager/OpPerfManager;


# instance fields
.field private dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    sput-object v0, Lcom/tencent/wstt/gt/manager/OpPerfManager;->EMPTY:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 46
    new-instance v0, Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/OpPerfManager;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/manager/OpPerfManager;->INSTANCE:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/OpPerfManager;->dataMap:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/manager/OpPerfManager;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/tencent/wstt/gt/manager/OpPerfManager;->INSTANCE:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/OpPerfManager;->dataMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/OpPerfManager;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAll()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 4

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/OpPerfManager;->dataMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/OpPerfManager;->dataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpPerfManager;->EMPTY:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    monitor-exit p0

    return-object v2

    .line 80
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;>;"
    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/OpPerfManager;->dataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpPerfManager;->EMPTY:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 75
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;>;"
    .end local v1    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getAllEnable()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 9

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;>;"
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->getAll()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 106
    sget-object v4, Lcom/tencent/wstt/gt/manager/OpPerfManager;->EMPTY:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 96
    :cond_0
    :try_start_1
    aget-object v3, v5, v4

    .line 98
    .local v3, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v7

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getExkey()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(I)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 99
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v2

    .line 100
    .local v2, "op":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 101
    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->isMonitor()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 103
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    .end local v1    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;>;"
    .end local v2    # "op":Lcom/tencent/wstt/gt/OutPara;
    .end local v3    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/OpPerfManager;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAll()V
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/OpPerfManager;->dataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
