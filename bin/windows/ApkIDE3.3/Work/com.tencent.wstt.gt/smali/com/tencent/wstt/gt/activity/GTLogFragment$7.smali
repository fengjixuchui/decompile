.class Lcom/tencent/wstt/gt/activity/GTLogFragment$7;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 295
    add-int v0, p3, p2

    if-ne v0, p4, :cond_0

    .line 296
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->logAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$12(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->setAutoRefresh(Z)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->logAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$12(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->setAutoRefresh(Z)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->rl_log_filter:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 290
    return-void
.end method
