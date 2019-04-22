.class Lcom/tencent/stat/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/stat/StatDispatchCallback;


# instance fields
.field final synthetic a:Lcom/tencent/stat/av;


# direct methods
.method constructor <init>(Lcom/tencent/stat/av;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/ax;->a:Lcom/tencent/stat/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchFailure()V
    .locals 0

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->d()V

    return-void
.end method

.method public onDispatchSuccess()V
    .locals 0

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->c()V

    return-void
.end method
