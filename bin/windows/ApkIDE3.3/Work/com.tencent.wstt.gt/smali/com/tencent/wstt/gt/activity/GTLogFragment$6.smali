.class Lcom/tencent/wstt/gt/activity/GTLogFragment$6;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 239
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_savePath:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$11(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 242
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->isPathStringValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    const-string v5, ".log"

    .line 244
    invoke-static {v3, v5}, Lcom/tencent/wstt/gt/utils/FileUtil;->convertValidFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "validPath":Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/FileUtil;->isPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1    # "f":Ljava/io/File;
    .local v2, "f":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 252
    .end local v2    # "f":Ljava/io/File;
    .restart local v1    # "f":Ljava/io/File;
    :goto_0
    :try_start_2
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setLastSaveLog(Ljava/lang/String;)V

    .line 255
    .end local v4    # "validPath":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 259
    :cond_1
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->logAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$12(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->getUIEntryList()Ljava/util/List;

    move-result-object v5

    .line 260
    const/4 v6, 0x0

    .line 259
    invoke-static {v5, v1, v6}, Lcom/tencent/wstt/gt/log/LogUtils;->writeLog(Ljava/util/List;Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 265
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 266
    return-void

    .line 250
    .restart local v4    # "validPath":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_LOG_FOLDER:Ljava/io/File;

    invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    move-object v1, v2

    .end local v2    # "f":Ljava/io/File;
    .restart local v1    # "f":Ljava/io/File;
    goto :goto_0

    .line 261
    .end local v4    # "validPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "validPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "f":Ljava/io/File;
    .restart local v1    # "f":Ljava/io/File;
    goto :goto_2
.end method
