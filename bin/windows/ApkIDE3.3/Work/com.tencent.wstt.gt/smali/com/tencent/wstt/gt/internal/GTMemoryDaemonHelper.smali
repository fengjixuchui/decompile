.class public Lcom/tencent/wstt/gt/internal/GTMemoryDaemonHelper;
.super Ljava/lang/Object;
.source "GTMemoryDaemonHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startGWOrProfValid()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    .local v4, "total":I
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getAllProfilerData()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    .line 45
    .local v1, "opPerfDatas":[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    array-length v8, v1

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_2

    .line 63
    invoke-static {}, Lcom/tencent/wstt/gt/api/base/GTTime;->isEnable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->getAllGroup()Ljava/util/List;

    move-result-object v3

    .line 66
    .local v3, "timeGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 76
    .end local v3    # "timeGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;>;"
    :cond_1
    const v7, 0x7a120

    if-lt v4, v7, :cond_5

    .line 78
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 79
    const-string v8, "More than 500000 GW or Prof records.You should save and clear records first."

    .line 78
    invoke-static {v7, v8}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    :goto_1
    return v6

    .line 45
    :cond_2
    aget-object v5, v1, v7

    .line 47
    .local v5, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    const/4 v2, 0x0

    .line 48
    .local v2, "single":I
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 50
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v9

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    .line 52
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v9

    array-length v9, v9

    mul-int/2addr v9, v2

    add-int/2addr v4, v9

    .line 45
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    .line 57
    add-int/2addr v4, v2

    goto :goto_2

    .line 66
    .end local v2    # "single":I
    .end local v5    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .restart local v3    # "timeGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;>;"
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    .line 68
    .local v0, "gte":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->entrys()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 70
    .restart local v5    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    .line 71
    .restart local v2    # "single":I
    add-int/2addr v4, v2

    goto :goto_3

    .line 85
    .end local v0    # "gte":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    .end local v2    # "single":I
    .end local v3    # "timeGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;>;"
    .end local v5    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_5
    const/4 v6, 0x1

    goto :goto_1
.end method
