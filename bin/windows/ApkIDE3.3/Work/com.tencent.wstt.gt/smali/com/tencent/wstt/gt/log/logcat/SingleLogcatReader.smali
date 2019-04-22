.class public Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;
.super Lcom/tencent/wstt/gt/log/logcat/AbsLogcatReader;
.source "SingleLogcatReader.java"


# instance fields
.field private bufferedReader:Ljava/io/BufferedReader;

.field private lastLine:Ljava/lang/String;

.field private logBuffer:Ljava/lang/String;

.field private logcatProcess:Ljava/lang/Process;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "recordingMode"    # Z
    .param p2, "logBuffer"    # Ljava/lang/String;
    .param p3, "lastLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/log/logcat/AbsLogcatReader;-><init>(Z)V

    .line 20
    iput-object p2, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->logBuffer:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->lastLine:Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->init()V

    .line 23
    return-void
.end method

.method private init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->logBuffer:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/logcat/LogcatHelper;->getLogcatProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->logcatProcess:Ljava/lang/Process;

    .line 29
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->logcatProcess:Ljava/lang/Process;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 29
    iput-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->bufferedReader:Ljava/io/BufferedReader;

    .line 31
    return-void
.end method

.method private isAfterLastTime(Ljava/lang/String;)Z
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->lastLine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->isDatedLogLine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->isDatedLogLine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->lastLine:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDatedLogLine(Ljava/lang/String;)Z
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getLogBuffer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->logBuffer:Ljava/lang/String;

    return-object v0
.end method

.method public getProcesses()Ljava/util/List;
    .locals 1
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
    .line 95
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->logcatProcess:Ljava/lang/Process;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public killQuietly()V
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->logcatProcess:Ljava/lang/Process;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->logcatProcess:Ljava/lang/Process;

    invoke-static {v1}, Lcom/tencent/wstt/gt/log/logcat/RuntimeHelper;->destroy(Ljava/lang/Process;)V

    .line 47
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->getVersionSdkIntCompat()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 48
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->bufferedReader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_1

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_1
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

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
    .line 59
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "line":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->recordingMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->lastLine:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->lastLine:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->isAfterLastTime(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->lastLine:Ljava/lang/String;

    .line 67
    :cond_1
    return-object v0
.end method

.method public readyToRecord()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->recordingMode:Z

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;->lastLine:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
