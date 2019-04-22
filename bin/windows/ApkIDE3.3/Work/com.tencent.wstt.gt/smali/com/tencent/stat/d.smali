.class Lcom/tencent/stat/d;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/tencent/stat/c;


# direct methods
.method constructor <init>(Lcom/tencent/stat/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/d;->a:Lcom/tencent/stat/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/stat/common/StatCommonHelper;->getLogger()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "TimerTask run"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/stat/d;->a:Lcom/tencent/stat/c;

    invoke-static {v0}, Lcom/tencent/stat/c;->a(Lcom/tencent/stat/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->f(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/stat/d;->cancel()Z

    iget-object v0, p0, Lcom/tencent/stat/d;->a:Lcom/tencent/stat/c;

    invoke-virtual {v0}, Lcom/tencent/stat/c;->a()V

    return-void
.end method
