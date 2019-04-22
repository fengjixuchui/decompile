.class public Lcom/tencent/wstt/gt/log/LogTaskConsumer;
.super Ljava/lang/Object;
.source "LogTaskConsumer.java"


# instance fields
.field protected allowAdd2Visable:Z

.field private flag:Z

.field private queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/log/AbsLogController;)V
    .locals 3
    .param p1, "controller"    # Lcom/tencent/wstt/gt/log/AbsLogController;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->allowAdd2Visable:Z

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 40
    invoke-virtual {p1, p0}, Lcom/tencent/wstt/gt/log/AbsLogController;->setLogTaskConsumer(Lcom/tencent/wstt/gt/log/LogTaskConsumer;)V

    .line 41
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/wstt/gt/log/LogTaskConsumer$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wstt/gt/log/LogTaskConsumer$1;-><init>(Lcom/tencent/wstt/gt/log/LogTaskConsumer;Lcom/tencent/wstt/gt/log/AbsLogController;)V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 41
    iput-object v0, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->thread:Ljava/lang/Thread;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/log/LogTaskConsumer;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->flag:Z

    return v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/log/LogTaskConsumer;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method


# virtual methods
.method public putLog(Lcom/tencent/wstt/gt/ui/model/LogEntry;)V
    .locals 1
    .param p1, "log"    # Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public setAllowAdd2Visable(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->allowAdd2Visable:Z

    .line 87
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->flag:Z

    .line 75
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->flag:Z

    .line 82
    return-void
.end method
