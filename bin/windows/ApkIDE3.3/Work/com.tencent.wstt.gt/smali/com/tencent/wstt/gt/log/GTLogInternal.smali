.class public Lcom/tencent/wstt/gt/log/GTLogInternal;
.super Ljava/lang/Object;
.source "GTLogInternal.java"


# static fields
.field public static final LOG_DEBUG:I = 0x1

.field public static final LOG_ERROR:I = 0x4

.field public static final LOG_INFO:I = 0x2

.field public static final LOG_VERBOSE:I = 0x0

.field public static final LOG_WARNING:I = 0x3

.field public static Log_Level:I = 0x0

.field private static final TIMESTAMP_LENGTH:I = 0x13

.field private static curLogAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

.field private static lastSaveLog:Ljava/lang/String;

.field private static logController:Lcom/tencent/wstt/gt/log/LogController;

.field private static logPattern:Ljava/util/regex/Pattern;

.field private static logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

.field private static logTaskConsumer:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

.field private static log_enable_flag:Z

.field private static tempLogConsumer:Lcom/tencent/wstt/gt/log/TempLogConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->Log_Level:I

    .line 52
    const-string v0, "GTLog"

    sput-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->lastSaveLog:Ljava/lang/String;

    .line 59
    const-string v0, "(\\w)/([^(]+)\\(\\s*(\\d+)(?:\\*\\s*\\d+)?\\): "

    .line 57
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logPattern:Ljava/util/regex/Pattern;

    .line 71
    new-instance v0, Lcom/tencent/wstt/gt/log/LogController;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/log/LogController;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    .line 73
    new-instance v0, Lcom/tencent/wstt/gt/log/TempLogConsumer;

    sget-object v1, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/log/TempLogConsumer;-><init>(Lcom/tencent/wstt/gt/log/LogController;)V

    sput-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->tempLogConsumer:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    .line 76
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->tempLogConsumer:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->start()V

    .line 80
    new-instance v0, Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/log/LogSearchController;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    .line 83
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "log_master_switch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 82
    sput-boolean v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->log_enable_flag:Z

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLogListener(Lcom/tencent/wstt/gt/log/LogListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/tencent/wstt/gt/log/LogListener;

    .prologue
    .line 481
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogController;->addListener(Lcom/tencent/wstt/gt/log/LogListener;)V

    .line 482
    return-void
.end method

.method public static changeCurAppName(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 476
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogController;->changeCurrentLogFolder(Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public static cleanLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "logFileName"    # Ljava/lang/String;

    .prologue
    .line 459
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->tempLogConsumer:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->cleanALog(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public static clearLastSearchMarks()V
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogSearchController;->clear()V

    .line 197
    return-void
.end method

.method public static clearLog()V
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->clearCache()V

    .line 468
    return-void
.end method

.method public static disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 369
    sput-boolean v2, Lcom/tencent/wstt/gt/log/GTLogInternal;->log_enable_flag:Z

    .line 370
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log_master_switch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logTaskConsumer:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    if-eqz v0, :cond_0

    .line 374
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logTaskConsumer:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    invoke-virtual {v0, v2}, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->setAllowAdd2Visable(Z)V

    .line 376
    :cond_0
    return-void
.end method

.method public static enable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 358
    sput-boolean v2, Lcom/tencent/wstt/gt/log/GTLogInternal;->log_enable_flag:Z

    .line 359
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log_master_switch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 361
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logTaskConsumer:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logTaskConsumer:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    invoke-virtual {v0, v2}, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->setAllowAdd2Visable(Z)V

    .line 365
    :cond_0
    return-void
.end method

.method public static endAllLog()V
    .locals 1

    .prologue
    .line 455
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->endAllLog()V

    .line 456
    return-void
.end method

.method public static endLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "logFileName"    # Ljava/lang/String;

    .prologue
    .line 451
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->tempLogConsumer:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->endALog(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public static getCurFilterLevel()I
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->getCurSelectedLevel()I

    move-result v0

    return v0
.end method

.method public static getCurFilterMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->getsCurSelectedMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurFilterMsgHistory()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->getMsgHistory()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public static getCurFilterShowDownMsgList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->getCurShowDownMsgList()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public static getCurFilterTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->getsCurSelectedTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurFilteredLogs()[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .locals 3

    .prologue
    .line 111
    const/4 v2, 0x0

    new-array v1, v2, [Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .line 112
    .local v1, "result":[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLogListReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 113
    sget-object v2, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/log/LogController;->getFilterdLogList()Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/LogEntry;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    check-cast v1, [Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .line 115
    .restart local v1    # "result":[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLogListReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 117
    return-object v1
.end method

.method public static getCurNormalLogs()[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .locals 3

    .prologue
    .line 101
    const/4 v2, 0x0

    new-array v1, v2, [Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .line 102
    .local v1, "result":[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLogListReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 103
    sget-object v2, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/log/LogController;->getShowLogList()Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/LogEntry;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    check-cast v1, [Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .line 105
    .restart local v1    # "result":[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLogListReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 107
    return-object v1
.end method

.method public static getCurSearchMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogSearchController;->getsCurSelectedMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurSearchMsgHistory()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogSearchController;->getMsgHistory()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public static getCurShowDownMsgList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogSearchController;->getCurShowDownMsgList()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public static getLastMatchedEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/MatchedEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogSearchController;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLastMatchedSeq()I
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogSearchController;->getLastMatchedSeq()I

    move-result v0

    return v0
.end method

.method public static getLastSaveLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->lastSaveLog:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastSearchDataSet()[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogSearchController;->getLastEntrys()[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    move-result-object v0

    return-object v0
.end method

.method public static getLastSearchMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogSearchController;->getLastSearchMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogListReadLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    iget-object v0, v0, Lcom/tencent/wstt/gt/log/LogController;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalLogLastFilterEndLocation()I
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->getLastFilterEndLocation()I

    move-result v0

    return v0
.end method

.method public static getNormalLogList()Ljava/util/List;
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
    .line 97
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->getShowLogList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getTags()Ljava/util/List;
    .locals 1
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
    .line 133
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->getShowTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static hasLogNeedIO()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 419
    sget-object v1, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    if-eqz v1, :cond_0

    .line 422
    sget-object v1, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/log/LogController;->getAutoSave()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/log/LogController;->hasTempLog()Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAutoSave()Z
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->getAutoSave()Z

    move-result v0

    .line 414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnable()Z
    .locals 1

    .prologue
    .line 380
    sget-boolean v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->log_enable_flag:Z

    return v0
.end method

.method public static isSaveDefaultSeg()Z
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->getSaveDefaultSeg()Z

    move-result v0

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "pid"    # J
    .param p2, "level"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "sTime"    # Ljava/lang/String;

    .prologue
    .line 279
    sget v4, Lcom/tencent/wstt/gt/log/GTLogInternal;->Log_Level:I

    if-ge p2, v4, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    sget-boolean v4, Lcom/tencent/wstt/gt/log/GTLogInternal;->log_enable_flag:Z

    if-eqz v4, :cond_0

    .line 287
    const/4 v4, 0x4

    if-gt p2, v4, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 293
    sget-object v4, Lcom/tencent/wstt/gt/log/GTLogInternal;->logTaskConsumer:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    if-nez v4, :cond_2

    .line 295
    new-instance v4, Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    sget-object v5, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-direct {v4, v5}, Lcom/tencent/wstt/gt/log/LogTaskConsumer;-><init>(Lcom/tencent/wstt/gt/log/AbsLogController;)V

    sput-object v4, Lcom/tencent/wstt/gt/log/GTLogInternal;->logTaskConsumer:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    .line 296
    sget-object v4, Lcom/tencent/wstt/gt/log/GTLogInternal;->logTaskConsumer:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    sget-boolean v5, Lcom/tencent/wstt/gt/log/GTLogInternal;->log_enable_flag:Z

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->setAllowAdd2Visable(Z)V

    .line 297
    sget-object v4, Lcom/tencent/wstt/gt/log/GTLogInternal;->logTaskConsumer:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->start()V

    .line 301
    :cond_2
    const/16 v1, 0x56

    .line 302
    .local v1, "sLevel":C
    packed-switch p2, :pswitch_data_0

    .line 320
    :goto_1
    move-object v3, p5

    .line 321
    .local v3, "time":Ljava/lang/String;
    if-nez p5, :cond_3

    .line 323
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSystemDateTime()Ljava/lang/String;

    move-result-object v3

    .line 326
    :cond_3
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/ui/model/LogEntry;-><init>()V

    .line 327
    .local v0, "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    iput-wide p0, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->tid:J

    .line 328
    iput-object p3, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->tag:Ljava/lang/String;

    .line 329
    iput p2, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->level:I

    .line 331
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->isSaveDefaultSeg()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 333
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 334
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 337
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 341
    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    .line 351
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_2
    iput-object v3, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->sTime:Ljava/lang/String;

    .line 352
    sget-object v4, Lcom/tencent/wstt/gt/log/GTLogInternal;->logTaskConsumer:Lcom/tencent/wstt/gt/log/LogTaskConsumer;

    invoke-virtual {v4, v0}, Lcom/tencent/wstt/gt/log/LogTaskConsumer;->putLog(Lcom/tencent/wstt/gt/ui/model/LogEntry;)V

    .line 353
    sget-object v4, Lcom/tencent/wstt/gt/log/GTLogInternal;->tempLogConsumer:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    iget-object v5, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->putLog(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v0    # "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .end local v3    # "time":Ljava/lang/String;
    :pswitch_0
    const/16 v1, 0x56

    .line 305
    goto :goto_1

    .line 307
    :pswitch_1
    const/16 v1, 0x44

    .line 308
    goto :goto_1

    .line 310
    :pswitch_2
    const/16 v1, 0x49

    .line 311
    goto :goto_1

    .line 313
    :pswitch_3
    const/16 v1, 0x57

    .line 314
    goto :goto_1

    .line 316
    :pswitch_4
    const/16 v1, 0x45

    goto :goto_1

    .line 348
    .restart local v0    # "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .restart local v3    # "time":Ljava/lang/String;
    :cond_4
    iput-object p4, v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    goto :goto_2

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static logCat(Ljava/lang/String;)V
    .locals 13
    .param p0, "originalLine"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 232
    const/4 v5, 0x0

    .line 233
    .local v5, "sTime":Ljava/lang/String;
    const-wide/16 v0, -0x1

    .line 234
    .local v0, "pid":J
    const/16 v6, 0x49

    .line 235
    .local v6, "level":C
    const/4 v3, 0x0

    .line 236
    .local v3, "tag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 238
    .local v4, "msg":Ljava/lang/String;
    const/4 v8, 0x0

    .line 239
    .local v8, "startIdx":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 240
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x13

    if-lt v10, v11, :cond_0

    .line 242
    const/16 v10, 0x12

    invoke-virtual {p0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, "timestamp":Ljava/lang/String;
    move-object v5, v9

    .line 244
    const/16 v8, 0x13

    .line 247
    .end local v9    # "timestamp":Ljava/lang/String;
    :cond_0
    sget-object v10, Lcom/tencent/wstt/gt/log/GTLogInternal;->logPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 248
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 249
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "gtLevel":I
    sparse-switch v6, :sswitch_data_0

    .line 270
    :goto_0
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 271
    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v0, v10

    .line 272
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-static/range {v0 .. v5}, Lcom/tencent/wstt/gt/log/GTLogInternal;->log(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v2    # "gtLevel":I
    :cond_1
    return-void

    .line 254
    .restart local v2    # "gtLevel":I
    :sswitch_0
    const/4 v2, 0x0

    .line 255
    goto :goto_0

    .line 257
    :sswitch_1
    const/4 v2, 0x1

    .line 258
    goto :goto_0

    .line 260
    :sswitch_2
    const/4 v2, 0x2

    .line 261
    goto :goto_0

    .line 263
    :sswitch_3
    const/4 v2, 0x3

    .line 264
    goto :goto_0

    .line 266
    :sswitch_4
    const/4 v2, 0x4

    goto :goto_0

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x45 -> :sswitch_4
        0x49 -> :sswitch_2
        0x56 -> :sswitch_0
        0x57 -> :sswitch_3
    .end sparse-switch
.end method

.method public static removeLogListener(Lcom/tencent/wstt/gt/log/LogListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/tencent/wstt/gt/log/LogListener;

    .prologue
    .line 486
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogController;->removeListener(Lcom/tencent/wstt/gt/log/LogListener;)V

    .line 487
    return-void
.end method

.method public static resetNormalLogLastFilterEndLocation()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/LogController;->resetLastFilterEndLocation()V

    .line 130
    return-void
.end method

.method public static saveLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "logFileName"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-static {p0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setLastSaveLog(Ljava/lang/String;)V

    .line 430
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogController;->saveCache(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public static setAutoSave(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 402
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogController;->setAutoSave(Z)V

    .line 406
    :cond_0
    return-void
.end method

.method public static setCurFilterLevel(I)V
    .locals 1
    .param p0, "curSelectedLevel"    # I

    .prologue
    .line 149
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogController;->setCurSelectedLevel(I)V

    .line 150
    return-void
.end method

.method public static setCurFilterMsg(Ljava/lang/String;)V
    .locals 1
    .param p0, "sCurSelectedMsg"    # Ljava/lang/String;

    .prologue
    .line 165
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogController;->setsCurSelectedMsg(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static setCurFilterTag(Ljava/lang/String;)V
    .locals 1
    .param p0, "sCurSelectedTag"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogController;->setsCurSelectedTag(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static setCurLogAdapter(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)V
    .locals 0
    .param p0, "curLogAdapter"    # Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    .prologue
    .line 87
    sput-object p0, Lcom/tencent/wstt/gt/log/GTLogInternal;->curLogAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    .line 88
    return-void
.end method

.method public static setCurSearchMsg(Ljava/lang/String;)V
    .locals 1
    .param p0, "sCurSelectedMsg"    # Ljava/lang/String;

    .prologue
    .line 221
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogSearchController;->setsCurSelectedMsg(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static setFilterdLogList(Ljava/util/List;)V
    .locals 1
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
    .line 121
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/LogEntry;>;"
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogController;->setFilterdLogList(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method public static setLastMatchedSeq(I)V
    .locals 1
    .param p0, "lastMatchedSeq"    # I

    .prologue
    .line 204
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogSearchController;->setLastMatchedSeq(I)V

    .line 205
    return-void
.end method

.method public static setLastSaveLog(Ljava/lang/String;)V
    .locals 0
    .param p0, "lastSaveLogName"    # Ljava/lang/String;

    .prologue
    .line 438
    sput-object p0, Lcom/tencent/wstt/gt/log/GTLogInternal;->lastSaveLog:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public static setLastSearchDataSet([Lcom/tencent/wstt/gt/ui/model/LogEntry;)V
    .locals 1
    .param p0, "lastEntrys"    # [Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .prologue
    .line 189
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogSearchController;->setLastEntrys([Lcom/tencent/wstt/gt/ui/model/LogEntry;)V

    .line 190
    return-void
.end method

.method public static setLastSearchMsg(Ljava/lang/String;)V
    .locals 1
    .param p0, "lastSearchMsg"    # Ljava/lang/String;

    .prologue
    .line 183
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logSearchController:Lcom/tencent/wstt/gt/log/LogSearchController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogSearchController;->setLastSearchMsg(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 226
    sput p0, Lcom/tencent/wstt/gt/log/GTLogInternal;->Log_Level:I

    .line 227
    return-void
.end method

.method public static setSaveDefaultSeg(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 385
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    if-eqz v0, :cond_0

    .line 387
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->logController:Lcom/tencent/wstt/gt/log/LogController;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/LogController;->setSaveDefaultSeg(Z)V

    .line 389
    :cond_0
    return-void
.end method

.method public static startLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "logFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->tempLogConsumer:Lcom/tencent/wstt/gt/log/TempLogConsumer;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/log/TempLogConsumer;->startALog(Ljava/lang/String;)V

    .line 448
    return-void
.end method


# virtual methods
.method public getCurLogAdapter()Lcom/tencent/wstt/gt/log/NormalLogAdapter;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/tencent/wstt/gt/log/GTLogInternal;->curLogAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    return-object v0
.end method
