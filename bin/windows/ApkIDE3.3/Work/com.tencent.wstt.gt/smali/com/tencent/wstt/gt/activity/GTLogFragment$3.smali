.class Lcom/tencent/wstt/gt/activity/GTLogFragment$3;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    invoke-direct {v1, v2}, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    iput-object v1, v0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->logcatTask:Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;

    .line 178
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTLogFragment;->logcatTask:Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->logcatTask:Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->killReader()V

    goto :goto_0
.end method
