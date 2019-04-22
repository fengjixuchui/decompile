.class Lcom/tencent/stat/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/stat/f;

.field final synthetic b:Lcom/tencent/stat/ba;


# direct methods
.method constructor <init>(Lcom/tencent/stat/ba;Lcom/tencent/stat/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/bf;->b:Lcom/tencent/stat/ba;

    iput-object p2, p0, Lcom/tencent/stat/bf;->a:Lcom/tencent/stat/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/stat/bf;->b:Lcom/tencent/stat/ba;

    iget-object v1, p0, Lcom/tencent/stat/bf;->a:Lcom/tencent/stat/f;

    invoke-static {v0, v1}, Lcom/tencent/stat/ba;->a(Lcom/tencent/stat/ba;Lcom/tencent/stat/f;)V

    return-void
.end method
