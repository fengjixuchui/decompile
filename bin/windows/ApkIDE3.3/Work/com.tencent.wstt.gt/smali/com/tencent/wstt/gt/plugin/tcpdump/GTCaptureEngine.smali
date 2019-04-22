.class public Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;
.super Ljava/lang/Object;
.source "GTCaptureEngine.java"

# interfaces
.implements Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;


# static fields
.field private static final DEFAULT_PARAM:Ljava/lang/String; = "-p -s 0 -vv -w"

.field private static INSTANCE:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;


# instance fields
.field private captureState:Z

.field private curFilePath:Ljava/lang/String;

.field private curFileSize:J

.field private curTcpdumpProcess:Ljava/lang/Process;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->captureState:Z

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curFileSize:J

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;

    return-object v0
.end method

.method private checkTcpDump(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 155
    const-string v0, ""

    .line 156
    .local v0, "errorstr":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/utils/RootUtil;->isRooted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    const-string v0, "root needed!"

    .line 158
    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->notifyError(Ljava/lang/String;)V

    .line 190
    :goto_0
    return v2

    .line 162
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/Env;->isSDCardExist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    const-string v0, "phone storage needed!"

    .line 164
    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->notifyError(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "file":Ljava/io/File;
    const-string v3, "\\"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 171
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 172
    const-string v3, "<"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ">"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    :cond_2
    const-string v0, "filePath can\'t contain::*?\"<>|"

    .line 174
    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->notifyError(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    if-eqz p2, :cond_5

    const-string v3, "|"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ">"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ">>"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    :cond_4
    const-string v0, "param can\'t contain: | > >>"

    .line 179
    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->notifyError(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 185
    const-string v0, "folder create failed!"

    .line 186
    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->notifyError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    .line 73
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    return-object v0
.end method

.method private notifyError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorstr"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    return-void

    .line 195
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;

    .line 196
    .local v0, "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    invoke-interface {v0, p1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;->onCaptureFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCaptureState(Z)V
    .locals 0
    .param p1, "captureState"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->captureState:Z

    .line 67
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doCapture(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->checkTcpDump(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 115
    .local v0, "checkResult":Z
    if-eqz v0, :cond_0

    .line 117
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 122
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine$1;-><init>(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v4, "GTCaptureThread"

    .line 122
    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 142
    :cond_0
    return-void

    .line 108
    .end local v0    # "checkResult":Z
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;

    .line 110
    .local v1, "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    invoke-interface {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;->preStartCapture()V

    goto :goto_0

    .line 117
    .end local v1    # "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    .restart local v0    # "checkResult":Z
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;

    .line 119
    .restart local v1    # "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    invoke-interface {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;->onStartCaptureBegin()V

    goto :goto_1
.end method

.method public doStopCapture()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->endTcpDump()V

    .line 151
    return-void

    .line 146
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;

    .line 148
    .local v0, "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    invoke-interface {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;->onStopCaptureBegin()V

    goto :goto_0
.end method

.method public endTcpDump()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 308
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->setCaptureState(Z)V

    .line 310
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curTcpdumpProcess:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    iput-object v4, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curTcpdumpProcess:Ljava/lang/Process;

    .line 317
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curFileSize:J

    .line 318
    iput-object v4, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curFilePath:Ljava/lang/String;

    .line 320
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 323
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;

    .line 321
    .local v1, "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    invoke-interface {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;->onStopCaptureEnd()V

    goto :goto_1
.end method

.method public execute(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const-string v3, "cmd"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "cmd":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "startCapture"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const-string v3, "filePath"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "filePath":Ljava/lang/String;
    const-string v3, "param"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "param":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->doCapture(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "param":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    if-eqz v0, :cond_0

    const-string v3, "stopCapture"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->doStopCapture()V

    goto :goto_0
.end method

.method public getCaptureState()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->captureState:Z

    return v0
.end method

.method public getCurFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCurFileSize()J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curFileSize:J

    return-wide v0
.end method

.method public declared-synchronized removeListener(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTcpDump(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "needInputStream"    # Z

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->getCaptureState()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->setCaptureState(Z)V

    .line 220
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curTcpdumpProcess:Ljava/lang/Process;

    if-eqz v8, :cond_2

    .line 223
    :try_start_0
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curTcpdumpProcess:Ljava/lang/Process;

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 224
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curTcpdumpProcess:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :cond_2
    :goto_1
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "tcpdump "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/CMDExecute;->startSuCmdInteractive()Ljava/lang/Process;

    move-result-object v8

    iput-object v8, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curTcpdumpProcess:Ljava/lang/Process;

    .line 235
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curTcpdumpProcess:Ljava/lang/Process;

    invoke-static {v8, v0}, Lcom/tencent/wstt/gt/api/utils/CMDExecute;->continueSuCmdInteractive(Ljava/lang/Process;Ljava/lang/String;)Ljava/lang/Process;

    .line 237
    if-eqz p4, :cond_0

    .line 238
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v5, "outFile":Ljava/io/File;
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curFilePath:Ljava/lang/String;

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "count":I
    const/4 v3, 0x0

    .line 244
    .local v3, "hasNotifyStartEnd":Z
    :goto_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 246
    if-nez v3, :cond_3

    .line 248
    const/4 v3, 0x1

    .line 250
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 255
    :cond_3
    iget-wide v6, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curFileSize:J

    .line 256
    .local v6, "preSize":J
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const/16 v10, 0xa

    shr-long/2addr v8, v10

    iput-wide v8, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curFileSize:J

    .line 257
    iget-wide v8, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curFileSize:J

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 259
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 273
    .end local v6    # "preSize":J
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->getCaptureState()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 277
    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    .line 242
    goto :goto_2

    .line 250
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;

    .line 251
    .local v4, "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curFilePath:Ljava/lang/String;

    invoke-interface {v4, v9}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;->onStartCaptureEnd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 281
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v3    # "hasNotifyStartEnd":Z
    .end local v4    # "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    .end local v5    # "outFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 259
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmd":Ljava/lang/String;
    .restart local v1    # "count":I
    .restart local v3    # "hasNotifyStartEnd":Z
    .restart local v5    # "outFile":Ljava/io/File;
    .restart local v6    # "preSize":J
    :cond_6
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;

    .line 260
    .restart local v4    # "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    iget-wide v10, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->curFileSize:J

    invoke-interface {v4, v10, v11}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;->onDataChange(J)V

    goto :goto_4

    .line 264
    .end local v4    # "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    .end local v6    # "preSize":J
    :cond_7
    const/4 v8, 0x5

    if-lt v1, v8, :cond_4

    .line 266
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8

    .line 269
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->endTcpDump()V

    goto/16 :goto_0

    .line 266
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;

    .line 267
    .restart local v4    # "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    const-string v9, "create file failed!"

    invoke-interface {v4, v9}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;->onCaptureFail(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 226
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v3    # "hasNotifyStartEnd":Z
    .end local v4    # "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    .end local v5    # "outFile":Ljava/io/File;
    :catch_1
    move-exception v8

    goto/16 :goto_1
.end method
