.class public Lcom/tencent/wstt/gt/plugin/PluginControler;
.super Ljava/lang/Object;
.source "PluginControler.java"


# instance fields
.field protected mServiceConn:Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;

    const-class v1, Lcom/tencent/wstt/gt/plugin/PluginControler;

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginControler;->mServiceConn:Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;

    .line 32
    return-void
.end method


# virtual methods
.method public final bindService(Ljava/lang/Class;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/wstt/gt/plugin/BaseService;",
            ">;)",
            "Landroid/os/IBinder;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "claxx":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/wstt/gt/plugin/BaseService;>;"
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginControler;->mServiceConn:Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;

    invoke-static {p1, v0}, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->bindService(Ljava/lang/Class;Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final startService(Lcom/tencent/wstt/gt/plugin/BaseService;)Lcom/tencent/wstt/gt/plugin/BaseService;
    .locals 1
    .param p1, "service"    # Lcom/tencent/wstt/gt/plugin/BaseService;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;)Lcom/tencent/wstt/gt/plugin/BaseService;

    move-result-object v0

    return-object v0
.end method

.method public final startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;
    .locals 1
    .param p1, "service"    # Lcom/tencent/wstt/gt/plugin/BaseService;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-static {p1, p2}, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;

    move-result-object v0

    return-object v0
.end method

.method public final stopService(Lcom/tencent/wstt/gt/plugin/BaseService;)V
    .locals 1
    .param p1, "service"    # Lcom/tencent/wstt/gt/plugin/BaseService;

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->stopService(Ljava/lang/Class;)Z

    .line 60
    return-void
.end method

.method public final unBindService(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/wstt/gt/plugin/BaseService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "claxx":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/wstt/gt/plugin/BaseService;>;"
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginControler;->mServiceConn:Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;

    invoke-static {p1, v0}, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->unBindService(Ljava/lang/Class;Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginControler;->mServiceConn:Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;

    .line 69
    return-void
.end method
