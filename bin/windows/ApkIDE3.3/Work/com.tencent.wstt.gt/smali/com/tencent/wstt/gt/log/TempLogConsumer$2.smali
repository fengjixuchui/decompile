.class Lcom/tencent/wstt/gt/log/TempLogConsumer$2;
.super Ljava/lang/Object;
.source "TempLogConsumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/log/TempLogConsumer;-><init>(Lcom/tencent/wstt/gt/log/LogController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/log/TempLogConsumer;

.field private final synthetic val$controller:Lcom/tencent/wstt/gt/log/LogController;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/log/TempLogConsumer;Lcom/tencent/wstt/gt/log/LogController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer$2;->this$0:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    iput-object p2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer$2;->val$controller:Lcom/tencent/wstt/gt/log/LogController;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 77
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer$2;->this$0:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    # getter for: Lcom/tencent/wstt/gt/log/TempLogConsumer;->flag:Z
    invoke-static {v2}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->access$0(Lcom/tencent/wstt/gt/log/TempLogConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    :goto_1
    return-void

    .line 79
    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 80
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer$2;->this$0:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    # getter for: Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuffLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->access$2(Lcom/tencent/wstt/gt/log/TempLogConsumer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer$2;->this$0:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    # getter for: Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->access$3(Lcom/tencent/wstt/gt/log/TempLogConsumer;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 84
    new-instance v1, Lcom/tencent/wstt/gt/ui/model/ValueBuff;

    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer$2;->this$0:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    # getter for: Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->access$3(Lcom/tencent/wstt/gt/log/TempLogConsumer;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer$2;->val$controller:Lcom/tencent/wstt/gt/log/LogController;

    invoke-direct {v1, v2, v4}, Lcom/tencent/wstt/gt/ui/model/ValueBuff;-><init>(Ljava/lang/StringBuffer;Lcom/tencent/wstt/gt/log/LogController;)V

    .line 85
    .local v1, "lb":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer$2;->this$0:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v2, v4}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->access$4(Lcom/tencent/wstt/gt/log/TempLogConsumer;Ljava/lang/StringBuffer;)V

    .line 86
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer$2;->this$0:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    # getter for: Lcom/tencent/wstt/gt/log/TempLogConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v2}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->access$1(Lcom/tencent/wstt/gt/log/TempLogConsumer;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 80
    .end local v1    # "lb":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
