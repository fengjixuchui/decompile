.class Lcom/tencent/wstt/gt/service/GTFloatView$6;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$6;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 891
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 893
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 907
    :goto_0
    return-void

    .line 895
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$6;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$26(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 896
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$6;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_MoveClickListener()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$27(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 899
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$6;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$28(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 900
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$6;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_MoveClickListener()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$29(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 903
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$6;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$30(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 904
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$6;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_MoveClickListener()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$31(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 893
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
