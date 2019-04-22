.class public Lcom/tencent/wstt/gt/service/GTFloatView$FloatViewRunnable;
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
    name = "FloatViewRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTFloatView;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$FloatViewRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 578
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_fv_flag:Z

    if-nez v3, :cond_1

    .line 601
    return-void

    .line 579
    :cond_1
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$FloatViewRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->checkFloatViewPosEffective()V
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$88(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 581
    :try_start_0
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$FloatViewRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->fv_delaytime:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$89(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_1
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$FloatViewRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, v3, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 587
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->what:I

    .line 588
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 590
    sget-object v3, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    .line 591
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/service/GTServiceController;->getServiceControllerSwitchState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    sget-object v3, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    .line 593
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/service/GTServiceController;->getCurAviableService()I

    move-result v3

    .line 592
    if-nez v3, :cond_0

    .line 594
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$FloatViewRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, v3, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 595
    .local v2, "myMsg":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 596
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 597
    sget-object v3, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    .line 598
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/service/GTServiceController;->setServiceControllerSwitchStateClose()V

    goto :goto_0

    .line 583
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "myMsg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
