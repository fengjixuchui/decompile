.class public abstract Lcom/tencent/wstt/gt/log/AbsLogController;
.super Ljava/lang/Object;
.source "AbsLogController.java"

# interfaces
.implements Lcom/tencent/wstt/gt/log/ICacheable;


# instance fields
.field protected allowSave:Z

.field protected filterdLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected lastFilterEndLocation:I

.field protected listenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/wstt/gt/log/LogListener;",
            ">;"
        }
    .end annotation
.end field

.field protected lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected logConsumer:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

.field protected showLogList:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/wstt/gt/log/RemoveRangeArrayList",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected showTagSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected tempLogConsumer:Lcom/tencent/wstt/gt/log/TempLogConsumer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lastFilterEndLocation:I

    .line 43
    new-instance v0, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showLogList:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    .line 45
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showTagSet:Ljava/util/LinkedHashSet;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->listenerList:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->allowSave:Z

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 57
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->isSDCardExist()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_LOG_FOLDER:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_LOG_FOLDER:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Ljava/lang/Object;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    .line 258
    return-void
.end method

.method public addEntrys(Ljava/util/Collection;)V
    .locals 7
    .param p1, "logList"    # Ljava/util/Collection;

    .prologue
    .line 141
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 145
    :try_start_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showLogList:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    invoke-virtual {v4, p1}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->addAll(Ljava/util/Collection;)Z

    .line 147
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showLogList:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->size()I

    move-result v4

    sget v5, Lcom/tencent/wstt/gt/log/LogUtils;->CACHE:I

    if-le v4, v5, :cond_0

    .line 149
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showLogList:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->size()I

    move-result v2

    .line 150
    .local v2, "length":I
    iget v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lastFilterEndLocation:I

    sub-int/2addr v4, v2

    sget v5, Lcom/tencent/wstt/gt/log/LogUtils;->CACHE:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lastFilterEndLocation:I

    .line 152
    iget v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lastFilterEndLocation:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lastFilterEndLocation:I

    .line 153
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showLogList:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    const/4 v5, 0x0

    sget v6, Lcom/tencent/wstt/gt/log/LogUtils;->CACHE:I

    sub-int v6, v2, v6

    invoke-virtual {v4, v5, v6}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->remove(II)V

    .line 156
    .end local v2    # "length":I
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 164
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 168
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/log/AbsLogController;->onDataChanged()V

    .line 169
    return-void

    .line 156
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 158
    .local v3, "o":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;

    move-object v1, v0

    .line 159
    .local v1, "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showTagSet:Ljava/util/LinkedHashSet;

    iget-object v6, v1, Lcom/tencent/wstt/gt/ui/model/LogEntry;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    .end local v1    # "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .end local v3    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    .line 164
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 165
    throw v4
.end method

.method public addListener(Lcom/tencent/wstt/gt/log/LogListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/log/LogListener;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->listenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->listenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    return-void
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 112
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showLogList:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lastFilterEndLocation:I

    .line 115
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showLogList:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->clear()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 121
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/log/AbsLogController;->onDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllowSave()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->allowSave:Z

    return v0
.end method

.method getFilterdLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/LogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->filterdLogList:Ljava/util/List;

    return-object v0
.end method

.method declared-synchronized getLastFilterEndLocation()I
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lastFilterEndLocation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getShowLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/LogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showLogList:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    return-object v0
.end method

.method public getShowTags()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showTagSet:Ljava/util/LinkedHashSet;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 92
    .local v1, "ss":[Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 93
    return-object v0
.end method

.method public declared-synchronized onDataChanged()V
    .locals 3

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->listenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 179
    monitor-exit p0

    return-void

    .line 175
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/log/LogListener;

    .line 177
    .local v0, "listener":Lcom/tencent/wstt/gt/log/LogListener;
    invoke-interface {v0}, Lcom/tencent/wstt/gt/log/LogListener;->onLogChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    .end local v0    # "listener":Lcom/tencent/wstt/gt/log/LogListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeAllListener()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->listenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 253
    return-void
.end method

.method public removeEntry(Ljava/lang/Object;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    .line 263
    return-void
.end method

.method public removeListener(Lcom/tencent/wstt/gt/log/LogListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/log/LogListener;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->listenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method declared-synchronized resetLastFilterEndLocation()V
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 104
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showLogList:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lastFilterEndLocation:I

    .line 105
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveCache(Ljava/lang/String;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :try_start_1
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "\\"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 190
    :cond_0
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 191
    .local v2, "la":I
    if-gez v2, :cond_2

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 207
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showLogList:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/tencent/wstt/gt/log/LogUtils;->writeLog(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    :try_start_2
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    .end local v2    # "la":I
    :goto_1
    monitor-exit p0

    return-void

    .line 197
    .restart local v2    # "la":I
    :cond_2
    :try_start_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "temp":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 213
    .end local v2    # "la":I
    .end local v3    # "temp":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .line 214
    .local v1, "filePath":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 216
    move-object v1, p1

    .line 222
    :goto_2
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_LOG_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 228
    :cond_5
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->showLogList:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcom/tencent/wstt/gt/log/LogUtils;->writeLog(Ljava/util/List;Ljava/io/File;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 233
    :try_start_4
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 184
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "filePath":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 220
    .restart local v1    # "filePath":Ljava/lang/String;
    :cond_6
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    goto :goto_2

    .line 232
    .end local v1    # "filePath":Ljava/lang/String;
    :catchall_1
    move-exception v4

    .line 233
    :try_start_6
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 234
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setAllowSave(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->allowSave:Z

    .line 127
    return-void
.end method

.method setFilterdLogList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/LogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/LogEntry;>;"
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->filterdLogList:Ljava/util/List;

    .line 86
    return-void
.end method

.method setLogTaskConsumer(Lcom/tencent/wstt/gt/log/LogTaskConsumer;)V
    .locals 0
    .param p1, "logConsumer"    # Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->logConsumer:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    .line 66
    return-void
.end method

.method setTempLogConsumer(Lcom/tencent/wstt/gt/log/TempLogConsumer;)V
    .locals 0
    .param p1, "tempLogConsumer"    # Lcom/tencent/wstt/gt/log/TempLogConsumer;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/AbsLogController;->tempLogConsumer:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    .line 71
    return-void
.end method
