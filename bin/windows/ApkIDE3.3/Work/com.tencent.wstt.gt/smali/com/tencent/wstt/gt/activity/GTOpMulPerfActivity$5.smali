.class Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;
.super Ljava/lang/Object;
.source "GTOpMulPerfActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v2, 0x8

    .line 187
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->img_empty:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$18(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->lv_attentAttr:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$19(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->btn_attent:Landroid/widget/Button;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$20(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "lastSelectedItem":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->btn_attent:Landroid/widget/Button;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$20(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attrAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$21(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$22(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 192
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->attentEntry:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$16(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->refreshAttent()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    .line 195
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->refreshThreshold()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$23(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V

    .line 197
    :cond_0
    return-void
.end method
