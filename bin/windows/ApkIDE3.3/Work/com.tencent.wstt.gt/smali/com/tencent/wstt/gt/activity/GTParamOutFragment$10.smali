.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->waitForApplyAppId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;->val$name:Ljava/lang/String;

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 740
    const/4 v0, 0x0

    .line 743
    .local v0, "appId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getLsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;->val$name:Ljava/lang/String;

    .line 742
    invoke-static {v3, v4, v5}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;->registProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 755
    move-object v1, v0

    .line 756
    .local v1, "appIdFinal":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10$2;

    invoke-direct {v4, p0, v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10$2;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 767
    .end local v1    # "appIdFinal":Ljava/lang/String;
    :goto_0
    return-void

    .line 744
    :catch_0
    move-exception v2

    .line 745
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10$1;

    invoke-direct {v4, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10$1;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
