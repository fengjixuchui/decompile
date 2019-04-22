.class Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$2;
.super Ljava/lang/Object;
.source "GTLogSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    .line 128
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

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->img_empty:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->filterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->cancelFilterMsgInput(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$4(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Landroid/view/View;)V

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
