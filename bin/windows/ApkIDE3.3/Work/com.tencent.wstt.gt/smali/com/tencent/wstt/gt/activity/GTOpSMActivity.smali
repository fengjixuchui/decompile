.class public Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTOpSMActivity.java"


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

.field private tvBad:Landroid/widget/TextView;

.field private tvGood:Landroid/widget/TextView;

.field private tvKey:Landroid/widget/TextView;

.field private tvMin:Landroid/widget/TextView;

.field private tvScore:Landroid/widget/TextView;

.field private tvTimes:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvValue:Landroid/widget/TextView;

.field private tvWaringArea:Landroid/widget/TextView;

.field private tvWarningCnt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->about:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->lastdataSetLength:I

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->chartData:Ljava/util/LinkedList;

    .line 440
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->delaytime:I

    .line 441
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->handler:Landroid/os/Handler;

    .line 442
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$1;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->task:Ljava/lang/Runnable;

    .line 494
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->showDeleteDlg:Landroid/view/View$OnClickListener;

    .line 546
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$3;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->thresholdKeyListener:Landroid/view/View$OnKeyListener;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvTimes:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvScore:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvGood:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvBad:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->cancelFilterMsgInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$14(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etUpperInterval:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$15(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etUpperValue:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$16(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etLowerValue:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$17(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->about:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvWaringArea:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvAve:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->et_savePath3:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$21(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->et_savePath1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$22(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->et_savePath2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$23(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->et_saveTestDesc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvWarningCnt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/OutPara;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->createRealtimeData()V

    return-void
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->delaytime:I

    return v0
.end method

.method private cancelFilterMsgInput(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 490
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 489
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 491
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 492
    return-void
.end method

.method private createRealtimeData()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 422
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 424
    .local v0, "anchorEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    aget-object v0, v2, v1

    .line 429
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    iget v3, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->lastdataSetLength:I

    if-ne v2, v3, :cond_1

    .line 438
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    iput v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->lastdataSetLength:I

    .line 435
    iget v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->lastdataSetLength:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->lastdataSetLength:I

    add-int/lit8 v1, v2, -0x32

    .line 436
    .local v1, "start":I
    :cond_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v2, v1}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setInput(I)V

    .line 437
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->postInvalidate()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super/range {p0 .. p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v19, 0x7f030024

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->setContentView(I)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 117
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 118
    .local v8, "extras":Landroid/os/Bundle;
    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 119
    .local v13, "name":Ljava/lang/String;
    const-string v19, "alias"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "alias":Ljava/lang/String;
    const-string v19, "client"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, "client":Ljava/lang/String;
    invoke-static {v13}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getProfilerData(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->finish()V

    .line 395
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getDesc()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->about:Ljava/lang/String;

    .line 137
    const v19, 0x7f0800ca

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvTitle:Landroid/widget/TextView;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v22, "SM for Test"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const v19, 0x7f0800e0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvKey:Landroid/widget/TextView;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvKey:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v19, 0x7f0800df

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvAbout:Landroid/widget/TextView;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvAbout:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v22, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v13}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$4;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v19, 0x7f0800c9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->btn_back:Landroid/widget/ImageButton;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->btn_back:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v22, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$5;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v19, 0x7f0800de

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->btn_delete:Landroid/widget/ImageButton;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->btn_delete:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->showDeleteDlg:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v19, 0x7f0800e5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 182
    .local v12, "ll_warnArea":Landroid/widget/LinearLayout;
    const v19, 0x7f0800e4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isEnable()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v22, 0x7f02006b

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 186
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    :goto_1
    const v19, 0x7f0800e3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvWaringArea:Landroid/widget/TextView;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isEnable()Z

    move-result v19

    if-nez v19, :cond_1

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvWaringArea:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v22, 0x7f0900ab

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_1
    const v19, 0x7f0800e2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->ll_fold:Landroid/widget/LinearLayout;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->ll_fold:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    new-instance v22, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v19, 0x7f0800e7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etUpperInterval:Landroid/widget/EditText;

    .line 222
    const v19, 0x7f0800e9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etUpperValue:Landroid/widget/EditText;

    .line 223
    const v19, 0x7f0800e8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etLowerValue:Landroid/widget/EditText;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/tencent/wstt/gt/OutPara;->hasMonitorOnce:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etUpperInterval:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etUpperValue:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etLowerValue:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 264
    :cond_2
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    .line 265
    const v22, 0x7f030006

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 264
    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 266
    .local v16, "rl_save":Landroid/widget/RelativeLayout;
    const v19, 0x7f08002a

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 267
    .local v6, "btn_cleanSavePath":Landroid/widget/ImageButton;
    new-instance v19, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$7;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v19, 0x7f08002f

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->et_savePath1:Landroid/widget/EditText;

    .line 276
    const v19, 0x7f080030

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->et_savePath2:Landroid/widget/EditText;

    .line 277
    const v19, 0x7f080029

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->et_savePath3:Landroid/widget/EditText;

    .line 278
    const v19, 0x7f080032

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->et_saveTestDesc:Landroid/widget/EditText;

    .line 280
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTGWInternal;->getLastSaveFolder()Ljava/lang/String;

    move-result-object v10

    .line 281
    .local v10, "lastSaveLog":Ljava/lang/String;
    if-eqz v10, :cond_3

    const-string v19, "."

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 282
    const-string v19, ".csv"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 284
    const/16 v19, 0x0

    const-string v22, "."

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 286
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->et_savePath3:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->et_savePath1:Landroid/widget/EditText;

    move-object/from16 v19, v0

    sget-object v22, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_NAME:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->et_savePath2:Landroid/widget/EditText;

    move-object/from16 v19, v0

    sget-object v22, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_VER:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 290
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    const v22, 0x7f090063

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 292
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 293
    const v22, 0x7f090071

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 294
    new-instance v23, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$8;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)V

    .line 293
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 302
    const v22, 0x7f090070

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    new-instance v23, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$9;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 336
    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    .line 290
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dlg_save:Landroid/app/AlertDialog;

    .line 338
    const v19, 0x7f0800e1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvValue:Landroid/widget/TextView;

    .line 339
    const v19, 0x7f0800cf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvTimes:Landroid/widget/TextView;

    .line 340
    const v19, 0x7f0800d5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvMin:Landroid/widget/TextView;

    .line 342
    const v19, 0x7f0800d1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvAve:Landroid/widget/TextView;

    .line 343
    const v19, 0x7f0800ec

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvScore:Landroid/widget/TextView;

    .line 344
    const v19, 0x7f0800ee

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvGood:Landroid/widget/TextView;

    .line 345
    const v19, 0x7f0800f0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvBad:Landroid/widget/TextView;

    .line 346
    const v19, 0x7f0800ea

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvWarningCnt:Landroid/widget/TextView;

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvValue:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getLastValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 359
    .local v5, "anchorEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_4

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v19

    const/16 v22, 0x0

    aget-object v5, v19, v22

    .line 365
    :cond_4
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordList()Ljava/util/ArrayList;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/tencent/wstt/gt/api/utils/SMUtils;->getSmDetail(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    .line 366
    .local v17, "smrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v22, 0x6

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->finish()V

    goto/16 :goto_0

    .line 190
    .end local v5    # "anchorEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .end local v6    # "btn_cleanSavePath":Landroid/widget/ImageButton;
    .end local v10    # "lastSaveLog":Ljava/lang/String;
    .end local v16    # "rl_save":Landroid/widget/RelativeLayout;
    .end local v17    # "smrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->img_bottom_arrow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v22, 0x7f020039

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 191
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 237
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etUpperInterval:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etUpperValue:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etLowerValue:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etUpperInterval:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->thresholdKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etUpperValue:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->thresholdKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etLowerValue:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->thresholdKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getduration()I

    move-result v18

    .line 246
    .local v18, "upperDuration":I
    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etUpperInterval:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getUpperValue()D

    move-result-wide v20

    .line 252
    .local v20, "upperValue":D
    const-wide v22, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v19, v20, v22

    if-eqz v19, :cond_8

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etUpperValue:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getLowerValue()D

    move-result-wide v14

    .line 258
    .local v14, "lowerValue":D
    const-wide/high16 v22, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v19, v14, v22

    if-eqz v19, :cond_2

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->etLowerValue:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-static {v14, v15}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 354
    .end local v14    # "lowerValue":D
    .end local v18    # "upperDuration":I
    .end local v20    # "upperValue":D
    .restart local v6    # "btn_cleanSavePath":Landroid/widget/ImageButton;
    .restart local v10    # "lastSaveLog":Ljava/lang/String;
    .restart local v16    # "rl_save":Landroid/widget/RelativeLayout;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvValue:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->op:Lcom/tencent/wstt/gt/OutPara;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 372
    .restart local v5    # "anchorEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .restart local v17    # "smrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v22, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exInt_1:I

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v22, v0

    const/16 v19, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exInt_2:I

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v22, v0

    const/16 v19, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exInt_3:I

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvTimes:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSizeText()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvMin:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMin()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvAve:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAve()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvScore:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v19, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvGood:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v19, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvBad:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvWarningCnt:Landroid/widget/TextView;

    move-object/from16 v19, v0

    .line 387
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getUpperWariningCount()I

    move-result v22

    .line 388
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getLowerWariningCount()I

    move-result v23

    .line 387
    add-int v22, v22, v23

    .line 386
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    const v19, 0x7f0800d6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 392
    .local v11, "ll_chart":Landroid/widget/LinearLayout;
    new-instance v19, Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;-><init>(Landroid/content/Context;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setInput(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 408
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onResume()V

    .line 409
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onStart()V

    .line 400
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->postInvalidate()V

    .line 403
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 404
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 414
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onStop()V

    .line 415
    return-void
.end method
