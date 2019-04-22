.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;
.super Ljava/lang/Object;
.source "GTAUTFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 429
    :try_start_0
    sget-object v1, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/wstt/gt/manager/AUTManager;->openApp(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment$3$1;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$3$1;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTAUTFragment;Ljava/lang/Thread;)V

    .line 436
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->thread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$6(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GTSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can not start App:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    const v4, 0x7f090089

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
