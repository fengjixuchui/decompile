.class public abstract Lcom/tencent/wstt/gt/internal/GTDaemonThread;
.super Ljava/lang/Thread;
.source "GTDaemonThread.java"


# instance fields
.field protected curInterval:J

.field protected flag:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThread;->flag:Z

    .line 28
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThread;->curInterval:J

    .line 32
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/internal/GTDaemonThread;->setDaemon(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method abstract doTask()V
.end method

.method public quickFnish()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThread;->flag:Z

    .line 38
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 51
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThread;->curInterval:J

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/internal/GTDaemonThread;->sleep(J)V

    .line 52
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/internal/GTDaemonThread;->doTask()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThread;->flag:Z

    if-nez v1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public setInterval(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThread;->curInterval:J

    .line 43
    return-void
.end method
