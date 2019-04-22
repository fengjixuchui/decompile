.class Lcom/tencent/wstt/gt/service/GTLogo$5;
.super Ljava/lang/Object;
.source "GTLogo.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/service/GTLogo;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTLogo;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/service/GTLogo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, -0x3b860000    # -1000.0f

    .line 289
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$16(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 290
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 292
    iget-object v4, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/service/GTLogo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 290
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$17(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 294
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 346
    :goto_0
    return v7

    .line 296
    :pswitch_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-static {v2, v6}, Lcom/tencent/wstt/gt/service/GTLogo;->access$18(Lcom/tencent/wstt/gt/service/GTLogo;Z)V

    .line 297
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$19(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 298
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$20(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 299
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$21(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 300
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$22(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 302
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->clickHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$23(Lcom/tencent/wstt/gt/service/GTLogo;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$24(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 307
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$25(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 309
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 310
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 312
    .local v1, "mTouchSlop":I
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->move_oldX:F
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$26(Lcom/tencent/wstt/gt/service/GTLogo;)F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->move_oldY:F
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$27(Lcom/tencent/wstt/gt/service/GTLogo;)F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->moveX:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$28(Lcom/tencent/wstt/gt/service/GTLogo;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$29(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 314
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->moveY:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$30(Lcom/tencent/wstt/gt/service/GTLogo;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$31(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 315
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->moveX:F
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$28(Lcom/tencent/wstt/gt/service/GTLogo;)F

    move-result v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->ProX:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$32(Lcom/tencent/wstt/gt/service/GTLogo;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->moveY:F
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$30(Lcom/tencent/wstt/gt/service/GTLogo;)F

    move-result v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->ProY:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$33(Lcom/tencent/wstt/gt/service/GTLogo;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-static {v2, v6}, Lcom/tencent/wstt/gt/service/GTLogo;->access$18(Lcom/tencent/wstt/gt/service/GTLogo;Z)V

    goto/16 :goto_0

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-static {v2, v7}, Lcom/tencent/wstt/gt/service/GTLogo;->access$18(Lcom/tencent/wstt/gt/service/GTLogo;Z)V

    .line 320
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # invokes: Lcom/tencent/wstt/gt/service/GTLogo;->updateViewPosition()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$34(Lcom/tencent/wstt/gt/service/GTLogo;)V

    goto/16 :goto_0

    .line 323
    :cond_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->move_event:Z
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$14(Lcom/tencent/wstt/gt/service/GTLogo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 324
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->moveX:F
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$28(Lcom/tencent/wstt/gt/service/GTLogo;)F

    move-result v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->move_oldX:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$26(Lcom/tencent/wstt/gt/service/GTLogo;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->moveY:F
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$30(Lcom/tencent/wstt/gt/service/GTLogo;)F

    move-result v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->move_oldY:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTLogo;->access$27(Lcom/tencent/wstt/gt/service/GTLogo;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-static {v2, v6}, Lcom/tencent/wstt/gt/service/GTLogo;->access$18(Lcom/tencent/wstt/gt/service/GTLogo;Z)V

    goto/16 :goto_0

    .line 328
    :cond_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-static {v2, v7}, Lcom/tencent/wstt/gt/service/GTLogo;->access$18(Lcom/tencent/wstt/gt/service/GTLogo;Z)V

    .line 329
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # invokes: Lcom/tencent/wstt/gt/service/GTLogo;->updateViewPosition()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$34(Lcom/tencent/wstt/gt/service/GTLogo;)V

    goto/16 :goto_0

    .line 332
    :cond_3
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # invokes: Lcom/tencent/wstt/gt/service/GTLogo;->updateViewPosition()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$34(Lcom/tencent/wstt/gt/service/GTLogo;)V

    goto/16 :goto_0

    .line 337
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    .end local v1    # "mTouchSlop":I
    :pswitch_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # invokes: Lcom/tencent/wstt/gt/service/GTLogo;->updateViewPositionEnd()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$35(Lcom/tencent/wstt/gt/service/GTLogo;)V

    .line 338
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-static {v2, v5}, Lcom/tencent/wstt/gt/service/GTLogo;->access$29(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 339
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-static {v2, v5}, Lcom/tencent/wstt/gt/service/GTLogo;->access$31(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 340
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/service/GTLogo;->access$20(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    invoke-static {v2, v4}, Lcom/tencent/wstt/gt/service/GTLogo;->access$19(Lcom/tencent/wstt/gt/service/GTLogo;F)V

    .line 342
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo$5;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->clickHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$23(Lcom/tencent/wstt/gt/service/GTLogo;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
