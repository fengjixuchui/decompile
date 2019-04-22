.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$2;
.super Ljava/lang/Object;
.source "GTGPSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->isRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v0

    .line 173
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/plugin/PluginControler;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;)Lcom/tencent/wstt/gt/plugin/BaseService;

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v0

    .line 176
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/plugin/PluginControler;->stopService(Lcom/tencent/wstt/gt/plugin/BaseService;)V

    goto :goto_0
.end method
