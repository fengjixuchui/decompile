.class public Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTPerfGroupDetailActivity.java"


# instance fields
.field private btn_back:Landroid/widget/ImageButton;

.field private btn_save:Landroid/widget/ImageButton;

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

.field dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

.field private delaytime:I

.field private dlg_save:Landroid/app/AlertDialog;

.field private et_savePath:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private lastdataSetLength:I

.field private task:Ljava/lang/Runnable;

.field private tvAve:Landroid/widget/TextView;

.field private tvGroup:Landroid/widget/TextView;

.field private tvMax:Landroid/widget/TextView;

.field private tvMin:Landroid/widget/TextView;

.field private tvTag:Landroid/widget/TextView;

.field private tvTimes:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->lastdataSetLength:I

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->chartData:Ljava/util/LinkedList;

    .line 229
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->delaytime:I

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->handler:Landroid/os/Handler;

    .line 231
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->task:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvTimes:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvMax:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvAve:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->createRealtimeData()V

    return-void
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->delaytime:I

    return v0
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->et_savePath:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dlg_save:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createRealtimeData()V
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v1

    iget v2, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->lastdataSetLength:I

    if-ne v1, v2, :cond_0

    .line 227
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v1

    iput v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->lastdataSetLength:I

    .line 224
    iget v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->lastdataSetLength:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->lastdataSetLength:I

    add-int/lit8 v0, v1, -0x32

    .line 225
    .local v0, "start":I
    :goto_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v1, v0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setInput(I)V

    .line 226
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->postInvalidate()V

    goto :goto_0

    .line 224
    .end local v0    # "start":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v10, 0x7f030020

    invoke-virtual {p0, v10}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 79
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->finish()V

    .line 84
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 85
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->finish()V

    .line 89
    :cond_1
    const-string v10, "name"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "name":Ljava/lang/String;
    const-string v10, "parent_name"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "parentName":Ljava/lang/String;
    const-string v10, "tid"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 93
    .local v8, "tid":J
    invoke-static {v8, v9, v6, v5}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->findTagTimeEntry(JLjava/lang/String;Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v10

    iput-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 95
    const v10, 0x7f0800c9

    invoke-virtual {p0, v10}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->btn_back:Landroid/widget/ImageButton;

    .line 96
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->btn_back:Landroid/widget/ImageButton;

    new-instance v11, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$2;

    invoke-direct {v11, p0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$2;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v10, 0x7f0800cb

    invoke-virtual {p0, v10}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->btn_save:Landroid/widget/ImageButton;

    .line 104
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->btn_save:Landroid/widget/ImageButton;

    new-instance v11, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$3;

    invoke-direct {v11, p0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$3;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 120
    const v11, 0x7f030005

    const/4 v12, 0x0

    .line 119
    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 121
    .local v7, "rl_save":Landroid/widget/RelativeLayout;
    const v10, 0x7f08002a

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 122
    .local v0, "btn_cleanSavePath":Landroid/widget/ImageButton;
    new-instance v10, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$4;

    invoke-direct {v10, p0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$4;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v10, 0x7f080029

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->et_savePath:Landroid/widget/EditText;

    .line 131
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->getLastSaveTimeDetail()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "lastSaveLog":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 133
    const-string v10, ".csv"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 135
    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 137
    :cond_2
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->et_savePath:Landroid/widget/EditText;

    invoke-virtual {v10, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    const v11, 0x7f090067

    invoke-virtual {p0, v11}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 141
    invoke-virtual {v10, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 142
    const v11, 0x7f090071

    invoke-virtual {p0, v11}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 143
    new-instance v12, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$5;

    invoke-direct {v12, p0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$5;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)V

    .line 142
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 151
    const v11, 0x7f090070

    invoke-virtual {p0, v11}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$6;

    invoke-direct {v12, p0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$6;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 159
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 139
    iput-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dlg_save:Landroid/app/AlertDialog;

    .line 161
    const v10, 0x7f0800cc

    invoke-virtual {p0, v10}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvGroup:Landroid/widget/TextView;

    .line 162
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvGroup:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 163
    const v10, 0x7f0800cd

    invoke-virtual {p0, v10}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvTag:Landroid/widget/TextView;

    .line 164
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvTag:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 165
    const v10, 0x7f0800cf

    invoke-virtual {p0, v10}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvTimes:Landroid/widget/TextView;

    .line 166
    const v10, 0x7f0800d5

    invoke-virtual {p0, v10}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvMin:Landroid/widget/TextView;

    .line 167
    const v10, 0x7f0800d3

    invoke-virtual {p0, v10}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvMax:Landroid/widget/TextView;

    .line 168
    const v10, 0x7f0800d1

    invoke-virtual {p0, v10}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvAve:Landroid/widget/TextView;

    .line 170
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvGroup:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_3

    .line 173
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvTag:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v11}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getNameT()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_0
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvTimes:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v11}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSizeText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvMin:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v11}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMin()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvMax:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v11}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMax()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvAve:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v11}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAve()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const v10, 0x7f0800d6

    invoke-virtual {p0, v10}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 186
    .local v4, "ll_chart":Landroid/widget/LinearLayout;
    new-instance v10, Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    iget-object v11, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-direct {v10, p0, v11}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;-><init>(Landroid/content/Context;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    iput-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    .line 187
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v10, v13}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setInput(I)V

    .line 188
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    return-void

    .line 177
    .end local v4    # "ll_chart":Landroid/widget/LinearLayout;
    :cond_3
    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onResume()V

    .line 205
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onStart()V

    .line 195
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->postInvalidate()V

    .line 199
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onStop()V

    .line 211
    return-void
.end method
