.class public Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;
.super Lcom/tencent/wstt/gt/log/logcat/AbsLogcatReader;
.source "MultipleLogcatReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;
    }
.end annotation


# static fields
.field private static final DUMMY_NULL:Ljava/lang/String;


# instance fields
.field private queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readerThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->DUMMY_NULL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/util/Map;)V
    .locals 6
    .param p1, "recordingMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "lastLines":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/log/logcat/AbsLogcatReader;-><init>(Z)V

    .line 21
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->readerThreads:Ljava/util/List;

    .line 22
    new-instance v4, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v4, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 28
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 35
    return-void

    .line 28
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    .local v2, "logBuffer":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    .local v1, "lastLine":Ljava/lang/String;
    new-instance v3, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;

    invoke-direct {v3, p0, v2, v1}, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;-><init>(Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .local v3, "readerThread":Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;->start()V

    .line 33
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->readerThreads:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->readerThreads:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->DUMMY_NULL:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getProcesses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Process;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Process;>;"
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->readerThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    return-object v0

    .line 85
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;

    .line 86
    .local v1, "thread":Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;
    iget-object v3, v1, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;->reader:Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->getProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public killQuietly()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 63
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->readerThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    new-instance v1, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$1;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$1;-><init>(Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;)V

    new-array v2, v3, [Ljava/lang/Void;

    const/4 v3, 0x0

    .line 78
    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void

    .line 63
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;

    .line 64
    .local v0, "thread":Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;
    invoke-static {v0, v3}, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;->access$0(Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;Z)V

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->DUMMY_NULL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_0

    .line 47
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v1

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readyToRecord()Z
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->readerThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 53
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;

    .line 54
    .local v0, "thread":Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;
    iget-object v2, v0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;->reader:Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->readyToRecord()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    const/4 v1, 0x0

    goto :goto_0
.end method
