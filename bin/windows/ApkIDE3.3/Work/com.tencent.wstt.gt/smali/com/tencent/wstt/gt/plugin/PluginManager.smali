.class public Lcom/tencent/wstt/gt/plugin/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static EMPTY:[Lcom/tencent/wstt/gt/plugin/PluginItem;

.field private static INSTANCE:Lcom/tencent/wstt/gt/plugin/PluginManager;


# instance fields
.field private mPluginControler:Lcom/tencent/wstt/gt/plugin/PluginControler;

.field private piMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wstt/gt/plugin/PluginItem;",
            ">;"
        }
    .end annotation
.end field

.field private pluginList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/tencent/wstt/gt/plugin/PluginItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tencent/wstt/gt/plugin/PluginItem;

    sput-object v0, Lcom/tencent/wstt/gt/plugin/PluginManager;->EMPTY:[Lcom/tencent/wstt/gt/plugin/PluginItem;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->pluginList:Ljava/util/LinkedHashSet;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->piMap:Ljava/util/Map;

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/tencent/wstt/gt/plugin/PluginManager;->INSTANCE:Lcom/tencent/wstt/gt/plugin/PluginManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/tencent/wstt/gt/plugin/PluginManager;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/plugin/PluginManager;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/PluginManager;->INSTANCE:Lcom/tencent/wstt/gt/plugin/PluginManager;

    .line 46
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/plugin/PluginManager;->INSTANCE:Lcom/tencent/wstt/gt/plugin/PluginManager;

    return-object v0
.end method


# virtual methods
.method public addPlugin(Lcom/tencent/wstt/gt/plugin/PluginItem;)V
    .locals 3
    .param p1, "item"    # Lcom/tencent/wstt/gt/plugin/PluginItem;

    .prologue
    .line 62
    sget-object v1, Lcom/tencent/wstt/gt/plugin/PluginManager;->INSTANCE:Lcom/tencent/wstt/gt/plugin/PluginManager;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->pluginList:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->piMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/tencent/wstt/gt/plugin/PluginItem;->name:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit v1

    .line 66
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sReceiver"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->piMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/PluginItem;

    .line 117
    .local v0, "item":Lcom/tencent/wstt/gt/plugin/PluginItem;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p2}, Lcom/tencent/wstt/gt/plugin/PluginItem;->addTask(Landroid/os/Bundle;)V

    .line 122
    :cond_0
    return-void
.end method

.method public dispatchCommandSync(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sReceiver"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->piMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/PluginItem;

    .line 127
    .local v0, "item":Lcom/tencent/wstt/gt/plugin/PluginItem;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p2}, Lcom/tencent/wstt/gt/plugin/PluginItem;->doTask(Landroid/os/Bundle;)V

    .line 132
    :cond_0
    return-void
.end method

.method public getPlugin(Ljava/lang/String;)Lcom/tencent/wstt/gt/plugin/PluginItem;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->piMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/PluginItem;

    return-object v0
.end method

.method public getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->mPluginControler:Lcom/tencent/wstt/gt/plugin/PluginControler;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/tencent/wstt/gt/plugin/PluginControler;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/plugin/PluginControler;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->mPluginControler:Lcom/tencent/wstt/gt/plugin/PluginControler;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->mPluginControler:Lcom/tencent/wstt/gt/plugin/PluginControler;

    return-object v0
.end method

.method public getPlugins()[Lcom/tencent/wstt/gt/plugin/PluginItem;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->pluginList:Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/tencent/wstt/gt/plugin/PluginManager;->EMPTY:[Lcom/tencent/wstt/gt/plugin/PluginItem;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wstt/gt/plugin/PluginItem;

    return-object v0
.end method

.method public onInitConnectGT()V
    .locals 5

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "copyPluginList":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/tencent/wstt/gt/plugin/PluginItem;>;"
    sget-object v4, Lcom/tencent/wstt/gt/plugin/PluginManager;->INSTANCE:Lcom/tencent/wstt/gt/plugin/PluginManager;

    monitor-enter v4

    .line 88
    :try_start_0
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->pluginList:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/LinkedHashSet;

    move-object v1, v0

    .line 87
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    return-void

    .line 87
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 90
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/plugin/PluginItem;

    .line 91
    .local v2, "item":Lcom/tencent/wstt/gt/plugin/PluginItem;
    invoke-virtual {v2}, Lcom/tencent/wstt/gt/plugin/PluginItem;->onInitConnectGT()V

    goto :goto_0
.end method

.method public register(Lcom/tencent/wstt/gt/plugin/PluginItem;)V
    .locals 2
    .param p1, "item"    # Lcom/tencent/wstt/gt/plugin/PluginItem;

    .prologue
    .line 98
    iget-object v0, p1, Lcom/tencent/wstt/gt/plugin/PluginItem;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/wstt/gt/plugin/PluginItem;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->pluginList:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->piMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/tencent/wstt/gt/plugin/PluginItem;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    return-void
.end method

.method public removePlugin(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v2, Lcom/tencent/wstt/gt/plugin/PluginManager;->INSTANCE:Lcom/tencent/wstt/gt/plugin/PluginManager;

    monitor-enter v2

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->piMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/PluginItem;

    .line 72
    .local v0, "item":Lcom/tencent/wstt/gt/plugin/PluginItem;
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/PluginManager;->pluginList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    monitor-exit v2

    .line 77
    return-void

    .line 70
    .end local v0    # "item":Lcom/tencent/wstt/gt/plugin/PluginItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
