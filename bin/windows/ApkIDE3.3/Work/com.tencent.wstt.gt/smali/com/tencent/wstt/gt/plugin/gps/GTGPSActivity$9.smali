.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$9;
.super Ljava/lang/Object;
.source "GTGPSActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->onReplayStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_replay:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->access$3(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 240
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_replay:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->access$3(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    const v2, 0x7f0900ec

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    return-void
.end method
