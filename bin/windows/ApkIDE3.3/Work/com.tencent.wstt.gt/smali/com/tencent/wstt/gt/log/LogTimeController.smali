.class public Lcom/tencent/wstt/gt/log/LogTimeController;
.super Ljava/lang/Object;
.source "LogTimeController.java"


# instance fields
.field private groupMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/util/concurrent/locks/Lock;

.field private started:Z

.field private startedOnceUntilNotClear:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    .line 43
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->started:Z

    .line 46
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->startedOnceUntilNotClear:Z

    .line 51
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->isSDCardExist()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_TIME_FOLDER:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_TIME_FOLDER:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 58
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->lock:Ljava/util/concurrent/locks/Lock;

    .line 59
    return-void
.end method


# virtual methods
.method public clearAllCache()V
    .locals 5

    .prologue
    .line 267
    iget-boolean v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->started:Z

    if-eqz v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->startedOnceUntilNotClear:Z

    .line 274
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 284
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    .line 276
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    .line 278
    .local v0, "gte":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->entrys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 282
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->clear()V

    goto :goto_1

    .line 278
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 280
    .local v1, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->clear()V

    goto :goto_2
.end method

.method public endTime(JLjava/lang/String;Ljava/lang/String;IJI)J
    .locals 13
    .param p1, "tid"    # J
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "exKey"    # I
    .param p6, "end"    # J
    .param p8, "funcId"    # I

    .prologue
    .line 190
    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    const/4 v6, 0x0

    .line 195
    .local v6, "tagEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    iget-object v7, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 197
    const-wide/16 v4, -0x1

    .line 230
    .end local v2    # "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    .end local v6    # "tagEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_0
    :goto_0
    return-wide v4

    .line 200
    .restart local v2    # "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    .restart local v6    # "tagEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_1
    iget-object v7, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    check-cast v2, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    .line 201
    .restart local v2    # "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    if-nez v2, :cond_2

    .line 203
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 206
    :cond_2
    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, p1, p2, v1}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->getThreadEntry(Ljava/lang/String;JI)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v6

    .line 207
    if-nez v6, :cond_3

    .line 209
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getLastStart()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_4

    .line 214
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 217
    :cond_4
    invoke-virtual {v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getLastStart()J

    move-result-wide v8

    sub-long v4, p6, v8

    .line 218
    .local v4, "reduce":J
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setLastStart(J)V

    .line 220
    iget-boolean v7, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->started:Z

    if-eqz v7, :cond_0

    .line 223
    move-object/from16 v0, p4

    invoke-virtual {v2, v0, p1, p2}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->getStaticsEntry(Ljava/lang/String;J)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v3

    .line 224
    .local v3, "staticsTagTimeEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v3, v4, v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->add(J)I

    goto :goto_0

    .line 230
    .end local v2    # "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    .end local v3    # "staticsTagTimeEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .end local v4    # "reduce":J
    .end local v6    # "tagEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_5
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getGroupTimeEntry(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    return-object v0
.end method

.method public getShowList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;>;"
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->startedOnceUntilNotClear:Z

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 68
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    :cond_0
    return-object v0
.end method

.method public getState()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->started:Z

    return v0
.end method

.method public getTagTimeEntry(JLjava/lang/String;Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 3
    .param p1, "tid"    # J
    .param p3, "parentName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    .line 90
    .local v0, "groupTimeEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    const/4 v1, 0x0

    .line 91
    .local v1, "tagTimeEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p4, p1, p2}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->getStaticsEntry(Ljava/lang/String;J)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    .line 95
    :cond_0
    return-object v1
.end method

.method public recordDigital(JLjava/lang/String;Ljava/lang/String;[JI)V
    .locals 9
    .param p1, "tid"    # J
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "datas"    # [J
    .param p6, "funcId"    # I

    .prologue
    const/4 v8, 0x0

    .line 102
    iget-boolean v5, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->started:Z

    if-nez v5, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 109
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    .line 111
    .local v0, "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    if-nez v0, :cond_2

    .line 113
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    .end local v0    # "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    invoke-direct {v0, p3}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;-><init>(Ljava/lang/String;)V

    .line 114
    .restart local v0    # "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 115
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 120
    :cond_2
    invoke-virtual {v0, p4, p1, p2}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->getStaticsEntry(Ljava/lang/String;J)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    .line 122
    .local v2, "staticsTagTimeEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-nez v2, :cond_3

    .line 124
    new-instance v2, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .end local v2    # "staticsTagTimeEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-direct {v2, v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;-><init>(Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V

    .line 125
    .restart local v2    # "staticsTagTimeEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v2, p4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setName(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2, p1, p2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setTid(J)V

    .line 127
    invoke-virtual {v2, p6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setFunctionId(I)V

    .line 128
    array-length v5, p5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->initChildren(I)V

    .line 129
    invoke-virtual {v0, v2}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->addStaticsEntry(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 132
    :cond_3
    const/16 v5, 0xe

    if-eq v5, p6, :cond_4

    .line 133
    const/16 v5, 0xf

    if-ne v5, p6, :cond_6

    .line 135
    :cond_4
    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    .line 136
    .local v4, "subEntrys":[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v4

    if-lt v1, v5, :cond_5

    .line 141
    aget-wide v6, p5, v8

    invoke-virtual {v2, v6, v7}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->add(J)I

    goto :goto_0

    .line 138
    :cond_5
    aget-object v3, v4, v1

    .line 139
    .local v3, "subEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    aget-wide v6, p5, v1

    invoke-virtual {v3, v6, v7}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->add(J)I

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    .end local v1    # "i":I
    .end local v3    # "subEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .end local v4    # "subEntrys":[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_6
    aget-wide v6, p5, v8

    invoke-virtual {v2, v6, v7}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->add(J)I

    goto :goto_0
.end method

.method public saveAllCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/log/LogTimeController;->getShowList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/wstt/gt/log/LogUtils;->writeTimeLog(Ljava/util/List;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public saveCache(Ljava/lang/String;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "tagTimeEntry"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    .line 296
    invoke-static {p2, p1}, Lcom/tencent/wstt/gt/log/LogUtils;->writeTimeDetail(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public setState(Z)V
    .locals 6
    .param p1, "flag"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->started:Z

    .line 236
    if-eqz p1, :cond_0

    .line 238
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->startedOnceUntilNotClear:Z

    .line 242
    :cond_0
    iget-boolean v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->started:Z

    if-nez v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 258
    :cond_2
    return-void

    .line 244
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    .line 246
    .local v0, "gte":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->entrys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 254
    .local v1, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setLastStart(J)V

    goto :goto_0
.end method

.method public startTime(JLjava/lang/String;Ljava/lang/String;IJI)V
    .locals 3
    .param p1, "tid"    # J
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "exKey"    # I
    .param p6, "start"    # J
    .param p8, "funcId"    # I

    .prologue
    .line 155
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 157
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    .line 159
    .local v0, "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    .end local v0    # "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    invoke-direct {v0, p3}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v0    # "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 163
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->groupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogTimeController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 168
    :cond_0
    invoke-virtual {v0, p4, p1, p2, p5}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->getThreadEntry(Ljava/lang/String;JI)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    .line 170
    .local v1, "tagEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-nez v1, :cond_1

    .line 172
    new-instance v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .end local v1    # "tagEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-direct {v1, v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;-><init>(Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V

    .line 173
    .restart local v1    # "tagEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v1, p4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setName(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, p1, p2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setTid(J)V

    .line 175
    invoke-virtual {v1, p5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setExkey(I)V

    .line 180
    invoke-virtual {v1, p8}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setFunctionId(I)V

    .line 181
    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->addEntry(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 184
    :cond_1
    invoke-virtual {v1, p6, p7}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setLastStart(J)V

    .line 186
    .end local v0    # "groupEntry":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    .end local v1    # "tagEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_2
    return-void
.end method
