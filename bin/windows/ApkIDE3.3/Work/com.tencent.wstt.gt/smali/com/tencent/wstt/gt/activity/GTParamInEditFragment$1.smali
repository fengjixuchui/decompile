.class Lcom/tencent/wstt/gt/activity/GTParamInEditFragment$1;
.super Landroid/os/Handler;
.source "GTParamInEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;

    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->doResume()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;)V

    .line 57
    return-void
.end method
