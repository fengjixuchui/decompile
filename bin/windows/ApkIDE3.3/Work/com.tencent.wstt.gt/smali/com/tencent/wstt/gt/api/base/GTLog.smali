.class public Lcom/tencent/wstt/gt/api/base/GTLog;
.super Ljava/lang/Object;
.source "GTLog.java"


# static fields
.field private static pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/tencent/wstt/gt/api/base/GTLog;->pid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanLog(Ljava/lang/String;)V
    .locals 0
    .param p0, "logFileName"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->cleanLog(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static endLog(Ljava/lang/String;)V
    .locals 0
    .param p0, "logFileName"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->endLog(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    sget v0, Lcom/tencent/wstt/gt/api/base/GTLog;->pid:I

    int-to-long v0, v0

    const/4 v5, 0x0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/wstt/gt/log/GTLogInternal;->log(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static logCat(Ljava/lang/String;)V
    .locals 0
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->logCat(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/tencent/wstt/gt/api/base/GTLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/tencent/wstt/gt/api/base/GTLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/tencent/wstt/gt/api/base/GTLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/tencent/wstt/gt/api/base/GTLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static startLog(Ljava/lang/String;)V
    .locals 0
    .param p0, "logFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->startLog(Ljava/lang/String;)V

    .line 121
    return-void
.end method
