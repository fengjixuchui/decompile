.class Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$1;
.super Landroid/os/AsyncTask;
.source "MultipleLogcatReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->killQuietly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$1;->this$0:Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;

    .line 68
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$1;->this$0:Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;

    # getter for: Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->readerThreads:Ljava/util/List;
    invoke-static {v1}, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->access$1(Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$1;->this$0:Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;

    # getter for: Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->access$0(Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->DUMMY_NULL:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;->access$2()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 76
    const/4 v1, 0x0

    return-object v1

    .line 72
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;

    .line 73
    .local v0, "thread":Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;
    iget-object v2, v0, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader$ReaderThread;->reader:Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->killQuietly()V

    goto :goto_0
.end method
