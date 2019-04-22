.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;

.field private final synthetic val$chosedFilePathList:Ljava/util/List;

.field private final synthetic val$folder:Ljava/io/File;

.field private final synthetic val$lskey:Ljava/lang/String;

.field private final synthetic val$pairSelSave2Cloud:Landroid/util/Pair;

.field private final synthetic val$pskey:Ljava/lang/String;

.field private final synthetic val$skey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;Landroid/util/Pair;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$pairSelSave2Cloud:Landroid/util/Pair;

    iput-object p3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$folder:Ljava/io/File;

    iput-object p4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$chosedFilePathList:Ljava/util/List;

    iput-object p5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$skey:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$pskey:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$lskey:Ljava/lang/String;

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 649
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 650
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$pairSelSave2Cloud:Landroid/util/Pair;

    .line 653
    .local v2, "productPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$folder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "paths":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x3

    if-gt v3, v4, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 660
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "srcFolder"

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$folder:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    const-string v4, "file_array"

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$chosedFilePathList:Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string v4, "upload_product_id"

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    const-string v4, "upload_product_name"

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string v3, "upload_product_version"

    array-length v4, v1

    add-int/lit8 v4, v4, -0x3

    aget-object v4, v1, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const-string v3, "upload_feature"

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v1, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string v3, "upload_path3"

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    const-string v3, "qq_uin"

    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const-string v3, "qq_sk"

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$skey:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const-string v3, "qq_psk"

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$pskey:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const-string v3, "qq_lsk"

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->val$lskey:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->addListener(Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;)V

    .line 674
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v3

    .line 675
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/tencent/wstt/gt/plugin/PluginControler;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;

    goto/16 :goto_0
.end method
