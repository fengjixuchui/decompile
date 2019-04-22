.class Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$ShowappHandler;
.super Ljava/lang/Object;
.source "GTShowPackageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowappHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$ShowappHandler;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$ShowappHandler;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->getInstalledApp()V

    .line 102
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->initUidPkgCache()Z

    .line 103
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 104
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 105
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$ShowappHandler;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->updateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method
