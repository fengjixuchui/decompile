.class Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$1;
.super Ljava/lang/Object;
.source "CustomerConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->initButtonListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$1;->this$0:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$1;->this$0:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->dismiss()V

    .line 67
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$1;->this$0:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;

    # getter for: Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->listener:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;
    invoke-static {v0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->access$0(Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;)Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$1;->this$0:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;

    # getter for: Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->listener:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;
    invoke-static {v0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->access$0(Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;)Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;->onSure()V

    .line 70
    :cond_0
    return-void
.end method
