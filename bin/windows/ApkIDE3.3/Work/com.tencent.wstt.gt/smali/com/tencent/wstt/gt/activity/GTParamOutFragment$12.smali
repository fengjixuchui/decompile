.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$12;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->onUploadFail(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$12;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$12;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090100

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    .line 836
    return-void
.end method
