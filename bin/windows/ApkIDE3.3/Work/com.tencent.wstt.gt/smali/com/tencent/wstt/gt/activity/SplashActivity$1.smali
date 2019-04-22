.class Lcom/tencent/wstt/gt/activity/SplashActivity$1;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 179
    :pswitch_0
    # getter for: Lcom/tencent/wstt/gt/activity/SplashActivity;->INSTANCE:Lcom/tencent/wstt/gt/activity/SplashActivity;
    invoke-static {}, Lcom/tencent/wstt/gt/activity/SplashActivity;->access$0()Lcom/tencent/wstt/gt/activity/SplashActivity;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/wstt/gt/activity/SplashActivity;->eluaStr:Ljava/lang/String;

    .line 180
    # getter for: Lcom/tencent/wstt/gt/activity/SplashActivity;->INSTANCE:Lcom/tencent/wstt/gt/activity/SplashActivity;
    invoke-static {}, Lcom/tencent/wstt/gt/activity/SplashActivity;->access$0()Lcom/tencent/wstt/gt/activity/SplashActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/SplashActivity;->showDialog(I)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
