.class public Lcom/tencent/wstt/gt/service/GTFloatView$ProfilerRunnable;
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
    name = "ProfilerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTFloatView;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$ProfilerRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 877
    :goto_0
    sget-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_profiler_flag:Z

    if-nez v2, :cond_0

    .line 888
    return-void

    .line 879
    :cond_0
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$ProfilerRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v2, v2, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 885
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 886
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 880
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
