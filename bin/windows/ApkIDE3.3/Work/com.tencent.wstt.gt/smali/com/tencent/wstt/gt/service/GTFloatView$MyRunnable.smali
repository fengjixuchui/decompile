.class public Lcom/tencent/wstt/gt/service/GTFloatView$MyRunnable;
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
    name = "MyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTFloatView;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$MyRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 617
    :goto_0
    sget-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_fv_flag:Z

    if-nez v2, :cond_0

    .line 635
    return-void

    .line 618
    :cond_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$MyRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    sget v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->delaytime:I

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$90(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    .line 620
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$MyRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->fv_value_delaytime:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$91(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 621
    sget-boolean v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_change:Z

    if-eqz v2, :cond_1

    .line 622
    sget-object v2, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/service/GTServiceController;->setFloatViewFront(Z)V

    .line 623
    const/4 v2, 0x0

    sput-boolean v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_change:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$MyRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->dataRefresh()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$92(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 630
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$MyRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->monitorProfilerStatus()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$93(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 631
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$MyRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v2, v2, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 632
    .local v1, "msg":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 633
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 626
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
