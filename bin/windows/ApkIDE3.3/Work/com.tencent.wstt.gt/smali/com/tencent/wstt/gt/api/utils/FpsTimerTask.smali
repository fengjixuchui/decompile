.class public Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;
.super Ljava/util/TimerTask;
.source "FpsTimerTask.java"


# static fields
.field private static ir:Ljava/io/BufferedReader;

.field private static lastFrameNum:I

.field private static os:Ljava/io/DataOutputStream;

.field private static process:Ljava/lang/Process;

.field private static startTime:J

.field private static testCount:J


# instance fields
.field private defaultClient:Lcom/tencent/wstt/gt/manager/Client;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 40
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->startTime:J

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->lastFrameNum:I

    .line 42
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->testCount:J

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 49
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/ClientManager;->getDefaultClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->defaultClient:Lcom/tencent/wstt/gt/manager/Client;

    .line 39
    return-void
.end method

.method public static declared-synchronized getFrameNum()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    const-class v7, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;

    monitor-enter v7

    :try_start_0
    const-string v1, ""

    .line 98
    .local v1, "frameNumString":Ljava/lang/String;
    const-string v2, "service call SurfaceFlinger 1013"

    .line 100
    .local v2, "getFps40":Ljava/lang/String;
    sget-object v6, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->process:Ljava/lang/Process;

    if-nez v6, :cond_0

    .line 102
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v8, "su"

    invoke-virtual {v6, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    sput-object v6, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->process:Ljava/lang/Process;

    .line 103
    new-instance v6, Ljava/io/DataOutputStream;

    sget-object v8, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->process:Ljava/lang/Process;

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v6, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->os:Ljava/io/DataOutputStream;

    .line 104
    new-instance v6, Ljava/io/BufferedReader;

    .line 105
    new-instance v8, Ljava/io/InputStreamReader;

    sget-object v9, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->process:Ljava/lang/Process;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 104
    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sput-object v6, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->ir:Ljava/io/BufferedReader;

    .line 108
    :cond_0
    sget-object v6, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->os:Ljava/io/DataOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 109
    sget-object v6, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 111
    const-string v5, ""

    .line 112
    .local v5, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 113
    .local v3, "index1":I
    const/4 v4, 0x0

    .line 114
    .local v4, "index2":I
    :cond_1
    sget-object v6, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->ir:Ljava/io/BufferedReader;

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 125
    :goto_0
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 126
    const/16 v6, 0x10

    invoke-static {v1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 130
    .local v0, "frameNum":I
    :goto_1
    monitor-exit v7

    return v0

    .line 115
    .end local v0    # "frameNum":I
    :cond_2
    :try_start_1
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 116
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 117
    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 119
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 120
    goto :goto_0

    .line 128
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "frameNum":I
    goto :goto_1

    .line 97
    .end local v0    # "frameNum":I
    .end local v2    # "getFps40":Ljava/lang/String;
    .end local v3    # "index1":I
    .end local v4    # "index2":I
    .end local v5    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static declared-synchronized stopCurrentTask()V
    .locals 3

    .prologue
    .line 136
    const-class v1, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->os:Ljava/io/DataOutputStream;

    const-string v2, "exit\n"

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 138
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 139
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->ir:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    :try_start_1
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->process:Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    monitor-exit v1

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 60
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->isHasSu()Z

    move-result v7

    if-nez v7, :cond_0

    .line 94
    :goto_0
    return-void

    .line 65
    :cond_0
    const-wide/16 v4, 0x0

    .line 66
    .local v4, "end":J
    const/4 v6, 0x0

    .line 67
    .local v6, "realCostTime":F
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 68
    sget-wide v8, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->testCount:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 69
    sget-wide v8, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->startTime:J

    sub-long v8, v4, v8

    long-to-float v7, v8

    const v8, 0x49742400    # 1000000.0f

    div-float v6, v7, v8

    .line 72
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sput-wide v8, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->startTime:J

    .line 73
    sget-wide v8, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->testCount:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 75
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->getFrameNum()I

    move-result v7

    sput v7, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->lastFrameNum:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 82
    .local v1, "currentFrameNum":I
    :try_start_1
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->getFrameNum()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 86
    :goto_2
    sget v7, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->lastFrameNum:I

    sub-int v0, v1, v7

    .line 87
    .local v0, "FPS":I
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    .line 88
    mul-int/lit16 v7, v0, 0x3e8

    int-to-float v7, v7

    div-float/2addr v7, v6

    float-to-int v3, v7

    .line 89
    .local v3, "fpsResult":I
    iget-object v7, p0, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->defaultClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v8, "FPS"

    invoke-virtual {v7, v8, v3}, Lcom/tencent/wstt/gt/manager/Client;->setOutPara(Ljava/lang/String;I)V

    .line 91
    .end local v3    # "fpsResult":I
    :cond_3
    sput v1, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->lastFrameNum:I

    .line 93
    sget-wide v8, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->testCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    sput-wide v8, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;->testCount:J

    goto :goto_0

    .line 76
    .end local v0    # "FPS":I
    .end local v1    # "currentFrameNum":I
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 83
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "currentFrameNum":I
    :catch_1
    move-exception v2

    .line 84
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
