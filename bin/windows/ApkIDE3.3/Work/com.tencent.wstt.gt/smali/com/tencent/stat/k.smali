.class Lcom/tencent/stat/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/stat/StatFBDispatchCallback;

.field final synthetic d:Lcom/tencent/stat/g;


# direct methods
.method constructor <init>(Lcom/tencent/stat/g;IILcom/tencent/stat/StatFBDispatchCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/k;->d:Lcom/tencent/stat/g;

    iput p2, p0, Lcom/tencent/stat/k;->a:I

    iput p3, p0, Lcom/tencent/stat/k;->b:I

    iput-object p4, p0, Lcom/tencent/stat/k;->c:Lcom/tencent/stat/StatFBDispatchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/stat/k;->d:Lcom/tencent/stat/g;

    iget v1, p0, Lcom/tencent/stat/k;->a:I

    iget v2, p0, Lcom/tencent/stat/k;->b:I

    iget-object v3, p0, Lcom/tencent/stat/k;->c:Lcom/tencent/stat/StatFBDispatchCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/stat/g;->a(IILcom/tencent/stat/StatFBDispatchCallback;)V

    return-void
.end method
