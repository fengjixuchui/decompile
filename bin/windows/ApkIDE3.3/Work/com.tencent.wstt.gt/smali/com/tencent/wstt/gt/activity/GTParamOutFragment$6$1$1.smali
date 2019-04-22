.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$1;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$1;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 284
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$1;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$1;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Saving.."

    const-string v3, "saving..wait...."

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$29(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Landroid/app/ProgressDialog;)V

    .line 285
    return-void
.end method
