.class Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7$1;
.super Ljava/lang/Object;
.source "GTOpMulPerfActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7$1;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7$1;->this$1:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;->access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$7;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->btn_attent:Landroid/widget/Button;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$20(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 227
    return-void
.end method
