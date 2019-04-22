.class final Lcom/tencent/stat/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;


# instance fields
.field final synthetic a:Lcom/tencent/stat/StatSpecifyReportedInfo;


# direct methods
.method constructor <init>(Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/an;->a:Lcom/tencent/stat/StatSpecifyReportedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    sget-boolean v0, Lcom/tencent/stat/StatConfig;->q:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tencent/stat/common/StatCommonHelper;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/stat/an;->a:Lcom/tencent/stat/StatSpecifyReportedInfo;

    invoke-static {p1, v0, v1}, Lcom/tencent/stat/StatServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    :cond_0
    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->a(Z)Z

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->l()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->m()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->l()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/stat/ao;

    invoke-direct {v1, p0}, Lcom/tencent/stat/ao;-><init>(Lcom/tencent/stat/an;)V

    invoke-static {v1}, Lcom/tencent/stat/StatServiceImpl;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getBackgroundDelayTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/tencent/stat/StatConfig;->q:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/tencent/stat/common/StatCommonHelper;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/stat/an;->a:Lcom/tencent/stat/StatSpecifyReportedInfo;

    invoke-static {p1, v2, v3}, Lcom/tencent/stat/StatServiceImpl;->inerTrackBeginPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    :cond_0
    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->a(Z)Z

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->k()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v1}, Lcom/tencent/stat/StatServiceImpl;->b(Z)Z

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->l()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->m()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->l()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->f()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "went foreground"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/stat/StatActionListener;

    :try_start_0
    invoke-interface {v0}, Lcom/tencent/stat/StatActionListener;->onBecameForeground()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->f()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "still foreground"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
