.class public Lcom/tencent/wstt/gt/GTApp;
.super Landroid/app/Application;
.source "GTApp.java"


# static fields
.field private static autHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static daemonHandler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

.field static emptyHandler:Landroid/os/Handler;

.field private static ipEditHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static ipHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static isAppRunned:Z

.field private static isInGT:Z

.field private static mContext:Landroid/content/Context;

.field private static opEditHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static opHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    sput-boolean v1, Lcom/tencent/wstt/gt/GTApp;->isAppRunned:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/GTApp;->emptyHandler:Landroid/os/Handler;

    .line 73
    sput-boolean v1, Lcom/tencent/wstt/gt/GTApp;->isInGT:Z

    .line 288
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 85
    sget-object v0, Lcom/tencent/wstt/gt/GTApp;->daemonHandler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/tencent/wstt/gt/internal/DaemonHandler;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/internal/DaemonHandler;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/GTApp;->daemonHandler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    .line 88
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->getInstance()Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;

    move-result-object v0

    const-string v1, "MEM_DAEMON"

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-static {}, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->getInstance()Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;

    move-result-object v0

    const-string v1, "MEM_DAEMON"

    new-instance v2, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->put(Ljava/lang/String;Lcom/tencent/wstt/gt/internal/GTDaemonThread;)V

    .line 90
    invoke-static {}, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->getInstance()Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;

    move-result-object v0

    const-string v1, "MEM_DAEMON"

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->start(Ljava/lang/String;)V

    .line 92
    :cond_1
    return-void
.end method

.method public static exitGT()V
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->endAllLog()V

    .line 205
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->stopMockLocation()V

    .line 208
    sget-object v0, Lcom/tencent/wstt/gt/GTApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTEntrance;->GTclose(Landroid/content/Context;)V

    .line 209
    return-void
.end method

.method public static getAUTHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "result":Landroid/os/Handler;
    sget-object v1, Lcom/tencent/wstt/gt/GTApp;->autHandler:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Lcom/tencent/wstt/gt/GTApp;->autHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Landroid/os/Handler;
    check-cast v0, Landroid/os/Handler;

    .line 224
    .restart local v0    # "result":Landroid/os/Handler;
    :cond_0
    if-nez v0, :cond_1

    .line 225
    sget-object v0, Lcom/tencent/wstt/gt/GTApp;->emptyHandler:Landroid/os/Handler;

    .line 227
    :cond_1
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/tencent/wstt/gt/GTApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getGTRunStatus()Z
    .locals 1

    .prologue
    .line 173
    sget-boolean v0, Lcom/tencent/wstt/gt/GTApp;->isAppRunned:Z

    return v0
.end method

.method public static getIpEditHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "result":Landroid/os/Handler;
    sget-object v1, Lcom/tencent/wstt/gt/GTApp;->ipEditHandler:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 297
    sget-object v1, Lcom/tencent/wstt/gt/GTApp;->ipEditHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Landroid/os/Handler;
    check-cast v0, Landroid/os/Handler;

    .line 300
    .restart local v0    # "result":Landroid/os/Handler;
    :cond_0
    if-nez v0, :cond_1

    .line 301
    sget-object v0, Lcom/tencent/wstt/gt/GTApp;->emptyHandler:Landroid/os/Handler;

    .line 303
    :cond_1
    return-object v0
.end method

.method public static getIpHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "result":Landroid/os/Handler;
    sget-object v1, Lcom/tencent/wstt/gt/GTApp;->ipHandler:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 278
    sget-object v1, Lcom/tencent/wstt/gt/GTApp;->ipHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Landroid/os/Handler;
    check-cast v0, Landroid/os/Handler;

    .line 281
    .restart local v0    # "result":Landroid/os/Handler;
    :cond_0
    if-nez v0, :cond_1

    .line 282
    sget-object v0, Lcom/tencent/wstt/gt/GTApp;->emptyHandler:Landroid/os/Handler;

    .line 284
    :cond_1
    return-object v0
.end method

.method public static getOpEditHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "result":Landroid/os/Handler;
    sget-object v1, Lcom/tencent/wstt/gt/GTApp;->opEditHandler:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 259
    sget-object v1, Lcom/tencent/wstt/gt/GTApp;->opEditHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Landroid/os/Handler;
    check-cast v0, Landroid/os/Handler;

    .line 262
    .restart local v0    # "result":Landroid/os/Handler;
    :cond_0
    if-nez v0, :cond_1

    .line 263
    sget-object v0, Lcom/tencent/wstt/gt/GTApp;->emptyHandler:Landroid/os/Handler;

    .line 265
    :cond_1
    return-object v0
.end method

.method public static getOpHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "result":Landroid/os/Handler;
    sget-object v1, Lcom/tencent/wstt/gt/GTApp;->opHandler:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 240
    sget-object v1, Lcom/tencent/wstt/gt/GTApp;->opHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Landroid/os/Handler;
    check-cast v0, Landroid/os/Handler;

    .line 243
    .restart local v0    # "result":Landroid/os/Handler;
    :cond_0
    if-nez v0, :cond_1

    .line 244
    sget-object v0, Lcom/tencent/wstt/gt/GTApp;->emptyHandler:Landroid/os/Handler;

    .line 246
    :cond_1
    return-object v0
.end method

.method public static isInGT()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/tencent/wstt/gt/GTApp;->isInGT:Z

    return v0
.end method

.method private loadEnvInfo()V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_VER:Ljava/lang/String;

    .line 141
    return-void
.end method

.method private loadPlugins()V
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v1

    .line 146
    .local v1, "pm":Lcom/tencent/wstt/gt/plugin/PluginManager;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/wstt/gt/plugin/internal/PluginService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/GTApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 151
    new-instance v2, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginItem;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/plugin/battery/BatteryPluginItem;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/PluginManager;->register(Lcom/tencent/wstt/gt/plugin/PluginItem;)V

    .line 152
    new-instance v2, Lcom/tencent/wstt/gt/plugin/tcpdump/TcpdumpPluginItem;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/plugin/tcpdump/TcpdumpPluginItem;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/PluginManager;->register(Lcom/tencent/wstt/gt/plugin/PluginItem;)V

    .line 153
    new-instance v2, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenlockPluginItem;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenlockPluginItem;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/PluginManager;->register(Lcom/tencent/wstt/gt/plugin/PluginItem;)V

    .line 154
    new-instance v2, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillPluginItem;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillPluginItem;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/PluginManager;->register(Lcom/tencent/wstt/gt/plugin/PluginItem;)V

    .line 155
    new-instance v2, Lcom/tencent/wstt/gt/plugin/smtools/SMToolsPluginItem;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/plugin/smtools/SMToolsPluginItem;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/PluginManager;->register(Lcom/tencent/wstt/gt/plugin/PluginItem;)V

    .line 156
    new-instance v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSPluginItem;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSPluginItem;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/PluginManager;->register(Lcom/tencent/wstt/gt/plugin/PluginItem;)V

    .line 157
    new-instance v2, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusPluginItem;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusPluginItem;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/PluginManager;->register(Lcom/tencent/wstt/gt/plugin/PluginItem;)V

    .line 158
    return-void
.end method

.method private propareResourceFile()V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/tencent/wstt/gt/GTApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/GTUtils;->copyTcpdump(Landroid/content/Context;)V

    .line 183
    sget-object v0, Lcom/tencent/wstt/gt/GTApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/GTUtils;->copyalarm(Landroid/content/Context;)V

    .line 184
    return-void
.end method

.method private registerGTDefaultOutParas()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;-><init>()V

    .line 192
    .local v0, "mDefaultParaRunEngine":Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->start()V

    .line 193
    invoke-static {}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->getInstance()Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;

    move-result-object v1

    .line 194
    .local v1, "ppEngine":Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->start()V

    .line 195
    return-void
.end method

.method public static setAUTHandler(Landroid/os/Handler;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 215
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/wstt/gt/GTApp;->autHandler:Ljava/lang/ref/WeakReference;

    .line 216
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    sput-object p0, Lcom/tencent/wstt/gt/GTApp;->mContext:Landroid/content/Context;

    .line 166
    return-void
.end method

.method public static setGTRunStatus(Z)V
    .locals 0
    .param p0, "runned"    # Z

    .prologue
    .line 169
    sput-boolean p0, Lcom/tencent/wstt/gt/GTApp;->isAppRunned:Z

    .line 170
    return-void
.end method

.method public static setInGT(Z)V
    .locals 0
    .param p0, "inGT"    # Z

    .prologue
    .line 80
    sput-boolean p0, Lcom/tencent/wstt/gt/GTApp;->isInGT:Z

    .line 81
    return-void
.end method

.method public static setIpEditHandler(Landroid/os/Handler;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 291
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/wstt/gt/GTApp;->ipEditHandler:Ljava/lang/ref/WeakReference;

    .line 292
    return-void
.end method

.method public static setIpHandler(Landroid/os/Handler;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 272
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/wstt/gt/GTApp;->ipHandler:Ljava/lang/ref/WeakReference;

    .line 273
    return-void
.end method

.method public static setOpEditHandler(Landroid/os/Handler;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 253
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/wstt/gt/GTApp;->opEditHandler:Ljava/lang/ref/WeakReference;

    .line 254
    return-void
.end method

.method public static setOpHandler(Landroid/os/Handler;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 234
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/wstt/gt/GTApp;->opHandler:Ljava/lang/ref/WeakReference;

    .line 235
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 96
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 97
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/GTApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/tencent/wstt/gt/GTApp;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/Env;->init()V

    .line 103
    sget-object v2, Lcom/tencent/wstt/gt/GTApp;->mContext:Landroid/content/Context;

    const-string v3, "900010910"

    invoke-static {v2, v3, v5}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 106
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->init()V

    .line 108
    invoke-direct {p0}, Lcom/tencent/wstt/gt/GTApp;->propareResourceFile()V

    .line 110
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->init()V

    .line 112
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->initNetValue()V

    .line 114
    invoke-direct {p0}, Lcom/tencent/wstt/gt/GTApp;->registerGTDefaultOutParas()V

    .line 117
    new-instance v0, Lcom/tencent/wstt/gt/manager/SingleInstanceClientFactory;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/SingleInstanceClientFactory;-><init>()V

    .line 118
    .local v0, "cf":Lcom/tencent/wstt/gt/manager/ClientFactory;
    const-string v2, "_GLOBAL__"

    const-string v3, "_GLOBAL__"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Lcom/tencent/wstt/gt/manager/ClientFactory;->orderClient(Ljava/lang/String;I[Lcom/tencent/wstt/gt/OutPara;[Lcom/tencent/wstt/gt/InPara;)Lcom/tencent/wstt/gt/manager/Client;

    .line 121
    invoke-direct {p0}, Lcom/tencent/wstt/gt/GTApp;->loadPlugins()V

    .line 123
    invoke-direct {p0}, Lcom/tencent/wstt/gt/GTApp;->loadEnvInfo()V

    .line 128
    invoke-static {v5}, Lcom/tencent/stat/StatConfig;->setDebugEnable(Z)V

    .line 130
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/stat/StatConfig;->setEnableSmartReporting(Z)V

    .line 132
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "2.1.0"

    invoke-static {p0, v2, v3}, Lcom/tencent/stat/StatService;->startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/tencent/stat/MtaSDkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Lcom/tencent/stat/MtaSDkException;
    const-string v2, "gt_mta"

    const-string v3, "MTA start failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
