.class public Lcom/mobeta/android/dslv/DragSortController;
.super Lcom/mobeta/android/dslv/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final CLICK_REMOVE:I = 0x0

.field public static final FLING_REMOVE:I = 0x1

.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2


# instance fields
.field private mCanDrag:Z

.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/mobeta/android/dslv/DragSortListView;

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mIsRemoving:Z

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 2
    .param p1, "dslv"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    const/4 v1, 0x0

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;III)V
    .locals 6
    .param p1, "dslv"    # Lcom/mobeta/android/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I

    .prologue
    .line 97
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIII)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;IIII)V
    .locals 7
    .param p1, "dslv"    # Lcom/mobeta/android/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I

    .prologue
    .line 101
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V
    .locals 4
    .param p1, "dslv"    # Lcom/mobeta/android/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I
    .param p6, "flingHandleId"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 113
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 31
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    .line 46
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    .line 47
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 57
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    .line 58
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    .line 60
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    .line 70
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    .line 72
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingSpeed:F

    .line 445
    new-instance v0, Lcom/mobeta/android/dslv/DragSortController$1;

    invoke-direct {v0, p0}, Lcom/mobeta/android/dslv/DragSortController$1;-><init>(Lcom/mobeta/android/dslv/DragSortController;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 114
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 115
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 116
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 117
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 118
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    .line 119
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    .line 120
    iput p5, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    .line 121
    iput p6, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHandleId:I

    .line 122
    invoke-virtual {p0, p4}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveMode(I)V

    .line 123
    invoke-virtual {p0, p3}, Lcom/mobeta/android/dslv/DragSortController;->setDragInitMode(I)V

    .line 124
    return-void
.end method

.method static synthetic access$0(Lcom/mobeta/android/dslv/DragSortController;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/mobeta/android/dslv/DragSortController;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    return v0
.end method

.method static synthetic access$2(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mobeta/android/dslv/DragSortController;)F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingSpeed:F

    return v0
.end method

.method static synthetic access$4(Lcom/mobeta/android/dslv/DragSortController;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    return v0
.end method

.method static synthetic access$5(Lcom/mobeta/android/dslv/DragSortController;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    return-void
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 314
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 318
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getDragInitMode()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    return v0
.end method

.method public getRemoveMode()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    return v0
.end method

.method public isRemoveEnabled()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 362
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 365
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    .line 366
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-nez v0, :cond_1

    .line 367
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    .line 370
    :cond_1
    iput-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 371
    iput-boolean v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mCanDrag:Z

    .line 372
    iput v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    .line 373
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    .line 375
    return v5
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v0, :cond_0

    .line 278
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    .line 280
    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 415
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->performHapticFeedback(I)Z

    .line 417
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrX:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrY:I

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    .line 419
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 382
    .local v2, "x1":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 383
    .local v4, "y1":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 384
    .local v3, "x2":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 385
    .local v5, "y2":I
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int v0, v3, v6

    .line 386
    .local v0, "deltaX":I
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int v1, v5, v6

    .line 388
    .local v1, "deltaY":I
    iget-boolean v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mCanDrag:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_1

    .line 389
    :cond_0
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    if-eq v6, v7, :cond_3

    .line 390
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-ne v6, v8, :cond_2

    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v6, :cond_2

    .line 391
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    .line 409
    :cond_1
    :goto_0
    return v9

    .line 393
    :cond_2
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-eqz v6, :cond_1

    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_1

    iget-boolean v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v6, :cond_1

    .line 395
    iput-boolean v8, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 396
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 398
    :cond_3
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_1

    .line 399
    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_4

    iget-boolean v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v6, :cond_4

    .line 400
    iput-boolean v8, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 401
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 402
    :cond_4
    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_1

    .line 403
    iput-boolean v9, p0, Lcom/mobeta/android/dslv/DragSortController;->mCanDrag:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 442
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 431
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(I)V

    .line 435
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 239
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView;->isDragEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView;->listViewIntercepted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v5

    .line 243
    :cond_1
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 244
    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-ne v3, v6, :cond_2

    .line 245
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 248
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 249
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 251
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrX:I

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrY:I

    goto :goto_0

    .line 255
    :pswitch_2
    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v3, :cond_3

    .line 256
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    if-ltz v3, :cond_4

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    .line 257
    .local v2, "x":I
    :goto_1
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 258
    .local v1, "removePoint":I
    if-le v2, v1, :cond_3

    .line 259
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/mobeta/android/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 263
    .end local v1    # "removePoint":I
    .end local v2    # "x":I
    :cond_3
    :pswitch_3
    iput-boolean v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 264
    iput-boolean v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    goto :goto_0

    .line 256
    :cond_4
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    neg-int v2, v3

    goto :goto_1

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setClickRemoveId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    .line 208
    return-void
.end method

.method public setDragHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    .line 188
    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    .line 139
    return-void
.end method

.method public setFlingHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHandleId:I

    .line 198
    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    .line 174
    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    .line 163
    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    .line 150
    return-void
.end method

.method public startDrag(III)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "dragFlags":I
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-nez v1, :cond_0

    .line 225
    or-int/lit8 v0, v0, 0xc

    .line 227
    :cond_0
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_1

    .line 228
    or-int/lit8 v0, v0, 0x1

    .line 229
    or-int/lit8 v0, v0, 0x2

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->startDrag(IIII)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    .line 234
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    return v1
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 300
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 323
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 325
    .local v9, "y":I
    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v10, v8, v9}, Lcom/mobeta/android/dslv/DragSortListView;->pointToPosition(II)I

    move-result v7

    .line 327
    .local v7, "touchPos":I
    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v10}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    .line 328
    .local v4, "numHeaders":I
    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v10}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 329
    .local v3, "numFooters":I
    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v10}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v0

    .line 334
    .local v0, "count":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    if-lt v7, v4, :cond_1

    .line 335
    sub-int v10, v0, v3

    if-ge v7, v10, :cond_1

    .line 336
    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v11}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v10, v11}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 337
    .local v2, "item":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v5, v10

    .line 338
    .local v5, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v6, v10

    .line 340
    .local v6, "rawY":I
    if-nez p2, :cond_0

    move-object v1, v2

    .line 341
    .local v1, "dragBox":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    .line 342
    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    invoke-virtual {v1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 344
    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-le v5, v10, :cond_1

    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-le v6, v10, :cond_1

    .line 345
    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v5, v10, :cond_1

    .line 346
    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v6, v10, :cond_1

    .line 348
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    .line 349
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    .line 356
    .end local v1    # "dragBox":Landroid/view/View;
    .end local v2    # "item":Landroid/view/View;
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    .end local v7    # "touchPos":I
    :goto_1
    return v7

    .line 340
    .restart local v2    # "item":Landroid/view/View;
    .restart local v5    # "rawX":I
    .restart local v6    # "rawY":I
    .restart local v7    # "touchPos":I
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 356
    .end local v2    # "item":Landroid/view/View;
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    :cond_1
    const/4 v7, -0x1

    goto :goto_1
.end method
