.class Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog$1;
.super Ljava/lang/Object;
.source "GTOutParaPerfDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog$1;->this$0:Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog$1;->this$0:Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->dismiss()V

    .line 64
    return-void
.end method
