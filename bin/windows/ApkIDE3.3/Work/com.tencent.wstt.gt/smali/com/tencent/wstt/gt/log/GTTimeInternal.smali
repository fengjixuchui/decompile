.class public Lcom/tencent/wstt/gt/log/GTTimeInternal;
.super Ljava/lang/Object;
.source "GTTimeInternal.java"


# static fields
.field private static final EMPTY_NAMED_ENTRY:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

.field private static lastSaveTimeDetail:Ljava/lang/String;

.field private static lastSaveTimeLog:Ljava/lang/String;

.field private static timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "GTTimeLog"

    sput-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->lastSaveTimeLog:Ljava/lang/String;

    .line 40
    const-string v0, "GTTimeDetailLog"

    sput-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->lastSaveTimeDetail:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    sput-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->EMPTY_NAMED_ENTRY:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    .line 43
    new-instance v0, Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/log/LogTimeController;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleartimeInfo()V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogTimeController;->clearAllCache()V

    .line 149
    return-void
.end method

.method public static dispatchPiCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "sReceiver"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/wstt/gt/plugin/PluginManager;->dispatchCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 157
    return-void
.end method

.method public static dispatchPiCommandSync(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "sReceiver"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/wstt/gt/plugin/PluginManager;->dispatchCommandSync(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method public static endDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)J
    .locals 9
    .param p0, "entry"    # Lcom/tencent/wstt/gt/PerfDigitalEntry;

    .prologue
    .line 136
    sget-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;

    move-result-object v1

    iget-wide v1, v1, Lcom/tencent/wstt/gt/QueryPerfEntry;->tid:J

    .line 137
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/wstt/gt/QueryPerfEntry;->group:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/wstt/gt/QueryPerfEntry;->tag:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;

    move-result-object v5

    iget v5, v5, Lcom/tencent/wstt/gt/QueryPerfEntry;->exkey:I

    .line 140
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getData()J

    move-result-wide v6

    .line 141
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getFunctionId()I

    move-result v8

    .line 136
    invoke-virtual/range {v0 .. v8}, Lcom/tencent/wstt/gt/log/LogTimeController;->endTime(JLjava/lang/String;Ljava/lang/String;IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findGroupTimeEntry(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogTimeController;->getGroupTimeEntry(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    move-result-object v0

    return-object v0
.end method

.method public static findTagTimeEntry(JLjava/lang/String;Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 2
    .param p0, "tid"    # J
    .param p2, "parentName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/wstt/gt/log/LogTimeController;->getTagTimeEntry(JLjava/lang/String;Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    return-object v0
.end method

.method public static getAllGroup()Ljava/util/List;
    .locals 1
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
    .line 172
    sget-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogTimeController;->getShowList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getEntrys()[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    .locals 8

    .prologue
    .line 46
    sget-object v5, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/log/LogTimeController;->getShowList()Ljava/util/List;

    move-result-object v2

    .line 47
    .local v2, "root":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/NamedEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 60
    sget-object v5, Lcom/tencent/wstt/gt/log/GTTimeInternal;->EMPTY_NAMED_ENTRY:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    return-object v5

    .line 48
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    .line 50
    .local v0, "gte":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->entrys()Ljava/util/List;

    move-result-object v3

    .line 51
    .local v3, "tagEntryList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 56
    .local v4, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getLastSaveTimeDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->lastSaveTimeDetail:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastSaveTimeLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->lastSaveTimeLog:Ljava/lang/String;

    return-object v0
.end method

.method public static isETStarted()Z
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogTimeController;->getState()Z

    move-result v0

    return v0
.end method

.method public static recordDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)V
    .locals 8
    .param p0, "entry"    # Lcom/tencent/wstt/gt/PerfDigitalEntry;

    .prologue
    .line 119
    sget-object v1, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;

    move-result-object v0

    iget-wide v2, v0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tid:J

    .line 120
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;

    move-result-object v0

    iget-object v4, v0, Lcom/tencent/wstt/gt/QueryPerfEntry;->group:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;

    move-result-object v0

    iget-object v5, v0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tag:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getDatas()[J

    move-result-object v6

    .line 123
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getFunctionId()I

    move-result v7

    .line 119
    invoke-virtual/range {v1 .. v7}, Lcom/tencent/wstt/gt/log/LogTimeController;->recordDigital(JLjava/lang/String;Ljava/lang/String;[JI)V

    .line 124
    return-void
.end method

.method public static saveTimeLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "logFileName"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->setLastSaveTimeLog(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogTimeController;->saveAllCache(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static saveTimeLogDetail(Ljava/lang/String;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 1
    .param p0, "logFileName"    # Ljava/lang/String;
    .param p1, "tagTimeEntry"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->setLastSaveTimeDetail(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/wstt/gt/log/LogTimeController;->saveCache(Ljava/lang/String;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 81
    return-void
.end method

.method public static setETStarted(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 104
    if-eqz p0, :cond_0

    .line 106
    invoke-static {}, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonHelper;->startGWOrProfValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogTimeController;->setState(Z)V

    goto :goto_0
.end method

.method public static setLastSaveTimeDetail(Ljava/lang/String;)V
    .locals 0
    .param p0, "lastSaveTimeDetail"    # Ljava/lang/String;

    .prologue
    .line 96
    sput-object p0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->lastSaveTimeDetail:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static setLastSaveTimeLog(Ljava/lang/String;)V
    .locals 0
    .param p0, "lastSaveTimeLog"    # Ljava/lang/String;

    .prologue
    .line 88
    sput-object p0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->lastSaveTimeLog:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static startDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)V
    .locals 9
    .param p0, "entry"    # Lcom/tencent/wstt/gt/PerfDigitalEntry;

    .prologue
    .line 127
    sget-object v0, Lcom/tencent/wstt/gt/log/GTTimeInternal;->timeLogController:Lcom/tencent/wstt/gt/log/LogTimeController;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;

    move-result-object v1

    iget-wide v1, v1, Lcom/tencent/wstt/gt/QueryPerfEntry;->tid:J

    .line 128
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/wstt/gt/QueryPerfEntry;->group:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/wstt/gt/QueryPerfEntry;->tag:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;

    move-result-object v5

    iget v5, v5, Lcom/tencent/wstt/gt/QueryPerfEntry;->exkey:I

    .line 131
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getData()J

    move-result-wide v6

    .line 132
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getFunctionId()I

    move-result v8

    .line 127
    invoke-virtual/range {v0 .. v8}, Lcom/tencent/wstt/gt/log/LogTimeController;->startTime(JLjava/lang/String;Ljava/lang/String;IJI)V

    .line 133
    return-void
.end method
