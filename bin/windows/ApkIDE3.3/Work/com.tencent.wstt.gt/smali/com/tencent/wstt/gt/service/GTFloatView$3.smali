.class Lcom/tencent/wstt/gt/service/GTFloatView$3;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 352
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 355
    sget-boolean v24, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_run_flag:Z

    if-eqz v24, :cond_7

    .line 356
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->checkIsInGT()Z
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$2(Lcom/tencent/wstt/gt/service/GTFloatView;)Z

    .line 358
    const/16 v24, -0x1388

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->redirect_x:I
    invoke-static {}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$3()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->redirect_x:I
    invoke-static {}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$3()I

    move-result v25

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->redirect_y:I
    invoke-static {}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$4()I

    move-result v26

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->redirectFloatViewPos(II)V
    invoke-static/range {v24 .. v26}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$5(Lcom/tencent/wstt/gt/service/GTFloatView;II)V

    .line 360
    const/16 v24, -0x1388

    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$6(I)V

    .line 363
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->checkIsInGT()Z
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$2(Lcom/tencent/wstt/gt/service/GTFloatView;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 364
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->refreshOutputParamsUI()V
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$7(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->refreshInputParamsUI()V
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$8(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 368
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->refreshTimer()V
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$9(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 371
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->refreshProfilerImg()V
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$10(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 376
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 377
    sget-object v24, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 379
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v6, v0, [I

    .line 380
    .local v6, "loc":[I
    sget-object v24, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 381
    const/16 v24, 0x0

    aget v2, v6, v24

    .line 382
    .local v2, "abs_x":I
    const/16 v24, 0x1

    aget v3, v6, v24

    .line 383
    .local v3, "abs_y":I
    sget-object v24, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 384
    .local v5, "floatview_width":I
    sget-object v24, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 385
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 386
    .local v4, "floatview_height":I
    const/high16 v24, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v25, v0

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F
    invoke-static/range {v25 .. v25}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$11(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v10, v0

    .line 387
    .local v10, "logo_width":I
    const/high16 v24, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v25, v0

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F
    invoke-static/range {v25 .. v25}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$11(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v7, v0

    .line 389
    .local v7, "logo_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v11

    .line 390
    .local v11, "statusBar_height":I
    const/4 v8, 0x0

    .line 391
    .local v8, "logo_pos_x":I
    const/4 v9, 0x0

    .line 392
    .local v9, "logo_pos_y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->ProX:F
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$12(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v24

    int-to-float v0, v2

    move/from16 v25, v0

    sub-float v24, v24, v25

    int-to-float v0, v10

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_a

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->ProY:F
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$13(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v24

    int-to-float v0, v3

    move/from16 v25, v0

    sub-float v24, v24, v25

    int-to-float v0, v7

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_9

    .line 394
    move/from16 v20, v2

    .line 395
    .local v20, "view_top_left_x":I
    sub-int v21, v3, v11

    .line 396
    .local v21, "view_top_left_y":I
    move/from16 v8, v20

    .line 397
    move/from16 v9, v21

    .line 426
    .end local v20    # "view_top_left_x":I
    .end local v21    # "view_top_left_y":I
    :goto_0
    invoke-static {v8, v9}, Lcom/tencent/wstt/gt/service/GTLogo;->setReDirectXY(II)V

    .line 429
    .end local v2    # "abs_x":I
    .end local v3    # "abs_y":I
    .end local v4    # "floatview_height":I
    .end local v5    # "floatview_width":I
    .end local v6    # "loc":[I
    .end local v7    # "logo_height":I
    .end local v8    # "logo_pos_x":I
    .end local v9    # "logo_pos_y":I
    .end local v10    # "logo_width":I
    .end local v11    # "statusBar_height":I
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 430
    const/16 v24, 0x1

    sput-boolean v24, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_profiler_flag:Z

    .line 431
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$14(Z)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$15(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_floatview_profiler_switch:Landroid/widget/ImageView;
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$16(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v24

    .line 434
    const v25, 0x7f02003e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 437
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->getSwitchType()I

    move-result v24

    packed-switch v24, :pswitch_data_0

    .line 463
    :cond_5
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 464
    const/16 v24, 0x0

    sput-boolean v24, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_profiler_flag:Z

    .line 465
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$14(Z)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->img_floatview_profiler_switch:Landroid/widget/ImageView;
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$16(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;

    move-result-object v24

    .line 467
    const v25, 0x7f02003f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 470
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->getSwitchType()I

    move-result v24

    packed-switch v24, :pswitch_data_1

    .line 487
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->checkIsVisiable()V
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$17(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 491
    :cond_7
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 493
    :cond_8
    return-void

    .line 399
    .restart local v2    # "abs_x":I
    .restart local v3    # "abs_y":I
    .restart local v4    # "floatview_height":I
    .restart local v5    # "floatview_width":I
    .restart local v6    # "loc":[I
    .restart local v7    # "logo_height":I
    .restart local v8    # "logo_pos_x":I
    .restart local v9    # "logo_pos_y":I
    .restart local v10    # "logo_width":I
    .restart local v11    # "statusBar_height":I
    :cond_9
    move v14, v2

    .line 400
    .local v14, "view_bottom_left_x":I
    sub-int v24, v3, v11

    add-int v15, v24, v4

    .line 402
    .local v15, "view_bottom_left_y":I
    move v8, v14

    .line 403
    sub-int v9, v15, v7

    .line 405
    goto :goto_0

    .line 406
    .end local v14    # "view_bottom_left_x":I
    .end local v15    # "view_bottom_left_y":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    move-object/from16 v24, v0

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->ProY:F
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$13(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v24

    int-to-float v0, v3

    move/from16 v25, v0

    sub-float v24, v24, v25

    int-to-float v0, v7

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_b

    .line 407
    add-int v22, v2, v5

    .line 408
    .local v22, "view_top_right_x":I
    sub-int v23, v3, v11

    .line 409
    .local v23, "view_top_right_y":I
    move/from16 v18, v22

    .line 410
    .local v18, "view_logo_bottom_right_x":I
    add-int v19, v23, v7

    .line 412
    .local v19, "view_logo_bottom_right_y":I
    sub-int v8, v18, v10

    .line 414
    sub-int v9, v19, v7

    .line 416
    goto/16 :goto_0

    .line 417
    .end local v18    # "view_logo_bottom_right_x":I
    .end local v19    # "view_logo_bottom_right_y":I
    .end local v22    # "view_top_right_x":I
    .end local v23    # "view_top_right_y":I
    :cond_b
    add-int v16, v2, v5

    .line 419
    .local v16, "view_bottom_right_x":I
    sub-int v24, v3, v11

    add-int v17, v24, v4

    .line 421
    .local v17, "view_bottom_right_y":I
    sub-int v8, v16, v10

    .line 422
    sub-int v9, v17, v7

    goto/16 :goto_0

    .line 440
    .end local v2    # "abs_x":I
    .end local v3    # "abs_y":I
    .end local v4    # "floatview_height":I
    .end local v5    # "floatview_width":I
    .end local v6    # "loc":[I
    .end local v7    # "logo_height":I
    .end local v8    # "logo_pos_x":I
    .end local v9    # "logo_pos_y":I
    .end local v10    # "logo_width":I
    .end local v11    # "statusBar_height":I
    .end local v16    # "view_bottom_right_x":I
    .end local v17    # "view_bottom_right_y":I
    :pswitch_0
    invoke-static {}, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonHelper;->startGWOrProfValid()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 444
    invoke-static {}, Lcom/tencent/wstt/gt/api/base/GTTime;->enable()V

    .line 445
    sget-object v24, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 446
    const v25, 0x7f080049

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 445
    check-cast v13, Landroid/widget/TextView;

    .line 448
    .local v13, "tv_title_pro":Landroid/widget/TextView;
    const v24, 0x7f020037

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 452
    .end local v13    # "tv_title_pro":Landroid/widget/TextView;
    :pswitch_1
    invoke-static {}, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonHelper;->startGWOrProfValid()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 456
    const/16 v24, 0x1

    sput-boolean v24, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    .line 457
    sget-object v24, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 458
    const v25, 0x7f080049

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 457
    check-cast v12, Landroid/widget/TextView;

    .line 459
    .local v12, "tv_title":Landroid/widget/TextView;
    const v24, 0x7f020038

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 472
    .end local v12    # "tv_title":Landroid/widget/TextView;
    :pswitch_2
    invoke-static {}, Lcom/tencent/wstt/gt/api/base/GTTime;->disable()V

    .line 473
    sget-object v24, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 474
    const v25, 0x7f080049

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 473
    check-cast v13, Landroid/widget/TextView;

    .line 476
    .restart local v13    # "tv_title_pro":Landroid/widget/TextView;
    const v24, 0x7f020037

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 479
    .end local v13    # "tv_title_pro":Landroid/widget/TextView;
    :pswitch_3
    const/16 v24, 0x0

    sput-boolean v24, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    .line 480
    sget-object v24, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 481
    const v25, 0x7f080049

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 480
    check-cast v12, Landroid/widget/TextView;

    .line 482
    .restart local v12    # "tv_title":Landroid/widget/TextView;
    const v24, 0x7f020038

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 470
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
