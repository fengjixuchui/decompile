.class Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;
.super Ljava/lang/Object;
.source "GTOpSMActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 444
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    .line 446
    .local v0, "anchorEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvTimes:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSizeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvAve:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$3(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvWarningCnt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$4(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    .line 467
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getUpperWariningCount()I

    move-result v2

    .line 468
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getLowerWariningCount()I

    move-result v3

    .line 467
    add-int/2addr v2, v3

    .line 466
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->op:Lcom/tencent/wstt/gt/OutPara;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$5(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v1

    if-nez v1, :cond_2

    .line 472
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getLastValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :goto_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isAutoRefresh()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->createRealtimeData()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$7(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)V

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$8(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->delaytime:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$9(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    return-void

    .line 476
    :cond_2
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->op:Lcom/tencent/wstt/gt/OutPara;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$5(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
