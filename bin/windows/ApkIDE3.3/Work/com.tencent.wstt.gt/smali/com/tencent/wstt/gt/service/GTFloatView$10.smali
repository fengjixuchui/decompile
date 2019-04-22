.class Lcom/tencent/wstt/gt/service/GTFloatView$10;
.super Ljava/lang/Object;
.source "GTFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$10;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 1795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1798
    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->state_timer:I
    invoke-static {}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$64()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1816
    :goto_0
    return-void

    .line 1800
    :pswitch_0
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$65(I)V

    .line 1801
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$10;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_timer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$66(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0.0\'\'"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1802
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$10;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_timer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$66(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1805
    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$65(I)V

    .line 1806
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_timer_flag:Z

    .line 1807
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$10;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/wstt/gt/service/GTFloatView$TimerRunnable;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$10;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-direct {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView$TimerRunnable;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$67(Lcom/tencent/wstt/gt/service/GTFloatView;Ljava/lang/Thread;)V

    .line 1808
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$10;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->timer_thread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$68(Lcom/tencent/wstt/gt/service/GTFloatView;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1811
    :pswitch_2
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$65(I)V

    .line 1812
    sput-boolean v1, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_timer_flag:Z

    .line 1813
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$10;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_timer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$66(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1798
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
