.class public Lcom/tencent/wstt/gt/service/GTFloatView$TimerRunnable;
.super Ljava/lang/Object;
.source "GTFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/service/GTFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTFloatView;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$TimerRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$86(J)V

    .line 560
    :goto_0
    sget-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_timer_flag:Z

    if-nez v2, :cond_0

    .line 571
    return-void

    .line 562
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$TimerRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->timer_delaytime:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$87(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$TimerRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v2, v2, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 568
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 569
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 563
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
