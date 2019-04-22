.class Lcom/tencent/wstt/gt/service/GTLogo$1;
.super Landroid/os/Handler;
.source "GTLogo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/service/GTLogo;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTLogo$1;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    .line 141
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/service/GTLogo$1;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # invokes: Lcom/tencent/wstt/gt/service/GTLogo;->checkIsInGT()Z
    invoke-static {v13}, Lcom/tencent/wstt/gt/service/GTLogo;->access$0(Lcom/tencent/wstt/gt/service/GTLogo;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 145
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    if-nez v13, :cond_0

    .line 146
    const/16 v13, -0x1388

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->redirect_x:I
    invoke-static {}, Lcom/tencent/wstt/gt/service/GTLogo;->access$1()I

    move-result v14

    if-eq v13, v14, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/service/GTLogo$1;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->redirect_x:I
    invoke-static {}, Lcom/tencent/wstt/gt/service/GTLogo;->access$1()I

    move-result v14

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->redirect_y:I
    invoke-static {}, Lcom/tencent/wstt/gt/service/GTLogo;->access$2()I

    move-result v15

    # invokes: Lcom/tencent/wstt/gt/service/GTLogo;->redirectLogoPos(II)V
    invoke-static {v13, v14, v15}, Lcom/tencent/wstt/gt/service/GTLogo;->access$3(Lcom/tencent/wstt/gt/service/GTLogo;II)V

    .line 148
    const/16 v13, -0x1388

    invoke-static {v13}, Lcom/tencent/wstt/gt/service/GTLogo;->access$4(I)V

    .line 151
    :cond_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 152
    sget-object v13, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 154
    const/4 v13, 0x2

    new-array v5, v13, [I

    .line 155
    .local v5, "loc":[I
    sget-object v13, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    invoke-virtual {v13, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 156
    const/4 v13, 0x0

    aget v1, v5, v13

    .line 157
    .local v1, "abs_x":I
    const/4 v13, 0x1

    aget v2, v5, v13

    .line 158
    .local v2, "abs_y":I
    sget-object v13, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 159
    .local v7, "logo_width":I
    sget-object v13, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 161
    .local v6, "logo_height":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/service/GTLogo$1;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-virtual {v13}, Lcom/tencent/wstt/gt/service/GTLogo;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v8

    .line 162
    .local v8, "statusBar_height":I
    add-int v11, v1, v7

    .line 163
    .local v11, "view_bottom_right_x":I
    sub-int v13, v2, v8

    add-int v12, v13, v6

    .line 165
    .local v12, "view_bottom_right_y":I
    move v9, v1

    .line 166
    .local v9, "view_bottom_left_x":I
    sub-int v13, v2, v8

    add-int v10, v13, v6

    .line 168
    .local v10, "view_bottom_left_y":I
    const/4 v3, 0x0

    .line 169
    .local v3, "floatview_pos_x":I
    const/4 v4, 0x0

    .line 170
    .local v4, "floatview_pos_y":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/service/GTLogo$1;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->dev_width:I
    invoke-static {v13}, Lcom/tencent/wstt/gt/service/GTLogo;->access$5(Lcom/tencent/wstt/gt/service/GTLogo;)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    if-le v1, v13, :cond_3

    .line 171
    move v3, v11

    .line 172
    move v4, v12

    .line 178
    :goto_0
    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/service/GTFloatView;->setReDirectXY(II)V

    .line 181
    .end local v1    # "abs_x":I
    .end local v2    # "abs_y":I
    .end local v3    # "floatview_pos_x":I
    .end local v4    # "floatview_pos_y":I
    .end local v5    # "loc":[I
    .end local v6    # "logo_height":I
    .end local v7    # "logo_width":I
    .end local v8    # "statusBar_height":I
    .end local v9    # "view_bottom_left_x":I
    .end local v10    # "view_bottom_left_y":I
    .end local v11    # "view_bottom_right_x":I
    .end local v12    # "view_bottom_right_y":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/service/GTLogo$1;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-virtual {v13}, Lcom/tencent/wstt/gt/service/GTLogo;->checkIsVisiable()V

    .line 184
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 185
    return-void

    .line 174
    .restart local v1    # "abs_x":I
    .restart local v2    # "abs_y":I
    .restart local v3    # "floatview_pos_x":I
    .restart local v4    # "floatview_pos_y":I
    .restart local v5    # "loc":[I
    .restart local v6    # "logo_height":I
    .restart local v7    # "logo_width":I
    .restart local v8    # "statusBar_height":I
    .restart local v9    # "view_bottom_left_x":I
    .restart local v10    # "view_bottom_left_y":I
    .restart local v11    # "view_bottom_right_x":I
    .restart local v12    # "view_bottom_right_y":I
    :cond_3
    move v3, v9

    .line 175
    move v4, v10

    goto :goto_0
.end method
