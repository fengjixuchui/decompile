.class public Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTOpMulPerfActivity.java"


# instance fields
.field private about:Ljava/lang/String;

.field private attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

.field private attrAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private btn_attent:Landroid/widget/Button;

.field private btn_back:Landroid/widget/ImageButton;

.field private btn_delete:Landroid/widget/ImageButton;

.field chartData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field chartView:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

.field private dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

.field private delaytime:I

.field private dlg_save:Landroid/app/AlertDialog;

.field private etLowerValue:Landroid/widget/EditText;

.field private etUpperInterval:Landroid/widget/EditText;

.field private etUpperValue:Landroid/widget/EditText;

.field private et_savePath1:Landroid/widget/EditText;

.field private et_savePath2:Landroid/widget/EditText;

.field private et_savePath3:Landroid/widget/EditText;

.field private et_saveTestDesc:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private img_bottom_arrow:Landroid/widget/ImageView;

.field private img_empty:Landroid/widget/ImageView;

.field private lastdataSetLength:I

.field private ll_fold:Landroid/widget/LinearLayout;

.field private lv_attentAttr:Landroid/widget/ListView;

.field private op:Lcom/tencent/wstt/gt/OutPara;

.field private showDeleteDlg:Landroid/view/View$OnClickListener;

.field private task:Ljava/lang/Runnable;

.field private thresholdKeyListener:Landroid/view/View$OnKeyListener;

.field private tvAbout:Landroid/widget/TextView;

.field private tvAve:Landroid/widget/TextView;

.field private tvKey:Landroid/widget/TextView;

.field private tvMax:Landroid/widget/TextView;

.field private tvMin:Landroid/widget/TextView;

.field private tvTimes:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvValue:Landroid/widget/TextView;

.field private tvWaringArea:Landroid/widget/TextView;

.field private tvWarningCnt:Landroid/widget/TextView;

.field private tvWarningCntToast:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->about:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lastdataSetLength:I

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->chartData:Ljava/util/LinkedList;

    .line 486
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->delaytime:I

    .line 487
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->handler:Landroid/os/Handler;

    .line 488
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$1;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->task:Ljava/lang/Runnable;

    .line 503
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->showDeleteDlg:Landroid/view/View$OnClickListener;

    .line 559
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$3;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->thresholdKeyListener:Landroid/view/View$OnKeyListener;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->refreshAttent()V

    return-void
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvAve:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWarningCnt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->cancelFilterMsgInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$13(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperInterval:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperValue:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$15(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etLowerValue:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$16(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    return-object v0
.end method

.method static synthetic access$17(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->about:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_empty:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lv_attentAttr:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/OutPara;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    return-object v0
.end method

.method static synthetic access$20(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->btn_attent:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$21(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attrAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$22(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    return-void
.end method

.method static synthetic access$23(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->refreshThreshold()V

    return-void
.end method

.method static synthetic access$24(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath3:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$25(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$26(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$27(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_saveTestDesc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$28(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$29(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWarningCntToast:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->createRealtimeData()V

    return-void
.end method

.method static synthetic access$30(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWaringArea:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->delaytime:I

    return v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvTimes:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvMax:Landroid/widget/TextView;

    return-object v0
.end method

.method private cancelFilterMsgInput(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 554
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 555
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 554
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 556
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 557
    return-void
.end method

.method private createRealtimeData()V
    .locals 3

    .prologue
    .line 473
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v1

    iget v2, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lastdataSetLength:I

    if-ne v1, v2, :cond_0

    .line 484
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v1

    iput v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lastdataSetLength:I

    .line 480
    iget v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lastdataSetLength:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 481
    iget v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lastdataSetLength:I

    add-int/lit8 v0, v1, -0x32

    .line 482
    .local v0, "start":I
    :goto_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    invoke-virtual {v1, v0}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->setInput(I)V

    .line 483
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->postInvalidate()V

    goto :goto_0

    .line 481
    .end local v0    # "start":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private refreshAttent()V
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvTimes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSizeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvMin:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvMax:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvAve:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAve()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWarningCnt:Landroid/widget/TextView;

    .line 628
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getUpperWariningCount()I

    move-result v1

    .line 629
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getLowerWariningCount()I

    move-result v2

    .line 628
    add-int/2addr v1, v2

    .line 627
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    return-void
.end method

.method private refreshThreshold()V
    .locals 8

    .prologue
    .line 634
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getduration()I

    move-result v2

    .line 635
    .local v2, "upperDuration":I
    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    .line 637
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperInterval:Landroid/widget/EditText;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 644
    :goto_0
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getUpperValue()D

    move-result-wide v4

    .line 645
    .local v4, "upperValue":D
    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_1

    .line 647
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperValue:Landroid/widget/EditText;

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :goto_1
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getLowerValue()D

    move-result-wide v0

    .line 655
    .local v0, "lowerValue":D
    const-wide/high16 v6, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v3, v0, v6

    if-eqz v3, :cond_2

    .line 657
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etLowerValue:Landroid/widget/EditText;

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 663
    :goto_2
    return-void

    .line 641
    .end local v0    # "lowerValue":D
    .end local v4    # "upperValue":D
    :cond_0
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperInterval:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 651
    .restart local v4    # "upperValue":D
    :cond_1
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperValue:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 661
    .restart local v0    # "lowerValue":D
    :cond_2
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etLowerValue:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super/range {p0 .. p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v12, 0x7f030025

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->setContentView(I)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 128
    .local v5, "intent":Landroid/content/Intent;
    if-nez v5, :cond_0

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->finish()V

    .line 133
    :cond_0
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 134
    .local v4, "extras":Landroid/os/Bundle;
    if-nez v4, :cond_1

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->finish()V

    .line 138
    :cond_1
    const-string v12, "name"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 139
    .local v10, "name":Ljava/lang/String;
    const-string v12, "alias"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "alias":Ljava/lang/String;
    const-string v12, "client"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "client":Ljava/lang/String;
    invoke-static {v10}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getProfilerData(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    if-nez v12, :cond_2

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->finish()V

    .line 446
    :goto_0
    return-void

    .line 152
    :cond_2
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v12}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v12}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getDesc()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->about:Ljava/lang/String;

    .line 157
    const v12, 0x7f0800ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvTitle:Landroid/widget/TextView;

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v12, 0x7f0800e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvKey:Landroid/widget/TextView;

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvKey:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v12, 0x7f0800df

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvAbout:Landroid/widget/TextView;

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvAbout:Landroid/widget/TextView;

    new-instance v13, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1, v10}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$4;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v12, 0x7f0800f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lv_attentAttr:Landroid/widget/ListView;

    .line 175
    new-instance v12, Landroid/widget/ArrayAdapter;

    const v13, 0x7f03002b

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attrAdapter:Landroid/widget/ArrayAdapter;

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v12}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_1
    if-lt v12, v14, :cond_5

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lv_attentAttr:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attrAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lv_attentAttr:Landroid/widget/ListView;

    new-instance v13, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    const v12, 0x7f0800a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_empty:Landroid/widget/ImageView;

    .line 205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_empty:Landroid/widget/ImageView;

    new-instance v13, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$6;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    const v12, 0x7f0800f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->btn_attent:Landroid/widget/Button;

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->btn_attent:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attrAdapter:Landroid/widget/ArrayAdapter;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v13, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->btn_attent:Landroid/widget/Button;

    new-instance v13, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const v12, 0x7f0800c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->btn_back:Landroid/widget/ImageButton;

    .line 243
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->btn_back:Landroid/widget/ImageButton;

    new-instance v13, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$8;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 266
    const v13, 0x7f030006

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 265
    invoke-virtual {v12, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 267
    .local v11, "rl_save":Landroid/widget/RelativeLayout;
    const v12, 0x7f08002a

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 268
    .local v2, "btn_cleanSavePath":Landroid/widget/ImageButton;
    new-instance v12, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$9;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    invoke-virtual {v2, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    const v12, 0x7f08002f

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath1:Landroid/widget/EditText;

    .line 277
    const v12, 0x7f080030

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath2:Landroid/widget/EditText;

    .line 278
    const v12, 0x7f080029

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath3:Landroid/widget/EditText;

    .line 279
    const v12, 0x7f080032

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_saveTestDesc:Landroid/widget/EditText;

    .line 281
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTGWInternal;->getLastSaveFolder()Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "lastSaveLog":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v12, "."

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 283
    const-string v12, ".csv"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 285
    const/4 v12, 0x0

    const-string v13, "."

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 287
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath3:Landroid/widget/EditText;

    invoke-virtual {v12, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath1:Landroid/widget/EditText;

    sget-object v13, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_NAME:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath2:Landroid/widget/EditText;

    sget-object v13, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_VER:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 291
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    const v13, 0x7f090063

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 293
    invoke-virtual {v12, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 294
    const v13, 0x7f090071

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 295
    new-instance v14, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$10;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    .line 294
    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 303
    const v13, 0x7f090070

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 337
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 291
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dlg_save:Landroid/app/AlertDialog;

    .line 339
    const v12, 0x7f0800de

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->btn_delete:Landroid/widget/ImageButton;

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->btn_delete:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->showDeleteDlg:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    const v12, 0x7f0800f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWarningCntToast:Landroid/widget/TextView;

    .line 344
    const v12, 0x7f0800ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWarningCnt:Landroid/widget/TextView;

    .line 347
    const v12, 0x7f0800e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 348
    .local v9, "ll_warnArea":Landroid/widget/LinearLayout;
    const v12, 0x7f0800e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v12}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isEnable()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    const v13, 0x7f02006b

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 352
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    :goto_2
    const v12, 0x7f0800e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWaringArea:Landroid/widget/TextView;

    .line 364
    const v12, 0x7f0800e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->ll_fold:Landroid/widget/LinearLayout;

    .line 367
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v12}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isEnable()Z

    move-result v12

    if-nez v12, :cond_4

    .line 369
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    const v13, 0x7f020039

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 370
    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWarningCntToast:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWarningCnt:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvWaringArea:Landroid/widget/TextView;

    const v13, 0x7f0900ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->ll_fold:Landroid/widget/LinearLayout;

    new-instance v13, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$12;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    iget-boolean v12, v12, Lcom/tencent/wstt/gt/OutPara;->hasMonitorOnce:Z

    if-nez v12, :cond_7

    .line 408
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperInterval:Landroid/widget/EditText;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 409
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperValue:Landroid/widget/EditText;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etLowerValue:Landroid/widget/EditText;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 429
    :goto_3
    const v12, 0x7f0800e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvValue:Landroid/widget/TextView;

    .line 430
    const v12, 0x7f0800cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvTimes:Landroid/widget/TextView;

    .line 431
    const v12, 0x7f0800d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvMin:Landroid/widget/TextView;

    .line 432
    const v12, 0x7f0800d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvMax:Landroid/widget/TextView;

    .line 433
    const v12, 0x7f0800d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvAve:Landroid/widget/TextView;

    .line 436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvValue:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v13}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->refreshAttent()V

    .line 440
    const v12, 0x7f0800d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 442
    .local v8, "ll_chart":Landroid/widget/LinearLayout;
    new-instance v12, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;-><init>(Landroid/content/Context;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    .line 443
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->setInput(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 176
    .end local v2    # "btn_cleanSavePath":Landroid/widget/ImageButton;
    .end local v7    # "lastSaveLog":Ljava/lang/String;
    .end local v8    # "ll_chart":Landroid/widget/LinearLayout;
    .end local v9    # "ll_warnArea":Landroid/widget/LinearLayout;
    .end local v11    # "rl_save":Landroid/widget/RelativeLayout;
    :cond_5
    aget-object v6, v13, v12

    .line 178
    .local v6, "itemName":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attrAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 176
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 356
    .end local v6    # "itemName":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .restart local v2    # "btn_cleanSavePath":Landroid/widget/ImageButton;
    .restart local v7    # "lastSaveLog":Ljava/lang/String;
    .restart local v9    # "ll_warnArea":Landroid/widget/LinearLayout;
    .restart local v11    # "rl_save":Landroid/widget/RelativeLayout;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    const v13, 0x7f020039

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 357
    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 414
    :cond_7
    const v12, 0x7f0800e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperInterval:Landroid/widget/EditText;

    .line 415
    const v12, 0x7f0800e9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperValue:Landroid/widget/EditText;

    .line 416
    const v12, 0x7f0800e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etLowerValue:Landroid/widget/EditText;

    .line 418
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperInterval:Landroid/widget/EditText;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperValue:Landroid/widget/EditText;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etLowerValue:Landroid/widget/EditText;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperInterval:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->thresholdKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etUpperValue:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->thresholdKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->etLowerValue:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->thresholdKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->refreshThreshold()V

    goto/16 :goto_3
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 459
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onResume()V

    .line 460
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 450
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onStart()V

    .line 451
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->postInvalidate()V

    .line 454
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 465
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onStop()V

    .line 466
    return-void
.end method
