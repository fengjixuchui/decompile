.class Lcom/tencent/wstt/gt/activity/GTLogFragment$9;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$9;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 393
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$9;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->logAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$12(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$9;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTLogFragment;->msgEtOnFocusOrClick()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$20(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    .line 397
    :cond_0
    return-void
.end method
