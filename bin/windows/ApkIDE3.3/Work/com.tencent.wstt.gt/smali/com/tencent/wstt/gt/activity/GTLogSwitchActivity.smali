.class public Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTLogSwitchActivity.java"


# instance fields
.field private back:Landroid/view/View$OnClickListener;

.field private cb_autoSave:Lcom/tencent/wstt/gt/views/GTCheckBox;

.field private cb_autoSaveQuickFlush:Lcom/tencent/wstt/gt/views/GTCheckBox;

.field private cb_masterSwitch:Lcom/tencent/wstt/gt/views/GTCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 115
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity$1;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->back:Landroid/view/View$OnClickListener;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;)Lcom/tencent/wstt/gt/views/GTCheckBox;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->cb_autoSave:Lcom/tencent/wstt/gt/views/GTCheckBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->setContentView(I)V

    .line 50
    const v1, 0x7f08006a

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "tv_back":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->back:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f0800b2

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/views/GTCheckBox;

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->cb_masterSwitch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    .line 54
    const v1, 0x7f0800b5

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/views/GTCheckBox;

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->cb_autoSave:Lcom/tencent/wstt/gt/views/GTCheckBox;

    .line 55
    const v1, 0x7f0800b8

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/views/GTCheckBox;

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->cb_autoSaveQuickFlush:Lcom/tencent/wstt/gt/views/GTCheckBox;

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->cb_masterSwitch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->cb_autoSave:Lcom/tencent/wstt/gt/views/GTCheckBox;

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->isAutoSave()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->cb_autoSaveQuickFlush:Lcom/tencent/wstt/gt/views/GTCheckBox;

    invoke-static {}, Lcom/tencent/wstt/gt/log/LogUtils;->isAutoSaveQuickFlush()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->cb_masterSwitch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity$2;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity$2;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->cb_autoSaveQuickFlush:Lcom/tencent/wstt/gt/views/GTCheckBox;

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity$3;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity$3;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;->cb_autoSave:Lcom/tencent/wstt/gt/views/GTCheckBox;

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity$4;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity$4;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    return-void
.end method
