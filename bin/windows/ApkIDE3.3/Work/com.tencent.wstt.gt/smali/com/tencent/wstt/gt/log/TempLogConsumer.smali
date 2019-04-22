.class public Lcom/tencent/wstt/gt/log/TempLogConsumer;
.super Ljava/lang/Object;
.source "TempLogConsumer.java"


# static fields
.field private static final CAPACITY:I = 0x40

.field private static final CHCHE:I = 0x800


# instance fields
.field private controller:Lcom/tencent/wstt/gt/log/LogController;

.field private curLogBuff:Ljava/lang/StringBuffer;

.field private curLogBuffCheckThread:Ljava/lang/Thread;

.field private curLogBuffLock:Ljava/lang/Object;

.field private flag:Z

.field private queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/LogBuff;",
            ">;"
        }
    .end annotation
.end field

.field private thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/log/LogController;)V
    .locals 4
    .param p1, "controller"    # Lcom/tencent/wstt/gt/log/LogController;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 50
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->controller:Lcom/tencent/wstt/gt/log/LogController;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuffLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/wstt/gt/log/TempLogConsumer$1;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/log/TempLogConsumer$1;-><init>(Lcom/tencent/wstt/gt/log/TempLogConsumer;)V

    .line 66
    const-string v2, "TempLogConsumer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 53
    iput-object v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->thread:Ljava/lang/Thread;

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {p1, p0}, Lcom/tencent/wstt/gt/log/LogController;->setTempLogConsumer(Lcom/tencent/wstt/gt/log/TempLogConsumer;)V

    .line 72
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/wstt/gt/log/TempLogConsumer$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wstt/gt/log/TempLogConsumer$2;-><init>(Lcom/tencent/wstt/gt/log/TempLogConsumer;Lcom/tencent/wstt/gt/log/LogController;)V

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "$curLogBuffCheckThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 72
    iput-object v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuffCheckThread:Ljava/lang/Thread;

    .line 96
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/log/TempLogConsumer;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->flag:Z

    return v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/log/TempLogConsumer;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/log/TempLogConsumer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuffLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/log/TempLogConsumer;)Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/log/TempLogConsumer;Ljava/lang/StringBuffer;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    return-void
.end method

.method private asynPutLogBuff(Lcom/tencent/wstt/gt/ui/model/LogBuff;)V
    .locals 2
    .param p1, "lb"    # Lcom/tencent/wstt/gt/ui/model/LogBuff;

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cleanALog(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuffLock:Ljava/lang/Object;

    monitor-enter v3

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 179
    new-instance v1, Lcom/tencent/wstt/gt/ui/model/ValueBuff;

    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->controller:Lcom/tencent/wstt/gt/log/LogController;

    invoke-direct {v1, v2, v4}, Lcom/tencent/wstt/gt/ui/model/ValueBuff;-><init>(Ljava/lang/StringBuffer;Lcom/tencent/wstt/gt/log/LogController;)V

    .line 180
    .local v1, "lb":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 181
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    .line 176
    .end local v1    # "lb":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/CleanLogBuff;

    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->controller:Lcom/tencent/wstt/gt/log/LogController;

    invoke-direct {v0, p1, v2}, Lcom/tencent/wstt/gt/ui/model/CleanLogBuff;-><init>(Ljava/lang/String;Lcom/tencent/wstt/gt/log/LogController;)V

    .line 186
    .local v0, "cleanTag":Lcom/tencent/wstt/gt/ui/model/CleanLogBuff;
    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->asynPutLogBuff(Lcom/tencent/wstt/gt/ui/model/LogBuff;)V

    .line 187
    return-void

    .line 176
    .end local v0    # "cleanTag":Lcom/tencent/wstt/gt/ui/model/CleanLogBuff;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public endALog(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->controller:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v2, p1}, Lcom/tencent/wstt/gt/log/LogController;->reudceTempLogStarting(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuffLock:Ljava/lang/Object;

    monitor-enter v3

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 164
    new-instance v1, Lcom/tencent/wstt/gt/ui/model/ValueBuff;

    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->controller:Lcom/tencent/wstt/gt/log/LogController;

    invoke-direct {v1, v2, v4}, Lcom/tencent/wstt/gt/ui/model/ValueBuff;-><init>(Ljava/lang/StringBuffer;Lcom/tencent/wstt/gt/log/LogController;)V

    .line 165
    .local v1, "lb":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    .line 161
    .end local v1    # "lb":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/EndLogBuff;

    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->controller:Lcom/tencent/wstt/gt/log/LogController;

    invoke-direct {v0, p1, v2}, Lcom/tencent/wstt/gt/ui/model/EndLogBuff;-><init>(Ljava/lang/String;Lcom/tencent/wstt/gt/log/LogController;)V

    .line 171
    .local v0, "endTag":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->asynPutLogBuff(Lcom/tencent/wstt/gt/ui/model/LogBuff;)V

    .line 172
    return-void

    .line 161
    .end local v0    # "endTag":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public putLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->flag:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->hasLogNeedIO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuffLock:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v3, 0x800

    if-lt v1, v3, :cond_0

    .line 128
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/ValueBuff;

    iget-object v1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->controller:Lcom/tencent/wstt/gt/log/LogController;

    invoke-direct {v0, v1, v3}, Lcom/tencent/wstt/gt/ui/model/ValueBuff;-><init>(Ljava/lang/StringBuffer;Lcom/tencent/wstt/gt/log/LogController;)V

    .line 129
    .local v0, "lb":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    .line 130
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 122
    .end local v0    # "lb":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    :cond_0
    monitor-exit v2

    .line 134
    :cond_1
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 100
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->flag:Z

    .line 101
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 102
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuffCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 104
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuffCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method

.method public startALog(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->controller:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v2, p1}, Lcom/tencent/wstt/gt/log/LogController;->setTempLogStarting(Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuffLock:Ljava/lang/Object;

    monitor-enter v3

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 147
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/ValueBuff;

    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->controller:Lcom/tencent/wstt/gt/log/LogController;

    invoke-direct {v0, v2, v4}, Lcom/tencent/wstt/gt/ui/model/ValueBuff;-><init>(Ljava/lang/StringBuffer;Lcom/tencent/wstt/gt/log/LogController;)V

    .line 148
    .local v0, "lb":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 149
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->curLogBuff:Ljava/lang/StringBuffer;

    .line 144
    .end local v0    # "lb":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    new-instance v1, Lcom/tencent/wstt/gt/ui/model/StartLogBuff;

    iget-object v2, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->controller:Lcom/tencent/wstt/gt/log/LogController;

    invoke-direct {v1, p1, v2}, Lcom/tencent/wstt/gt/ui/model/StartLogBuff;-><init>(Ljava/lang/String;Lcom/tencent/wstt/gt/log/LogController;)V

    .line 154
    .local v1, "startTag":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    invoke-direct {p0, v1}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->asynPutLogBuff(Lcom/tencent/wstt/gt/ui/model/LogBuff;)V

    .line 155
    return-void

    .line 144
    .end local v1    # "startTag":Lcom/tencent/wstt/gt/ui/model/LogBuff;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/log/TempLogConsumer;->flag:Z

    .line 110
    return-void
.end method
