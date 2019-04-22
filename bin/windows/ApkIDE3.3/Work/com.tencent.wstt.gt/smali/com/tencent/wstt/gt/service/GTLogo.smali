.class public Lcom/tencent/wstt/gt/service/GTLogo;
.super Landroid/app/Service;
.source "GTLogo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/service/GTLogo$MyRunnable;
    }
.end annotation


# static fields
.field private static LogoIsClick:Z

.field public static entrance_img:Landroid/widget/ImageView;

.field public static entrance_view:Landroid/view/View;

.field public static fromFloatview_pos:Z

.field public static gtLogoRunned:Z

.field public static gtlogo_run_flag:Z

.field private static redirect_x:I

.field private static redirect_y:I

.field public static refresh_logo_flag:Z


# instance fields
.field private final ID_FLOATVIEW:I

.field private final MSG_ANIMATION_FINISH:I

.field private final MSG_ANIMATION_ToLeft:I

.field private final MSG_ANIMATION_ToRight:I

.field private ProX:F

.field private ProY:F

.field private clickHandler:Landroid/os/Handler;

.field private cur_X:I

.field private dev_width:I

.field private half_logo_width:I

.field private keyUpDown:Z

.field public logo_handler:Landroid/os/Handler;

.field private logo_width:I

.field private mAnimDistance:I

.field private mAnimHandler:Landroid/os/Handler;

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private moveX:F

.field private moveY:F

.field private move_event:Z

.field private move_oldX:F

.field private move_oldY:F

.field private timer:I

.field wm:Landroid/view/WindowManager;

.field wmParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, -0x1388

    const/4 v1, 0x0

    .line 80
    sput v0, Lcom/tencent/wstt/gt/service/GTLogo;->redirect_x:I

    .line 81
    sput v0, Lcom/tencent/wstt/gt/service/GTLogo;->redirect_y:I

    .line 83
    sput-boolean v1, Lcom/tencent/wstt/gt/service/GTLogo;->refresh_logo_flag:Z

    .line 84
    sput-boolean v1, Lcom/tencent/wstt/gt/service/GTLogo;->fromFloatview_pos:Z

    .line 85
    sput-boolean v1, Lcom/tencent/wstt/gt/service/GTLogo;->gtLogoRunned:Z

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wstt/gt/service/GTLogo;->gtlogo_run_flag:Z

    .line 230
    sput-boolean v1, Lcom/tencent/wstt/gt/service/GTLogo;->LogoIsClick:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/high16 v1, -0x3b860000    # -1000.0f

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    iput-object v3, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wm:Landroid/view/WindowManager;

    .line 53
    iput-object v3, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 64
    iput v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->move_oldX:F

    .line 65
    iput v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->move_oldY:F

    .line 67
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->keyUpDown:Z

    .line 68
    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->timer:I

    .line 69
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->move_event:Z

    .line 71
    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->logo_width:I

    .line 72
    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->dev_width:I

    .line 73
    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->half_logo_width:I

    .line 74
    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->cur_X:I

    .line 75
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mAnimDistance:I

    .line 76
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->MSG_ANIMATION_ToLeft:I

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->MSG_ANIMATION_ToRight:I

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->MSG_ANIMATION_FINISH:I

    .line 88
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->ID_FLOATVIEW:I

    .line 141
    new-instance v0, Lcom/tencent/wstt/gt/service/GTLogo$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTLogo$1;-><init>(Lcom/tencent/wstt/gt/service/GTLogo;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->logo_handler:Landroid/os/Handler;

    .line 188
    new-instance v0, Lcom/tencent/wstt/gt/service/GTLogo$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTLogo$2;-><init>(Lcom/tencent/wstt/gt/service/GTLogo;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->clickHandler:Landroid/os/Handler;

    .line 384
    new-instance v0, Lcom/tencent/wstt/gt/service/GTLogo$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTLogo$3;-><init>(Lcom/tencent/wstt/gt/service/GTLogo;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mAnimHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/service/GTLogo;)Z
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->checkIsInGT()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/tencent/wstt/gt/service/GTLogo;->redirect_x:I

    return v0
.end method

.method static synthetic access$10(Lcom/tencent/wstt/gt/service/GTLogo;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->viewIsOnClick()V

    return-void
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/service/GTLogo;I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->timer:I

    return-void
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/service/GTLogo;)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->doAnimationToLeft()V

    return-void
.end method

.method static synthetic access$13(Lcom/tencent/wstt/gt/service/GTLogo;)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->doAnimationToRight()V

    return-void
.end method

.method static synthetic access$14(Lcom/tencent/wstt/gt/service/GTLogo;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->move_event:Z

    return v0
.end method

.method static synthetic access$15(Lcom/tencent/wstt/gt/service/GTLogo;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->viewIsOnLongClick()V

    return-void
.end method

.method static synthetic access$16(Lcom/tencent/wstt/gt/service/GTLogo;F)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->x:F

    return-void
.end method

.method static synthetic access$17(Lcom/tencent/wstt/gt/service/GTLogo;F)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->y:F

    return-void
.end method

.method static synthetic access$18(Lcom/tencent/wstt/gt/service/GTLogo;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->move_event:Z

    return-void
.end method

.method static synthetic access$19(Lcom/tencent/wstt/gt/service/GTLogo;F)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mTouchStartX:F

    return-void
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/tencent/wstt/gt/service/GTLogo;->redirect_y:I

    return v0
.end method

.method static synthetic access$20(Lcom/tencent/wstt/gt/service/GTLogo;F)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mTouchStartY:F

    return-void
.end method

.method static synthetic access$21(Lcom/tencent/wstt/gt/service/GTLogo;F)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->ProX:F

    return-void
.end method

.method static synthetic access$22(Lcom/tencent/wstt/gt/service/GTLogo;F)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->ProY:F

    return-void
.end method

.method static synthetic access$23(Lcom/tencent/wstt/gt/service/GTLogo;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->clickHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$24(Lcom/tencent/wstt/gt/service/GTLogo;F)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->moveX:F

    return-void
.end method

.method static synthetic access$25(Lcom/tencent/wstt/gt/service/GTLogo;F)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->moveY:F

    return-void
.end method

.method static synthetic access$26(Lcom/tencent/wstt/gt/service/GTLogo;)F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->move_oldX:F

    return v0
.end method

.method static synthetic access$27(Lcom/tencent/wstt/gt/service/GTLogo;)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->move_oldY:F

    return v0
.end method

.method static synthetic access$28(Lcom/tencent/wstt/gt/service/GTLogo;)F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->moveX:F

    return v0
.end method

.method static synthetic access$29(Lcom/tencent/wstt/gt/service/GTLogo;F)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->move_oldX:F

    return-void
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/service/GTLogo;II)V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0, p1, p2}, Lcom/tencent/wstt/gt/service/GTLogo;->redirectLogoPos(II)V

    return-void
.end method

.method static synthetic access$30(Lcom/tencent/wstt/gt/service/GTLogo;)F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->moveY:F

    return v0
.end method

.method static synthetic access$31(Lcom/tencent/wstt/gt/service/GTLogo;F)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->move_oldY:F

    return-void
.end method

.method static synthetic access$32(Lcom/tencent/wstt/gt/service/GTLogo;)F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->ProX:F

    return v0
.end method

.method static synthetic access$33(Lcom/tencent/wstt/gt/service/GTLogo;)F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->ProY:F

    return v0
.end method

.method static synthetic access$34(Lcom/tencent/wstt/gt/service/GTLogo;)V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$35(Lcom/tencent/wstt/gt/service/GTLogo;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->updateViewPositionEnd()V

    return-void
.end method

.method static synthetic access$4(I)V
    .locals 0

    .prologue
    .line 80
    sput p0, Lcom/tencent/wstt/gt/service/GTLogo;->redirect_x:I

    return-void
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/service/GTLogo;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->dev_width:I

    return v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/service/GTLogo;Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->keyUpDown:Z

    return-void
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/service/GTLogo;)I
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->keyUpDownListener()I

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/service/GTLogo;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->keyUpDown:Z

    return v0
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/service/GTLogo;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->timer:I

    return v0
.end method

.method private checkIsInGT()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->isInGT()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    sget-object v0, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    const/4 v0, 0x1

    .line 423
    :goto_0
    return v0

    .line 422
    :cond_0
    sget-object v1, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private createView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 258
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 259
    const-string v2, "window"

    .line 258
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wm:Landroid/view/WindowManager;

    .line 260
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 261
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 262
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 263
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 264
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 265
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 266
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 267
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 268
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wm:Landroid/view/WindowManager;

    sget-object v2, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    sget-object v1, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_img:Landroid/widget/ImageView;

    new-instance v2, Lcom/tencent/wstt/gt/service/GTLogo$5;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/service/GTLogo$5;-><init>(Lcom/tencent/wstt/gt/service/GTLogo;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 349
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->stopSelf()V

    goto :goto_0
.end method

.method private doAnimationToLeft()V
    .locals 3

    .prologue
    .line 400
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->cur_X:I

    if-lez v0, :cond_0

    .line 401
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->cur_X:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mAnimDistance:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->cur_X:I

    .line 402
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->cur_X:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 403
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mAnimHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 406
    :cond_0
    return-void
.end method

.method private doAnimationToRight()V
    .locals 3

    .prologue
    .line 409
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->cur_X:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->dev_width:I

    if-ge v0, v1, :cond_0

    .line 410
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->cur_X:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mAnimDistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->cur_X:I

    .line 411
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->cur_X:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 412
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mAnimHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    :cond_0
    return-void
.end method

.method private keyUpDownListener()I
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/tencent/wstt/gt/service/GTLogo$4;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTLogo$4;-><init>(Lcom/tencent/wstt/gt/service/GTLogo;)V

    .line 226
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/service/GTLogo$4;->start()V

    .line 227
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->timer:I

    return v0
.end method

.method private processLogoPosition()V
    .locals 2

    .prologue
    .line 374
    sget-object v0, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->logo_width:I

    .line 375
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->dev_width:I

    .line 376
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->logo_width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->half_logo_width:I

    .line 377
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->cur_X:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->half_logo_width:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->dev_width:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mAnimHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mAnimHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private redirectLogoPos(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 463
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 464
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->cur_X:I

    .line 466
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    sget-object v0, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->processLogoPosition()V

    .line 470
    return-void
.end method

.method public static setReDirectXY(II)V
    .locals 0
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 457
    sput p0, Lcom/tencent/wstt/gt/service/GTLogo;->redirect_x:I

    .line 458
    sput p1, Lcom/tencent/wstt/gt/service/GTLogo;->redirect_y:I

    .line 459
    return-void
.end method

.method private updateViewPosition()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->x:F

    iget v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 354
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->y:F

    iget v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 356
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    return-void
.end method

.method private updateViewPositionEnd()V
    .locals 3

    .prologue
    .line 360
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTLogo;->LogoIsClick:Z

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/service/GTLogo;->LogoIsClick:Z

    .line 371
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->x:F

    iget v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 365
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->y:F

    iget v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 366
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->cur_X:I

    .line 368
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->processLogoPosition()V

    goto :goto_0
.end method

.method private viewIsOnClick()V
    .locals 2

    .prologue
    .line 233
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/wstt/gt/service/GTLogo;->timer:I

    .line 234
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/wstt/gt/service/GTLogo;->LogoIsClick:Z

    .line 235
    sget-boolean v1, Lcom/tencent/wstt/gt/activity/GTMainActivity;->dlgIsShow:Z

    if-nez v1, :cond_0

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/wstt/gt/activity/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/service/GTLogo;->startActivity(Landroid/content/Intent;)V

    .line 241
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private viewIsOnLongClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 244
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->timer:I

    .line 245
    sget-object v2, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/service/GTServiceController;->setCurAviableService(I)V

    .line 246
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTLogo;->logo_handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 247
    .local v1, "msg":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 248
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 250
    sget-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->floatViewRunned:Z

    if-nez v2, :cond_0

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/service/GTLogo;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 255
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method checkIsVisiable()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 428
    sget-object v4, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/service/GTServiceController;->getCurAviableService()I

    move-result v3

    .line 429
    .local v3, "id":I
    packed-switch v3, :pswitch_data_0

    .line 454
    :goto_0
    return-void

    .line 431
    :pswitch_0
    sget-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 432
    sget-object v4, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    iget-boolean v4, v4, Lcom/tencent/wstt/gt/service/GTServiceController;->show_alert:Z

    if-eqz v4, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 434
    const v5, 0x7f020048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .line 435
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 436
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_img:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 438
    sget-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_img:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 439
    sget-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_img:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 441
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 442
    const v5, 0x7f02003b

    .line 441
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .line 443
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 444
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 445
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    sget-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_img:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 446
    sget-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_img:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 447
    sget-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_img:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 451
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    sget-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 493
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 94
    sput-boolean v8, Lcom/tencent/wstt/gt/service/GTLogo;->gtLogoRunned:Z

    .line 96
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030009

    .line 97
    const/4 v6, 0x0

    .line 96
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    .line 98
    sget-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    .line 99
    const v5, 0x7f08003e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 98
    check-cast v4, Landroid/widget/ImageView;

    sput-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_img:Landroid/widget/ImageView;

    .line 100
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .line 101
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_img:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    sget-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_img:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 105
    sget-object v4, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_img:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTLogo;->createView()V

    .line 110
    sput-boolean v8, Lcom/tencent/wstt/gt/service/GTLogo;->refresh_logo_flag:Z

    .line 111
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/tencent/wstt/gt/service/GTLogo$MyRunnable;

    invoke-direct {v4, p0}, Lcom/tencent/wstt/gt/service/GTLogo$MyRunnable;-><init>(Lcom/tencent/wstt/gt/service/GTLogo;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 474
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/service/GTLogo;->refresh_logo_flag:Z

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTLogo;->entrance_view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 489
    return-void

    .line 484
    :catch_0
    move-exception v0

    goto :goto_0
.end method
