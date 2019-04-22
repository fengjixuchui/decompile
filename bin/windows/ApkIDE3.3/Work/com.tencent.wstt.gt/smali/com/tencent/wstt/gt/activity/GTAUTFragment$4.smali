.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$4;
.super Ljava/lang/Object;
.source "GTAUTFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$4;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 699
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 740
    :goto_0
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getOpHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getOpHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 744
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getOpEditHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 746
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getOpEditHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 748
    :cond_1
    return-void

    .line 701
    :pswitch_0
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$2()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    .line 702
    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(I)V
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$7(I)V

    goto :goto_0

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$4;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->hashistory(I)V
    invoke-static {v0, v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$8(Lcom/tencent/wstt/gt/activity/GTAUTFragment;I)V

    goto :goto_0

    .line 708
    :pswitch_1
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$2()[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_3

    .line 709
    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(I)V
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$7(I)V

    goto :goto_0

    .line 711
    :cond_3
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$4;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->hashistory(I)V
    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$8(Lcom/tencent/wstt/gt/activity/GTAUTFragment;I)V

    goto :goto_0

    .line 715
    :pswitch_2
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$2()[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-nez v0, :cond_4

    .line 716
    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(I)V
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$7(I)V

    .line 717
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$2()[Z

    move-result-object v0

    aput-boolean v1, v0, v3

    goto :goto_0

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$4;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->hashistory(I)V
    invoke-static {v0, v3}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$8(Lcom/tencent/wstt/gt/activity/GTAUTFragment;I)V

    goto :goto_0

    .line 723
    :pswitch_3
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$2()[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-nez v0, :cond_5

    .line 724
    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(I)V
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$7(I)V

    .line 725
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$2()[Z

    move-result-object v0

    aput-boolean v1, v0, v4

    goto :goto_0

    .line 727
    :cond_5
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$4;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->hashistory(I)V
    invoke-static {v0, v4}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$8(Lcom/tencent/wstt/gt/activity/GTAUTFragment;I)V

    goto :goto_0

    .line 731
    :pswitch_4
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$2()[Z

    move-result-object v0

    aget-boolean v0, v0, v5

    if-nez v0, :cond_6

    .line 732
    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(I)V
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$7(I)V

    .line 733
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$2()[Z

    move-result-object v0

    aput-boolean v1, v0, v5

    goto/16 :goto_0

    .line 735
    :cond_6
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$4;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->hashistory(I)V
    invoke-static {v0, v5}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$8(Lcom/tencent/wstt/gt/activity/GTAUTFragment;I)V

    goto/16 :goto_0

    .line 699
    :pswitch_data_0
    .packed-switch 0x7f080111
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
