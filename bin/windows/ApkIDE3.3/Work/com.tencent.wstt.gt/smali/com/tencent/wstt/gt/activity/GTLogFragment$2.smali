.class Lcom/tencent/wstt/gt/activity/GTLogFragment$2;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 503
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 524
    :cond_0
    :goto_0
    return v3

    .line 505
    :pswitch_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$3(Lcom/tencent/wstt/gt/activity/GTLogFragment;F)V

    goto :goto_0

    .line 508
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 510
    .local v1, "currentY":F
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 511
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 512
    .local v2, "mTouchSlop":I
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->startY:F
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$4(Lcom/tencent/wstt/gt/activity/GTLogFragment;)F

    move-result v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 513
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->rl_log_filter:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 514
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->rl_log_filter:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 515
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 519
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 517
    :cond_1
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->rl_log_filter:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
