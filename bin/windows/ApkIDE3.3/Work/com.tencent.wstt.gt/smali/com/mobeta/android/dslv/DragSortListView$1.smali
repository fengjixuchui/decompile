.class Lcom/mobeta/android/dslv/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$1;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 1
    .param p1, "w"    # F
    .param p2, "t"    # J

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$1;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    # getter for: Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$0(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
