.class Lcom/tencent/wstt/gt/service/GTFloatView$8;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$8;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 1207
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1209
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1223
    :goto_0
    return-void

    .line 1211
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$8;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$57(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 1212
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$8;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_MoveClickListener()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$58(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 1215
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$8;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$59(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 1216
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$8;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_MoveClickListener()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$60(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 1219
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$8;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$61(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 1220
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$8;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_MoveClickListener()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$62(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto :goto_0

    .line 1209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
