.class public abstract Lcom/mobeta/android/dslv/DragSortCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "DragSortCursorAdapter.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;


# static fields
.field public static final REMOVED:I = -0x1


# instance fields
.field private mListMapping:Landroid/util/SparseIntArray;

.field private mRemovedCursorPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method private cleanMapping()V
    .locals 5

    .prologue
    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v2, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 175
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 181
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 182
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_2

    .line 185
    return-void

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 177
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_2
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private resetMappings()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 84
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 71
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->resetMappings()V

    .line 72
    return-void
.end method

.method public drag(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 166
    return-void
.end method

.method public drop(II)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 116
    if-eq p1, p2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 119
    .local v0, "cursorFrom":I
    if-le p1, p2, :cond_3

    .line 120
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_2

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->cleanMapping()V

    .line 131
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->notifyDataSetChanged()V

    .line 133
    .end local v0    # "cursorFrom":I
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 121
    .restart local v0    # "cursorFrom":I
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_3
    move v1, p1

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCursorPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getCursorPositions()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 216
    return-object v1

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getListPosition(I)I
    .locals 3
    .param p1, "cursorPosition"    # I

    .prologue
    .line 228
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    const/4 p1, -0x1

    .line 236
    .end local p1    # "cursorPosition":I
    :cond_0
    :goto_0
    return p1

    .line 232
    .restart local p1    # "cursorPosition":I
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 233
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 7
    .param p1, "which"    # I

    .prologue
    .line 144
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 145
    .local v0, "cursorPos":I
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->getCount()I

    move-result v2

    .line 150
    .local v2, "newCount":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 154
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 156
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->cleanMapping()V

    .line 157
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->notifyDataSetChanged()V

    .line 158
    return-void

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->resetMappings()V

    .line 79
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 59
    .local v0, "old":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->resetMappings()V

    .line 60
    return-object v0
.end method
