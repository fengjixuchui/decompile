.class Lcom/tencent/stat/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/stat/ba;


# direct methods
.method constructor <init>(Lcom/tencent/stat/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/bd;->a:Lcom/tencent/stat/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/bd;->a:Lcom/tencent/stat/ba;

    invoke-static {v0}, Lcom/tencent/stat/ba;->a(Lcom/tencent/stat/ba;)V

    return-void
.end method
