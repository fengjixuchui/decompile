.class Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;
.super Ljava/lang/Object;
.source "GTOpMulPerfActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 221
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->btn_attent:Landroid/widget/Button;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$20(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 222
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$4(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7$1;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7$1;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;)V

    .line 228
    const-wide/16 v2, 0xc8

    .line 222
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lv_attentAttr:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$19(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_empty:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$18(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lv_attentAttr:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$19(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lv_attentAttr:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$19(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_empty:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$18(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
