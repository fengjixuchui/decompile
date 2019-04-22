.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 227
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectPair:Ljava/util/List;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$15(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 228
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectName:Ljava/util/List;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 231
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath3:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 232
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "path3":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath2:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$4(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 234
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "path2":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath1:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$3(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 236
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "path1":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->dismissProDialog()V
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$7(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    .line 241
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->canCloseDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v3, p1, v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$14(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Landroid/content/DialogInterface;Z)V

    .line 242
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    const v4, 0x7f09011a

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->showAlam(I)V
    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$17(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;I)V

    .line 361
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->cb_saveEditor2Cloud:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$18(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 247
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$19(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strUin:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$20(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 249
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getLsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$21(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V

    .line 250
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getPsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$22(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getSKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$23(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strLsKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$24(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 257
    new-instance v3, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->start()V

    .line 347
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->dismissAlam()V
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$2(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    .line 349
    :cond_2
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->canCloseDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v3, p1, v6}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$14(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Landroid/content/DialogInterface;Z)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    const v4, 0x7f090121

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->showAlam(I)V
    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$17(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;I)V

    .line 353
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->canCloseDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v3, p1, v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$14(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Landroid/content/DialogInterface;Z)V

    goto :goto_0

    .line 358
    :cond_4
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->save2Local()V
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$37(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    .line 359
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->canCloseDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v3, p1, v6}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$14(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Landroid/content/DialogInterface;Z)V

    goto :goto_0
.end method
