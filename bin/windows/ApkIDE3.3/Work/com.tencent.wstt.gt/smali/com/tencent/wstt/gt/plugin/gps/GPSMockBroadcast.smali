.class public Lcom/tencent/wstt/gt/plugin/gps/GPSMockBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "GPSMockBroadcast.java"


# static fields
.field public static final GPS_END_RECORD:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.gps.endRecord"

.field public static final GPS_END_REPLAY:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.gps.endReplay"

.field public static final GPS_START_RECORD:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.gps.startRecord"

.field public static final GPS_START_REPLAY:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.gps.startReplay"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 65
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v2, "com.tencent.wstt.gt.plugin.gps.startReplay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v2

    .line 46
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/tencent/wstt/gt/plugin/PluginControler;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GT"

    const-string v3, "error on GPSMockBroadcast.onReceive()..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "com.tencent.wstt.gt.plugin.gps.endReplay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v2

    .line 50
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/plugin/PluginControler;->stopService(Lcom/tencent/wstt/gt/plugin/BaseService;)V

    goto :goto_0

    .line 52
    :cond_3
    const-string v2, "com.tencent.wstt.gt.plugin.gps.startRecord"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v2

    .line 54
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/tencent/wstt/gt/plugin/PluginControler;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;

    goto :goto_0

    .line 56
    :cond_4
    const-string v2, "com.tencent.wstt.gt.plugin.gps.endRecord"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v2

    .line 58
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/plugin/PluginControler;->stopService(Lcom/tencent/wstt/gt/plugin/BaseService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
