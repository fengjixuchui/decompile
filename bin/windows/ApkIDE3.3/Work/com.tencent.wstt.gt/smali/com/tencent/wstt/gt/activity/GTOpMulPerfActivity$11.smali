.class Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;
.super Ljava/lang/Object;
.source "GTOpMulPerfActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v7, 0x7f090077

    .line 307
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath1:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$25(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "path1":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/StringUtil;->isLetter(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 311
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    invoke-virtual {v6, v7}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 310
    invoke-static {v5, v6}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath2:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$26(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "path2":Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/wstt/gt/utils/StringUtil;->isLetter(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 319
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    invoke-virtual {v6, v7}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 318
    invoke-static {v5, v6}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath3:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$24(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "path3":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/wstt/gt/utils/StringUtil;->isLetter(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 327
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    invoke-virtual {v6, v7}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 326
    invoke-static {v5, v6}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_saveTestDesc:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$27(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "testDesc":Ljava/lang/String;
    new-instance v3, Lcom/tencent/wstt/gt/log/GWSaveEntry;

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/tencent/wstt/gt/log/GWSaveEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .local v3, "saveEntry":Lcom/tencent/wstt/gt/log/GWSaveEntry;
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/wstt/gt/log/GTGWInternal;->saveGWData(Lcom/tencent/wstt/gt/log/GWSaveEntry;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 335
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
