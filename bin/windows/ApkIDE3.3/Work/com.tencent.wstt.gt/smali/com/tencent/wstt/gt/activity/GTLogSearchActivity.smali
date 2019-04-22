.class public Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTLogSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;
    }
.end annotation


# instance fields
.field private arrayAdapter:Lcom/tencent/wstt/gt/log/SearchLogAdapter;

.field private btn_back:Landroid/widget/Button;

.field private btn_msg_clear:Landroid/widget/ImageButton;

.field btn_next:Landroid/widget/ImageButton;

.field btn_pre:Landroid/widget/ImageButton;

.field private dataSet:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

.field private et_Msg:Landroid/widget/EditText;

.field private filterListView:Landroid/widget/ListView;

.field private handler:Landroid/os/Handler;

.field private img_empty:Landroid/widget/ImageView;

.field private listView:Landroid/widget/ListView;

.field private msgWatched:Z

.field private msg_watcher:Landroid/text/TextWatcher;

.field private proDialog:Landroid/app/ProgressDialog;

.field tv_count:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 81
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$1;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->msg_watcher:Landroid/text/TextWatcher;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->msgWatched:Z

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->filterListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->img_empty:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->proDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$13(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->proDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$14(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;[Lcom/tencent/wstt/gt/ui/model/LogEntry;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->dataSet:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    return-void
.end method

.method static synthetic access$15(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->dataSet:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    return-object v0
.end method

.method static synthetic access$16(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Lcom/tencent/wstt/gt/log/SearchLogAdapter;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->arrayAdapter:Lcom/tencent/wstt/gt/log/SearchLogAdapter;

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->btn_msg_clear:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->msgWatched:Z

    return v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->cancelFilterMsgInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->msgWatched:Z

    return-void
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->et_Msg:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->msg_watcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->doSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Lcom/tencent/wstt/gt/log/SearchLogAdapter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->arrayAdapter:Lcom/tencent/wstt/gt/log/SearchLogAdapter;

    return-object v0
.end method

.method private cancelFilterMsgInput(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 450
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 449
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 451
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 452
    return-void
.end method

.method private doSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "searchKey"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-static {p1}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setLastSearchMsg(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->dataSet:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setLastSearchDataSet([Lcom/tencent/wstt/gt/ui/model/LogEntry;)V

    .line 425
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->arrayAdapter:Lcom/tencent/wstt/gt/log/SearchLogAdapter;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/SearchLogAdapter;->notifyDataSetChanged()V

    .line 430
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$11;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$11;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->tv_count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    return-void
.end method

.method private openLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Ljava/lang/String;)V

    .line 417
    .local v0, "openFileTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;[Lcom/tencent/wstt/gt/ui/model/LogEntry;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 418
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v2, 0x7f030013

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->setContentView(I)V

    .line 118
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->handler:Landroid/os/Handler;

    .line 120
    const v2, 0x7f080089

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->tv_count:Landroid/widget/TextView;

    .line 121
    const v2, 0x7f08008c

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->btn_pre:Landroid/widget/ImageButton;

    .line 122
    const v2, 0x7f08008b

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->btn_next:Landroid/widget/ImageButton;

    .line 127
    const v2, 0x7f080090

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->img_empty:Landroid/widget/ImageView;

    .line 128
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->img_empty:Landroid/widget/ImageView;

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$2;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$2;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    const v2, 0x7f080091

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->filterListView:Landroid/widget/ListView;

    .line 152
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->filterListView:Landroid/widget/ListView;

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 183
    const v2, 0x7f080086

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->et_Msg:Landroid/widget/EditText;

    .line 185
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->et_Msg:Landroid/widget/EditText;

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->et_Msg:Landroid/widget/EditText;

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$5;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$5;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 241
    const v2, 0x7f080087

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->btn_msg_clear:Landroid/widget/ImageButton;

    .line 242
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->btn_msg_clear:Landroid/widget/ImageButton;

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$6;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$6;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v2, 0x7f080085

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->btn_back:Landroid/widget/Button;

    .line 257
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->btn_back:Landroid/widget/Button;

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$7;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$7;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->btn_pre:Landroid/widget/ImageButton;

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->btn_next:Landroid/widget/ImageButton;

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v2, 0x7f08008f

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->listView:Landroid/widget/ListView;

    .line 351
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "openFileName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "openFileName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 356
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilteredLogs()[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->dataSet:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .line 357
    new-instance v2, Lcom/tencent/wstt/gt/log/SearchLogAdapter;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->dataSet:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    invoke-direct {v2, p0, v3}, Lcom/tencent/wstt/gt/log/SearchLogAdapter;-><init>(Landroid/content/Context;[Lcom/tencent/wstt/gt/ui/model/LogEntry;)V

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->arrayAdapter:Lcom/tencent/wstt/gt/log/SearchLogAdapter;

    .line 358
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->arrayAdapter:Lcom/tencent/wstt/gt/log/SearchLogAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-direct {p0, v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->openLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 374
    const-string v0, ""

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setLastSearchMsg(Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tencent/wstt/gt/ui/model/LogEntry;

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setLastSearchDataSet([Lcom/tencent/wstt/gt/ui/model/LogEntry;)V

    .line 376
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->clearLastSearchMarks()V

    .line 377
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onDestroy()V

    .line 378
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 368
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onResume()V

    .line 369
    return-void
.end method
