.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$5;
.super Landroid/os/Handler;
.source "GTGPSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$5;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 97
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$5;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    .line 98
    const v3, 0x109000f

    .line 99
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSUtils;->getGPSFileList()Ljava/util/ArrayList;

    move-result-object v4

    .line 96
    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 100
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$5;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->lv_gpsFile:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    iget v2, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    if-lez v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$5;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->lv_gpsFile:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)Landroid/widget/ListView;

    move-result-object v2

    .line 104
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v3

    iget v3, v3, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    .line 103
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 105
    .local v1, "o":Ljava/lang/Object;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItem:Ljava/lang/String;

    .line 107
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method
