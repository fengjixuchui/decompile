.class Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;
.super Ljava/lang/Object;
.source "GTOpSinglePerfActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 423
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    .line 425
    .local v0, "anchorEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvTimes:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSizeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvMax:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$3(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvAve:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$4(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvWarningCnt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$5(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    .line 435
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getUpperWariningCount()I

    move-result v2

    .line 436
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getLowerWariningCount()I

    move-result v3

    .line 435
    add-int/2addr v2, v3

    .line 434
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->op:Lcom/tencent/wstt/gt/OutPara;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v1

    if-nez v1, :cond_2

    .line 440
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$7(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getLastValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isAutoRefresh()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->createRealtimeData()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$8(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)V

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$9(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->delaytime:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$10(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 453
    return-void

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$7(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->op:Lcom/tencent/wstt/gt/OutPara;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
