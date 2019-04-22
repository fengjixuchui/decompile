.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$9;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->comfirmToProductRegistPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

.field private final synthetic val$et_project_editor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$9;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$9;->val$et_project_editor:Landroid/widget/EditText;

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 714
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 717
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$9;->val$et_project_editor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "appName":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$9;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$9;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    const v3, 0x7f090126

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 721
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$9;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    const v4, 0x7f090127

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 720
    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->showProDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$38(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$9;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->waitForApplyAppId(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$39(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V

    .line 724
    return-void
.end method
