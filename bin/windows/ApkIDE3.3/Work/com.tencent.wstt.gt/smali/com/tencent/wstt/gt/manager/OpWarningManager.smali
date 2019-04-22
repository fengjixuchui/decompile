.class public Lcom/tencent/wstt/gt/manager/OpWarningManager;
.super Ljava/lang/Object;
.source "OpWarningManager.java"


# static fields
.field private static INSTANCE:Lcom/tencent/wstt/gt/manager/OpWarningManager;


# instance fields
.field private consumer:Ljava/lang/Runnable;

.field private queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/WarningEntry;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z

.field private warningThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/tencent/wstt/gt/manager/OpWarningManager;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/OpWarningManager;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->INSTANCE:Lcom/tencent/wstt/gt/manager/OpWarningManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/tencent/wstt/gt/manager/OpWarningManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/manager/OpWarningManager$1;-><init>(Lcom/tencent/wstt/gt/manager/OpWarningManager;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->consumer:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 47
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/manager/OpWarningManager;->start()V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/manager/OpWarningManager;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->started:Z

    return v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/manager/OpWarningManager;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/manager/OpWarningManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->INSTANCE:Lcom/tencent/wstt/gt/manager/OpWarningManager;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/tencent/wstt/gt/ui/model/WarningEntry;)V
    .locals 1
    .param p1, "e"    # Lcom/tencent/wstt/gt/ui/model/WarningEntry;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->started:Z

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->started:Z

    .line 62
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->consumer:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->warningThread:Ljava/lang/Thread;

    .line 63
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->warningThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->started:Z

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->started:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager;->warningThread:Ljava/lang/Thread;

    .line 71
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/WarningEntry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/wstt/gt/ui/model/WarningEntry;-><init>(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;II)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/manager/OpWarningManager;->add(Lcom/tencent/wstt/gt/ui/model/WarningEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
