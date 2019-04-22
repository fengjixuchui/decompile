.class public Lcom/tencent/wstt/gt/log/logcat/SaveLogHelper;
.super Ljava/lang/Object;
.source "SaveLogHelper.java"


# static fields
.field private static final BUFFER:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCatlogDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_LOG_FOLDER:Ljava/io/File;

    .line 133
    .local v0, "catlogDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 136
    :cond_0
    return-object v0
.end method

.method public static getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/SaveLogHelper;->getCatlogDirectory()Ljava/io/File;

    move-result-object v0

    .line 28
    .local v0, "catlogDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .local v1, "file":Ljava/io/File;
    return-object v1
.end method

.method public static getLastModifiedDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/SaveLogHelper;->getCatlogDirectory()Ljava/io/File;

    move-result-object v0

    .line 37
    .local v0, "catlogDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 42
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public static getLogFilenames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/SaveLogHelper;->getCatlogDirectory()Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "catlogDir":Ljava/io/File;
    new-instance v5, Lcom/tencent/wstt/gt/log/logcat/SaveLogHelper$1;

    invoke-direct {v5}, Lcom/tencent/wstt/gt/log/logcat/SaveLogHelper$1;-><init>()V

    invoke-virtual {v0, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 65
    .local v3, "filesArray":[Ljava/io/File;
    if-nez v3, :cond_1

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 84
    :cond_0
    return-object v4

    .line 69
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v5, Lcom/tencent/wstt/gt/log/logcat/SaveLogHelper$2;

    invoke-direct {v5}, Lcom/tencent/wstt/gt/log/logcat/SaveLogHelper$2;-><init>()V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 81
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static openLog(Ljava/lang/String;I)[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "maxLines"    # I

    .prologue
    .line 90
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/SaveLogHelper;->getCatlogDirectory()Ljava/io/File;

    move-result-object v2

    .line 91
    .local v2, "catlogDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v7, "logFile":Ljava/io/File;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v8, "logLines":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/LogEntry;>;"
    const/4 v0, 0x0

    .line 98
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 99
    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v10, 0x1000

    .line 98
    invoke-direct {v1, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-nez v9, :cond_2

    .line 118
    if-eqz v1, :cond_4

    .line 120
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    .line 127
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    const/4 v9, 0x0

    new-array v9, v9, [Lcom/tencent/wstt/gt/ui/model/LogEntry;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/tencent/wstt/gt/ui/model/LogEntry;

    return-object v9

    .line 102
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 105
    new-instance v4, Lcom/tencent/wstt/gt/ui/model/LogEntry;

    invoke-direct {v4}, Lcom/tencent/wstt/gt/ui/model/LogEntry;-><init>()V

    .line 106
    .local v4, "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    iput-object v6, v4, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    .line 107
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 114
    .end local v4    # "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 115
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v5, "ex":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    if-eqz v0, :cond_1

    .line 120
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 121
    :catch_1
    move-exception v3

    .line 122
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 117
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 118
    :goto_3
    if-eqz v0, :cond_3

    .line 120
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 125
    :cond_3
    :goto_4
    throw v9

    .line 121
    :catch_2
    move-exception v3

    .line 122
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 121
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .line 122
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 117
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 114
    :catch_4
    move-exception v5

    goto :goto_2
.end method
