.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$5;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$5;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$5;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    const/4 v1, 0x1

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->canCloseDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v0, p1, v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$14(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Landroid/content/DialogInterface;Z)V

    .line 222
    return-void
.end method
