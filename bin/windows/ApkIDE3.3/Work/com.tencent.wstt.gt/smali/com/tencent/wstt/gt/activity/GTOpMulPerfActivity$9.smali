.class Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$9;
.super Ljava/lang/Object;
.source "GTOpMulPerfActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$9;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$9;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->et_savePath3:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$24(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method
