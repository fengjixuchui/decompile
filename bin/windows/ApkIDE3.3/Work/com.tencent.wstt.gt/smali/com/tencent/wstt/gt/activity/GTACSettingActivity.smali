.class public Lcom/tencent/wstt/gt/activity/GTACSettingActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTACSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/activity/GTACSettingActivity$OnCheckedChangeListenerImp;
    }
.end annotation


# static fields
.field public static final GW:I = 0x1

.field public static final PROFILER:I

.field private static switch_type:I


# instance fields
.field private back:Landroid/view/View$OnClickListener;

.field private cb_show_Switch:Lcom/tencent/wstt/gt/views/GTCheckBox;

.field private isShow:Z

.field private show_gw:Landroid/widget/RadioButton;

.field private show_profiler:Landroid/widget/RadioButton;

.field private show_quickswitch:Landroid/widget/RadioGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->switch_type:I

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_quickswitch:Landroid/widget/RadioGroup;

    .line 45
    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_profiler:Landroid/widget/RadioButton;

    .line 46
    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_gw:Landroid/widget/RadioButton;

    .line 150
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity$1;-><init>(Lcom/tencent/wstt/gt/activity/GTACSettingActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->back:Landroid/view/View$OnClickListener;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTACSettingActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_profiler:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->switch_type:I

    return v0
.end method

.method static synthetic access$2(I)V
    .locals 0

    .prologue
    .line 47
    sput p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->switch_type:I

    return-void
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/activity/GTACSettingActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_gw:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public static getSwitchType()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->switch_type:I

    return v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/high16 v6, 0x10000000

    .line 127
    iput-boolean p2, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->isShow:Z

    .line 128
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "ac_switch_type_flag"

    iget-boolean v5, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->isShow:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    iget-boolean v3, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->isShow:Z

    if-eqz v3, :cond_0

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v2, "mintent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 148
    .end local v2    # "mintent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 142
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->stopService(Landroid/content/Intent;)Z

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, "FVintent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->setContentView(I)V

    .line 65
    const v1, 0x7f08006a

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, "tv_back":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->back:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f08006c

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_quickswitch:Landroid/widget/RadioGroup;

    .line 69
    const v1, 0x7f08006d

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_profiler:Landroid/widget/RadioButton;

    .line 70
    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_gw:Landroid/widget/RadioButton;

    .line 72
    const v1, 0x7f080070

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/views/GTCheckBox;

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->cb_show_Switch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    .line 73
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ac_switch_type_flag"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->isShow:Z

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->cb_show_Switch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_quickswitch:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 100
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->cb_show_Switch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    iget-boolean v1, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->isShow:Z

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setChecked(Z)V

    .line 103
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->cb_show_Switch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ac_switch_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->switch_type:I

    .line 107
    sget v0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->switch_type:I

    packed-switch v0, :pswitch_data_0

    .line 115
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_gw:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_quickswitch:Landroid/widget/RadioGroup;

    .line 122
    new-instance v1, Lcom/tencent/wstt/gt/activity/GTACSettingActivity$OnCheckedChangeListenerImp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity$OnCheckedChangeListenerImp;-><init>(Lcom/tencent/wstt/gt/activity/GTACSettingActivity;Lcom/tencent/wstt/gt/activity/GTACSettingActivity$OnCheckedChangeListenerImp;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 123
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_profiler:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
