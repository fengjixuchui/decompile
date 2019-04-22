.class public Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine$EngineRunnable;
.super Ljava/lang/Object;
.source "ProcPerfParaRunEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EngineRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine$EngineRunnable;->this$0:Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 81
    :goto_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine$EngineRunnable;->this$0:Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;

    # getter for: Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->engineRun:Z
    invoke-static {v4}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->access$0(Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    return-void

    .line 82
    :cond_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine$EngineRunnable;->this$0:Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;

    # invokes: Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->getCurEnableProcPerfParas()Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->access$1(Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 83
    .local v1, "len":I
    if-eqz v1, :cond_1

    .line 85
    :try_start_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine$EngineRunnable;->this$0:Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;

    # getter for: Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->enable_procPerf_ops:Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->access$2(Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    .line 99
    :cond_1
    :goto_2
    :try_start_1
    sget v4, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    .line 86
    .local v2, "op":Lcom/tencent/wstt/gt/OutPara;
    iget-object v5, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine$EngineRunnable;->this$0:Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;

    # invokes: Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->getProcPerfParasValue(Lcom/tencent/wstt/gt/OutPara;)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->access$3(Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;Lcom/tencent/wstt/gt/OutPara;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 89
    .end local v2    # "op":Lcom/tencent/wstt/gt/OutPara;
    .end local v3    # "value":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_2
.end method
