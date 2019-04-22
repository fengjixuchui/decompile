.class Lcom/tencent/stat/l;
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

    iput-object p1, p0, Lcom/tencent/stat/l;->d:Lcom/tencent/stat/g;

    iput-object p2, p0, Lcom/tencent/stat/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/stat/l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/stat/l;->c:Lcom/tencent/stat/StatFBDispatchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/stat/l;->d:Lcom/tencent/stat/g;

    iget-object v1, p0, Lcom/tencent/stat/l;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/stat/l;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/stat/l;->c:Lcom/tencent/stat/StatFBDispatchCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/stat/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/stat/StatFBDispatchCallback;)V

    return-void
.end method
