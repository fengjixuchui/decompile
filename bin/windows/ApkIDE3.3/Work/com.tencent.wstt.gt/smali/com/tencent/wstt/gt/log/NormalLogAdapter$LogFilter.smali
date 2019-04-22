.class Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;
.super Landroid/widget/Filter;
.source "NormalLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/log/NormalLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogFilter"
.end annotation


# instance fields
.field private lastLevel:I

.field private lastMsg:Ljava/lang/CharSequence;

.field private lastTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    .line 209
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 212
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 221
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 224
    .local v3, "results":Landroid/widget/Filter$FilterResults;
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$1(Lcom/tencent/wstt/gt/log/NormalLogAdapter;Z)V

    .line 226
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryLevel:I
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$2(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)I

    move-result v4

    if-nez v4, :cond_2

    .line 227
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$3(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$3(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 228
    :cond_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryMsg:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$4(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryMsg:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$4(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 230
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLogListReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 231
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getNormalLogList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 232
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getNormalLogList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 233
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLogListReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 320
    :goto_0
    return-object v3

    .line 236
    :cond_2
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryLevel:I
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$2(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)I

    move-result v4

    iget v5, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastLevel:I

    if-ne v4, v5, :cond_a

    .line 237
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$3(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastTag:Ljava/lang/CharSequence;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$3(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$3(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastTag:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 238
    :cond_3
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryMsg:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$4(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastMsg:Ljava/lang/CharSequence;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryMsg:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$4(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryMsg:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$4(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastMsg:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 240
    :cond_4
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLogListReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 243
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getNormalLogLastFilterEndLocation()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 244
    .local v1, "i":I
    :goto_1
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getNormalLogList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_6

    .line 260
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$5(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->size()I

    move-result v2

    .line 261
    .local v2, "length":I
    sget v4, Lcom/tencent/wstt/gt/log/LogUtils;->CACHE:I

    if-le v2, v4, :cond_5

    .line 263
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$5(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/tencent/wstt/gt/log/LogUtils;->CACHE:I

    sub-int v6, v2, v6

    invoke-virtual {v4, v5, v6}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->remove(II)V

    .line 266
    :cond_5
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->resetNormalLogLastFilterEndLocation()V

    .line 268
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$5(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    move-result-object v4

    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 269
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$5(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLogListReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 246
    .end local v2    # "length":I
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getNormalLogList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .line 247
    .local v0, "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastTag:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 248
    iget-object v4, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->tag:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 249
    iget-object v4, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastTag:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 250
    :cond_7
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastMsg:Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    .line 251
    iget-object v4, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 252
    iget-object v4, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastMsg:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 254
    :cond_8
    iget v4, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->level:I

    iget v5, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastLevel:I

    if-lt v4, v5, :cond_9

    .line 256
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$5(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 272
    .end local v0    # "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    .line 273
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLogListReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 274
    throw v4

    .line 279
    :cond_a
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$1(Lcom/tencent/wstt/gt/log/NormalLogAdapter;Z)V

    .line 281
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryLevel:I
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$2(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)I

    move-result v4

    iput v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastLevel:I

    .line 282
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$3(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastTag:Ljava/lang/CharSequence;

    .line 283
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryMsg:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$4(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastMsg:Ljava/lang/CharSequence;

    .line 285
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$5(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 287
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$5(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->clear()V

    .line 289
    :cond_b
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    new-instance v5, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    invoke-direct {v5}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$6(Lcom/tencent/wstt/gt/log/NormalLogAdapter;Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;)V

    .line 291
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLogListReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 294
    :try_start_2
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getNormalLogList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_d

    .line 310
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->resetNormalLogLastFilterEndLocation()V

    .line 311
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$5(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    move-result-object v4

    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 312
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$5(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 316
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLogListReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 294
    :cond_d
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .line 296
    .restart local v0    # "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastTag:Ljava/lang/CharSequence;

    if-eqz v5, :cond_e

    .line 297
    iget-object v5, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->tag:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 298
    iget-object v5, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->tag:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->tag:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastTag:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 299
    :cond_e
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastMsg:Ljava/lang/CharSequence;

    if-eqz v5, :cond_f

    .line 300
    iget-object v5, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 301
    iget-object v5, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 302
    iget-object v5, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    .line 303
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 302
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 303
    iget-object v6, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastMsg:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 305
    :cond_f
    iget v5, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->level:I

    iget v6, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->lastLevel:I

    if-lt v5, v6, :cond_c

    .line 307
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    invoke-static {v5}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$5(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 315
    .end local v0    # "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    :catchall_1
    move-exception v4

    .line 316
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLogListReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 317
    throw v4
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 331
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-nez v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$7(Lcom/tencent/wstt/gt/log/NormalLogAdapter;Ljava/util/List;)V

    .line 334
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->dataSet:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$8(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setFilterdLogList(Ljava/util/List;)V

    .line 335
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->notifyDataSetInvalidated()V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$7(Lcom/tencent/wstt/gt/log/NormalLogAdapter;Ljava/util/List;)V

    .line 340
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->dataSet:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$8(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setFilterdLogList(Ljava/util/List;)V

    .line 341
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->flag_auto_refresh:Z
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$9(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    # getter for: Lcom/tencent/wstt/gt/log/NormalLogAdapter;->flag_filter_condition_changed:Z
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->access$10(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;->this$0:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
