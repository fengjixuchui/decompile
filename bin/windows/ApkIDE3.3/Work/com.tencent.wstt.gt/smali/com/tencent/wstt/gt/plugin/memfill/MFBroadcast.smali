.class public Lcom/tencent/wstt/gt/plugin/memfill/MFBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "MFBroadcast.java"


# static fields
.field public static final MEM_FILL_ACTION:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.memfill.fill"

.field public static final MEM_FREE_ACTION:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.memfill.free"


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
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "com.tencent.wstt.gt.plugin.memfill.fill"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    if-eqz p2, :cond_0

    .line 41
    const-string v3, "size"

    const/16 v4, 0xc8

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 42
    .local v2, "size":I
    if-lez v2, :cond_0

    .line 44
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->fill(I)V

    .line 53
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "size":I
    :cond_0
    :goto_0
    return-void

    .line 47
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    const-string v3, "com.tencent.wstt.gt.plugin.memfill.free"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->free()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "GT"

    const-string v4, "error on MFBroadcast.onReceive()..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
