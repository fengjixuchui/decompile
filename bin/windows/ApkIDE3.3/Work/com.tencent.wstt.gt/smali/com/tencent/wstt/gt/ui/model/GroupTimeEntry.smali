.class public Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
.super Lcom/tencent/wstt/gt/ui/model/NamedEntry;
.source "GroupTimeEntry.java"


# instance fields
.field private globalTagEntry:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/util/concurrent/locks/Lock;

.field private staticsThreadTagEntry:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private tagMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;",
            "Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tencent/wstt/gt/ui/model/NamedEntry;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->tagMap:Ljava/util/LinkedHashMap;

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->globalTagEntry:Ljava/util/LinkedHashMap;

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->staticsThreadTagEntry:Ljava/util/LinkedHashMap;

    .line 53
    iput-object p1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->name:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    .line 55
    return-void
.end method

.method private getGlobalEntry(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->globalTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    return-object v0
.end method

.method private getStaticsThreadEntry(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->staticsThreadTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    return-object v0
.end method


# virtual methods
.method public addEntry(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 7
    .param p1, "tagPerLogEntry"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    .line 59
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;

    .line 60
    invoke-virtual {p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getTid()J

    move-result-wide v2

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getExkey()I

    move-result v6

    .line 59
    aput v6, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;-><init>(Ljava/lang/String;J[I)V

    .line 61
    .local v0, "queryEntry":Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->tagMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getTid()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->globalTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 69
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->globalTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 74
    throw v1

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->staticsThreadTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 83
    :try_start_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 84
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->staticsThreadTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 87
    :catchall_1
    move-exception v1

    .line 88
    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 89
    throw v1
.end method

.method public addStaticsEntry(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 6
    .param p1, "tagPerLogEntry"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getTid()J

    move-result-wide v2

    .line 99
    .local v2, "tid":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->globalTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 105
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->globalTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 108
    :catchall_0
    move-exception v1

    .line 109
    iget-object v4, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 110
    throw v1

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->staticsThreadTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 119
    :try_start_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 120
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->staticsThreadTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 123
    :catchall_1
    move-exception v1

    .line 124
    iget-object v4, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 125
    throw v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->tagMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 208
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->globalTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 209
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->staticsThreadTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 210
    return-void
.end method

.method public entrys()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;>;"
    :try_start_0
    iget-object v3, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 186
    iget-object v3, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->globalTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    iget-object v3, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->staticsThreadTagEntry:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    return-object v1

    .line 190
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 191
    .local v2, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v3

    if-gtz v3, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;>;"
    .end local v2    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :catchall_0
    move-exception v3

    .line 199
    iget-object v4, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 200
    throw v3
.end method

.method public getStaticsEntry(Ljava/lang/String;J)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tid"    # J

    .prologue
    .line 154
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 156
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->getGlobalEntry(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->getStaticsThreadEntry(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getThreadEntry(Ljava/lang/String;JI)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tid"    # J
    .param p4, "exkey"    # I

    .prologue
    .line 172
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p4, v1, v2

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;-><init>(Ljava/lang/String;J[I)V

    .line 173
    .local v0, "queryEntry":Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->tagMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    return-object v1
.end method
