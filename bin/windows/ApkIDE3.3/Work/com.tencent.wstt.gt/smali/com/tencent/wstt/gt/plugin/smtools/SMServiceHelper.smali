.class public Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;
.super Ljava/lang/Object;
.source "SMServiceHelper.java"


# static fields
.field private static INSTANCE:Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;


# instance fields
.field dataQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;",
            ">;"
        }
    .end annotation
.end field

.field start:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->start:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->listeners:Ljava/util/List;

    .line 64
    return-void
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->INSTANCE:Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->INSTANCE:Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    .line 70
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->INSTANCE:Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isStarted()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->start:Z

    return v0
.end method

.method public declared-synchronized removeListener(Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setStarted(Z)V
    .locals 0
    .param p1, "isStarted"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->start:Z

    .line 59
    return-void
.end method

.method declared-synchronized startBackgroundService(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # Ljava/lang/Integer;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->isStarted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->setStarted(Z)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "pid"

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v3, "pkgName"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v1, "intent2":Landroid/content/Intent;
    const-string v3, "pid"

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v3, "pkgName"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 102
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 107
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intent2":Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent2":Landroid/content/Intent;
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;

    .line 104
    .local v2, "listener":Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;
    invoke-interface {v2}, Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;->onSMStart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intent2":Landroid/content/Intent;
    .end local v2    # "listener":Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized stopBackgroundServiceIfRunning(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->setStarted(Z)V

    .line 80
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;

    .line 82
    .local v0, "listener":Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;
    invoke-interface {v0}, Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;->onSMStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "listener":Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
