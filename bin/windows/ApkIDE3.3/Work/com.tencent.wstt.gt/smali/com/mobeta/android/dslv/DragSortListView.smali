.class public Lcom/mobeta/android/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;,
        Lcom/mobeta/android/dslv/DragSortListView$DragListener;,
        Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;,
        Lcom/mobeta/android/dslv/DragSortListView$DragScroller;,
        Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;,
        Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;,
        Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$DropListener;,
        Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;,
        Lcom/mobeta/android/dslv/DragSortListView$HeightCache;,
        Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;,
        Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 445
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 79
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 89
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 100
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 101
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 126
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 182
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 193
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 200
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 216
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 222
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 234
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 241
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 265
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 273
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/mobeta/android/dslv/DragSortListView$1;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .line 337
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 343
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 348
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 353
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 373
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 380
    const/high16 v5, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 389
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 402
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 412
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 419
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 433
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    const/4 v12, 0x3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;-><init>(Lcom/mobeta/android/dslv/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    .line 442
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1707
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 2197
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 447
    const/16 v27, 0x96

    .line 448
    .local v27, "defaultDuration":I
    move/from16 v30, v27

    .line 449
    .local v30, "removeAnimDuration":I
    move/from16 v28, v27

    .line 451
    .local v28, "dropAnimDuration":I
    if-eqz p2, :cond_2

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 453
    sget-object v12, Lcom/tencent/wstt/gt/R$styleable;->DragSortListView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 452
    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 455
    .local v11, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    .line 456
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 455
    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 459
    const/4 v5, 0x5

    const/4 v12, 0x0

    .line 458
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 461
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v5, :cond_0

    .line 462
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    .line 466
    :cond_0
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 467
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 469
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 471
    const/4 v5, 0x0

    .line 472
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 473
    const/4 v14, 0x7

    .line 474
    const/high16 v15, 0x3f400000    # 0.75f

    .line 472
    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 471
    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 476
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-lez v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 479
    const/4 v5, 0x1

    .line 480
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 478
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 482
    .local v29, "frac":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 485
    const/4 v5, 0x2

    .line 486
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 484
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 489
    const/16 v5, 0x8

    .line 488
    move/from16 v0, v30

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 493
    const/16 v5, 0x9

    .line 492
    move/from16 v0, v28

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    .line 497
    const/16 v5, 0x11

    .line 498
    const/4 v12, 0x1

    .line 496
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v34

    .line 500
    .local v34, "useDefault":Z
    if-eqz v34, :cond_1

    .line 502
    const/16 v5, 0xc

    .line 503
    const/4 v12, 0x0

    .line 501
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    .line 505
    .local v31, "removeEnabled":Z
    const/4 v5, 0x4

    .line 506
    const/4 v12, 0x1

    .line 504
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 508
    .local v8, "removeMode":I
    const/16 v5, 0xb

    .line 509
    const/4 v12, 0x1

    .line 507
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 511
    .local v33, "sortEnabled":Z
    const/16 v5, 0xd

    .line 512
    const/4 v12, 0x0

    .line 510
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 514
    .local v7, "dragInitMode":I
    const/16 v5, 0xe

    .line 515
    const/4 v12, 0x0

    .line 513
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 517
    .local v6, "dragHandleId":I
    const/16 v5, 0xf

    .line 518
    const/4 v12, 0x0

    .line 516
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 520
    .local v10, "flingHandleId":I
    const/16 v5, 0x10

    .line 521
    const/4 v12, 0x0

    .line 519
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 523
    .local v9, "clickRemoveId":I
    const/4 v5, 0x3

    .line 524
    const/high16 v12, -0x1000000

    .line 522
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    .line 526
    .local v26, "bgColor":I
    new-instance v4, Lcom/mobeta/android/dslv/DragSortController;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V

    .line 529
    .local v4, "controller":Lcom/mobeta/android/dslv/DragSortController;
    move/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 530
    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/mobeta/android/dslv/DragSortController;->setSortEnabled(Z)V

    .line 531
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/mobeta/android/dslv/DragSortController;->setBackgroundColor(I)V

    .line 533
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 534
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 537
    .end local v4    # "controller":Lcom/mobeta/android/dslv/DragSortController;
    .end local v6    # "dragHandleId":I
    .end local v7    # "dragInitMode":I
    .end local v8    # "removeMode":I
    .end local v9    # "clickRemoveId":I
    .end local v10    # "flingHandleId":I
    .end local v26    # "bgColor":I
    .end local v31    # "removeEnabled":Z
    .end local v33    # "sortEnabled":Z
    :cond_1
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 540
    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v29    # "frac":F
    .end local v34    # "useDefault":Z
    :cond_2
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    .line 542
    const/high16 v32, 0x3f000000    # 0.5f

    .line 543
    .local v32, "smoothness":F
    if-lez v30, :cond_3

    .line 544
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    invoke-direct {v5, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    .line 547
    :cond_3
    if-lez v28, :cond_4

    .line 548
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v5, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    .line 551
    :cond_4
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 552
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 551
    invoke-static/range {v12 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 555
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/mobeta/android/dslv/DragSortListView$2;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 572
    return-void

    .line 476
    .end local v32    # "smoothness":F
    .restart local v11    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$1(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1896
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$10(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    return v0
.end method

.method static synthetic access$11(Lcom/mobeta/android/dslv/DragSortListView;I)V
    .locals 0

    .prologue
    .line 193
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return-void
.end method

.method static synthetic access$12(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic access$13(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$14(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 1507
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$15(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic access$16(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic access$17(Lcom/mobeta/android/dslv/DragSortListView;)Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    return v0
.end method

.method static synthetic access$18(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$19(Lcom/mobeta/android/dslv/DragSortListView;F)V
    .locals 0

    .prologue
    .line 442
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    return-void
.end method

.method static synthetic access$2(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic access$20(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 2428
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$21(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 1

    .prologue
    .line 1986
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$22(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 1531
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$23(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$24(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$25(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$26(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$27(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$28(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$29(Lcom/mobeta/android/dslv/DragSortListView;Z)V
    .locals 0

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return-void
.end method

.method static synthetic access$3(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$30(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 2337
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$31(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 1

    .prologue
    .line 846
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$32(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 1

    .prologue
    .line 1935
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$33(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic access$34(Lcom/mobeta/android/dslv/DragSortListView;II)I
    .locals 1

    .prologue
    .line 927
    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$5(Lcom/mobeta/android/dslv/DragSortListView;I)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return-void
.end method

.method static synthetic access$6(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$8(Lcom/mobeta/android/dslv/DragSortListView;Z)V
    .locals 0

    .prologue
    .line 2326
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    return v0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1870
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1871
    .local v2, "first":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1873
    .local v4, "last":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1874
    .local v0, "begin":I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1876
    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-le v3, v1, :cond_0

    .line 1882
    return-void

    .line 1877
    :cond_0
    invoke-virtual {p0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1878
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 1879
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1876
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private adjustItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1885
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1887
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1888
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1890
    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1899
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1901
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v4, :cond_5

    .line 1902
    const/4 v0, -0x2

    .line 1907
    .local v0, "height":I
    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1908
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1909
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1913
    :cond_0
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    .line 1914
    :cond_1
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    .line 1915
    check-cast v4, Lcom/mobeta/android/dslv/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    .line 1923
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1924
    .local v2, "oldVis":I
    const/4 v3, 0x0

    .line 1926
    .local v3, "vis":I
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1927
    const/4 v3, 0x4

    .line 1930
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1931
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1933
    :cond_4
    return-void

    .line 1904
    .end local v0    # "height":I
    .end local v2    # "oldVis":I
    .end local v3    # "vis":I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    .line 1916
    :cond_6
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1917
    check-cast v4, Lcom/mobeta/android/dslv/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private adjustOnReorder()V
    .locals 5

    .prologue
    .line 1562
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1564
    .local v0, "firstPos":I
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge v3, v0, :cond_1

    .line 1567
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1568
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1569
    .local v1, "top":I
    if-eqz v2, :cond_0

    .line 1570
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1573
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcom/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1575
    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "oldFirstExpPos"    # I
    .param p4, "oldSecondExpPos"    # I

    .prologue
    .line 2075
    const/4 v0, 0x0

    .line 2077
    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 2079
    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2080
    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v5

    .line 2082
    .local v5, "moveHeightAfter":I
    move v4, v6

    .line 2083
    .local v4, "moveBlankBefore":I
    move v3, v5

    .line 2084
    .local v3, "moveBlankAfter":I
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v7, :cond_0

    .line 2085
    sub-int/2addr v4, v1

    .line 2086
    sub-int/2addr v3, v1

    .line 2089
    :cond_0
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2090
    .local v2, "maxBlank":I
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    .line 2091
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    .line 2094
    :cond_1
    if-gt p1, p3, :cond_3

    .line 2095
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    .line 2096
    sub-int v7, v2, v3

    add-int/2addr v0, v7

    .line 2114
    :cond_2
    :goto_0
    return v0

    .line 2098
    :cond_3
    if-ne p1, p4, :cond_6

    .line 2099
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    .line 2100
    sub-int v7, v4, v2

    add-int/2addr v0, v7

    .line 2101
    goto :goto_0

    :cond_4
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    .line 2102
    sub-int v7, v6, v5

    add-int/2addr v0, v7

    .line 2103
    goto :goto_0

    .line 2104
    :cond_5
    add-int/2addr v0, v4

    .line 2106
    goto :goto_0

    .line 2107
    :cond_6
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    .line 2108
    sub-int/2addr v0, v2

    .line 2109
    goto :goto_0

    :cond_7
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    .line 2110
    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7
    .param p0, "cip"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "runStart"    # [I
    .param p4, "runEnd"    # [I

    .prologue
    const/4 v5, 0x0

    .line 2720
    const/4 v4, 0x0

    .line 2722
    .local v4, "runCount":I
    invoke-static {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .line 2723
    .local v2, "i":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 2764
    :goto_0
    return v5

    .line 2726
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2727
    .local v3, "position":I
    move v1, v3

    .line 2728
    .local v1, "currentRunStart":I
    add-int/lit8 v0, v1, 0x1

    .line 2729
    .local v0, "currentRunEnd":I
    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-lt v3, p2, :cond_4

    .line 2743
    :cond_1
    if-ne v0, p2, :cond_2

    .line 2748
    move v0, p1

    .line 2750
    :cond_2
    aput v1, p3, v4

    .line 2751
    aput v0, p4, v4

    .line 2752
    add-int/lit8 v4, v4, 0x1

    .line 2754
    const/4 v6, 0x1

    if-le v4, v6, :cond_3

    .line 2755
    aget v6, p3, v5

    if-ne v6, p1, :cond_3

    add-int/lit8 v6, v4, -0x1

    aget v6, p4, v6

    if-ne v6, p1, :cond_3

    .line 2760
    add-int/lit8 v6, v4, -0x1

    aget v6, p3, v6

    aput v6, p3, v5

    .line 2761
    add-int/lit8 v4, v4, -0x1

    :cond_3
    move v5, v4

    .line 2764
    goto :goto_0

    .line 2730
    :cond_4
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2729
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2732
    :cond_5
    if-ne v3, v0, :cond_6

    .line 2733
    add-int/lit8 v0, v0, 0x1

    .line 2734
    goto :goto_2

    .line 2735
    :cond_6
    aput v1, p3, v4

    .line 2736
    aput v0, p4, v4

    .line 2737
    add-int/lit8 v4, v4, 0x1

    .line 2738
    move v1, v3

    .line 2739
    add-int/lit8 v0, v3, 0x1

    goto :goto_2
.end method

.method private calcItemHeight(II)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    .line 2030
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 2032
    .local v0, "divHeight":I
    iget-boolean v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v5, v6, :cond_0

    const/4 v2, 0x1

    .line 2033
    .local v2, "isSliding":Z
    :goto_0
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v5, v6

    .line 2034
    .local v3, "maxNonSrcBlankHeight":I
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 2038
    .local v4, "slideHeight":I
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    .line 2039
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v5, v6, :cond_2

    .line 2040
    if-eqz v2, :cond_1

    .line 2041
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    add-int v1, v4, v5

    .line 2064
    .local v1, "height":I
    :goto_1
    return v1

    .line 2032
    .end local v1    # "height":I
    .end local v2    # "isSliding":Z
    .end local v3    # "maxNonSrcBlankHeight":I
    .end local v4    # "slideHeight":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2043
    .restart local v2    # "isSliding":Z
    .restart local v3    # "maxNonSrcBlankHeight":I
    .restart local v4    # "slideHeight":I
    :cond_1
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2045
    .restart local v1    # "height":I
    goto :goto_1

    .end local v1    # "height":I
    :cond_2
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v5, v6, :cond_3

    .line 2047
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v1, v5, v4

    .line 2048
    .restart local v1    # "height":I
    goto :goto_1

    .line 2049
    .end local v1    # "height":I
    :cond_3
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 2051
    .restart local v1    # "height":I
    goto :goto_1

    .end local v1    # "height":I
    :cond_4
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v5, :cond_6

    .line 2052
    if-eqz v2, :cond_5

    .line 2053
    add-int v1, p2, v4

    .line 2054
    .restart local v1    # "height":I
    goto :goto_1

    .line 2055
    .end local v1    # "height":I
    :cond_5
    add-int v1, p2, v3

    .line 2057
    .restart local v1    # "height":I
    goto :goto_1

    .end local v1    # "height":I
    :cond_6
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v5, :cond_7

    .line 2059
    add-int v5, p2, v3

    sub-int v1, v5, v4

    .line 2060
    .restart local v1    # "height":I
    goto :goto_1

    .line 2061
    .end local v1    # "height":I
    :cond_7
    move v1, p2

    .restart local v1    # "height":I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 2025
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1501
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1502
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1503
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1504
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1505
    return-void
.end method

.method private continueDrag(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1805
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1806
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1808
    invoke-direct {p0, v5}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1810
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1811
    .local v2, "minY":I
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1814
    .local v1, "maxY":I
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 1816
    .local v0, "currentScrollDir":I
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1820
    if-eq v0, v6, :cond_0

    .line 1822
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1826
    :cond_0
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1846
    :cond_1
    :goto_0
    return-void

    .line 1827
    :cond_2
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1831
    if-eq v0, v6, :cond_3

    .line 1833
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1837
    :cond_3
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1839
    :cond_4
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    .line 1840
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1844
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2430
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2431
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2434
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2435
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2437
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1677
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 1678
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1679
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1680
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1682
    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1683
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1684
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->clear()V

    .line 1685
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    .line 2338
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2340
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateFloatView()V

    .line 2342
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2343
    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2345
    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updatePositions()Z

    move-result v3

    .line 2347
    .local v3, "updated":Z
    if-eqz v3, :cond_0

    .line 2348
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 2349
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .line 2352
    .local v2, "scroll":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2353
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    .line 2356
    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 2357
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2360
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2361
    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    .prologue
    .line 2327
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 2328
    .local v1, "movePos":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2330
    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2335
    :goto_0
    return-void

    .line 2334
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    .line 1532
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem(I)V

    .line 1533
    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1541
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1544
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1548
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1550
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1551
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1554
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1555
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1559
    :goto_0
    return-void

    .line 1557
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 766
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 769
    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    .line 770
    invoke-virtual {p0, v8}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 772
    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 773
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 774
    .local v5, "l":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 778
    .local v6, "r":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 780
    .local v1, "childHeight":I
    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 781
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 782
    .local v7, "t":I
    add-int v0, v7, v3

    .line 790
    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 791
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 792
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 793
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 794
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 797
    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .line 784
    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 785
    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    .line 1510
    const/4 v1, 0x2

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1512
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1513
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1514
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1517
    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1519
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1520
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1521
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1524
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    .line 1525
    const/4 v1, 0x3

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1529
    :goto_0
    return-void

    .line 1527
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 3
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I

    .prologue
    .line 2780
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2781
    .local v1, "size":I
    invoke-static {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .line 2782
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2784
    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 2785
    :cond_1
    const/4 v0, -0x1

    .line 2786
    .end local v0    # "i":I
    :cond_2
    return v0

    .line 2783
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getChildHeight(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1936
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_1

    .line 1982
    :cond_0
    :goto_0
    return v1

    .line 1940
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1942
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1945
    invoke-direct {p0, p1, v4, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    .line 1949
    :cond_2
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v1

    .line 1950
    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 1955
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1956
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1959
    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1960
    .local v3, "typeCount":I
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1961
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1964
    :cond_3
    if-ltz v2, :cond_5

    .line 1965
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1966
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1967
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1977
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    .line 1980
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->add(II)V

    goto :goto_0

    .line 1969
    :cond_4
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1971
    goto :goto_1

    .line 1973
    :cond_5
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1987
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_1

    .line 2021
    .end local p2    # "item":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1992
    .restart local p2    # "item":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    .line 1993
    :cond_2
    move-object v0, p2

    .line 1999
    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_1
    if-eqz v0, :cond_0

    .line 2001
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2008
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 2009
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 2010
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1995
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_1

    .line 2014
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2016
    .local v1, "childHeight":I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    .line 2017
    :cond_5
    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2018
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 849
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 855
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    goto :goto_0
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 930
    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 936
    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    .line 983
    :goto_0
    return v3

    .line 940
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    .line 944
    .local v2, "divHeight":I
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .line 945
    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 946
    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v4

    .line 950
    .local v4, "itemHeight":I
    move v8, p2

    .line 951
    .local v8, "otop":I
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v9, v10, :cond_5

    .line 954
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    .line 955
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    .line 956
    add-int v9, p2, v4

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v8, v9, v10

    .line 977
    :cond_2
    :goto_1
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_7

    .line 978
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .line 979
    .local v3, "edge":I
    goto :goto_0

    .line 958
    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .line 959
    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    .line 961
    goto :goto_1

    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_2

    .line 962
    sub-int v8, p2, v5

    .line 965
    goto :goto_1

    .line 968
    :cond_5
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    .line 969
    add-int v8, p2, v5

    .line 970
    goto :goto_1

    :cond_6
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    .line 971
    sub-int v0, v4, v1

    .line 972
    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_1

    .line 980
    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_0
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "key"    # I

    .prologue
    .line 2790
    const/4 v1, 0x0

    .line 2791
    .local v1, "low":I
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2792
    .local v0, "high":I
    :goto_0
    sub-int v3, v0, v1

    if-gtz v3, :cond_0

    .line 2799
    return v1

    .line 2793
    :cond_0
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 2794
    .local v2, "middle":I
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_1

    .line 2795
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 2797
    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private invalidateFloatView()V
    .locals 1

    .prologue
    .line 2200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 2201
    return-void
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2137
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2138
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 2140
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 2118
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2119
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 2120
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2121
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2123
    :cond_0
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v4

    .line 2124
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2123
    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 2126
    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 2127
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2131
    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 2132
    return-void

    .line 2129
    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method private printPosData()V
    .locals 3

    .prologue
    .line 860
    const-string v0, "mobeta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSrcPos="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSecondExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 861
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 860
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void
.end method

.method private static rotate(IIII)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "offset"    # I
    .param p2, "lowerBound"    # I
    .param p3, "upperBound"    # I

    .prologue
    .line 2768
    sub-int v0, p3, p2

    .line 2770
    .local v0, "windowSize":I
    add-int/2addr p0, p1

    .line 2771
    if-ge p0, p2, :cond_1

    .line 2772
    add-int/2addr p0, v0

    .line 2776
    :cond_0
    :goto_0
    return p0

    .line 2773
    :cond_1
    if-lt p0, p3, :cond_0

    .line 2774
    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1688
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1689
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1690
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastX:I

    .line 1691
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1693
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    .line 1694
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    .line 1695
    if-nez v0, :cond_1

    .line 1696
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastX:I

    .line 1697
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1699
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mOffsetX:I

    .line 1700
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mOffsetY:I

    .line 1701
    return-void
.end method

.method private updateFloatView()V
    .locals 13

    .prologue
    .line 2369
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v9, :cond_0

    .line 2370
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iget v11, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2371
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2374
    :cond_0
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .line 2375
    .local v2, "floatX":I
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 2378
    .local v3, "floatY":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v7

    .line 2379
    .local v7, "padLeft":I
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    .line 2380
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 2386
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    .line 2387
    .local v6, "numHeaders":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    .line 2388
    .local v5, "numFooters":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2389
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2393
    .local v4, "lastPos":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v8

    .line 2394
    .local v8, "topLimit":I
    if-ge v1, v6, :cond_2

    .line 2395
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 2397
    :cond_2
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    .line 2398
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v1, v9, :cond_3

    .line 2399
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2404
    :cond_3
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 2405
    .local v0, "bottomLimit":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    .line 2406
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2408
    :cond_4
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    .line 2409
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v9, :cond_5

    .line 2410
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2418
    :cond_5
    if-ge v3, v8, :cond_8

    .line 2419
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 2425
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    .line 2426
    return-void

    .line 2381
    .end local v0    # "bottomLimit":I
    .end local v1    # "firstPos":I
    .end local v4    # "lastPos":I
    .end local v5    # "numFooters":I
    .end local v6    # "numHeaders":I
    .end local v8    # "topLimit":I
    :cond_7
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    if-ge v2, v7, :cond_1

    .line 2382
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2420
    .restart local v0    # "bottomLimit":I
    .restart local v1    # "firstPos":I
    .restart local v4    # "lastPos":I
    .restart local v5    # "numFooters":I
    .restart local v6    # "numHeaders":I
    .restart local v8    # "topLimit":I
    :cond_8
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v9, v3

    if-le v9, v0, :cond_6

    .line 2421
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 989
    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .line 990
    .local v23, "startPos":I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 992
    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 994
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 996
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 998
    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 1000
    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1001
    .local v5, "edge":I
    move v13, v5

    .line 1003
    .local v13, "lastEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 1007
    .local v4, "divHeight":I
    move/from16 v11, v23

    .line 1008
    .local v11, "itemPos":I
    move/from16 v12, v24

    .line 1009
    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_9

    .line 1012
    :goto_0
    if-gez v11, :cond_7

    .line 1056
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 1057
    .local v15, "numHeaders":I
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 1059
    .local v14, "numFooters":I
    const/16 v26, 0x0

    .line 1061
    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .line 1062
    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .line 1063
    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .line 1065
    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    .line 1066
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1069
    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_b

    .line 1070
    move v6, v5

    .line 1071
    .local v6, "edgeBottom":I
    move v8, v13

    .line 1078
    .local v8, "edgeTop":I
    :goto_2
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1079
    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1080
    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .line 1081
    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .line 1084
    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 1085
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1086
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1087
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v28, v0

    sub-int v28, v20, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 1108
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_f

    .line 1109
    move v11, v15

    .line 1110
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1111
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1118
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    .line 1120
    :cond_3
    const/16 v26, 0x1

    .line 1123
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/mobeta/android/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1128
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1129
    const/16 v26, 0x1

    .line 1132
    :cond_6
    return v26

    .line 1013
    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int/lit8 v11, v11, -0x1

    .line 1014
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 1016
    if-nez v11, :cond_8

    .line 1017
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 1018
    goto/16 :goto_1

    .line 1021
    :cond_8
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 1022
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1025
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 1029
    move v13, v5

    goto/16 :goto_0

    .line 1034
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 1035
    .local v3, "count":I
    :goto_5
    if-ge v11, v3, :cond_1

    .line 1036
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_a

    .line 1037
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 1038
    goto/16 :goto_1

    .line 1041
    :cond_a
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 1042
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 1043
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1047
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 1051
    move v13, v5

    .line 1052
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1073
    .end local v3    # "count":I
    .restart local v7    # "edgeToEdge":I
    .restart local v14    # "numFooters":I
    .restart local v15    # "numHeaders":I
    .restart local v16    # "oldFirstExpPos":I
    .restart local v17    # "oldSecondExpPos":I
    .restart local v18    # "oldSlideFrac":F
    .restart local v26    # "updated":Z
    :cond_b
    move v8, v5

    .line 1074
    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .line 1090
    .restart local v19    # "slideEdgeBottom":I
    .restart local v20    # "slideEdgeTop":I
    .restart local v21    # "slideRgnHeight":I
    .restart local v22    # "slideRgnHeightF":F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 1091
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1092
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1094
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1095
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1096
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v29, v0

    sub-int v29, v6, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 1097
    div-float v29, v29, v22

    add-float v28, v28, v29

    mul-float v27, v27, v28

    .line 1096
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .line 1103
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :cond_e
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1104
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1112
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 1113
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 1114
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1115
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_4
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1849
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 1850
    .local v2, "padTop":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1851
    .local v1, "listHeight":I
    int-to-float v0, v1

    .line 1853
    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1854
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 1856
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    .line 1857
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    .line 1859
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    .line 1860
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    .line 1861
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1486
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1488
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1489
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1490
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1492
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1493
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1498
    :cond_0
    :goto_0
    return-void

    .line 1495
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 801
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 803
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 805
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 806
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 808
    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 809
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 815
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 816
    .local v9, "w":I
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 818
    .local v8, "h":I
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 820
    .local v11, "x":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v10

    .line 821
    .local v10, "width":I
    if-gez v11, :cond_2

    .line 822
    neg-int v11, v11

    .line 824
    :cond_2
    if-ge v11, v10, :cond_4

    .line 825
    sub-int v0, v10, v11

    int-to-float v0, v0

    int-to-float v2, v10

    div-float v7, v0, v2

    .line 826
    .local v7, "alphaMod":F
    mul-float/2addr v7, v7

    .line 831
    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v7

    float-to-int v5, v0

    .line 833
    .local v5, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 835
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 836
    invoke-virtual {p1, v3, v3, v9, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 839
    int-to-float v3, v9

    int-to-float v4, v8

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 840
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 841
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 842
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 844
    .end local v5    # "alpha":I
    .end local v7    # "alphaMod":F
    .end local v8    # "h":I
    .end local v9    # "w":I
    .end local v10    # "width":I
    .end local v11    # "x":I
    :cond_3
    return-void

    .line 828
    .restart local v8    # "h":I
    .restart local v9    # "w":I
    .restart local v10    # "width":I
    .restart local v11    # "x":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "alphaMod":F
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    .line 638
    const/4 v0, 0x0

    .line 640
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2515
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2157
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2159
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2160
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 2164
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2166
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2167
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2169
    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1704
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2652
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2653
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    move v3, p1

    .line 2654
    .local v3, "rangeStart":I
    move v2, p2

    .line 2655
    .local v2, "rangeEnd":I
    if-ge p2, p1, :cond_0

    .line 2656
    move v3, p2

    .line 2657
    move v2, p1

    .line 2659
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 2661
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2662
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2663
    .local v5, "runEnd":[I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/mobeta/android/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2664
    .local v4, "runCount":I
    if-ne v4, v10, :cond_2

    aget v7, v6, v9

    aget v8, v5, v9

    if-ne v7, v8, :cond_2

    .line 2682
    :cond_1
    return-void

    .line 2670
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2671
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_1

    .line 2672
    aget v7, v6, v1

    invoke-static {v7, v11, v3, v2}, Lcom/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v10}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2673
    aget v7, v5, v1

    invoke-static {v7, v11, v3, v2}, Lcom/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v9}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2671
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2677
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-eq v1, v4, :cond_1

    .line 2678
    aget v7, v6, v1

    invoke-virtual {p0, v7, v9}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2679
    aget v7, v5, v1

    invoke-virtual {p0, v7, v10}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2677
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public moveItem(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1473
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    .line 1474
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1475
    .local v0, "count":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1476
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-interface {v1, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1479
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    .line 2173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 2175
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 2194
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2177
    :pswitch_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v1, v2, :cond_0

    .line 2178
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->cancelDrag()V

    .line 2180
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2184
    :pswitch_1
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v1, v2, :cond_1

    .line 2185
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(Z)Z

    .line 2187
    :cond_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2190
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1137
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1139
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->appendState()V

    .line 1142
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1711
    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v3, :cond_1

    .line 1712
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1759
    :cond_0
    :goto_0
    return v1

    .line 1715
    :cond_1
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1716
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1720
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 1721
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v3, :cond_2

    .line 1723
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v1, v2

    .line 1724
    goto :goto_0

    .line 1726
    :cond_2
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1729
    :cond_3
    const/4 v1, 0x0

    .line 1732
    .local v1, "intercept":Z
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1734
    const/4 v1, 0x1

    .line 1755
    :goto_1
    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1756
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    goto :goto_0

    .line 1736
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1737
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1738
    const/4 v1, 0x1

    .line 1741
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1747
    :pswitch_0
    if-eqz v1, :cond_7

    .line 1748
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1744
    :pswitch_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1750
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1741
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2144
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2146
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2147
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2148
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2150
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2152
    :cond_1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 2153
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1865
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1866
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    .line 1867
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1626
    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v4, :cond_1

    .line 1627
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v2, v3

    .line 1673
    :cond_0
    :goto_0
    return v2

    .line 1631
    :cond_1
    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    .line 1632
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1635
    :cond_2
    const/4 v2, 0x0

    .line 1637
    .local v2, "more":Z
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1638
    .local v1, "lastCallWasIntercept":Z
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1640
    if-nez v1, :cond_3

    .line 1641
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1645
    :cond_3
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1646
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1647
    const/4 v2, 0x1

    .line 1648
    goto :goto_0

    .line 1653
    :cond_4
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v3, :cond_5

    .line 1654
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1655
    const/4 v2, 0x1

    .line 1659
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1661
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1667
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1668
    const/4 v3, 0x1

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1664
    :pswitch_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1661
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, -0x1

    .line 2698
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2700
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2716
    :cond_0
    return-void

    .line 2702
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2703
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2704
    .local v5, "runEnd":[I
    move v3, p1

    .line 2705
    .local v3, "rangeStart":I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 2706
    .local v2, "rangeEnd":I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/mobeta/android/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2707
    .local v4, "runCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_0

    .line 2708
    aget v7, v6, v1

    if-eq v7, p1, :cond_3

    aget v7, v5, v1

    aget v8, v6, v1

    if-ge v7, v8, :cond_2

    aget v7, v5, v1

    if-gt v7, p1, :cond_3

    .line 2712
    :cond_2
    aget v7, v6, v1

    invoke-static {v7, v9, v3, v2}, Lcom/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2714
    :cond_3
    aget v7, v5, v1

    invoke-static {v7, v9, v3, v2}, Lcom/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1416
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(IF)V

    .line 1417
    return-void
.end method

.method public removeItem(IF)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "velocityX"    # F

    .prologue
    const/4 v3, 0x4

    .line 1427
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v1, v3, :cond_3

    .line 1429
    :cond_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v1, :cond_1

    .line 1431
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1432
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1433
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1434
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1435
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1436
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1437
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1442
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1444
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_2

    .line 1445
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 1455
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    if-eqz v1, :cond_4

    .line 1456
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->start()V

    .line 1461
    :cond_3
    :goto_1
    return-void

    .line 1447
    :pswitch_0
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1450
    :pswitch_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1458
    :cond_4
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem(I)V

    goto :goto_1

    .line 1445
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2069
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2070
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2072
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 609
    if-eqz p1, :cond_3

    .line 610
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    .line 611
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 613
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 614
    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 616
    :cond_0
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 617
    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 619
    :cond_1
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    .line 620
    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 626
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 627
    return-void

    .line 623
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2511
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 2512
    return-void
.end method

.method public setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    .prologue
    .line 2497
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    .line 2498
    return-void
.end method

.method public setDragScrollProfile(Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0
    .param p1, "ssp"    # Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .prologue
    .line 2594
    if-eqz p1, :cond_0

    .line 2595
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .line 2597
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    .line 1771
    invoke-virtual {p0, p1, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStarts(FF)V

    .line 1772
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1785
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1786
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1791
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1792
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1797
    :goto_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1798
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    .line 1800
    :cond_0
    return-void

    .line 1788
    :cond_1
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1794
    :cond_2
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;)V
    .locals 0
    .param p1, "l"    # Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;

    .prologue
    .line 2581
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 2582
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 2583
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 2584
    return-void
.end method

.method public setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    .prologue
    .line 2531
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    .line 2532
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 580
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 581
    return-void
.end method

.method public setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .prologue
    .line 2493
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 2494
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 594
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 595
    return-void
.end method

.method public setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V
    .locals 0
    .param p1, "l"    # Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    .prologue
    .line 2545
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    .line 2546
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v0, 0x0

    .line 2227
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2236
    :cond_0
    :goto_0
    return v0

    .line 2231
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2233
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2236
    invoke-virtual/range {v0 .. v5}, Lcom/mobeta/android/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2264
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    .line 2265
    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 2323
    :cond_1
    :goto_0
    return v2

    .line 2269
    :cond_2
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2270
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2273
    :cond_3
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 2274
    .local v0, "pos":I
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2275
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2276
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 2277
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 2280
    iput v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 2281
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2282
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr v3, p3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2284
    iput-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2285
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2287
    iput p4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    .line 2288
    iput p5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    .line 2289
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragStartY:I

    .line 2292
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 2293
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 2296
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2298
    .local v1, "srcItem":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2299
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2302
    :cond_4
    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v3, :cond_5

    .line 2303
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2308
    :cond_5
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v3, :pswitch_data_0

    .line 2317
    :goto_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->requestLayout()V

    .line 2319
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

    if-eqz v3, :cond_1

    .line 2320
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->start()V

    goto :goto_0

    .line 2310
    :pswitch_0
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2313
    :pswitch_1
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1
    .param p1, "remove"    # Z

    .prologue
    .line 1589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1590
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 3
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    const/4 v0, 0x1

    .line 1600
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1601
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1603
    if-eqz p1, :cond_1

    .line 1604
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(IF)V

    .line 1613
    :goto_0
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_0

    .line 1614
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    .line 1620
    :cond_0
    :goto_1
    return v0

    .line 1606
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    if-eqz v1, :cond_2

    .line 1607
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1609
    :cond_2
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1620
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    .line 1595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1596
    invoke-virtual {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
