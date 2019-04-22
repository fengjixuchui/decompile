.class public Lcom/tencent/wstt/gt/utils/RootUtil;
.super Ljava/lang/Object;
.source "RootUtil.java"


# static fields
.field private static final PID_PATTERN:Ljava/util/regex/Pattern;

.field private static final SPACES_PATTERN:Ljava/util/regex/Pattern;

.field public static rootJustNow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/utils/RootUtil;->PID_PATTERN:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/utils/RootUtil;->SPACES_PATTERN:Ljava/util/regex/Pattern;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/utils/RootUtil;->rootJustNow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy(Ljava/lang/Process;)V
    .locals 6
    .param p0, "process"    # Ljava/lang/Process;

    .prologue
    .line 85
    sget-object v4, Lcom/tencent/wstt/gt/utils/RootUtil;->PID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 86
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 87
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 88
    .local v2, "pid":I
    invoke-static {v2}, Lcom/tencent/wstt/gt/utils/RootUtil;->getAllRelatedPids(I)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "allRelatedPids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    return-void

    .line 89
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 90
    .local v3, "relatedPid":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/tencent/wstt/gt/utils/RootUtil;->destroyPid(I)V

    goto :goto_0
.end method

.method private static destroyPid(I)V
    .locals 7
    .param p0, "pid"    # I

    .prologue
    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, "suProcess":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 99
    .local v1, "outputStream":Ljava/io/PrintStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 100
    new-instance v2, Ljava/io/PrintStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 101
    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 100
    invoke-direct {v2, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v1    # "outputStream":Ljava/io/PrintStream;
    .local v2, "outputStream":Ljava/io/PrintStream;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "kill "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    const-string v4, "exit"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    .line 111
    :cond_0
    if-eqz v3, :cond_5

    .line 113
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v2

    .line 119
    .end local v2    # "outputStream":Ljava/io/PrintStream;
    .restart local v1    # "outputStream":Ljava/io/PrintStream;
    :cond_1
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 111
    :cond_2
    if-eqz v3, :cond_1

    .line 113
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    .line 108
    :goto_2
    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 111
    :cond_3
    if-eqz v3, :cond_4

    .line 113
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 118
    :cond_4
    :goto_3
    throw v4

    .line 114
    :catch_2
    move-exception v0

    .line 115
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 114
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "outputStream":Ljava/io/PrintStream;
    .restart local v2    # "outputStream":Ljava/io/PrintStream;
    :catch_3
    move-exception v0

    .line 115
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5
    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/PrintStream;
    .restart local v1    # "outputStream":Ljava/io/PrintStream;
    goto :goto_0

    .line 107
    .end local v1    # "outputStream":Ljava/io/PrintStream;
    .restart local v2    # "outputStream":Ljava/io/PrintStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/PrintStream;
    .restart local v1    # "outputStream":Ljava/io/PrintStream;
    goto :goto_2

    .line 105
    .end local v1    # "outputStream":Ljava/io/PrintStream;
    .restart local v2    # "outputStream":Ljava/io/PrintStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/PrintStream;
    .restart local v1    # "outputStream":Ljava/io/PrintStream;
    goto :goto_1
.end method

.method private static getAllRelatedPids(I)Ljava/util/List;
    .locals 10
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "su"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 129
    .local v6, "suProcess":Ljava/lang/Process;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/tencent/wstt/gt/utils/RootUtil$1;

    invoke-direct {v8, v6}, Lcom/tencent/wstt/gt/utils/RootUtil$1;-><init>(Ljava/lang/Process;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    invoke-virtual {v7}, Ljava/lang/Thread;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    if-eqz v6, :cond_0

    .line 152
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 160
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 161
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x2000

    .line 160
    invoke-direct {v1, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v7

    if-nez v7, :cond_3

    .line 175
    if-eqz v1, :cond_2

    .line 176
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 183
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "suProcess":Ljava/lang/Process;
    :cond_2
    :goto_2
    return-object v5

    .line 153
    .restart local v6    # "suProcess":Ljava/lang/Process;
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 179
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "suProcess":Ljava/lang/Process;
    :catch_1
    move-exception v3

    .line 180
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 163
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "suProcess":Ljava/lang/Process;
    :cond_3
    :try_start_5
    sget-object v7, Lcom/tencent/wstt/gt/utils/RootUtil;->SPACES_PATTERN:Ljava/util/regex/Pattern;

    .line 164
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 163
    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "line":[Ljava/lang/String;
    array-length v7, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v8, 0x3

    if-lt v7, v8, :cond_1

    .line 167
    const/4 v7, 0x2

    :try_start_6
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne p0, v7, :cond_1

    .line 168
    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 170
    :catch_2
    move-exception v7

    goto :goto_1

    .line 174
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":[Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v7

    .line 175
    :goto_3
    if-eqz v0, :cond_4

    .line 176
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 178
    :cond_4
    throw v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 174
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static isRooted()Z
    .locals 4

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, "flag":Z
    :try_start_0
    const-string v3, "ls /data/"

    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/RootUtil;->terminal(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v2

    .line 52
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    const/4 v1, 0x1

    .line 58
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    sput-boolean v1, Lcom/tencent/wstt/gt/utils/RootUtil;->rootJustNow:Z

    .line 59
    return v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static terminal(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 8
    .param p0, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 65
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 66
    .local v3, "outstream":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 67
    .local v0, "DOPS":Ljava/io/DataOutputStream;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 68
    .local v2, "instream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 69
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 70
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "temp":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 76
    const-string v6, "exit\n"

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 79
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 80
    return-object v1
.end method
