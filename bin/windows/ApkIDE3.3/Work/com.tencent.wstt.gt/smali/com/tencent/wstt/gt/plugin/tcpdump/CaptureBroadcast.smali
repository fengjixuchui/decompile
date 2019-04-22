.class public Lcom/tencent/wstt/gt/plugin/tcpdump/CaptureBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "CaptureBroadcast.java"


# static fields
.field public static final ACTION_END_TEST:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.tcpdump.endTest"

.field public static final ACTION_START_TEST:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.tcpdump.startTest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 54
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 40
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v4, "com.tencent.wstt.gt.plugin.tcpdump.startTest"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    const-string v4, "filepath"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "filePath":Ljava/lang/String;
    const-string v4, "param"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "param":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->doCapture(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "param":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "GT"

    const-string v5, "error on CaptureBroadcast.onReceive()..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "com.tencent.wstt.gt.plugin.tcpdump.endTest"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->doStopCapture()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
