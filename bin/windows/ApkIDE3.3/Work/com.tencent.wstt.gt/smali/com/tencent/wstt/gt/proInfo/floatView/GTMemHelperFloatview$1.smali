.class Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;
.super Ljava/lang/Object;
.source "GTMemHelperFloatview.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$8(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V

    .line 180
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # invokes: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->checkScreenOrientation()I
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$9(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 182
    iget-object v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$10(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 181
    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$11(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V

    .line 187
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    :cond_0
    :goto_1
    return v4

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$11(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V

    goto :goto_0

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->x:F
    invoke-static {v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$12(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$13(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V

    .line 190
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->y:F
    invoke-static {v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$14(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$15(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V

    .line 192
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$16(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V

    .line 193
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$17(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V

    .line 194
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    invoke-static {v0, v3}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$18(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;Z)V

    goto :goto_1

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # invokes: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->updateViewPosition()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$19(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)V

    goto :goto_1

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # invokes: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->updateViewPosition()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$19(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)V

    .line 201
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$17(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V

    invoke-static {v0, v2}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$16(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V

    .line 202
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isMoved:Z
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$20(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isMem:Z
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$21(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_mem:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$2(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->drawSelect:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$22(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$23(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    invoke-static {v0, v3}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$24(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;Z)V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isDump:Z
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$25(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_dump:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$5(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->drawSelect:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$22(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$23(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    invoke-static {v0, v3}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$26(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;Z)V

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isGc:Z
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$27(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_gc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$7(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->drawSelect:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$22(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$23(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    invoke-static {v0, v3}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$28(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;Z)V

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    invoke-static {v0, v3}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$18(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;Z)V

    goto/16 :goto_1

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
