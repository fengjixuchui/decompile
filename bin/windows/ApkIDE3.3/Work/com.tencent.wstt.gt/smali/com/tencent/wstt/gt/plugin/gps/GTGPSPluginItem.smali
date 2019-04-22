.class public Lcom/tencent/wstt/gt/plugin/gps/GTGPSPluginItem;
.super Lcom/tencent/wstt/gt/plugin/PluginItem;
.source "GTGPSPluginItem.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 33
    const-string v1, "gps"

    .line 34
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0900e7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0900e8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    const v4, 0x7f020052

    .line 37
    const-class v5, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/wstt/gt/plugin/PluginItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 39
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSTaskExecutor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSPluginItem;->setTaskExecutor(Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;)V

    .line 40
    return-void
.end method
