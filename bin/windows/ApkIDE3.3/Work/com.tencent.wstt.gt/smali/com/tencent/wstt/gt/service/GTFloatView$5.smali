.class Lcom/tencent/wstt/gt/service/GTFloatView$5;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$5;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 767
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 769
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 783
    :goto_0
    return-void

    .line 771
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$5;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToRightHorizontal()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$22(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 774
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$5;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToLeftHorizontal()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$23(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 777
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$5;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToDownHorizontal()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$24(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 780
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$5;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToTopHorizontal()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$25(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
