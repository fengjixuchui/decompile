.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10$2;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;

.field private final synthetic val$appIdFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10$2;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10$2;->val$appIdFinal:Ljava/lang/String;

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10$2;->val$appIdFinal:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10$2;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090128

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    .line 766
    :cond_0
    return-void
.end method
