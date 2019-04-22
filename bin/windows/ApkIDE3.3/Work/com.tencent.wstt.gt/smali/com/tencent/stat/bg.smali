.class Lcom/tencent/stat/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/stat/StatDispatchCallback;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/tencent/stat/ba;


# direct methods
.method constructor <init>(Lcom/tencent/stat/ba;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/bg;->c:Lcom/tencent/stat/ba;

    iput-object p2, p0, Lcom/tencent/stat/bg;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/tencent/stat/bg;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchFailure()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->d()V

    iget-object v0, p0, Lcom/tencent/stat/bg;->c:Lcom/tencent/stat/ba;

    iget-object v1, p0, Lcom/tencent/stat/bg;->a:Ljava/util/List;

    iget-boolean v2, p0, Lcom/tencent/stat/bg;->b:Z

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/tencent/stat/ba;->a(Ljava/util/List;IZZ)V

    return-void
.end method

.method public onDispatchSuccess()V
    .locals 4

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->c()V

    iget-object v0, p0, Lcom/tencent/stat/bg;->c:Lcom/tencent/stat/ba;

    iget-object v1, p0, Lcom/tencent/stat/bg;->a:Ljava/util/List;

    iget-boolean v2, p0, Lcom/tencent/stat/bg;->b:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/stat/ba;->a(Ljava/util/List;ZZ)V

    return-void
.end method
