.class public Lcom/tencent/wstt/gt/plugin/internal/PluginService;
.super Landroid/app/Service;
.source "PluginService.java"


# static fields
.field private static handler:Landroid/os/Handler;

.field private static final mServiceConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/tencent/wstt/gt/plugin/BaseService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    sput-object v0, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceConnections:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static bindService(Ljava/lang/Class;Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;)Landroid/os/IBinder;
    .locals 5
    .param p1, "connection"    # Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/wstt/gt/plugin/BaseService;",
            ">;",
            "Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;",
            ")",
            "Landroid/os/IBinder;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "claxx":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/wstt/gt/plugin/BaseService;>;"
    const-class v4, Lcom/tencent/wstt/gt/plugin/BaseService;

    monitor-enter v4

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    sget-object v3, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/plugin/BaseService;

    .line 132
    .local v1, "service":Lcom/tencent/wstt/gt/plugin/BaseService;
    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/BaseService;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 134
    sget-object v3, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceConnections:Ljava/util/HashMap;

    .line 135
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 136
    .local v2, "serviceCons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;>;"
    if-nez v2, :cond_0

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "serviceCons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;>;"
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .restart local v2    # "serviceCons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;>;"
    sget-object v3, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceConnections:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v2    # "serviceCons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;>;"
    :cond_1
    monitor-exit v4

    return-object v0

    .line 129
    .end local v1    # "service":Lcom/tencent/wstt/gt/plugin/BaseService;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getRootHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static startService(Lcom/tencent/wstt/gt/plugin/BaseService;)Lcom/tencent/wstt/gt/plugin/BaseService;
    .locals 1
    .param p0, "service"    # Lcom/tencent/wstt/gt/plugin/BaseService;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;
    .locals 3
    .param p0, "service"    # Lcom/tencent/wstt/gt/plugin/BaseService;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    const-class v1, Lcom/tencent/wstt/gt/plugin/BaseService;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/BaseService;

    .line 91
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/plugin/BaseService;->onStart(Landroid/content/Intent;)V

    .line 97
    :goto_0
    monitor-exit v1

    return-object p0

    .line 93
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/BaseService;->onCreate(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/plugin/BaseService;->onStart(Landroid/content/Intent;)V

    .line 95
    sget-object v0, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized stopService(Lcom/tencent/wstt/gt/plugin/BaseService;)Z
    .locals 2
    .param p0, "service"    # Lcom/tencent/wstt/gt/plugin/BaseService;

    .prologue
    .line 124
    const-class v1, Lcom/tencent/wstt/gt/plugin/internal/PluginService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->stopService(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stopService(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/wstt/gt/plugin/BaseService;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "claxx":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/wstt/gt/plugin/BaseService;>;"
    const/4 v2, 0x1

    .line 106
    const-class v3, Lcom/tencent/wstt/gt/plugin/BaseService;

    monitor-enter v3

    .line 107
    :try_start_0
    sget-object v4, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    sget-object v4, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceConnections:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 109
    .local v0, "serviceCons":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 110
    :cond_0
    sget-object v4, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/plugin/BaseService;

    .line 111
    .local v1, "theService":Lcom/tencent/wstt/gt/plugin/BaseService;
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/BaseService;->onDestroy()V

    .line 112
    sget-object v4, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v4, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceConnections:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    monitor-exit v3

    .line 119
    .end local v0    # "serviceCons":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;>;"
    .end local v1    # "theService":Lcom/tencent/wstt/gt/plugin/BaseService;
    :goto_0
    return v2

    .line 116
    .restart local v0    # "serviceCons":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;>;"
    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_0

    .line 119
    .end local v0    # "serviceCons":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;>;"
    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unBindService(Ljava/lang/Class;Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/wstt/gt/plugin/BaseService;",
            ">;",
            "Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "claxx":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/wstt/gt/plugin/BaseService;>;"
    const-class v2, Lcom/tencent/wstt/gt/plugin/BaseService;

    monitor-enter v2

    .line 150
    :try_start_0
    sget-object v1, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 151
    .local v0, "serviceCons":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;>;"
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    monitor-exit v2

    .line 154
    return-void

    .line 149
    .end local v0    # "serviceCons":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    sget-object v0, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    sget-object v0, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->handler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 77
    const-class v2, Lcom/tencent/wstt/gt/plugin/BaseService;

    monitor-enter v2

    .line 78
    :try_start_0
    sget-object v1, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    sget-object v1, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 77
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    sget-object v1, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->mServiceConnections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 84
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 85
    return-void

    .line 78
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/BaseService;

    .line 79
    .local v0, "service":Lcom/tencent/wstt/gt/plugin/BaseService;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/BaseService;->onDestroy()V

    goto :goto_0

    .line 77
    .end local v0    # "service":Lcom/tencent/wstt/gt/plugin/BaseService;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 61
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 66
    .local v0, "action":Ljava/lang/String;
    :goto_0
    return-void

    .line 61
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 71
    const/4 v0, 0x1

    return v0
.end method
