.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$2;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 533
    sget-boolean v0, Lcom/tencent/wstt/gt/manager/OpUIManager;->refresh_op_drag_conflict_flag:Z

    if-nez v0, :cond_0

    .line 534
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->refreshOutputParam()V

    .line 536
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$9(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$9(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->notifyDataSetChanged()V

    .line 541
    :cond_0
    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->refreshHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$10()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->opRefreshRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$11(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 542
    return-void
.end method
