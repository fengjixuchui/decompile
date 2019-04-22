.class Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;
.super Ljava/lang/Object;
.source "GTPerfGroupDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvTimes:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSizeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvMin:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvMax:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->tvAve:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->access$3(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAve()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->chartView:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->createRealtimeData()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->access$4(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->access$5(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->delaytime:I
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    return-void
.end method
