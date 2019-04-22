.class public abstract Lcom/tencent/wstt/gt/plugin/BaseService;
.super Ljava/lang/Object;
.source "BaseService.java"


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/BaseService;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/BaseService;->onBind()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/BaseService;->mBinder:Landroid/os/IBinder;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/BaseService;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onBind()Landroid/os/IBinder;
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    return-void
.end method

.method protected final stopSelf()V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0}, Lcom/tencent/wstt/gt/plugin/internal/PluginService;->stopService(Lcom/tencent/wstt/gt/plugin/BaseService;)Z

    .line 60
    return-void
.end method
