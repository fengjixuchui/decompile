.class public Lcom/tencent/wstt/gt/activity/GTLogFragment;
.super Landroid/support/v4/app/Fragment;
.source "GTLogFragment.java"

# interfaces
.implements Lcom/tencent/wstt/gt/log/LogListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;,
        Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "--GTLogFragment--"


# instance fields
.field private btn_delete:Landroid/widget/ImageButton;

.field private btn_level:Landroid/widget/Button;

.field private btn_level_toast:Landroid/widget/ImageButton;

.field private btn_msg_clear:Landroid/widget/ImageButton;

.field private btn_msg_input_cancel:Landroid/widget/Button;

.field private btn_open:Landroid/widget/ImageButton;

.field private btn_save:Landroid/widget/ImageButton;

.field private btn_search:Landroid/widget/ImageButton;

.field private btn_tag:Landroid/widget/Button;

.field private btn_tag_toast:Landroid/widget/ImageButton;

.field private cb_logcatSwitch:Lcom/tencent/wstt/gt/views/GTCheckBox;

.field private currentlyOpenLog:Ljava/lang/String;

.field displayWidth:I

.field private dlg_save:Landroid/app/AlertDialog;

.field private et_Msg:Landroid/widget/EditText;

.field private et_savePath:Landroid/widget/EditText;

.field private filterListView:Landroid/widget/ListView;

.field handler:Landroid/os/Handler;

.field private img_empty:Landroid/widget/ImageView;

.field private levelAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private logAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

.field private logListTouchListener:Landroid/view/View$OnTouchListener;

.field logcatTask:Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;

.field private msgWatched:Z

.field private msg_watcher:Landroid/text/TextWatcher;

.field private rl_log_filter:Landroid/widget/RelativeLayout;

.field private rl_loglist:Landroid/widget/RelativeLayout;

.field private startY:F

.field private tagAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tempShowDownMsgList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 126
    iput v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->displayWidth:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->currentlyOpenLog:Ljava/lang/String;

    .line 130
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTLogFragment$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$1;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->msg_watcher:Landroid/text/TextWatcher;

    .line 162
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->msgWatched:Z

    .line 499
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTLogFragment$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$2;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->logListTouchListener:Landroid/view/View$OnTouchListener;

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tencent/wstt/gt/activity/GTLogFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->cancelFilterMsgInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_savePath:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Lcom/tencent/wstt/gt/log/NormalLogAdapter;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->logAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->tagAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$14(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_tag:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$15(Lcom/tencent/wstt/gt/activity/GTLogFragment;Z)V
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->msgWatched:Z

    return-void
.end method

.method static synthetic access$16(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$17(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->msg_watcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$18(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_level:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$19(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->levelAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_clear:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$20(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->msgEtOnFocusOrClick()V

    return-void
.end method

.method static synthetic access$21(Lcom/tencent/wstt/gt/activity/GTLogFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->openLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->query()V

    return-void
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/activity/GTLogFragment;F)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->startY:F

    return-void
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/activity/GTLogFragment;)F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->startY:F

    return v0
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->rl_log_filter:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->tempShowDownMsgList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/activity/GTLogFragment;Ljava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->tempShowDownMsgList:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->msgWatched:Z

    return v0
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Lcom/tencent/wstt/gt/views/GTCheckBox;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->cb_logcatSwitch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    return-object v0
.end method

.method private cancelFilterMsgInput(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 484
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_input_cancel:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 485
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_level:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 486
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_tag:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 487
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_level_toast:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 488
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_tag_toast:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 490
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 491
    .local v1, "laParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->displayWidth:I

    int-to-double v2, v2

    const-wide v4, 0x4005eb851eb851ecL    # 2.74

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 492
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 495
    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 494
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 496
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 497
    return-void
.end method

.method private filterMsgInput()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 472
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 473
    .local v0, "laParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->displayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->displayWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 474
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_input_cancel:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_level:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 478
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_tag:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 479
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_level_toast:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 480
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_tag_toast:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 481
    return-void
.end method

.method private initCurLogAdapter()V
    .locals 2

    .prologue
    .line 623
    new-instance v0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->logAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    .line 624
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->logAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setCurLogAdapter(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)V

    .line 625
    return-void
.end method

.method private msgEtOnFocusOrClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 456
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->msgWatched:Z

    if-nez v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->msg_watcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 458
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->msgWatched:Z

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterMsgInput()V

    .line 462
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;Landroid/content/Context;)V

    .line 463
    .local v0, "ma":Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 464
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    :cond_1
    return-void
.end method

.method private openLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 584
    :goto_0
    return-void

    .line 579
    :cond_0
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->currentlyOpenLog:Ljava/lang/String;

    .line 580
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 582
    const-string v1, "openFileName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private query()V
    .locals 4

    .prologue
    .line 587
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->logAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterLevel()I

    move-result v1

    .line 588
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterTag()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterMsg()Ljava/lang/String;

    move-result-object v3

    .line 587
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->query(ILjava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method private showOpenLogDialog()V
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 531
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->isSDCardExist()Z

    move-result v6

    if-nez v6, :cond_0

    .line 569
    :goto_0
    return-void

    .line 535
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 536
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/SaveLogHelper;->getLogFilenames()Ljava/util/List;

    move-result-object v6

    .line 535
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 538
    .local v2, "filenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v6, 0x7f0900ba

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 540
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 544
    :cond_1
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->currentlyOpenLog:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 545
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->currentlyOpenLog:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 547
    .local v3, "logToSelect":I
    :goto_1
    new-instance v1, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v1, v6, v2, v3, v5}, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    .line 550
    .local v1, "dropdownAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 552
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0900bb

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 553
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 555
    if-ne v3, v4, :cond_2

    move v3, v5

    .line 556
    .end local v3    # "logToSelect":I
    :cond_2
    new-instance v4, Lcom/tencent/wstt/gt/activity/GTLogFragment$11;

    invoke-direct {v4, p0, v2}, Lcom/tencent/wstt/gt/activity/GTLogFragment$11;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;Ljava/util/List;)V

    .line 554
    invoke-virtual {v6, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 568
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dropdownAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_3
    move v3, v4

    .line 545
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x14

    const v5, 0x7f020072

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 739
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 860
    :goto_0
    return-void

    .line 742
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 743
    const-class v5, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    .line 742
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 744
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 745
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 748
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 749
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09006a

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 750
    const v4, 0x7f090068

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 751
    const v4, 0x7f090071

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 752
    new-instance v5, Lcom/tencent/wstt/gt/activity/GTLogFragment$13;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$13;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    .line 751
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 759
    const v4, 0x7f090070

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 760
    new-instance v5, Lcom/tencent/wstt/gt/activity/GTLogFragment$14;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$14;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    .line 759
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 772
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 775
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_2
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_savePath:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 778
    :sswitch_3
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastSaveLog()Ljava/lang/String;

    move-result-object v3

    .line 779
    .local v3, "lastSaveLog":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 780
    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 782
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 781
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 784
    :cond_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_savePath:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->dlg_save:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 788
    .end local v3    # "lastSaveLog":Ljava/lang/String;
    :sswitch_4
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_level:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 789
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTLogFragment$15;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$15;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 799
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 800
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 801
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 803
    :cond_1
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->levelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 804
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 805
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 809
    :sswitch_5
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_tag:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 810
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTLogFragment$16;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$16;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 819
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 820
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 821
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 823
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v1, "curTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "TAG"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 826
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 827
    const v6, 0x7f03002b

    invoke-direct {v4, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 826
    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->tagAdapter:Landroid/widget/ArrayAdapter;

    .line 829
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->tagAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 830
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 831
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 835
    .end local v1    # "curTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_6
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->rl_log_filter:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 836
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->rl_log_filter:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 837
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 839
    :cond_3
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->rl_log_filter:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 843
    :sswitch_7
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->msgEtOnFocusOrClick()V

    goto/16 :goto_0

    .line 846
    :sswitch_8
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 847
    const-string v4, ""

    invoke-static {v4}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setCurFilterMsg(Ljava/lang/String;)V

    .line 848
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_clear:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 851
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->onLogChanged()V

    goto/16 :goto_0

    .line 854
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->cancelFilterMsgInput(Landroid/view/View;)V

    goto/16 :goto_0

    .line 857
    :sswitch_a
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->showOpenLogDialog()V

    goto/16 :goto_0

    .line 739
    :sswitch_data_0
    .sparse-switch
        0x7f08002a -> :sswitch_2
        0x7f080098 -> :sswitch_a
        0x7f080099 -> :sswitch_3
        0x7f08009a -> :sswitch_0
        0x7f08009b -> :sswitch_1
        0x7f0800a1 -> :sswitch_6
        0x7f0800a5 -> :sswitch_7
        0x7f0800a6 -> :sswitch_8
        0x7f0800a7 -> :sswitch_9
        0x7f0800a8 -> :sswitch_4
        0x7f0800aa -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f03002b

    const/4 v7, 0x0

    .line 166
    const v4, 0x7f030015

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, "logLayout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDisplayWidth(Landroid/app/Activity;)I

    move-result v4

    iput v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->displayWidth:I

    .line 169
    const v4, 0x7f0800a4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->rl_log_filter:Landroid/widget/RelativeLayout;

    .line 171
    const v4, 0x7f080096

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tencent/wstt/gt/views/GTCheckBox;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->cb_logcatSwitch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    .line 172
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->cb_logcatSwitch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTLogFragment$3;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$3;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    const v4, 0x7f08009b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_delete:Landroid/widget/ImageButton;

    .line 186
    const v4, 0x7f080099

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_save:Landroid/widget/ImageButton;

    .line 187
    const v4, 0x7f080098

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_open:Landroid/widget/ImageButton;

    .line 189
    const v4, 0x7f0800a9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_level_toast:Landroid/widget/ImageButton;

    .line 190
    const v4, 0x7f0800ab

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_tag_toast:Landroid/widget/ImageButton;

    .line 195
    const v4, 0x7f0800a3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;

    .line 196
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTLogFragment$4;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$4;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 211
    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 210
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 213
    .local v3, "rl_save":Landroid/widget/RelativeLayout;
    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 212
    check-cast v0, Landroid/widget/ImageButton;

    .line 214
    .local v0, "btn_cleanSavePath":Landroid/widget/ImageButton;
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v4, 0x7f080029

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_savePath:Landroid/widget/EditText;

    .line 217
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastSaveLog()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "lastSaveLog":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    const-string v4, ".log"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 223
    :cond_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_savePath:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    const v5, 0x7f090067

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 226
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 227
    const v5, 0x7f090071

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/wstt/gt/activity/GTLogFragment$5;

    invoke-direct {v6, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$5;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 234
    const v5, 0x7f090070

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/wstt/gt/activity/GTLogFragment$6;

    invoke-direct {v6, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$6;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 268
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 224
    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->dlg_save:Landroid/app/AlertDialog;

    .line 270
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_save:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_delete:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_open:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v4, 0x7f0800a1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->rl_loglist:Landroid/widget/RelativeLayout;

    .line 280
    const v4, 0x7f0800a2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->listView:Landroid/widget/ListView;

    .line 281
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->initCurLogAdapter()V

    .line 282
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->logAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->setFilter()V

    .line 283
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->logAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->listView:Landroid/widget/ListView;

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTLogFragment$7;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$7;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 303
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->rl_loglist:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->logListTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 307
    const v4, 0x7f0800ad

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    .line 308
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 309
    invoke-direct {v4, v5, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 308
    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->tagAdapter:Landroid/widget/ArrayAdapter;

    .line 310
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->tagAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 357
    invoke-static {p0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->addLogListener(Lcom/tencent/wstt/gt/log/LogListener;)V

    .line 363
    const v4, 0x7f08009a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_search:Landroid/widget/ImageButton;

    .line 364
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_search:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    const v4, 0x7f0800a8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_level:Landroid/widget/Button;

    .line 368
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/high16 v5, 0x7f050000

    invoke-static {v4, v5, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->levelAdapter:Landroid/widget/ArrayAdapter;

    .line 370
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_level:Landroid/widget/Button;

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->levelAdapter:Landroid/widget/ArrayAdapter;

    .line 371
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterLevel()I

    move-result v6

    .line 370
    invoke-virtual {v4, v6}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_level:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    const v4, 0x7f0800aa

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_tag:Landroid/widget/Button;

    .line 377
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 378
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_tag:Landroid/widget/Button;

    const-string v5, "TAG"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :goto_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_tag:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    const v4, 0x7f0800a5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    .line 387
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTLogFragment$9;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$9;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 400
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTLogFragment$10;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$10;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 437
    const v4, 0x7f0800a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_clear:Landroid/widget/ImageButton;

    .line 438
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_clear:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 441
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_clear:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 447
    :goto_1
    const v4, 0x7f0800a7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_input_cancel:Landroid/widget/Button;

    .line 448
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_input_cancel:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->handler:Landroid/os/Handler;

    .line 452
    return-object v2

    .line 380
    :cond_1
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_tag:Landroid/widget/Button;

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_clear:Landroid/widget/ImageButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public onLogChanged()V
    .locals 2

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTLogFragment$12;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$12;-><init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 601
    invoke-static {p0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->removeLogListener(Lcom/tencent/wstt/gt/log/LogListener;)V

    .line 605
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 606
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 607
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 594
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 595
    invoke-static {p0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->addLogListener(Lcom/tencent/wstt/gt/log/LogListener;)V

    .line 596
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->query()V

    .line 597
    return-void
.end method
