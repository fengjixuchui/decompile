.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$SeekbarChange;
.super Ljava/lang/Object;
.source "GTGPSReplayActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekbarChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$SeekbarChange;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$SeekbarChange;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    invoke-static {v0, p2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->access$3(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;I)V

    .line 103
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$SeekbarChange;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->gps_replay_percent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->access$4(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$SeekbarChange;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mProgress:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 108
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 112
    return-void
.end method
