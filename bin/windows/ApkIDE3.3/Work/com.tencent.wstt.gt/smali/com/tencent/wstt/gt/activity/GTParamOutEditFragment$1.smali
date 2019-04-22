.class Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment$1;
.super Landroid/os/Handler;
.source "GTParamOutEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;

    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment$1;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->doResume()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;)V

    .line 54
    return-void
.end method
