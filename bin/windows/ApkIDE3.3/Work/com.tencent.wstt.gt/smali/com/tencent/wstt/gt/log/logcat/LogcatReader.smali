.class public interface abstract Lcom/tencent/wstt/gt/log/logcat/LogcatReader;
.super Ljava/lang/Object;
.source "LogcatReader.java"


# virtual methods
.method public abstract getProcesses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Process;",
            ">;"
        }
    .end annotation
.end method

.method public abstract killQuietly()V
.end method

.method public abstract readLine()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readyToRecord()Z
.end method
