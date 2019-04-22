.class Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;
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

.field private final synthetic val$ll_warnArea:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->val$ll_warnArea:Landroid/widget/LinearLayout;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 381
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$16(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    .line 386
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_bottom_arrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$28(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020039

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 387
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->val$ll_warnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWarningCntToast:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$29(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWarningCnt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$11(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWaringArea:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$30(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    const v3, 0x7f0900ad

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :goto_1
    return-void

    .line 382
    :cond_0
    aget-object v0, v3, v1

    .line 384
    .local v0, "temp":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->setEnable(Z)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "temp":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_2
    if-lt v1, v4, :cond_2

    .line 396
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_bottom_arrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$28(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x7f02006b

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 397
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->val$ll_warnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWarningCntToast:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$29(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWarningCnt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$11(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWaringArea:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$30(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    const v3, 0x7f0900ac

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 392
    :cond_2
    aget-object v0, v3, v1

    .line 394
    .restart local v0    # "temp":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->setEnable(Z)V

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
