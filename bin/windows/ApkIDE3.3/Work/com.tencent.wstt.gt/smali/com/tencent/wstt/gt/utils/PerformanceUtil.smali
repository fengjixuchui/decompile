.class public Lcom/tencent/wstt/gt/utils/PerformanceUtil;
.super Ljava/lang/Object;
.source "PerformanceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPerformInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .param p0, "procName"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 39
    const/4 v10, 0x3

    new-array v8, v10, [Ljava/lang/String;

    const-string v10, ""

    aput-object v10, v8, v11

    const-string v10, ""

    aput-object v10, v8, v12

    const-string v10, ""

    aput-object v10, v8, v13

    .line 40
    .local v8, "result":[Ljava/lang/String;
    const-string v9, ""

    .line 41
    .local v9, "tempString":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 42
    .local v5, "PMUList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 43
    .local v1, "INDEX_FIRST":I
    add-int/lit8 v0, v1, 0x3

    .line 44
    .local v0, "INDEX_CPU":I
    add-int/lit8 v4, v1, 0x6

    .line 45
    .local v4, "INDEX_VSS":I
    add-int/lit8 v3, v1, 0x7

    .line 46
    .local v3, "INDEX_RSS":I
    add-int/lit8 v2, v1, 0xa

    .line 47
    .local v2, "INDEX_NAME":I
    monitor-enter v5

    .line 48
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 49
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 47
    :goto_0
    monitor-exit v5

    .line 62
    return-object v8

    .line 50
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 51
    .local v6, "item":[Ljava/lang/String;
    aget-object v9, v6, v2

    .line 52
    if-eqz v9, :cond_0

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 55
    const/4 v10, 0x0

    aget-object v11, v6, v3

    aput-object v11, v8, v10

    .line 56
    const/4 v10, 0x1

    aget-object v11, v6, v4

    aput-object v11, v8, v10

    .line 57
    const/4 v10, 0x2

    aget-object v11, v6, v0

    aput-object v11, v8, v10

    goto :goto_0

    .line 47
    .end local v6    # "item":[Ljava/lang/String;
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    :catchall_0
    move-exception v10

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method
