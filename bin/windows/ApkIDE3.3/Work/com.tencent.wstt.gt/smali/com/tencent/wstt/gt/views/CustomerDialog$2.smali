.class Lcom/tencent/wstt/gt/views/CustomerDialog$2;
.super Ljava/lang/Object;
.source "CustomerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/views/CustomerDialog;->initButtonListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/views/CustomerDialog;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/views/CustomerDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/views/CustomerDialog$2;->this$0:Lcom/tencent/wstt/gt/views/CustomerDialog;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog$2;->this$0:Lcom/tencent/wstt/gt/views/CustomerDialog;

    # invokes: Lcom/tencent/wstt/gt/views/CustomerDialog;->performButtonOnClick(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/tencent/wstt/gt/views/CustomerDialog;->access$0(Lcom/tencent/wstt/gt/views/CustomerDialog;Landroid/view/View;)V

    .line 146
    return-void
.end method
