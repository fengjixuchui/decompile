.class Lcom/tencent/wstt/gt/activity/GTLogFragment$15;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$15;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$15;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_level:Landroid/widget/Button;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$18(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/Button;

    move-result-object v0

    .line 794
    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 796
    return-void
.end method
