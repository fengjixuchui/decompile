.class Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$6;
.super Ljava/lang/Object;
.source "GTOpMulPerfActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    .line 205
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

    .line 209
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_empty:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$18(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lv_attentAttr:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$19(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 211
    const/4 v0, 0x1

    return v0
.end method
