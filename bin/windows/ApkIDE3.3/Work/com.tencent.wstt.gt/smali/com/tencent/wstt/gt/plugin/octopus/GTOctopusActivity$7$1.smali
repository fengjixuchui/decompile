.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;
.super Ljava/lang/Object;
.source "GTOctopusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;

.field private final synthetic val$lsk:Ljava/lang/String;

.field private final synthetic val$retCode:I


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;

    iput p2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;->val$retCode:I

    iput-object p3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;->val$lsk:Ljava/lang/String;

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 552
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v1

    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->dismissProDialog()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)V

    .line 554
    iget v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;->val$retCode:I

    sparse-switch v1, :sswitch_data_0

    .line 567
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->finish()V

    .line 569
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;->val$retCode:I

    invoke-static {v2}, Lmqq/sdet/gt/protocol/Code;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 572
    :goto_0
    return-void

    .line 557
    :sswitch_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 558
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v1

    const v2, 0x1090008

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productPairs:Ljava/util/ArrayList;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$4()Ljava/util/ArrayList;

    move-result-object v3

    .line 557
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 559
    .local v0, "productAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 560
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->spProductName:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$2(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 564
    .end local v0    # "productAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :sswitch_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;->val$lsk:Ljava/lang/String;

    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->comfirmToProductRegistPage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$5(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x453 -> :sswitch_1
    .end sparse-switch
.end method
