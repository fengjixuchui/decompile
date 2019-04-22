.class public Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTScreenlockActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GTScreenlockActivity"


# instance fields
.field private back:Landroid/view/View$OnClickListener;

.field private back_gt:Landroid/widget/TextView;

.field private fullWakelockClickListener:Landroid/view/View$OnClickListener;

.field private partialWakelockClickListener:Landroid/view/View$OnClickListener;

.field private tb_full:Lcom/tencent/wstt/gt/views/GTCheckBox;

.field private tb_partial:Lcom/tencent/wstt/gt/views/GTCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 64
    new-instance v0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$1;-><init>(Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->back:Landroid/view/View$OnClickListener;

    .line 73
    new-instance v0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$2;-><init>(Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->fullWakelockClickListener:Landroid/view/View$OnClickListener;

    .line 82
    new-instance v0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$3;-><init>(Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->partialWakelockClickListener:Landroid/view/View$OnClickListener;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;)Lcom/tencent/wstt/gt/views/GTCheckBox;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->tb_full:Lcom/tencent/wstt/gt/views/GTCheckBox;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;)Lcom/tencent/wstt/gt/views/GTCheckBox;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->tb_partial:Lcom/tencent/wstt/gt/views/GTCheckBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->back_gt:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->back_gt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->back:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/views/GTCheckBox;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->tb_full:Lcom/tencent/wstt/gt/views/GTCheckBox;

    .line 54
    const v0, 0x7f080158

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/views/GTCheckBox;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->tb_partial:Lcom/tencent/wstt/gt/views/GTCheckBox;

    .line 56
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->tb_full:Lcom/tencent/wstt/gt/views/GTCheckBox;

    sget-boolean v1, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;->flag:Z

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setChecked(Z)V

    .line 57
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->tb_partial:Lcom/tencent/wstt/gt/views/GTCheckBox;

    sget-boolean v1, Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;->flag:Z

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->tb_full:Lcom/tencent/wstt/gt/views/GTCheckBox;

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->fullWakelockClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->tb_partial:Lcom/tencent/wstt/gt/views/GTCheckBox;

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->partialWakelockClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onPause()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onResume()V

    .line 94
    return-void
.end method
