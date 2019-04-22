.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;
.super Ljava/lang/Object;
.source "GTAUTFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessRefresher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;


# direct methods
.method private constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;)V
    .locals 0

    .prologue
    .line 807
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;)Lcom/tencent/wstt/gt/activity/GTAUTFragment;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 810
    invoke-static {}, Lcom/tencent/wstt/gt/manager/AUTManager;->findProcess()V

    .line 811
    sget-object v2, Lcom/tencent/wstt/gt/manager/AUTManager;->appstatus:Ljava/lang/String;

    const-string v3, "running"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 812
    const/4 v1, 0x0

    .local v1, "num":I
    :goto_0
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$2()[Z

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 819
    .end local v1    # "num":I
    :cond_0
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 820
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->proDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$9(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 821
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->proDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$9(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher$1;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher$1;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 832
    return-void

    .line 813
    .restart local v1    # "num":I
    :cond_2
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$2()[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_3

    .line 814
    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(I)V
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$7(I)V

    .line 812
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 823
    .end local v1    # "num":I
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
