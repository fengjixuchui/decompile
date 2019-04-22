.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;
.super Ljava/lang/Thread;
.source "GTParamOutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

.field private final synthetic val$path1:Ljava/lang/String;

.field private final synthetic val$path2:Ljava/lang/String;

.field private final synthetic val$path3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->val$path1:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->val$path2:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->val$path3:Ljava/lang/String;

    .line 257
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 259
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v3

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strUin:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$20(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strLsKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$24(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;

    move-result-object v4

    .line 260
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v5

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectPair:Ljava/util/List;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$15(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;

    move-result-object v5

    .line 259
    invoke-static {v3, v4, v5}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;->prepareProductPairs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$25(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;I)V

    .line 261
    const-string v2, "NET"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HttpAssist result="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->intResHttpAss:I
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$26(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 262
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectPair:Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$15(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectPair:Ljava/util/List;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$15(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GW_FOLDER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->val$path1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 268
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->val$path2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 269
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->val$path3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 270
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$27(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V

    .line 271
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "name"

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v3

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strSave2CloudFilePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$28(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v2, "intent"

    const-string v3, "newproj"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 277
    const-string v2, "New_Proj"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->startActivity(Landroid/content/Intent;)V

    .line 345
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$1;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$1;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->saveDataHandler:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 288
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->val$path1:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->val$path2:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->val$path3:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
