.class public Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;
.super Ljava/lang/Object;
.source "GTGPSTaskExecutor.java"

# interfaces
.implements Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;


# static fields
.field private static INSTANCE:Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;->INSTANCE:Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;->INSTANCE:Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;

    .line 43
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;->INSTANCE:Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const-string v4, "cmd"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "cmd":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v4, "replay"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    const-string v4, "seq"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 55
    .local v3, "seq":I
    const-string v4, "filename"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "item":Ljava/lang/String;
    if-ltz v3, :cond_1

    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "seq"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v4

    .line 61
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/tencent/wstt/gt/plugin/PluginControler;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;

    .line 97
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "seq":I
    :cond_0
    :goto_0
    return-void

    .line 63
    .restart local v2    # "item":Ljava/lang/String;
    .restart local v3    # "seq":I
    :cond_1
    if-eqz v2, :cond_0

    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 66
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "filename"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v4

    .line 68
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/tencent/wstt/gt/plugin/PluginControler;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;

    goto :goto_0

    .line 71
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "seq":I
    :cond_2
    if-eqz v0, :cond_3

    const-string v4, "stopReplay"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 73
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v4

    .line 74
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/plugin/PluginControler;->stopService(Lcom/tencent/wstt/gt/plugin/BaseService;)V

    goto :goto_0

    .line 76
    :cond_3
    if-eqz v0, :cond_5

    const-string v4, "record"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 77
    const-string v4, "filename"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .restart local v2    # "item":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 81
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v4

    .line 82
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/plugin/PluginControler;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;)Lcom/tencent/wstt/gt/plugin/BaseService;

    goto :goto_0

    .line 86
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 87
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "filename"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v4

    .line 89
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/tencent/wstt/gt/plugin/PluginControler;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;

    goto :goto_0

    .line 92
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "item":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_0

    const-string v4, "stopRecord"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v4

    .line 95
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/plugin/PluginControler;->stopService(Lcom/tencent/wstt/gt/plugin/BaseService;)V

    goto/16 :goto_0
.end method
