.class public Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$EngineRunnable;
.super Ljava/lang/Object;
.source "DefaultParaRunEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EngineRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$EngineRunnable;->this$0:Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 87
    :goto_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$EngineRunnable;->this$0:Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;

    # invokes: Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->getCurEnableDefaultOutParas()Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->access$0(Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 88
    .local v1, "len":I
    if-eqz v1, :cond_0

    .line 89
    iget-object v4, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$EngineRunnable;->this$0:Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;

    # getter for: Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->enable_default_ops:Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->access$1(Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 97
    :cond_0
    :try_start_0
    sget v4, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    .line 90
    .local v2, "op":Lcom/tencent/wstt/gt/OutPara;
    iget-object v5, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$EngineRunnable;->this$0:Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;

    # invokes: Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->refreshDefaultOutParasValue(Lcom/tencent/wstt/gt/OutPara;)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->access$2(Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;Lcom/tencent/wstt/gt/OutPara;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method
