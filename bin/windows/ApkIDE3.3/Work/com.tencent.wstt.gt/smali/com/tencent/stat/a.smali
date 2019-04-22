.class Lcom/tencent/stat/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/tencent/stat/NetworkManager;


# direct methods
.method constructor <init>(Lcom/tencent/stat/NetworkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/NetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/NetworkManager;

    invoke-static {v0}, Lcom/tencent/stat/NetworkManager;->a(Lcom/tencent/stat/NetworkManager;)Lcom/tencent/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/NetworkManager;

    invoke-static {v0}, Lcom/tencent/stat/NetworkManager;->a(Lcom/tencent/stat/NetworkManager;)Lcom/tencent/stat/common/e;

    move-result-object v0

    new-instance v1, Lcom/tencent/stat/b;

    invoke-direct {v1, p0}, Lcom/tencent/stat/b;-><init>(Lcom/tencent/stat/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
