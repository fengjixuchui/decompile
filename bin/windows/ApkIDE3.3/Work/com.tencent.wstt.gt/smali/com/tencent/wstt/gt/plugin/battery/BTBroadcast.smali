.class public Lcom/tencent/wstt/gt/plugin/battery/BTBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "BTBroadcast.java"


# static fields
.field public static final BATTERY_END_TEST:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.battery.endTest"

.field public static final BATTERY_START_TEST:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.battery.startTest"


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
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 64
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 41
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v8, "com.tencent.wstt.gt.plugin.battery.startTest"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 42
    const-string v8, "refreshRate"

    const/16 v9, 0xfa

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 43
    .local v3, "refreshRate":I
    const-string v8, "brightness"

    const/16 v9, 0x64

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 45
    .local v1, "brightness":I
    const-string v8, "I"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 46
    .local v4, "updateI":Z
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->updateI(Z)V

    .line 48
    const-string v8, "U"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 49
    .local v7, "updateU":Z
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->updateU(Z)V

    .line 51
    const-string v8, "T"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 52
    .local v6, "updateT":Z
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->updateT(Z)V

    .line 54
    const-string v8, "P"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 55
    .local v5, "updateP":Z
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->updateP(Z)V

    .line 57
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v8

    invoke-virtual {v8, v3, v1}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->doStart(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "brightness":I
    .end local v3    # "refreshRate":I
    .end local v4    # "updateI":Z
    .end local v5    # "updateP":Z
    .end local v6    # "updateT":Z
    .end local v7    # "updateU":Z
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "GT"

    const-string v9, "error on BTBroadcast.onReceive()..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, "com.tencent.wstt.gt.plugin.battery.endTest"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 59
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->doStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
