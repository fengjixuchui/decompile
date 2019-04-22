.class final Lcom/tencent/stat/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/stat/StatActionListener;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBecameBackground()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/stat/e;->a:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/tencent/stat/StatService;->commitEvents(Landroid/content/Context;I)V

    return-void
.end method

.method public onBecameForeground()V
    .locals 0

    return-void
.end method
