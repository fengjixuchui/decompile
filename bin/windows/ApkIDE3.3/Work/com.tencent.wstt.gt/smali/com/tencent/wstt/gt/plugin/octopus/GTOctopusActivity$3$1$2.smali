.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;
.super Ljava/lang/Object;
.source "GTOctopusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1;

.field private final synthetic val$chosedFilePathList:Ljava/util/List;

.field private final synthetic val$folder:Ljava/io/File;

.field private final synthetic val$lskey:Ljava/lang/String;

.field private final synthetic val$pskey:Ljava/lang/String;

.field private final synthetic val$skey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->this$2:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1;

    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->val$folder:Ljava/io/File;

    iput-object p3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->val$chosedFilePathList:Ljava/util/List;

    iput-object p4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->val$skey:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->val$pskey:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->val$lskey:Ljava/lang/String;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v5, 0x7f0900fd

    .line 390
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 391
    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->this$2:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3;
    invoke-static {v4}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v4}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->spProductName:Landroid/widget/Spinner;
    invoke-static {v4}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$2(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    .line 392
    .local v1, "oProductPair":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 394
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    instance-of v4, v1, Landroid/util/Pair;

    if-nez v4, :cond_2

    .line 399
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 402
    check-cast v3, Landroid/util/Pair;

    .line 405
    .local v3, "productPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->val$folder:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "paths":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "srcFolder"

    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->val$folder:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string v5, "file_array"

    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->val$chosedFilePathList:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v5, "upload_product_id"

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v5, "upload_product_name"

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v4, "upload_product_version"

    array-length v5, v2

    add-int/lit8 v5, v5, -0x3

    aget-object v5, v2, v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v4, "upload_feature"

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v2, v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v4, "upload_path3"

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v2, v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v4, "qq_uin"

    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string v4, "qq_sk"

    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->val$skey:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v4, "qq_psk"

    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->val$pskey:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v4, "qq_lsk"

    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$2;->val$lskey:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v4

    .line 427
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/tencent/wstt/gt/plugin/PluginControler;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;

    goto/16 :goto_0
.end method
