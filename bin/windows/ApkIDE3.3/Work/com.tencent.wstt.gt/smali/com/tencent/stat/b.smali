.class Lcom/tencent/stat/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/stat/a;


# direct methods
.method constructor <init>(Lcom/tencent/stat/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/b;->a:Lcom/tencent/stat/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/b;->a:Lcom/tencent/stat/a;

    iget-object v0, v0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/stat/NetworkManager;->a()V

    return-void
.end method
