.class Lcom/tencent/wstt/gt/activity/GTLogFragment$4;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v1, 0x8

    .line 200
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$1(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTLogFragment;->cancelFilterMsgInput(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$10(Lcom/tencent/wstt/gt/activity/GTLogFragment;Landroid/view/View;)V

    .line 203
    const/4 v0, 0x0

    return v0
.end method
