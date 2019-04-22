.class Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;
.super Ljava/lang/Object;
.source "GTOpSMActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 519
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->clear()V

    .line 520
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvTimes:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$3(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvAve:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvScore:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$10(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvGood:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$11(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvBad:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$12(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvWarningCnt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$4(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setAutoRefresh(Z)V

    .line 532
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setInput(I)V

    .line 533
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->postInvalidate()V

    .line 536
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->clearNetValue(Ljava/lang/String;)V

    .line 539
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 540
    return-void
.end method
