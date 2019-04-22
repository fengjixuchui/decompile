.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$2;
.super Ljava/lang/Object;
.source "GTGPSReplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "progress"

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mProgress:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-string v1, "replayspeed"

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->mreplayspeed:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->access$1(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->setResult(ILandroid/content/Intent;)V

    .line 129
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->finish()V

    .line 130
    return-void
.end method
