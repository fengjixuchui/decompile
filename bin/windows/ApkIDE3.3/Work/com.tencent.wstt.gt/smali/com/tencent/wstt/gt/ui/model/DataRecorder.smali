.class public Lcom/tencent/wstt/gt/ui/model/DataRecorder;
.super Ljava/lang/Object;
.source "DataRecorder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x1000


# instance fields
.field private curBucket:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private dataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/tencent/wstt/gt/ui/model/DataRecorder;, "Lcom/tencent/wstt/gt/ui/model/DataRecorder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->size:I

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->dataSet:Ljava/util/ArrayList;

    .line 48
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/tencent/wstt/gt/ui/model/DataRecorder;, "Lcom/tencent/wstt/gt/ui/model/DataRecorder<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 121
    iget v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->size:I

    rem-int/lit16 v0, v1, 0x1000

    .line 123
    .local v0, "local":I
    if-nez v0, :cond_0

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->curBucket:Ljava/util/ArrayList;

    .line 127
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->curBucket:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->dataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->curBucket:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :goto_0
    iget v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->size:I

    .line 137
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 138
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->curBucket:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 146
    .local p0, "this":Lcom/tencent/wstt/gt/ui/model/DataRecorder;, "Lcom/tencent/wstt/gt/ui/model/DataRecorder<TT;>;"
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 147
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->dataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->dataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->curBucket:Ljava/util/ArrayList;

    .line 153
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->size:I

    .line 154
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 155
    return-void

    .line 147
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 149
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public getRecord(I)Ljava/lang/Object;
    .locals 3
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/tencent/wstt/gt/ui/model/DataRecorder;, "Lcom/tencent/wstt/gt/ui/model/DataRecorder<TT;>;"
    iget v2, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->size:I

    if-le p1, v2, :cond_0

    .line 111
    const/4 v2, 0x0

    .line 116
    :goto_0
    return-object v2

    .line 114
    :cond_0
    div-int/lit16 v0, p1, 0x1000

    .line 115
    .local v0, "bucketSeq":I
    rem-int/lit16 v1, p1, 0x1000

    .line 116
    .local v1, "local":I
    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->dataSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public getRecordList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/tencent/wstt/gt/ui/model/DataRecorder;, "Lcom/tencent/wstt/gt/ui/model/DataRecorder<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->dataSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    return-object v1

    .line 99
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 101
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v3, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 102
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object v3, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public getRecordList(II)Ljava/util/ArrayList;
    .locals 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/tencent/wstt/gt/ui/model/DataRecorder;, "Lcom/tencent/wstt/gt/ui/model/DataRecorder<TT;>;"
    const/4 v10, 0x0

    .line 56
    if-gt p2, p1, :cond_0

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    :goto_0
    return-object v5

    .line 61
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    sub-int v9, p2, p1

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    div-int/lit16 v7, p1, 0x1000

    .line 64
    .local v7, "startBucketSeq":I
    rem-int/lit16 v8, p1, 0x1000

    .line 65
    .local v8, "startLocal":I
    add-int/lit8 v9, p2, -0x1

    div-int/lit16 v2, v9, 0x1000

    .line 66
    .local v2, "endBucketSeq":I
    add-int/lit8 v9, p2, -0x1

    rem-int/lit16 v3, v9, 0x1000

    .line 68
    .local v3, "endLocal":I
    if-ne v7, v2, :cond_1

    .line 70
    iget-object v9, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->dataSet:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 71
    .local v0, "bucket":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v9, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 72
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    iget-object v9, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 78
    .end local v0    # "bucket":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1
    iget-object v9, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->dataSet:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 79
    .local v6, "startBucket":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v9, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 80
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    iget-object v9, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 83
    add-int/lit8 v4, v7, 0x1

    .local v4, "i":I
    :goto_1
    if-lt v4, v2, :cond_2

    .line 88
    iget-object v9, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->dataSet:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 89
    .local v1, "endBucket":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v9, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 90
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v1, v10, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v9, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 85
    .end local v1    # "endBucket":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_2
    iget-object v9, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->dataSet:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lcom/tencent/wstt/gt/ui/model/DataRecorder;, "Lcom/tencent/wstt/gt/ui/model/DataRecorder<TT;>;"
    iget v0, p0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->size:I

    return v0
.end method
