.class Lcom/tencent/stat/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/stat/StatServiceImpl;->a(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;Z)V

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isAutoExceptionCaught()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/stat/ba;

    move-result-object v7

    new-instance v0, Lcom/tencent/stat/event/e;

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/tencent/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/stat/StatSpecifyReportedInfo;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/stat/event/e;-><init>(Landroid/content/Context;IILjava/lang/Throwable;Ljava/lang/Thread;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/tencent/stat/ba;->a(Lcom/tencent/stat/event/f;Lcom/tencent/stat/StatDispatchCallback;ZZ)V

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->f()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "MTA has caught the following uncaught exception:"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->debug(Ljava/lang/Object;)V

    :goto_1
    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->f()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->flushDataToDB(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->g()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->f()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "Call the original uncaught exception handler."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->g()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/stat/as;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->g()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    invoke-static {}, Lcom/tencent/stat/StatConfig;->e()Lcom/tencent/stat/StatExceptionCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/stat/StatConfig;->e()Lcom/tencent/stat/StatExceptionCallBack;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/tencent/stat/StatExceptionCallBack;->onMtaException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->f()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "crash happened, but MTA AutoExceptionCaught is desable."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
