.class Lcom/tencent/wstt/gt/plugin/smtools/SMDataService$1;
.super Ljava/lang/Thread;
.source "SMDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService$1;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;

    .line 44
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    :goto_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService$1;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;

    # getter for: Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->pause:Z
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->access$0(Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    :goto_1
    return-void

    .line 50
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 51
    .local v1, "value":I
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService$1;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;

    # getter for: Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->count:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->access$1(Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method
