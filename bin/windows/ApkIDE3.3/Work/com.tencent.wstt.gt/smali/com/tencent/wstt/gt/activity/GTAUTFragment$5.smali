.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$5;
.super Ljava/lang/Object;
.source "GTAUTFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$5;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$5;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$5;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 153
    const-string v3, "Searching.."

    const-string v4, "searching..wait...."

    const/4 v5, 0x0

    .line 152
    invoke-static {v2, v3, v4, v6, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$11(Lcom/tencent/wstt/gt/activity/GTAUTFragment;Landroid/app/ProgressDialog;)V

    .line 155
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$5;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$10(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$5;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    .local v0, "loginThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 161
    .end local v0    # "loginThread":Ljava/lang/Thread;
    :cond_0
    return v6
.end method
