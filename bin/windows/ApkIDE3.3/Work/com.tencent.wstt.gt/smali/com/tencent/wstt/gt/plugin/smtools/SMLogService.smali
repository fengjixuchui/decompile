.class public Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;
.super Landroid/app/IntentService;
.source "SMLogService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field dumpLogcatProcess:Ljava/lang/Process;

.field private killed:Z

.field private final lock:Ljava/lang/Object;

.field reader:Ljava/io/BufferedReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v0, "SMLogService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->dumpLogcatProcess:Ljava/lang/Process;

    .line 46
    iput-object v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->reader:Ljava/io/BufferedReader;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->lock:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method private killProcess()V
    .locals 4

    .prologue
    .line 104
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->killed:Z

    if-nez v1, :cond_3

    .line 105
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->killed:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->reader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_2

    .line 107
    sget-object v1, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->TAG:Ljava/lang/String;

    const-string v3, "CatlogService ended"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->dumpLogcatProcess:Ljava/lang/Process;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->dumpLogcatProcess:Ljava/lang/Process;

    invoke-static {v1}, Lcom/tencent/wstt/gt/log/logcat/RuntimeHelper;->destroy(Ljava/lang/Process;)V

    .line 113
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->getVersionSdkIntCompat()I

    move-result v1

    const/16 v3, 0x10

    if-ge v1, v3, :cond_1

    .line 114
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->reader:Ljava/io/BufferedReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 116
    :try_start_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :cond_1
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->killed:Z

    .line 105
    :cond_2
    monitor-exit v2

    .line 125
    :cond_3
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 64
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->killProcess()V

    .line 65
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    :try_start_0
    const-string v7, "pid"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "str":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 73
    .local v4, "pid":I
    new-instance v0, Ljava/util/ArrayList;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "logcat"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "-v"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "time"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "Choreographer:I"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "*:S"

    aput-object v9, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/logcat/RuntimeHelper;->exec(Ljava/util/List;)Ljava/lang/Process;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->dumpLogcatProcess:Ljava/lang/Process;

    .line 76
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->dumpLogcatProcess:Ljava/lang/Process;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x2000

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v7, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->reader:Ljava/io/BufferedReader;

    .line 80
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    iget-boolean v7, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->killed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->killProcess()V

    .line 101
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "pid":I
    .end local v5    # "str":Ljava/lang/String;
    :goto_1
    return-void

    .line 83
    .restart local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "pid":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v7, "uch work on its main t"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 86
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/tencent/wstt/gt/log/logcat/LogLine;->newLogLine(Ljava/lang/String;Z)Lcom/tencent/wstt/gt/log/logcat/LogLine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/log/logcat/LogLine;->getProcessId()I

    move-result v3

    .line 87
    .local v3, "pID":I
    if-ne v3, v4, :cond_0

    .line 91
    const/16 v7, 0x32

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x47

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 94
    .local v6, "value":Ljava/lang/Integer;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7, v6}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "pID":I
    .end local v4    # "pid":I
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v7, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "unexpected exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->killProcess()V

    goto :goto_1

    .line 98
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 99
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMLogService;->killProcess()V

    .line 100
    throw v7
.end method
