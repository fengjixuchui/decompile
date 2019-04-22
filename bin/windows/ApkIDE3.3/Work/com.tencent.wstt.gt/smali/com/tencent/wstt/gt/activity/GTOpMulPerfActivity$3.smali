.class Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;
.super Ljava/lang/Object;
.source "GTOpMulPerfActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 563
    packed-switch p2, :pswitch_data_0

    .line 617
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 566
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->cancelFilterMsgInput(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$12(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;Landroid/view/View;)V

    .line 568
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperInterval:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$13(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 569
    .local v8, "sUpperDuration":Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperValue:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$14(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 570
    .local v9, "sUpperValue":Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etLowerValue:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$15(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 572
    .local v7, "sLowerValue":Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$16(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getduration()I

    move-result v1

    .line 573
    .local v1, "duration":I
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$16(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getUpperValue()D

    move-result-wide v2

    .line 574
    .local v2, "upperValue":D
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$16(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getLowerValue()D

    move-result-wide v4

    .line 578
    .local v4, "lowerValue":D
    :try_start_0
    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 587
    :goto_1
    const-string v0, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 589
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 596
    :goto_2
    const-string v0, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 598
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 605
    :goto_3
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$16(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->setThreshold(IDD)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 584
    :cond_0
    const v1, 0x7fffffff

    goto :goto_1

    .line 593
    :cond_1
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    goto :goto_2

    .line 602
    :cond_2
    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    goto :goto_3

    .line 608
    :catch_0
    move-exception v6

    .line 610
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 612
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    const v11, 0x7f090078

    invoke-virtual {v10, v11}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 611
    invoke-static {v0, v10}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 563
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
