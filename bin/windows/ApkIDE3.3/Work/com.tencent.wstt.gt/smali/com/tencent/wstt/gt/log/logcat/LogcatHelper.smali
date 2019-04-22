.class public Lcom/tencent/wstt/gt/log/logcat/LogcatHelper;
.super Ljava/lang/Object;
.source "LogcatHelper.java"


# static fields
.field public static final BUFFER_EVENTS:Ljava/lang/String; = "events"

.field public static final BUFFER_MAIN:Ljava/lang/String; = "main"

.field public static final BUFFER_RADIO:Ljava/lang/String; = "radio"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastLogLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "buffer"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x10

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "dumpLogcatProcess":Ljava/lang/Process;
    const/4 v4, 0x0

    .line 42
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 45
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/tencent/wstt/gt/log/logcat/LogcatHelper;->getLogcatArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "-d"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/logcat/RuntimeHelper;->exec(Ljava/util/List;)Ljava/lang/Process;

    move-result-object v1

    .line 49
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x2000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 58
    if-eqz v1, :cond_0

    .line 59
    invoke-static {v1}, Lcom/tencent/wstt/gt/log/logcat/RuntimeHelper;->destroy(Ljava/lang/Process;)V

    .line 63
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->getVersionSdkIntCompat()I

    move-result v7

    if-ge v7, v9, :cond_6

    if-eqz v5, :cond_6

    .line 65
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .line 72
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v6

    .line 53
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    move-object v6, v3

    goto :goto_0

    .line 55
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    if-eqz v1, :cond_3

    .line 59
    invoke-static {v1}, Lcom/tencent/wstt/gt/log/logcat/RuntimeHelper;->destroy(Ljava/lang/Process;)V

    .line 63
    :cond_3
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->getVersionSdkIntCompat()I

    move-result v7

    if-ge v7, v9, :cond_1

    if-eqz v4, :cond_1

    .line 65
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 66
    :catch_1
    move-exception v2

    .line 67
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 57
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 58
    :goto_3
    if-eqz v1, :cond_4

    .line 59
    invoke-static {v1}, Lcom/tencent/wstt/gt/log/logcat/RuntimeHelper;->destroy(Ljava/lang/Process;)V

    .line 63
    :cond_4
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->getVersionSdkIntCompat()I

    move-result v8

    if-ge v8, v9, :cond_5

    if-eqz v4, :cond_5

    .line 65
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 70
    :cond_5
    :goto_4
    throw v7

    .line 66
    :catch_2
    move-exception v2

    .line 67
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 66
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 67
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 57
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 55
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static getLogcatArgs(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logcat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-v"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "time"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "main"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    const-string v1, "-b"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-object v0
.end method

.method public static getLogcatProcess(Ljava/lang/String;)Ljava/lang/Process;
    .locals 2
    .param p0, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {p0}, Lcom/tencent/wstt/gt/log/logcat/LogcatHelper;->getLogcatArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 19
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/logcat/RuntimeHelper;->exec(Ljava/util/List;)Ljava/lang/Process;

    move-result-object v1

    .line 21
    .local v1, "process":Ljava/lang/Process;
    return-object v1
.end method
