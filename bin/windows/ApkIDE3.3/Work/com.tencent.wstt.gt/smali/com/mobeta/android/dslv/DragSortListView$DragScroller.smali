.class Lcom/mobeta/android/dslv/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mFirstFooter:I

.field private mLastHeader:I

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 1

    .prologue
    .line 2856
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2857
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    .line 2853
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2849
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 2884
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mAbort:Z

    if-eqz v13, :cond_0

    .line 2885
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2970
    :goto_0
    return-void

    .line 2891
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2892
    .local v3, "first":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2893
    .local v4, "last":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v2

    .line 2894
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v10

    .line 2895
    .local v10, "padTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v14}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v14

    sub-int v5, v13, v14

    .line 2897
    .local v5, "listHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mY:I
    invoke-static {v13}, Lcom/mobeta/android/dslv/DragSortListView;->access$7(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I
    invoke-static {v14}, Lcom/mobeta/android/dslv/DragSortListView;->access$23(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v15}, Lcom/mobeta/android/dslv/DragSortListView;->access$3(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2898
    .local v7, "minY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mY:I
    invoke-static {v13}, Lcom/mobeta/android/dslv/DragSortListView;->access$7(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I
    invoke-static {v14}, Lcom/mobeta/android/dslv/DragSortListView;->access$23(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v15}, Lcom/mobeta/android/dslv/DragSortListView;->access$3(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2900
    .local v6, "maxY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->scrollDir:I

    if-nez v13, :cond_4

    .line 2901
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2903
    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_1

    .line 2904
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2907
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-ne v13, v10, :cond_2

    .line 2908
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2912
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;
    invoke-static {v13}, Lcom/mobeta/android/dslv/DragSortListView;->access$24(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F
    invoke-static {v14}, Lcom/mobeta/android/dslv/DragSortListView;->access$25(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v14

    int-to-float v15, v6

    sub-float/2addr v14, v15

    .line 2913
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F
    invoke-static {v15}, Lcom/mobeta/android/dslv/DragSortListView;->access$26(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    .line 2912
    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 2929
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mCurrTime:J

    .line 2930
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dt:F

    .line 2936
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    .line 2939
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    if-ltz v13, :cond_7

    .line 2940
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    .line 2941
    move v9, v3

    .line 2947
    .local v9, "movePos":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    sub-int v14, v9, v3

    invoke-virtual {v13, v14}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2948
    .local v8, "moveItem":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    add-int v11, v13, v14

    .line 2950
    .local v11, "top":I
    if-nez v9, :cond_3

    if-le v11, v10, :cond_3

    .line 2951
    move v11, v10

    .line 2955
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mobeta/android/dslv/DragSortListView;->access$29(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    .line 2957
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    sub-int v14, v11, v10

    invoke-virtual {v13, v9, v14}, Lcom/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2958
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    .line 2959
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2961
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mobeta/android/dslv/DragSortListView;->access$29(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    .line 2964
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v14, 0x0

    # invokes: Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V
    invoke-static {v13, v9, v8, v14}, Lcom/mobeta/android/dslv/DragSortListView;->access$30(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 2966
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2969
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2915
    .end local v8    # "moveItem":Landroid/view/View;
    .end local v9    # "movePos":I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    sub-int v14, v4, v3

    invoke-virtual {v13, v14}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2916
    .restart local v12    # "v":Landroid/view/View;
    if-nez v12, :cond_5

    .line 2917
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2920
    :cond_5
    add-int/lit8 v13, v2, -0x1

    if-ne v4, v13, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int v14, v5, v10

    if-gt v13, v14, :cond_6

    .line 2921
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2925
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;
    invoke-static {v13}, Lcom/mobeta/android/dslv/DragSortListView;->access$24(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    move-result-object v13

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F
    invoke-static {v15}, Lcom/mobeta/android/dslv/DragSortListView;->access$27(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v15

    sub-float/2addr v14, v15

    .line 2926
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F
    invoke-static {v15}, Lcom/mobeta/android/dslv/DragSortListView;->access$28(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    .line 2925
    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    neg-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    goto/16 :goto_1

    .line 2943
    :cond_7
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    .line 2944
    move v9, v4

    .restart local v9    # "movePos":I
    goto/16 :goto_2
.end method

.method public startScrolling(I)V
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 2860
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    .line 2862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mAbort:Z

    .line 2863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2864
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->tStart:J

    .line 2865
    iget-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2866
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->scrollDir:I

    .line 2867
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2869
    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    .line 2872
    if-eqz p1, :cond_0

    .line 2873
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2880
    :goto_0
    return-void

    .line 2876
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mAbort:Z

    goto :goto_0
.end method
