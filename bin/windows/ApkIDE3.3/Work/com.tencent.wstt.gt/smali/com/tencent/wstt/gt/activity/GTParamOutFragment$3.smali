.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$3;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 579
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath3:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, "path3":Ljava/lang/String;
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath2:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$4(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "path2":Ljava/lang/String;
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath1:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$3(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "path1":Ljava/lang/String;
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_saveTestDesc:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$12(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, "testDesc":Ljava/lang/String;
    new-instance v4, Lcom/tencent/wstt/gt/log/GWSaveEntry;

    invoke-direct {v4, v1, v2, v3, v5}, Lcom/tencent/wstt/gt/log/GWSaveEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .local v4, "saveEntry":Lcom/tencent/wstt/gt/log/GWSaveEntry;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/GTGWInternal;->saveAllEnableGWData(Lcom/tencent/wstt/gt/log/GWSaveEntry;)V

    .line 587
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 588
    .local v0, "message":Landroid/os/Message;
    const/4 v6, 0x4

    iput v6, v0, Landroid/os/Message;->what:I

    .line 589
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->opHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$13(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 590
    return-void
.end method
