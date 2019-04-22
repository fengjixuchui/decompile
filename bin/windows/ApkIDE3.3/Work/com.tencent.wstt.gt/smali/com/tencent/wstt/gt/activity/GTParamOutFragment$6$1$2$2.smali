.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

.field private final synthetic val$path1:Ljava/lang/String;

.field private final synthetic val$path2:Ljava/lang/String;

.field private final synthetic val$path3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->val$path1:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->val$path2:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->val$path3:Ljava/lang/String;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GW_FOLDER:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->val$path1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->val$path2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 334
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->val$path3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 335
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v0, v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$27(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V

    .line 336
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strSave2CloudFilePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$28(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, "folder":Ljava/io/File;
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strSKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$34(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    move-result-object v3

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v3

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v3

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strPsk:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$35(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strLsKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$24(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;->this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    move-result-object v5

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v5

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->pairSelSave2Cloud:Landroid/util/Pair;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->save2CloudOnDialog(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)V
    invoke-static/range {v0 .. v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$36(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)V

    .line 338
    return-void
.end method
