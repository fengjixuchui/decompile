.class public Lcom/tencent/wstt/gt/activity/GTEntrance;
.super Ljava/lang/Object;
.source "GTEntrance.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GTclose(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/tencent/wstt/gt/service/GTService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v1, "aidlIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 65
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "ac_switch_type_flag"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "FVintent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 75
    .end local v0    # "FVintent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->killprocess(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 82
    return-void

    .line 77
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static GTopen(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x10000000

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/tencent/wstt/gt/service/GTService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "aidlIntent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "ac_switch_type_flag"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 53
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v2, "mintent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mintent":Landroid/content/Intent;
    :cond_0
    invoke-static {v6}, Lcom/tencent/wstt/gt/GTApp;->setGTRunStatus(Z)V

    .line 59
    return-void
.end method
