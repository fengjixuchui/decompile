.class Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;
.super Ljava/lang/Object;
.source "GTPerfFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTPerfFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 528
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->isETStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->getEntrys()[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$1(Lcom/tencent/wstt/gt/activity/GTPerfFragment;[Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V

    .line 533
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->timeAdapter:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$4(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->timeAdapter:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$4(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;[Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$2(Lcom/tencent/wstt/gt/activity/GTPerfFragment;Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;)V

    .line 536
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$3(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->timeAdapter:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$4(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->TOAST_STARTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    :goto_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->timeAdapter:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$4(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->notifyDataSetChanged()V

    .line 551
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$6(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->delaytime:I
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$7(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 565
    :goto_1
    return-void

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_5

    .line 557
    :cond_4
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->TOAST_NOT_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 562
    :cond_5
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
