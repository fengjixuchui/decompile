.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$6;
.super Ljava/lang/Object;
.source "GTGPSActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->onRecordStart()V
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_record:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->access$1(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 206
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_record:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->access$1(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    const v2, 0x7f0900ea

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method
