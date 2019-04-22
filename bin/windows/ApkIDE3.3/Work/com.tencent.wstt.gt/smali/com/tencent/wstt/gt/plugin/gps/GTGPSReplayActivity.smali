.class public Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTGPSReplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$SeekbarChange;
    }
.end annotation


# instance fields
.field private back:Landroid/view/View$OnClickListener;

.field private back_gt:Landroid/widget/TextView;

.field private gps_replay_name:Landroid/widget/TextView;

.field private gps_replay_percent:Landroid/widget/TextView;

.field private mChangeRadio:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mProgress:I

.field private mRadioGroup_replayspeed:Landroid/widget/RadioGroup;

.field private mSeekBarf:Landroid/widget/SeekBar;

.field private mreplayspeed:I

.field private save:Landroid/view/View$OnClickListener;

.field private save_gt:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 115
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$1;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->back:Landroid/view/View$OnClickListener;

    .line 122
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$2;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->save:Landroid/view/View$OnClickListener;

    .line 146
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$3;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mChangeRadio:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mProgress:I

    return v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mreplayspeed:I

    return v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mreplayspeed:I

    return-void
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mProgress:I

    return-void
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->gps_replay_percent:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method InitRadio(I)V
    .locals 2
    .param p1, "replayspeed"    # I

    .prologue
    const/4 v1, 0x1

    .line 135
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_0
    :pswitch_0
    return-void

    .line 137
    :pswitch_1
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 138
    :pswitch_2
    const v0, 0x7f080143

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 139
    :pswitch_3
    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v5, 0x7f030036

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->setContentView(I)V

    .line 67
    const v5, 0x7f080139

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->back_gt:Landroid/widget/TextView;

    .line 68
    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->back_gt:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->back:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v5, 0x7f080145

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->save_gt:Landroid/widget/Button;

    .line 70
    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->save_gt:Landroid/widget/Button;

    iget-object v6, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->save:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v5, 0x7f08013e

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->gps_replay_name:Landroid/widget/TextView;

    .line 72
    const v5, 0x7f08013f

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mSeekBarf:Landroid/widget/SeekBar;

    .line 73
    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mSeekBarf:Landroid/widget/SeekBar;

    new-instance v6, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$SeekbarChange;

    invoke-direct {v6, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$SeekbarChange;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    const v5, 0x7f080140

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->gps_replay_percent:Landroid/widget/TextView;

    .line 75
    const v5, 0x7f080141

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mRadioGroup_replayspeed:Landroid/widget/RadioGroup;

    .line 76
    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mRadioGroup_replayspeed:Landroid/widget/RadioGroup;

    iget-object v6, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mChangeRadio:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 81
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "gpsname"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "gpsName":Ljava/lang/String;
    const-string v5, "gpspercent"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double v2, v6, v8

    .line 83
    .local v2, "gpsPercent":D
    const-string v5, "relpayspeed"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mreplayspeed:I

    .line 85
    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->gps_replay_name:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    double-to-int v5, v2

    iput v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mProgress:I

    .line 88
    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mSeekBarf:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mProgress:I

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 89
    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->gps_replay_percent:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mProgress:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mreplayspeed:I

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->InitRadio(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "gpsName":Ljava/lang/String;
    .end local v2    # "gpsPercent":D
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->finish()V

    goto :goto_0
.end method
