.class Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;
.super Ljava/lang/Thread;
.source "MultipleLogcatReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderThread"
.end annotation


# instance fields
.field private killed:Z

.field reader:Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;

.field final synthetic this$0:Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "logBuffer"    # Ljava/lang/String;
    .param p3, "lastLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;->this$0:Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 98
    new-instance v0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;

    iget-boolean v1, p1, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->recordingMode:Z

    invoke-direct {v0, v1, p2, p3}, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;->reader:Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;

    .line 99
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;->killed:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;->killed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;->reader:Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;->killed:Z

    if-eqz v2, :cond_1

    .line 114
    .end local v1    # "line":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 107
    .restart local v1    # "line":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;->this$0:Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;

    # getter for: Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->access$0(Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 109
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
