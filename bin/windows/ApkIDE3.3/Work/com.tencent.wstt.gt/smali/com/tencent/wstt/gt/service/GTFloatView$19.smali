.class Lcom/tencent/wstt/gt/service/GTFloatView$19;
.super Ljava/lang/Object;
.source "GTFloatView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/service/GTFloatView;->initOutParamLayout()V
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$19;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1175
    :goto_0
    return v1

    .line 1172
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView$19;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op_clickHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$111(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
