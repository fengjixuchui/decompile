.class Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$2;
.super Ljava/lang/Object;
.source "GTPerfFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$2;->this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 509
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->cleartimeInfo()V

    .line 510
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 511
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$2;->this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;)Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    move-result-object v0

    new-array v1, v4, [Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$1(Lcom/tencent/wstt/gt/activity/GTPerfFragment;[Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V

    .line 512
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$2;->this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;)Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    move-result-object v0

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$2;->this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;)Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$2;->this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;)Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    move-result-object v3

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;[Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$2(Lcom/tencent/wstt/gt/activity/GTPerfFragment;Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;)V

    .line 513
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$2;->this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;)Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$3(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$2;->this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;)Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->timeAdapter:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$4(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 515
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$2;->this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;)Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->TOAST_NOT_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$2;->this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;)Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->tv_perNoStartToast:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    return-void
.end method
