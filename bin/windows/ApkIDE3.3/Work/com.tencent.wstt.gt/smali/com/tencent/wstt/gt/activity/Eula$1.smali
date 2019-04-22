.class Lcom/tencent/wstt/gt/activity/Eula$1;
.super Ljava/lang/Object;
.source "Eula.java"

# interfaces
.implements Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/Eula;->buildEulaDialog(Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/Eula;

.field private final synthetic val$dialog:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/Eula;Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/Eula$1;->this$0:Lcom/tencent/wstt/gt/activity/Eula;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/Eula$1;->val$dialog:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/Eula$1;->this$0:Lcom/tencent/wstt/gt/activity/Eula;

    # invokes: Lcom/tencent/wstt/gt/activity/Eula;->refuse()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/Eula;->access$1(Lcom/tencent/wstt/gt/activity/Eula;)V

    .line 105
    return-void
.end method

.method public onSure()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/Eula$1;->val$dialog:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->isCheckBoxAgreementChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/Eula$1;->this$0:Lcom/tencent/wstt/gt/activity/Eula;

    # invokes: Lcom/tencent/wstt/gt/activity/Eula;->accept()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/Eula;->access$0(Lcom/tencent/wstt/gt/activity/Eula;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/Eula$1;->this$0:Lcom/tencent/wstt/gt/activity/Eula;

    # invokes: Lcom/tencent/wstt/gt/activity/Eula;->refuse()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/Eula;->access$1(Lcom/tencent/wstt/gt/activity/Eula;)V

    goto :goto_0
.end method
