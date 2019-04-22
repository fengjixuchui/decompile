.class public Lcom/tencent/wstt/gt/log/logcat/RuntimeHelper;
.super Ljava/lang/Object;
.source "RuntimeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy(Ljava/lang/Process;)V
    .locals 2
    .param p0, "process"    # Ljava/lang/Process;

    .prologue
    .line 45
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->getVersionSdkIntCompat()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 46
    invoke-static {}, Lcom/tencent/wstt/gt/utils/RootUtil;->isRooted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/tencent/wstt/gt/utils/RootUtil;->destroy(Ljava/lang/Process;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    goto :goto_0
.end method

.method public static exec(Ljava/util/List;)Ljava/lang/Process;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Process;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->getVersionSdkIntCompat()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 23
    invoke-static {}, Lcom/tencent/wstt/gt/utils/RootUtil;->isRooted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 24
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 26
    .local v2, "process":Ljava/lang/Process;
    const/4 v0, 0x0

    .line 28
    .local v0, "outputStream":Ljava/io/PrintStream;
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .end local v0    # "outputStream":Ljava/io/PrintStream;
    .local v1, "outputStream":Ljava/io/PrintStream;
    :try_start_1
    const-string v3, " "

    invoke-static {v3, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 39
    .end local v1    # "outputStream":Ljava/io/PrintStream;
    .end local v2    # "process":Ljava/lang/Process;
    :cond_0
    :goto_0
    return-object v2

    .line 31
    .restart local v0    # "outputStream":Ljava/io/PrintStream;
    .restart local v2    # "process":Ljava/lang/Process;
    :catchall_0
    move-exception v3

    .line 32
    :goto_1
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 35
    :cond_1
    throw v3

    .line 39
    .end local v0    # "outputStream":Ljava/io/PrintStream;
    .end local v2    # "process":Ljava/lang/Process;
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-class v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/tencent/wstt/gt/log/logcat/ArrayUtil;->toArray(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    goto :goto_0

    .line 31
    .restart local v1    # "outputStream":Ljava/io/PrintStream;
    .restart local v2    # "process":Ljava/lang/Process;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "outputStream":Ljava/io/PrintStream;
    .restart local v0    # "outputStream":Ljava/io/PrintStream;
    goto :goto_1
.end method
