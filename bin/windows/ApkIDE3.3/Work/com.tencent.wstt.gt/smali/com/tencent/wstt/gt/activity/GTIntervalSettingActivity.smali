.class public Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTIntervalSettingActivity.java"


# static fields
.field public static msecond:I

.field public static msecond_FPS:I

.field private static pos:I

.field private static pos_FPS:I

.field private static second:F

.field private static second_FPS:F


# instance fields
.field private back:Landroid/view/View$OnClickListener;

.field private refresh:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private refresh_FPS:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private sb_refresh:Landroid/widget/SeekBar;

.field private sb_refresh_FPS:Landroid/widget/SeekBar;

.field private tv_op_refresh_inter_time:Landroid/widget/TextView;

.field private tv_op_refresh_inter_time_FPS:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/16 v3, 0x32

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 40
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    const-string v1, "interval_perf"

    .line 40
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond:I

    .line 42
    sget v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sput v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->second:F

    .line 43
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    const-string v1, "interval_perf_pos"

    .line 43
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->pos:I

    .line 49
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    const-string v1, "interval_fps"

    .line 49
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond_FPS:I

    .line 51
    sget v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond_FPS:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sput v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->second_FPS:F

    .line 52
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    const-string v1, "interval_fps_pos"

    .line 52
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->pos_FPS:I

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 79
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity$1;-><init>(Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->refresh:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 111
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity$2;-><init>(Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->refresh_FPS:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 143
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity$3;-><init>(Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->back:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->sb_refresh:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 43
    sput p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->pos:I

    return-void
.end method

.method static synthetic access$10()F
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->second_FPS:F

    return v0
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->tv_op_refresh_inter_time_FPS:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(F)V
    .locals 0

    .prologue
    .line 42
    sput p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->second:F

    return-void
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->pos:I

    return v0
.end method

.method static synthetic access$4()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->second:F

    return v0
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->tv_op_refresh_inter_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->sb_refresh_FPS:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$7(I)V
    .locals 0

    .prologue
    .line 52
    sput p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->pos_FPS:I

    return-void
.end method

.method static synthetic access$8(F)V
    .locals 0

    .prologue
    .line 51
    sput p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->second_FPS:F

    return-void
.end method

.method static synthetic access$9()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->pos_FPS:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->setContentView(I)V

    .line 61
    const v1, 0x7f08006a

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, "tv_back":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->back:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f080071

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->tv_op_refresh_inter_time:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->tv_op_refresh_inter_time:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f090061

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->second:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v1, 0x7f080076

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->tv_op_refresh_inter_time_FPS:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->tv_op_refresh_inter_time_FPS:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f090062

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->second_FPS:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v1, 0x7f080075

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->sb_refresh:Landroid/widget/SeekBar;

    .line 71
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->sb_refresh:Landroid/widget/SeekBar;

    sget v2, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->pos:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 72
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->sb_refresh:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->refresh:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    const v1, 0x7f08007a

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->sb_refresh_FPS:Landroid/widget/SeekBar;

    .line 75
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->sb_refresh_FPS:Landroid/widget/SeekBar;

    sget v2, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->pos_FPS:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 76
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->sb_refresh_FPS:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->refresh_FPS:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 77
    return-void
.end method
