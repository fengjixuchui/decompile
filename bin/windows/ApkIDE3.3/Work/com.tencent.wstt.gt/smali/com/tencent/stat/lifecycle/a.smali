.class final Lcom/tencent/stat/lifecycle/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;


# direct methods
.method constructor <init>(Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/lifecycle/a;->a:Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/lifecycle/a;->a:Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;

    invoke-interface {v0, p1, p2}, Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/lifecycle/a;->a:Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;

    invoke-interface {v0, p1}, Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/tencent/stat/lifecycle/MtaActivityLifeCycle;->a()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityPaused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/stat/lifecycle/a;->a:Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;

    invoke-interface {v0, p1}, Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/tencent/stat/lifecycle/MtaActivityLifeCycle;->a()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/stat/lifecycle/a;->a:Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;

    invoke-interface {v0, p1}, Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/lifecycle/a;->a:Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;

    invoke-interface {v0, p1, p2}, Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/lifecycle/a;->a:Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;

    invoke-interface {v0, p1}, Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;->onActivityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/lifecycle/a;->a:Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;

    invoke-interface {v0, p1}, Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method
