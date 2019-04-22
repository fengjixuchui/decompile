.class public Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTBatteryActivity.java"

# interfaces
.implements Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private back:Landroid/view/View$OnClickListener;

.field private battery_back_gt:Landroid/widget/TextView;

.field private cb_I:Landroid/widget/CheckBox;

.field private cb_Power:Landroid/widget/CheckBox;

.field private cb_Temp:Landroid/widget/CheckBox;

.field private cb_U:Landroid/widget/CheckBox;

.field private et_brightness:Landroid/widget/EditText;

.field private et_refresh_rate:Landroid/widget/EditText;

.field private switchOnClickListener:Landroid/view/View$OnClickListener;

.field private tv_switch:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 112
    new-instance v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$1;-><init>(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->back:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$2;-><init>(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->switchOnClickListener:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->et_refresh_rate:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->et_brightness:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->tv_switch:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onBatteryException(Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {p0, p1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public onBatteryStart()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$3;-><init>(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public onBatteryStop()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$4;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$4;-><init>(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 190
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 193
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 194
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900cb

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    .line 217
    :goto_1
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 202
    :pswitch_1
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->updateI(Z)V

    goto :goto_1

    .line 206
    :pswitch_2
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->updateU(Z)V

    goto :goto_1

    .line 210
    :pswitch_3
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->updateP(Z)V

    goto :goto_1

    .line 214
    :pswitch_4
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->updateT(Z)V

    goto :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch 0x7f080122
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x3

    .line 57
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->setContentView(I)V

    .line 61
    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->battery_back_gt:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->battery_back_gt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->back:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->tv_switch:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f080120

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->et_refresh_rate:Landroid/widget/EditText;

    .line 66
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->et_refresh_rate:Landroid/widget/EditText;

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getRefreshRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->et_refresh_rate:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 69
    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->et_brightness:Landroid/widget/EditText;

    .line 70
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getBrightness()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->et_brightness:Landroid/widget/EditText;

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getBrightness()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->et_brightness:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 75
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->tv_switch:Landroid/widget/TextView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->tv_switch:Landroid/widget/TextView;

    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->tv_switch:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->switchOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_I:Landroid/widget/CheckBox;

    .line 89
    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_U:Landroid/widget/CheckBox;

    .line 90
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_Power:Landroid/widget/CheckBox;

    .line 91
    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_Temp:Landroid/widget/CheckBox;

    .line 93
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_I:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isState_cb_I()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_U:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isState_cb_U()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_Power:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isState_cb_P()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_Temp:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isState_cb_T()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_I:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_U:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_Power:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_Temp:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->addListener(Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;)V

    .line 104
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->tv_switch:Landroid/widget/TextView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 83
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->tv_switch:Landroid/widget/TextView;

    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onDestroy()V

    .line 109
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->removeListener(Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;)V

    .line 110
    return-void
.end method

.method public onUpdateI(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_I:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 227
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_I:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 228
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_I:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 229
    return-void
.end method

.method public onUpdateP(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_Power:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 248
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_Power:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 249
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_Power:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 250
    return-void
.end method

.method public onUpdateT(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_Temp:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_Temp:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 242
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_Temp:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 243
    return-void
.end method

.method public onUpdateU(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_U:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 234
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_U:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->cb_U:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 236
    return-void
.end method
