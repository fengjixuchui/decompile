.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;
.super Ljava/lang/Object;
.source "GTOctopusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;

.field private final synthetic val$appIdFinal:Ljava/lang/String;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;

    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;->val$appIdFinal:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;->val$name:Ljava/lang/String;

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 666
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;->val$appIdFinal:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v1

    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->dismissProDialog()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)V

    .line 669
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v1

    const v2, 0x7f090128

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    .line 683
    :goto_0
    return-void

    .line 674
    :cond_0
    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productPairs:Ljava/util/ArrayList;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$4()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 675
    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productPairs:Ljava/util/ArrayList;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$4()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/tencent/wstt/gt/plugin/octopus/ProductPair;

    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;->val$appIdFinal:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;->val$name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/tencent/wstt/gt/plugin/octopus/ProductPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 677
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v1

    const v2, 0x1090008

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productPairs:Ljava/util/ArrayList;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$4()Ljava/util/ArrayList;

    move-result-object v3

    .line 676
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 678
    .local v0, "productAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 679
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->spProductName:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$2(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 682
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v1

    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->dismissProDialog()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)V

    goto :goto_0
.end method
