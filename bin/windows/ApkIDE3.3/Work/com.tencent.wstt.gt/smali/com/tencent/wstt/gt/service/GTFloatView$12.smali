.class Lcom/tencent/wstt/gt/service/GTFloatView$12;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$12;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 1839
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1841
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1856
    :cond_0
    :goto_0
    return-void

    .line 1843
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$12;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v0, v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$73(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 1844
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$12;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->keyUpDownListener()I
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$74(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    goto :goto_0

    .line 1847
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$12;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->keyUpDown:Z
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$75(Lcom/tencent/wstt/gt/service/GTFloatView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$12;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$73(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 1849
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$12;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->timer:I
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$76(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1850
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$12;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->viewIsOnClick()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$77(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 1852
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$12;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$78(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    goto :goto_0

    .line 1841
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
