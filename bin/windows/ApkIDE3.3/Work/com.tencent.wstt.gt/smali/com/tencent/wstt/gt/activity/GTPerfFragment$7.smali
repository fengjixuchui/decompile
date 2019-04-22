.class Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;
.super Ljava/lang/Object;
.source "GTPerfFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTPerfFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x4

    .line 204
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->isETStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonHelper;->startGWOrProfValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_start:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$10(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_save:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$11(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_delete:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$12(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->btn_stop:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$13(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 219
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->setETStarted(Z)V

    .line 221
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$6(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->task:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$14(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->delaytime:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$7(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->TOAST_STARTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
