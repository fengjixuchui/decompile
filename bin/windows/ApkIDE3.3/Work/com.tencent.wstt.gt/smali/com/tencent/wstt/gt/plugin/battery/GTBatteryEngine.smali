.class public Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;
.super Ljava/lang/Object;
.source "GTBatteryEngine.java"

# interfaces
.implements Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine; = null

.field private static final KEY_I:Ljava/lang/String; = "battery_I"

.field private static final KEY_Pow:Ljava/lang/String; = "battery_Pow"

.field private static final KEY_Temp:Ljava/lang/String; = "battery_Temp"

.field private static final KEY_U:Ljava/lang/String; = "battery_U"

.field private static final LOG_TAG:Ljava/lang/String; = "Battery"

.field public static final OPI:Ljava/lang/String; = "Current"

.field public static final OPPow:Ljava/lang/String; = "Power"

.field public static final OPTemp:Ljava/lang/String; = "Temperature"

.field public static final OPU:Ljava/lang/String; = "Volt"

.field private static timer:Ljava/util/Timer;


# instance fields
.field private I:Ljava/lang/String;

.field private INT_TEMP:I

.field private POW:Ljava/lang/String;

.field private TEMP:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private brightness:I

.field private globalClient:Lcom/tencent/wstt/gt/manager/Client;

.field private isStarted:Z

.field private lastBatteryChangeTime:Ljava/lang/String;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;",
            ">;"
        }
    .end annotation
.end field

.field private refreshRate:I

.field private startBattry:J

.field private state_cb_I:Z

.field private state_cb_P:Z

.field private state_cb_T:Z

.field private state_cb_U:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v3, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_I:Z

    .line 64
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_U:Z

    .line 65
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_P:Z

    .line 66
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_T:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->I:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->U:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->POW:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->TEMP:Ljava/lang/String;

    .line 73
    const/16 v0, -0x111

    iput v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->INT_TEMP:I

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->startBattry:J

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->lastBatteryChangeTime:Ljava/lang/String;

    .line 90
    const/16 v0, 0xfa

    iput v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->refreshRate:I

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->brightness:I

    .line 96
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isStarted:Z

    .line 100
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/ClientManager;->getGlobalClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->listeners:Ljava/util/List;

    .line 103
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "battery_I"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_I:Z

    .line 104
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "battery_U"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_U:Z

    .line 105
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "battery_Pow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_P:Z

    .line 106
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "battery_Temp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_T:Z

    .line 107
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->U:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->U:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;J)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->startBattry:J

    return-void
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->TEMP:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->TEMP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->INT_TEMP:I

    return v0
.end method

.method static synthetic access$14(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->INT_TEMP:I

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Lcom/tencent/wstt/gt/manager/Client;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->I:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->POW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->POW:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->startBattry:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->lastBatteryChangeTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->lastBatteryChangeTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    .line 113
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doStart(II)V
    .locals 8
    .param p1, "in_refreshRate"    # I
    .param p2, "in_brightness"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    return-void

    .line 137
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_I:Z

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v1, "Current"

    const-string v2, "I"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wstt/gt/manager/Client;->registerOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v1, "Current"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wstt/gt/manager/Client;->setOutparaMonitor(Ljava/lang/String;Z)V

    .line 142
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v1, "Current"

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    const/16 v1, 0xc

    const-string v2, ""

    const-string v3, "mA"

    .line 141
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_U:Z

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v1, "Volt"

    const-string v2, "U"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wstt/gt/manager/Client;->registerOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v1, "Volt"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wstt/gt/manager/Client;->setOutparaMonitor(Ljava/lang/String;Z)V

    .line 149
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v1, "Volt"

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    const/16 v1, 0xc

    const-string v2, ""

    const-string v3, "mV"

    .line 148
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_P:Z

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v1, "Power"

    const-string v2, "POW"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wstt/gt/manager/Client;->registerOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v1, "Power"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wstt/gt/manager/Client;->setOutparaMonitor(Ljava/lang/String;Z)V

    .line 156
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v1, "Power"

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    const/16 v1, 0xc

    const-string v2, ""

    const-string v3, "%"

    .line 155
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_T:Z

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v1, "Temperature"

    const-string v2, "TEMP"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wstt/gt/manager/Client;->registerOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v1, "Temperature"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wstt/gt/manager/Client;->setOutparaMonitor(Ljava/lang/String;Z)V

    .line 163
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v1, "Temperature"

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    const/16 v1, 0xc

    const-string v2, ""

    const-string v3, "\u2103"

    .line 162
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_5
    const/16 v0, 0x64

    if-ge p1, v0, :cond_6

    .line 168
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;

    .line 170
    .local v7, "listener":Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 171
    const v2, 0x7f0900ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-interface {v7, v1}, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;->onBatteryException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v7    # "listener":Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;
    :catch_0
    move-exception v6

    .line 202
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;

    .line 205
    .restart local v7    # "listener":Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-interface {v7, v1}, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;->onBatteryException(Ljava/lang/String;)V

    goto :goto_1

    .line 178
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "listener":Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;
    :cond_6
    :try_start_1
    iput p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->refreshRate:I

    .line 181
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->timer:Ljava/util/Timer;

    .line 182
    sget-object v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;-><init>(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)V

    iget v2, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->refreshRate:I

    int-to-long v2, v2

    iget v4, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->refreshRate:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 185
    if-ltz p2, :cond_7

    const/16 v0, 0xff

    if-gt p2, v0, :cond_7

    .line 187
    invoke-virtual {p0, p2}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->setBrightness(I)V

    .line 188
    invoke-static {}, Lcom/tencent/wstt/gt/utils/BrightnessUtils;->setManualMode()V

    .line 189
    invoke-static {p2}, Lcom/tencent/wstt/gt/utils/BrightnessUtils;->setScreenBrightness(I)V

    .line 190
    invoke-static {p2}, Lcom/tencent/wstt/gt/utils/BrightnessUtils;->saveBrightness(I)V

    .line 193
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isStarted:Z

    .line 195
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;

    .line 197
    .restart local v7    # "listener":Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;
    invoke-interface {v7}, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;->onBatteryStart()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public doStop()V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    :cond_0
    return-void

    .line 214
    :cond_1
    sget-object v1, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    .line 216
    sget-object v1, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 217
    sget-object v1, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 218
    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->timer:Ljava/util/Timer;

    .line 220
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isStarted:Z

    .line 222
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;

    .line 224
    .local v0, "listener":Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;
    invoke-interface {v0}, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;->onBatteryStop()V

    goto :goto_0
.end method

.method public execute(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const-string v1, "cmd"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "cmd":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    const/16 v1, 0xfa

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->doStart(II)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    if-eqz v0, :cond_0

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->doStop()V

    goto :goto_0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->brightness:I

    return v0
.end method

.method public getRefreshRate()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->refreshRate:I

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isStarted:Z

    return v0
.end method

.method public isState_cb_I()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_I:Z

    return v0
.end method

.method public isState_cb_P()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_P:Z

    return v0
.end method

.method public isState_cb_T()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_T:Z

    return v0
.end method

.method public isState_cb_U()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_U:Z

    return v0
.end method

.method public declared-synchronized removeListener(Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->brightness:I

    .line 338
    return-void
.end method

.method public setRefreshRate(I)V
    .locals 0
    .param p1, "refreshRate"    # I

    .prologue
    .line 329
    iput p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->refreshRate:I

    .line 330
    return-void
.end method

.method public updateI(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v2, "Current"

    const-string v3, "I"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wstt/gt/manager/Client;->registerOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v2, "Current"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wstt/gt/manager/Client;->setOutparaMonitor(Ljava/lang/String;Z)V

    .line 255
    :goto_0
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_I:Z

    .line 256
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "battery_I"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 262
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v2, "Current"

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/manager/Client;->unregisterOutPara(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;

    .line 260
    .local v0, "listener":Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;
    invoke-interface {v0, p1}, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;->onUpdateI(Z)V

    goto :goto_1
.end method

.method public updateP(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v2, "Power"

    const-string v3, "POW"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wstt/gt/manager/Client;->registerOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v2, "Power"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wstt/gt/manager/Client;->setOutparaMonitor(Ljava/lang/String;Z)V

    .line 295
    :goto_0
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_P:Z

    .line 296
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "battery_Pow"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 302
    return-void

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v2, "Power"

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/manager/Client;->unregisterOutPara(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;

    .line 300
    .local v0, "listener":Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;
    invoke-interface {v0, p1}, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;->onUpdateP(Z)V

    goto :goto_1
.end method

.method public updateT(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v2, "Temperature"

    const-string v3, "TEMP"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wstt/gt/manager/Client;->registerOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v2, "Temperature"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wstt/gt/manager/Client;->setOutparaMonitor(Ljava/lang/String;Z)V

    .line 315
    :goto_0
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_T:Z

    .line 316
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "battery_Temp"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    return-void

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v2, "Temperature"

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/manager/Client;->unregisterOutPara(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;

    .line 320
    .local v0, "listener":Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;
    invoke-interface {v0, p1}, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;->onUpdateT(Z)V

    goto :goto_1
.end method

.method public updateU(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v2, "Volt"

    const-string v3, "U"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wstt/gt/manager/Client;->registerOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v2, "Volt"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wstt/gt/manager/Client;->setOutparaMonitor(Ljava/lang/String;Z)V

    .line 275
    :goto_0
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->state_cb_U:Z

    .line 276
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "battery_U"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 282
    return-void

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;

    const-string v2, "Volt"

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/manager/Client;->unregisterOutPara(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;

    .line 280
    .local v0, "listener":Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;
    invoke-interface {v0, p1}, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginListener;->onUpdateU(Z)V

    goto :goto_1
.end method
