.class Lcom/tencent/wstt/gt/log/TempLogConsumer$1;
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


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/log/TempLogConsumer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer$1;->this$0:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 58
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer$1;->this$0:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    # getter for: Lcom/tencent/wstt/gt/log/TempLogConsumer;->flag:Z
    invoke-static {v2}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->access$0(Lcom/tencent/wstt/gt/log/TempLogConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    :goto_1
    return-void

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer$1;->this$0:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    # getter for: Lcom/tencent/wstt/gt/log/TempLogConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v2}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->access$1(Lcom/tencent/wstt/gt/log/TempLogConsumer;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/ui/model/LogBuff;

    .line 60
    .local v1, "lb":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/LogBuff;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v1    # "lb":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
