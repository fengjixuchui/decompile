.class public Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTOpSinglePerfActivity.java"


# instance fields
.field private about:Ljava/lang/String;

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

.field chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

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

.field private lastdataSetLength:I

.field private ll_fold:Landroid/widget/LinearLayout;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->about:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->lastdataSetLength:I

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->chartData:Ljava/util/LinkedList;

    .line 419
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->delaytime:I

    .line 420
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->handler:Landroid/os/Handler;

    .line 421
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$1;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->task:Ljava/lang/Runnable;

    .line 462
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->showDeleteDlg:Landroid/view/View$OnClickListener;

    .line 511
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$3;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->thresholdKeyListener:Landroid/view/View$OnKeyListener;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvTimes:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->delaytime:I

    return v0
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->cancelFilterMsgInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etUpperInterval:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etUpperValue:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etLowerValue:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$15(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->about:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvWaringArea:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->et_savePath3:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$19(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->et_savePath1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->et_savePath2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$21(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->et_saveTestDesc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvMax:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvAve:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvWarningCnt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Lcom/tencent/wstt/gt/OutPara;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->createRealtimeData()V

    return-void
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelFilterMsgInput(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 458
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 457
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 459
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 460
    return-void
.end method

.method private createRealtimeData()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 403
    .local v0, "anchorEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 405
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    aget-object v0, v2, v1

    .line 408
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    iget v3, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->lastdataSetLength:I

    if-ne v2, v3, :cond_1

    .line 417
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    iput v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->lastdataSetLength:I

    .line 414
    iget v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->lastdataSetLength:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->lastdataSetLength:I

    add-int/lit8 v1, v2, -0x32

    .line 415
    .local v1, "start":I
    :cond_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v2, v1}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setInput(I)V

    .line 416
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->postInvalidate()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super/range {p0 .. p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v20, 0x7f030023

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->setContentView(I)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 115
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 116
    .local v8, "extras":Landroid/os/Bundle;
    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 117
    .local v13, "name":Ljava/lang/String;
    const-string v20, "alias"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "alias":Ljava/lang/String;
    const-string v20, "client"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "client":Ljava/lang/String;
    invoke-static {v13}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getProfilerData(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 123
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 130
    new-instance v20, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;-><init>(Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setName(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClientKey(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setExkey(I)V

    .line 135
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getDesc()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->about:Ljava/lang/String;

    .line 137
    const v20, 0x7f0800ca

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvTitle:Landroid/widget/TextView;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v20, 0x7f0800e0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvKey:Landroid/widget/TextView;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvKey:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const v20, 0x7f0800df

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvAbout:Landroid/widget/TextView;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvAbout:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v13}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$4;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v20, 0x7f0800c9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->btn_back:Landroid/widget/ImageButton;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->btn_back:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    new-instance v21, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$5;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v20, 0x7f0800de

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->btn_delete:Landroid/widget/ImageButton;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->btn_delete:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->showDeleteDlg:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v20, 0x7f0800e5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 181
    .local v12, "ll_warnArea":Landroid/widget/LinearLayout;
    const v20, 0x7f0800e4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isEnable()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f02006b

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 185
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    :goto_0
    const v20, 0x7f0800e3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvWaringArea:Landroid/widget/TextView;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isEnable()Z

    move-result v20

    if-nez v20, :cond_1

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvWaringArea:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0900ab

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_1
    const v20, 0x7f0800e2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->ll_fold:Landroid/widget/LinearLayout;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->ll_fold:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    new-instance v21, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$6;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v20, 0x7f0800e7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etUpperInterval:Landroid/widget/EditText;

    .line 221
    const v20, 0x7f0800e9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etUpperValue:Landroid/widget/EditText;

    .line 222
    const v20, 0x7f0800e8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etLowerValue:Landroid/widget/EditText;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/tencent/wstt/gt/OutPara;->hasMonitorOnce:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etUpperInterval:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etUpperValue:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etLowerValue:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 263
    :cond_2
    :goto_1
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    .line 264
    const v21, 0x7f030006

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 263
    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 265
    .local v16, "rl_save":Landroid/widget/RelativeLayout;
    const v20, 0x7f08002a

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 266
    .local v6, "btn_cleanSavePath":Landroid/widget/ImageButton;
    new-instance v20, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$7;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    const v20, 0x7f080029

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->et_savePath3:Landroid/widget/EditText;

    .line 275
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTGWInternal;->getLastSaveFolder()Ljava/lang/String;

    move-result-object v10

    .line 276
    .local v10, "lastSaveLog":Ljava/lang/String;
    if-eqz v10, :cond_3

    const-string v20, "."

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 277
    const-string v20, ".csv"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 279
    const/16 v20, 0x0

    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 281
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->et_savePath3:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const v20, 0x7f08002f

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->et_savePath1:Landroid/widget/EditText;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->et_savePath1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    sget-object v21, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_NAME:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const v20, 0x7f080030

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->et_savePath2:Landroid/widget/EditText;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->et_savePath2:Landroid/widget/EditText;

    move-object/from16 v20, v0

    sget-object v21, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_VER:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const v20, 0x7f080032

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->et_saveTestDesc:Landroid/widget/EditText;

    .line 290
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    const v21, 0x7f090063

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 292
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 293
    const v21, 0x7f090071

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 294
    new-instance v22, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$8;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)V

    .line 293
    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 302
    const v21, 0x7f090070

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$9;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)V

    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 336
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    .line 290
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dlg_save:Landroid/app/AlertDialog;

    .line 338
    const v20, 0x7f0800e1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvValue:Landroid/widget/TextView;

    .line 339
    const v20, 0x7f0800cf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvTimes:Landroid/widget/TextView;

    .line 340
    const v20, 0x7f0800d5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvMin:Landroid/widget/TextView;

    .line 341
    const v20, 0x7f0800d3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvMax:Landroid/widget/TextView;

    .line 342
    const v20, 0x7f0800d1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvAve:Landroid/widget/TextView;

    .line 343
    const v20, 0x7f0800ea

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvWarningCnt:Landroid/widget/TextView;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    move-object/from16 v20, v0

    if-nez v20, :cond_9

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvValue:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getLastValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 356
    .local v5, "anchorEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_4

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v5, v20, v21

    .line 361
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvTimes:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSizeText()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvMin:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMin()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvMax:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMax()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvAve:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAve()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvWarningCnt:Landroid/widget/TextView;

    move-object/from16 v20, v0

    .line 366
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getUpperWariningCount()I

    move-result v21

    .line 367
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getLowerWariningCount()I

    move-result v22

    .line 366
    add-int v21, v21, v22

    .line 365
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    const v20, 0x7f0800d6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 371
    .local v11, "ll_chart":Landroid/widget/LinearLayout;
    new-instance v20, Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;-><init>(Landroid/content/Context;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setInput(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    return-void

    .line 189
    .end local v5    # "anchorEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .end local v6    # "btn_cleanSavePath":Landroid/widget/ImageButton;
    .end local v10    # "lastSaveLog":Ljava/lang/String;
    .end local v11    # "ll_chart":Landroid/widget/LinearLayout;
    .end local v16    # "rl_save":Landroid/widget/RelativeLayout;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f020039

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 190
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 236
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etUpperInterval:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setInputType(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etUpperValue:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setInputType(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etLowerValue:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setInputType(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etUpperInterval:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->thresholdKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etUpperValue:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->thresholdKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etLowerValue:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->thresholdKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getduration()I

    move-result v17

    .line 245
    .local v17, "upperDuration":I
    const v20, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etUpperInterval:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getUpperValue()D

    move-result-wide v18

    .line 251
    .local v18, "upperValue":D
    const-wide v20, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v20, v18, v20

    if-eqz v20, :cond_8

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etUpperValue:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getLowerValue()D

    move-result-wide v14

    .line 257
    .local v14, "lowerValue":D
    const-wide/high16 v20, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v20, v14, v20

    if-eqz v20, :cond_2

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->etLowerValue:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v14, v15}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 351
    .end local v14    # "lowerValue":D
    .end local v17    # "upperDuration":I
    .end local v18    # "upperValue":D
    .restart local v6    # "btn_cleanSavePath":Landroid/widget/ImageButton;
    .restart local v10    # "lastSaveLog":Ljava/lang/String;
    .restart local v16    # "rl_save":Landroid/widget/RelativeLayout;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->tvValue:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 387
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onResume()V

    .line 388
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 378
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onStart()V

    .line 379
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->postInvalidate()V

    .line 382
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 393
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onStop()V

    .line 394
    return-void
.end method
