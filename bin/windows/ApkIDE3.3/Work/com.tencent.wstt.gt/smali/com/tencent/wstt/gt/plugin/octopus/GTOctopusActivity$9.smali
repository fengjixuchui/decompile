.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;
.super Ljava/lang/Object;
.source "GTOctopusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->comfirmToProductRegistPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

.field private final synthetic val$et_project_editor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->val$et_project_editor:Landroid/widget/EditText;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v4, 0x7f090127

    const v3, 0x7f090126

    .line 605
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->strIntent:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$6(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "newproj"

    if-ne v1, v2, :cond_0

    .line 606
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 607
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$7(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/Boolean;)V

    .line 608
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 609
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 608
    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->showProDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$3(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->strNewProjName:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$8(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->waitForApplyAppId(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$9(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;)V

    .line 630
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->val$et_project_editor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "appName":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/StringUtil;->isLetter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    const v3, 0x7f090077

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->finish()V

    goto :goto_0

    .line 621
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 624
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 625
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 624
    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->showProDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$3(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->waitForApplyAppId(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$9(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
