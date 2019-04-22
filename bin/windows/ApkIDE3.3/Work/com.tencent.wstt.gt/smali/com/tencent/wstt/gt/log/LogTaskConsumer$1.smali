.class Lcom/tencent/wstt/gt/log/LogTaskConsumer$1;
.super Ljava/lang/Object;
.source "LogTaskConsumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/log/LogTaskConsumer;-><init>(Lcom/tencent/wstt/gt/log/AbsLogController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

.field private final synthetic val$controller:Lcom/tencent/wstt/gt/log/AbsLogController;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/log/LogTaskConsumer;Lcom/tencent/wstt/gt/log/AbsLogController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer$1;->this$0:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    iput-object p2, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer$1;->val$controller:Lcom/tencent/wstt/gt/log/AbsLogController;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "temp":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer$1;->this$0:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    # getter for: Lcom/tencent/wstt/gt/log/LogTaskConsumer;->flag:Z
    invoke-static {v3}, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->access$0(Lcom/tencent/wstt/gt/log/LogTaskConsumer;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    .end local v1    # "temp":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    :goto_1
    return-void

    .line 49
    .restart local v1    # "temp":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    :cond_1
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 50
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer$1;->this$0:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    iget-boolean v3, v3, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->allowAdd2Visable:Z

    if-eqz v3, :cond_0

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v2, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/LogEntry;>;"
    if-eqz v1, :cond_2

    .line 55
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_2
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer$1;->this$0:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    # getter for: Lcom/tencent/wstt/gt/log/LogTaskConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v3}, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->access$1(Lcom/tencent/wstt/gt/log/LogTaskConsumer;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 60
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer$1;->val$controller:Lcom/tencent/wstt/gt/log/AbsLogController;

    invoke-virtual {v3, v2}, Lcom/tencent/wstt/gt/log/AbsLogController;->addEntrys(Ljava/util/Collection;)V

    .line 62
    :cond_3
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer$1;->this$0:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    # getter for: Lcom/tencent/wstt/gt/log/LogTaskConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v3}, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->access$1(Lcom/tencent/wstt/gt/log/LogTaskConsumer;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "temp":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    check-cast v1, Lcom/tencent/wstt/gt/ui/model/LogEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "temp":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    goto :goto_0

    .line 65
    .end local v1    # "temp":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .end local v2    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/LogEntry;>;"
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
