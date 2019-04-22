.class public Lcom/tencent/wstt/gt/service/GTLogo$MyRunnable;
.super Ljava/lang/Object;
.source "GTLogo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/service/GTLogo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTLogo;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/service/GTLogo;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTLogo$MyRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 117
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/tencent/wstt/gt/service/GTLogo;->refresh_logo_flag:Z

    if-nez v3, :cond_1

    .line 138
    return-void

    .line 119
    :cond_1
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTLogo$MyRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    iget-object v3, v3, Lcom/tencent/wstt/gt/service/GTLogo;->logo_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 124
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 125
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 127
    sget-object v3, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    .line 128
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/service/GTServiceController;->getServiceControllerSwitchState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    sget-object v3, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    .line 130
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/service/GTServiceController;->getCurAviableService()I

    move-result v3

    .line 129
    if-ne v6, v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTLogo$MyRunnable;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    iget-object v3, v3, Lcom/tencent/wstt/gt/service/GTLogo;->logo_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 132
    .local v2, "myMsg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 133
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 134
    sget-object v3, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    .line 135
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/service/GTServiceController;->setServiceControllerSwitchStateClose()V

    goto :goto_0

    .line 120
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "myMsg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
