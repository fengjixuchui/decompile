.class Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;
.super Ljava/lang/Object;
.source "GTOpSinglePerfActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 487
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->clear()V

    .line 488
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvTimes:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvMax:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$3(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvAve:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$4(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvWarningCnt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$5(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$7(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setAutoRefresh(Z)V

    .line 497
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setInput(I)V

    .line 498
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->postInvalidate()V

    .line 501
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->clearNetValue(Ljava/lang/String;)V

    .line 504
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 505
    return-void
.end method
