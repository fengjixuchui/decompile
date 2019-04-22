.class Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter$1;
.super Ljava/lang/Object;
.source "GTPerfFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

.field private final synthetic val$entry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter$1;->this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter$1;->val$entry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 456
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter$1;->this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->access$1(Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;)Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 457
    const-class v2, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    .line 456
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter$1;->val$entry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v1, "tid"

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter$1;->val$entry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getTid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 461
    const-string v1, "parent_name"

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter$1;->val$entry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getParent()Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/NamedEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter$1;->this$1:Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->access$1(Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;)Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 464
    return-void
.end method
