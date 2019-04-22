.class Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;
.super Ljava/lang/Object;
.source "GTOpMulPerfActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 529
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->clear()V

    .line 530
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvTimes:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$7(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$8(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvMax:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$9(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvAve:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$10(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWarningCnt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$11(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->setAutoRefresh(Z)V

    .line 539
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->setInput(I)V

    .line 540
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->postInvalidate()V

    .line 543
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->clearNetValue(Ljava/lang/String;)V

    .line 546
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 547
    return-void
.end method
