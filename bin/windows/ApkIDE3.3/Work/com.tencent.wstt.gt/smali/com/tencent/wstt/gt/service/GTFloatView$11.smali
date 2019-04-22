.class Lcom/tencent/wstt/gt/service/GTFloatView$11;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$11;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 1819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f020039

    const/4 v2, 0x0

    .line 1822
    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->state_fold:I
    invoke-static {}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$69()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1836
    :goto_0
    return-void

    .line 1824
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$11;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview_ip:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$70(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1825
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$11;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_floatview_bottom_arrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$71(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    .line 1826
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1827
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$72(I)V

    goto :goto_0

    .line 1830
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$11;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview_ip:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$70(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1831
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$11;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_floatview_bottom_arrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$71(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    .line 1832
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1833
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$72(I)V

    goto :goto_0

    .line 1822
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
