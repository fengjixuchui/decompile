.class Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$1;
.super Ljava/lang/Object;
.source "GTOpMulPerfActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 490
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->refreshAttent()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    .line 492
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->tvValue:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->op:Lcom/tencent/wstt/gt/OutPara;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->chartView:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->createRealtimeData()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$3(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$4(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->delaytime:I
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$5(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 500
    return-void
.end method
