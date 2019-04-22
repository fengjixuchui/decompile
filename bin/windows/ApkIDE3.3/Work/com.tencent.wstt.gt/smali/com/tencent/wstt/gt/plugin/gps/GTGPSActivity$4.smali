.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$4;
.super Ljava/lang/Object;
.source "GTGPSActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$4;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isReplay()Z

    move-result v2

    if-nez v2, :cond_1

    .line 288
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 289
    .local v1, "o":Ljava/lang/Object;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItem:Ljava/lang/String;

    .line 290
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    iput p3, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    .line 306
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    iget v2, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    if-ne v2, p3, :cond_0

    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "gpsname"

    .line 295
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItem:Ljava/lang/String;

    .line 294
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v2, "gpspercent"

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v3

    .line 297
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getPercentage()D

    move-result-wide v4

    .line 296
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 298
    const-string v2, "relpayspeed"

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v3

    .line 299
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getReplaySpeed()I

    move-result v3

    .line 298
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$4;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    const-class v3, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 302
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$4;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    const/16 v3, 0xc8

    invoke-virtual {v2, v0, v3}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
