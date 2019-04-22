.class final Lcom/tencent/stat/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/m;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/stat/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/NetworkManager;->getInstance(Landroid/content/Context;)Lcom/tencent/stat/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/stat/NetworkManager;->registerBroadcast()V

    iget-object v0, p0, Lcom/tencent/stat/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/api/MidService;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/stat/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/api/MidService;->getMid(Landroid/content/Context;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/stat/m;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/stat/common/StatCommonHelper;->getDiffTime(Landroid/content/Context;Z)I

    iget-object v0, p0, Lcom/tencent/stat/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/stat/ba;

    iget-object v0, p0, Lcom/tencent/stat/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/g;->b(Landroid/content/Context;)Lcom/tencent/stat/g;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/tencent/stat/as;

    invoke-direct {v0}, Lcom/tencent/stat/as;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getStatSendStrategy()Lcom/tencent/stat/StatReportStrategy;

    move-result-object v0

    sget-object v1, Lcom/tencent/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/stat/StatReportStrategy;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/stat/m;->a:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/tencent/stat/StatServiceImpl;->commitEvents(Landroid/content/Context;I)V

    :cond_1
    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->f()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "Init MTA StatService success with sdk version2.1.0"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
