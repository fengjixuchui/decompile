.class public Lcom/tencent/wstt/gt/activity/GTPerfFragment;
.super Landroid/support/v4/app/Fragment;
.source "GTPerfFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;,
        Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderGroup;,
        Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;
    }
.end annotation


# static fields
.field static final TOAST_NOT_START:Ljava/lang/String;

.field static final TOAST_STARTED:Ljava/lang/String;


# instance fields
.field private btn_delete:Landroid/widget/ImageButton;

.field private btn_save:Landroid/widget/ImageButton;

.field private btn_start:Landroid/widget/ImageButton;

.field private btn_stop:Landroid/widget/ImageButton;

.field private dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

.field private delaytime:I

.field private dlg_save:Landroid/app/AlertDialog;

.field private et_savePath:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private listView:Landroid/widget/ListView;

.field private showDeleteDlg:Landroid/view/View$OnClickListener;

.field private task:Ljava/lang/Runnable;

.field private timeAdapter:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

.field private tv_perNoStartToast:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->TOAST_NOT_START:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->TOAST_STARTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 484
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->showDeleteDlg:Landroid/view/View$OnClickListener;

    .line 524
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->delaytime:I

    .line 525
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->handler:Landroid/os/Handler;

    .line 526
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->task:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/GTPerfFragment;[Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    return-void
.end method

.method static synthetic access$10(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_start:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_save:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_delete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$13(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_stop:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$14(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->task:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/activity/GTPerfFragment;Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->timeAdapter:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    return-void
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->timeAdapter:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->delaytime:I

    return v0
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->et_savePath:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dlg_save:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->setHasOptionsMenu(Z)V

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 570
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 571
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 82
    const v4, 0x7f030026

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, "perfLayout":Landroid/view/View;
    const v4, 0x7f0800ff

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    .line 87
    const v4, 0x7f0800fa

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_delete:Landroid/widget/ImageButton;

    .line 88
    const v4, 0x7f0800f9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_save:Landroid/widget/ImageButton;

    .line 89
    const v4, 0x7f0800f7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_start:Landroid/widget/ImageButton;

    .line 90
    const v4, 0x7f0800f8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_stop:Landroid/widget/ImageButton;

    .line 92
    const v4, 0x7f080100

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->listView:Landroid/widget/ListView;

    .line 93
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->getEntrys()[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    .line 94
    new-instance v4, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    invoke-direct {v4, p0, v5}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;[Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->timeAdapter:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    .line 95
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->timeAdapter:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->isETStarted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    array-length v4, v4

    if-nez v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    sget-object v5, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->TOAST_STARTED:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :goto_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_start:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 113
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_save:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 114
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_delete:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 116
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_stop:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 138
    :goto_1
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_delete:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->showDeleteDlg:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 144
    const v5, 0x7f030005

    const/4 v6, 0x0

    .line 143
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 145
    .local v3, "rl_save":Landroid/widget/RelativeLayout;
    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 146
    .local v0, "btn_cleanSavePath":Landroid/widget/ImageButton;
    new-instance v4, Lcom/tencent/wstt/gt/activity/GTPerfFragment$3;

    invoke-direct {v4, p0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$3;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v4, 0x7f080029

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->et_savePath:Landroid/widget/EditText;

    .line 155
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->getLastSaveTimeLog()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "lastSaveLog":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    const-string v4, ".csv"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->et_savePath:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    const v5, 0x7f090067

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 165
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 166
    const v5, 0x7f090071

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 167
    new-instance v6, Lcom/tencent/wstt/gt/activity/GTPerfFragment$4;

    invoke-direct {v6, p0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$4;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V

    .line 166
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 175
    const v5, 0x7f090070

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/wstt/gt/activity/GTPerfFragment$5;

    invoke-direct {v6, p0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$5;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 182
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 163
    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dlg_save:Landroid/app/AlertDialog;

    .line 184
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_save:Landroid/widget/ImageButton;

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTPerfFragment$6;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$6;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_start:Landroid/widget/ImageButton;

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_stop:Landroid/widget/ImageButton;

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTPerfFragment$8;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$8;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    return-object v2

    .line 109
    .end local v0    # "btn_cleanSavePath":Landroid/widget/ImageButton;
    .end local v1    # "lastSaveLog":Ljava/lang/String;
    .end local v3    # "rl_save":Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 120
    :cond_2
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    array-length v4, v4

    if-nez v4, :cond_4

    .line 122
    :cond_3
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    sget-object v5, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->TOAST_NOT_START:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :goto_2
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_start:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 131
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_save:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 132
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_delete:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 134
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_stop:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 127
    :cond_4
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 320
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->isETStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 325
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 271
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 274
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->isETStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->task:Ljava/lang/Runnable;

    iget v2, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->delaytime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->isETStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    sget-object v1, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->TOAST_STARTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_start:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_save:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_delete:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_stop:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 316
    :goto_1
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    array-length v0, v0

    if-nez v0, :cond_4

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    sget-object v1, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->TOAST_NOT_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    :goto_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_start:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_save:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_delete:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_stop:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
