.class final Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$ProgressRunnable;
.super Ljava/lang/Object;
.source "GTCaptureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$ProgressRunnable;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 355
    :try_start_0
    sget-boolean v2, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->switch_tcpdump:Z

    if-nez v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$ProgressRunnable;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # invokes: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->checkTcpDump()Z
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$0(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Z

    move-result v1

    .line 357
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 358
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$ProgressRunnable;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$1(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 369
    .end local v1    # "result":Z
    :goto_0
    return-void

    .line 360
    .restart local v1    # "result":Z
    :cond_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$ProgressRunnable;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$1(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$ProgressRunnable;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # invokes: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->endTcpDump()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$2(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V

    .line 364
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$ProgressRunnable;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$1(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
