.class Lcom/tencent/wstt/gt/service/GTFloatView$4;
.super Landroid/os/Handler;
.source "GTFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/service/GTFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTFloatView;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$4;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 669
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 671
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 685
    :goto_0
    return-void

    .line 673
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$4;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToRight()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$18(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 676
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$4;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToLeft()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$19(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 679
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$4;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToDown()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$20(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 682
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$4;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToTop()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$21(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 671
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
