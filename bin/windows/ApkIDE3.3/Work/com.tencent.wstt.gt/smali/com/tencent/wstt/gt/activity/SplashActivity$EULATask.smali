.class Lcom/tencent/wstt/gt/activity/SplashActivity$EULATask;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EULATask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/activity/SplashActivity$EULATask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 137
    const-string v3, "http://gt.qq.com/wp-content/EULA_EN.html"

    .line 138
    .local v3, "sUrl":Ljava/lang/String;
    const/4 v4, 0x0

    .line 139
    .local v4, "url":Ljava/net/URL;
    const-string v1, ""

    .line 154
    .local v1, "eula":Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/wstt/gt/utils/StringUtil;->isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    const-wide/16 v6, 0x5dc

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    sget-object v5, Lcom/tencent/wstt/gt/activity/SplashActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 164
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v2, Landroid/os/Message;->what:I

    .line 165
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    sget-object v5, Lcom/tencent/wstt/gt/activity/SplashActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    const/4 v5, 0x0

    return-object v5

    .line 158
    .end local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
