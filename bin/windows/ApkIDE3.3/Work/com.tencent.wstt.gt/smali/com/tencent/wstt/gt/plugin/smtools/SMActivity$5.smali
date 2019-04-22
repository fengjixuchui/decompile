.class Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$5;
.super Ljava/lang/Object;
.source "SMActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;
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
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$5;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 206
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->access$0(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$5;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->selectedItem:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->access$1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->getProcessPID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->access$2(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;Ljava/lang/Integer;)V

    .line 208
    return-void
.end method
