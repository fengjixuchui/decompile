.class public Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;
.super Ljava/lang/Object;
.source "GTAutoTestInternal.java"


# static fields
.field public static final INTENT_KEY_CPU:Ljava/lang/String; = "cpu"

.field public static final INTENT_KEY_FPS:Ljava/lang/String; = "fps"

.field public static final INTENT_KEY_JIF:Ljava/lang/String; = "jif"

.field public static final INTENT_KEY_NET:Ljava/lang/String; = "net"

.field public static final INTENT_KEY_PRI:Ljava/lang/String; = "pri"

.field public static final INTENT_KEY_PSS:Ljava/lang/String; = "pss"

.field private static tempMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    sput-object v0, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->tempMap:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDatas()V
    .locals 2

    .prologue
    .line 257
    sget-boolean v0, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTGWInternal;->clearAllEnableGWData()V

    .line 263
    sget-object v0, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->tempMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 266
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getAUTHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static endGlobalTest(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "clear"    # Z

    .prologue
    .line 155
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v0, v1, p0, p1, p2}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->endProcTest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 156
    return-void
.end method

.method public static endProcTest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "clear"    # Z

    .prologue
    .line 168
    const/4 v7, 0x0

    sput-boolean v7, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    .line 171
    sget-object v7, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->tempMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_b

    .line 183
    const/4 v2, 0x0

    .line 184
    .local v2, "path1":Ljava/lang/String;
    const/4 v3, 0x0

    .line 185
    .local v3, "path2":Ljava/lang/String;
    const/4 v4, 0x0

    .line 187
    .local v4, "path3":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 189
    const-string v7, "/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "paths":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x2

    if-le v7, v8, :cond_c

    .line 192
    array-length v7, v5

    add-int/lit8 v7, v7, -0x3

    aget-object v2, v5, v7

    .line 193
    array-length v7, v5

    add-int/lit8 v7, v7, -0x2

    aget-object v3, v5, v7

    .line 194
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    aget-object v4, v5, v7

    .line 207
    .end local v5    # "paths":[Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 209
    :cond_2
    sget-object v2, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_NAME:Ljava/lang/String;

    .line 211
    :cond_3
    if-eqz v3, :cond_4

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 213
    :cond_4
    sget-object v3, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_VER:Ljava/lang/String;

    .line 215
    :cond_5
    if-eqz v4, :cond_6

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 217
    :cond_6
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTGWInternal;->getLastSaveFolder()Ljava/lang/String;

    move-result-object v4

    .line 220
    :cond_7
    new-instance v6, Lcom/tencent/wstt/gt/log/GWSaveEntry;

    invoke-direct {v6, v2, v3, v4, p3}, Lcom/tencent/wstt/gt/log/GWSaveEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v6, "saveEntry":Lcom/tencent/wstt/gt/log/GWSaveEntry;
    invoke-static {v6}, Lcom/tencent/wstt/gt/log/GTGWInternal;->saveAllEnableGWData(Lcom/tencent/wstt/gt/log/GWSaveEntry;)V

    .line 224
    if-eqz p4, :cond_8

    .line 227
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTGWInternal;->clearAllEnableGWData()V

    .line 231
    :cond_8
    sget-object v7, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->tempMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_e

    .line 242
    if-eqz p4, :cond_a

    .line 245
    sget-object v7, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->tempMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 249
    :cond_a
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getAUTHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    return-void

    .line 171
    .end local v2    # "path1":Ljava/lang/String;
    .end local v3    # "path2":Ljava/lang/String;
    .end local v4    # "path3":Ljava/lang/String;
    .end local v6    # "saveEntry":Lcom/tencent/wstt/gt/log/GWSaveEntry;
    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 173
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/OutPara;

    .line 177
    .local v0, "op":Lcom/tencent/wstt/gt/OutPara;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    goto :goto_1

    .line 196
    .end local v0    # "op":Lcom/tencent/wstt/gt/OutPara;
    .end local v1    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    .restart local v2    # "path1":Ljava/lang/String;
    .restart local v3    # "path2":Ljava/lang/String;
    .restart local v4    # "path3":Ljava/lang/String;
    .restart local v5    # "paths":[Ljava/lang/String;
    :cond_c
    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    .line 198
    array-length v7, v5

    add-int/lit8 v7, v7, -0x2

    aget-object v3, v5, v7

    .line 199
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    aget-object v4, v5, v7

    .line 200
    goto :goto_0

    .line 203
    :cond_d
    const/4 v7, 0x0

    aget-object v4, v5, v7

    goto/16 :goto_0

    .line 231
    .end local v5    # "paths":[Ljava/lang/String;
    .restart local v6    # "saveEntry":Lcom/tencent/wstt/gt/log/GWSaveEntry;
    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 233
    .restart local v1    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    if-eqz v1, :cond_9

    .line 235
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/OutPara;

    .line 237
    .restart local v0    # "op":Lcom/tencent/wstt/gt/OutPara;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    goto :goto_2
.end method

.method public static exitGT()V
    .locals 0

    .prologue
    .line 372
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->exitGT()V

    .line 373
    return-void
.end method

.method public static sample(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 368
    return-void
.end method

.method public static startGlobalTest()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->tempMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    .line 78
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getAUTHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    return-void
.end method

.method public static startProcTest(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "verName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 88
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->initUidPkgCache()Z

    .line 91
    sget-object v4, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->tempMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 93
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/manager/ClientManager;->getAUTClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 95
    sget-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 97
    sget-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 98
    sget-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 100
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/manager/ClientManager;->getAUTClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/manager/Client;->clear()V

    .line 101
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v4

    const-string v5, "_AUT__"

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/manager/ClientManager;->removeClient(Ljava/lang/String;)V

    .line 105
    :cond_0
    new-instance v0, Lcom/tencent/wstt/gt/manager/SingleInstanceClientFactory;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/SingleInstanceClientFactory;-><init>()V

    .line 107
    .local v0, "cf":Lcom/tencent/wstt/gt/manager/ClientFactory;
    const-string v4, "_AUT__"

    const-string v5, "_AUT__"

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 106
    invoke-virtual {v0, v4, v5, v7, v7}, Lcom/tencent/wstt/gt/manager/ClientFactory;->orderClient(Ljava/lang/String;I[Lcom/tencent/wstt/gt/OutPara;[Lcom/tencent/wstt/gt/InPara;)Lcom/tencent/wstt/gt/manager/Client;

    .line 109
    const/4 v4, 0x1

    sput-boolean v4, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    .line 111
    invoke-static {}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->getInstance()Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->isStarted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 113
    invoke-static {}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->getInstance()Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->start()V

    .line 116
    :cond_1
    const-string v4, "running"

    sput-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->appstatus:Ljava/lang/String;

    .line 118
    if-nez p1, :cond_2

    const-string p1, "unknow"

    .end local p1    # "verName":Ljava/lang/String;
    :cond_2
    sput-object p1, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_VER:Ljava/lang/String;

    .line 120
    if-eqz p0, :cond_3

    .line 122
    sput-object p0, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    .line 123
    sput-object p0, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_NAME:Ljava/lang/String;

    .line 124
    const/4 v2, 0x0

    .line 126
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 127
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 128
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 127
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 128
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    sput-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->apn:Ljava/lang/String;

    .line 129
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 130
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 129
    sput-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->appic:Landroid/graphics/drawable/Drawable;

    .line 133
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 134
    .local v3, "prop":Ljava/util/Properties;
    const-string v4, "pkgName"

    sget-object v5, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Connected AUT"

    invoke-static {v4, v5, v3}, Lcom/tencent/stat/StatService;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    .line 138
    invoke-static {}, Lcom/tencent/wstt/gt/manager/AUTManager;->findProcess()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "prop":Ljava/util/Properties;
    :cond_3
    :goto_0
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getAUTHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    return-void

    .line 140
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startSample(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 282
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/manager/ClientManager;->getAUTClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 283
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, "opList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    const-string v3, "pss"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    const/4 v3, 0x3

    invoke-static {v3, p1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(II)Ljava/util/List;

    move-result-object v2

    .line 330
    :cond_1
    :goto_1
    sget-object v3, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->tempMap:Ljava/util/Map;

    new-instance v4, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;

    invoke-direct {v4, p0, p1, p2}, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getOpHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getOpEditHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 294
    :cond_2
    const-string v3, "net"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 296
    const/4 v3, -0x1

    invoke-static {v7, v3}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(II)Ljava/util/List;

    move-result-object v2

    .line 297
    goto :goto_1

    .line 298
    :cond_3
    const-string v3, "fps"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 301
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/manager/ClientManager;->getDefaultClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v3

    const-string v4, "FPS"

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v1

    .line 303
    .local v1, "opFps":Lcom/tencent/wstt/gt/OutPara;
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v3

    if-ne v7, v3, :cond_4

    .line 305
    invoke-virtual {v1, v6}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    .line 306
    invoke-virtual {v1, v5}, Lcom/tencent/wstt/gt/OutPara;->setDisplayProperty(I)V

    .line 307
    invoke-static {v1}, Lcom/tencent/wstt/gt/manager/OpUIManager;->setItemToNormal(Lcom/tencent/wstt/gt/OutPara;)V

    .line 310
    :cond_4
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->isMonitor()Z

    move-result v3

    if-nez v3, :cond_5

    .line 312
    invoke-virtual {v1, v6}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    .line 314
    :cond_5
    invoke-static {v1}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->registMonitor(Lcom/tencent/wstt/gt/OutPara;)V

    .line 315
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 317
    .end local v1    # "opFps":Lcom/tencent/wstt/gt/OutPara;
    :cond_6
    const-string v3, "jif"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 319
    invoke-static {v6, p1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(II)Ljava/util/List;

    move-result-object v2

    .line 320
    goto :goto_1

    .line 321
    :cond_7
    const-string v3, "cpu"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 323
    invoke-static {v5, p1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(II)Ljava/util/List;

    move-result-object v2

    .line 324
    goto :goto_1

    .line 325
    :cond_8
    const-string v3, "pri"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    const/4 v3, 0x4

    invoke-static {v3, p1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(II)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public static stopSample(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 349
    sget-object v2, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->tempMap:Ljava/util/Map;

    new-instance v3, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;

    invoke-direct {v3, p0, p1, p2}, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 350
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    if-eqz v1, :cond_0

    .line 352
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 357
    :cond_0
    return-void

    .line 352
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/OutPara;

    .line 354
    .local v0, "op":Lcom/tencent/wstt/gt/OutPara;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    goto :goto_0
.end method
