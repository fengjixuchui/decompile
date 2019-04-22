.class Lcom/tencent/wstt/gt/service/GTFloatView$14;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 2142
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 2144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2174
    :goto_0
    return-void

    .line 2146
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_top_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$81(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2147
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_top_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$82(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2148
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_bottom_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$83(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2149
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_bottom_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$84(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2150
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$85(I)V

    goto :goto_0

    .line 2153
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_top_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$81(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2154
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_top_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$82(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2155
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_bottom_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$83(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2156
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_bottom_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$84(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2157
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$85(I)V

    goto :goto_0

    .line 2160
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_top_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$81(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2161
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_top_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$82(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2162
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_bottom_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$83(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2163
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_bottom_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$84(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2164
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$85(I)V

    goto :goto_0

    .line 2167
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_top_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$81(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2168
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_top_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$82(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2169
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_bottom_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$83(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2170
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$14;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_bottom_logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$84(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2171
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$85(I)V

    goto/16 :goto_0

    .line 2144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
