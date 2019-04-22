.class Lcom/tencent/stat/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/stat/StatFBDispatchCallback;

.field final synthetic d:Lcom/tencent/stat/g;


# direct methods
.method constructor <init>(Lcom/tencent/stat/g;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/stat/StatFBDispatchCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/j;->d:Lcom/tencent/stat/g;

    iput-object p2, p0, Lcom/tencent/stat/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/stat/j;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/stat/j;->c:Lcom/tencent/stat/StatFBDispatchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v1, ""

    :try_start_0
    iget-object v0, p0, Lcom/tencent/stat/j;->d:Lcom/tencent/stat/g;

    iget-object v2, p0, Lcom/tencent/stat/j;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/stat/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/stat/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/stat/j;->c:Lcom/tencent/stat/StatFBDispatchCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/stat/j;->c:Lcom/tencent/stat/StatFBDispatchCallback;

    invoke-interface {v1, v0}, Lcom/tencent/stat/StatFBDispatchCallback;->onFBDispatch(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lcom/tencent/stat/j;->d:Lcom/tencent/stat/g;

    const/4 v3, -0x1

    const-string v4, "IOException happen"

    invoke-static {v2, v3, v4}, Lcom/tencent/stat/g;->a(Lcom/tencent/stat/g;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/tencent/stat/j;->c:Lcom/tencent/stat/StatFBDispatchCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/stat/j;->c:Lcom/tencent/stat/StatFBDispatchCallback;

    invoke-interface {v0, v1}, Lcom/tencent/stat/StatFBDispatchCallback;->onFBDispatch(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/tencent/stat/j;->c:Lcom/tencent/stat/StatFBDispatchCallback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/stat/j;->c:Lcom/tencent/stat/StatFBDispatchCallback;

    invoke-interface {v2, v1}, Lcom/tencent/stat/StatFBDispatchCallback;->onFBDispatch(Ljava/lang/String;)V

    :cond_1
    throw v0
.end method
