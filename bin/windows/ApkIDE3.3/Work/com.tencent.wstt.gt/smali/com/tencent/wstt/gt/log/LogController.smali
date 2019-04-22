.class public Lcom/tencent/wstt/gt/log/LogController;
.super Lcom/tencent/wstt/gt/log/AbsLogController;
.source "LogController.java"


# instance fields
.field private allowAutoSave:Z

.field private curFile:Ljava/io/File;

.field private curLogFolder:Ljava/io/File;

.field private curLogFolderName:Ljava/lang/String;

.field private curSelectedLevel:I

.field private curShowDownMsgList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private msgHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sCurSelectedMsg:Ljava/lang/String;

.field private sCurSelectedTag:Ljava/lang/String;

.field private saveDefaultSeg:Z

.field private tempLogFileWriterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/io/FileWriter;",
            ">;"
        }
    .end annotation
.end field

.field private tempLogStartingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 66
    invoke-direct {p0}, Lcom/tencent/wstt/gt/log/AbsLogController;-><init>()V

    .line 48
    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_LOG_FOLDER:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolderName:Ljava/lang/String;

    .line 49
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolderName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolder:Ljava/io/File;

    .line 53
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->sCurSelectedTag:Ljava/lang/String;

    .line 54
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->sCurSelectedMsg:Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->msgHistory:Ljava/util/LinkedList;

    .line 57
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curShowDownMsgList:Ljava/util/LinkedList;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->tempLogFileWriterMap:Ljava/util/Map;

    .line 70
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->tempLogStartingSet:Ljava/util/Set;

    .line 75
    invoke-direct {p0}, Lcom/tencent/wstt/gt/log/LogController;->setLastestLogFileAsCurFile()V

    .line 77
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "log_autosave_switch"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/wstt/gt/log/LogController;->allowAutoSave:Z

    .line 79
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/log/LogController;->allowAutoSave:Z

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/tencent/wstt/gt/log/LogController;->addTempLog(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/tencent/wstt/gt/log/LogController;->saveDefaultSeg:Z

    .line 92
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private beforeAutoSave(Ljava/lang/StringBuffer;)V
    .locals 6
    .param p1, "bf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 167
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/log/LogController;->allowAutoSave:Z

    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/log/LogController;->removeTempLog(Ljava/lang/String;)V

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/tencent/wstt/gt/log/LogController;->addTempLog(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x400000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/log/LogController;->removeTempLog(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/tencent/wstt/gt/log/LogController;->switch2NextLogFile()V

    .line 188
    :try_start_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/tencent/wstt/gt/log/LogController;->addTempLog(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 189
    :catch_1
    move-exception v0

    .line 190
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setLastestLogFileAsCurFile()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolder:Ljava/io/File;

    new-instance v2, Lcom/tencent/wstt/gt/log/LogController$1;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/log/LogController$1;-><init>(Lcom/tencent/wstt/gt/log/LogController;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 212
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 214
    array-length v1, v0

    new-instance v2, Lcom/tencent/wstt/gt/log/LogController$2;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/log/LogController$2;-><init>(Lcom/tencent/wstt/gt/log/LogController;)V

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 223
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolder:Ljava/io/File;

    const-string v3, "0.log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    goto :goto_0
.end method

.method private switch2NextLogFile()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 233
    const/4 v3, 0x0

    .line 234
    .local v3, "newFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 235
    .local v4, "newFileSeq":I
    const/4 v1, 0x0

    .line 237
    .local v1, "curFileNameSeq":I
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "curFileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 240
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/wstt/gt/utils/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 242
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 249
    :goto_0
    const/16 v5, 0x63

    if-ge v1, v5, :cond_0

    .line 251
    add-int/lit8 v4, v1, 0x1

    .line 253
    :cond_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_3

    .line 255
    new-instance v3, Ljava/io/File;

    .end local v3    # "newFile":Ljava/io/File;
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolder:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .restart local v3    # "newFile":Ljava/io/File;
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 267
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 268
    iput-object v3, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_2
    return-void

    .line 246
    :cond_2
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 259
    :cond_3
    new-instance v3, Ljava/io/File;

    .end local v3    # "newFile":Ljava/io/File;
    iget-object v5, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolder:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v3    # "newFile":Ljava/io/File;
    goto :goto_1

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public add2Save(Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/log/LogController;->beforeAutoSave(Ljava/lang/StringBuffer;)V

    .line 438
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/LogController;->tempLogFileWriterMap:Ljava/util/Map;

    monitor-enter v3

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->tempLogFileWriterMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    monitor-exit v3

    .line 444
    return-void

    .line 439
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 441
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/io/FileWriter;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileWriter;

    invoke-static {p1, v1, v2}, Lcom/tencent/wstt/gt/log/LogUtils;->writeBuff(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    goto :goto_0

    .line 438
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/io/FileWriter;>;"
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addTempLog(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    if-nez p1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const/4 v1, 0x0

    .line 287
    .local v1, "f":Ljava/io/File;
    invoke-static {p1}, Lcom/tencent/wstt/gt/utils/FileUtil;->isPathStringValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    const-string v4, ".log"

    invoke-static {p1, v4}, Lcom/tencent/wstt/gt/utils/FileUtil;->convertValidFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "validPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->isPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 292
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .restart local v1    # "f":Ljava/io/File;
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 306
    :cond_2
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 307
    .local v2, "fw":Ljava/io/FileWriter;
    iget-object v4, p0, Lcom/tencent/wstt/gt/log/LogController;->tempLogFileWriterMap:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    .end local v2    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 296
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    sget-object v4, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_LOG_FOLDER:Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "f":Ljava/io/File;
    goto :goto_1
.end method

.method public changeCurrentLogFolder(Ljava/lang/String;)V
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_LOG_FOLDER:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolderName:Ljava/lang/String;

    .line 143
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolderName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolder:Ljava/io/File;

    .line 144
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curLogFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/log/LogController;->removeTempLog(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/tencent/wstt/gt/log/LogController;->setLastestLogFileAsCurFile()V

    .line 155
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/log/LogController;->allowAutoSave:Z

    if-eqz v1, :cond_1

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/tencent/wstt/gt/log/LogController;->addTempLog(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public cleanTempLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wstt/gt/log/CleanTempLogException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "f":Ljava/io/File;
    invoke-static {p1}, Lcom/tencent/wstt/gt/utils/FileUtil;->isPathStringValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    const-string v3, ".log"

    invoke-static {p1, v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->convertValidFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "validPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/wstt/gt/utils/FileUtil;->isPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    .restart local v0    # "f":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 371
    .local v1, "result":Z
    if-nez v1, :cond_1

    .line 373
    new-instance v3, Lcom/tencent/wstt/gt/log/CleanTempLogException;

    invoke-direct {v3}, Lcom/tencent/wstt/gt/log/CleanTempLogException;-><init>()V

    throw v3

    .line 364
    .end local v1    # "result":Z
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    sget-object v3, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_LOG_FOLDER:Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "f":Ljava/io/File;
    goto :goto_0

    .line 377
    .end local v2    # "validPath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public endAllLog()V
    .locals 4

    .prologue
    .line 452
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/LogController;->tempLogFileWriterMap:Ljava/util/Map;

    monitor-enter v2

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->tempLogFileWriterMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 452
    monitor-exit v2

    .line 458
    return-void

    .line 453
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileWriter;

    .line 455
    .local v0, "writer":Ljava/io/FileWriter;
    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto :goto_0

    .line 452
    .end local v0    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAutoSave()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/log/LogController;->allowAutoSave:Z

    return v0
.end method

.method public getCurSelectedLevel()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/tencent/wstt/gt/log/LogController;->curSelectedLevel:I

    return v0
.end method

.method public getCurShowDownMsgList()Ljava/util/LinkedList;
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
    .line 130
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogController;->curShowDownMsgList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getMsgHistory()Ljava/util/LinkedList;
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
    .line 122
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogController;->msgHistory:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSaveDefaultSeg()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/log/LogController;->saveDefaultSeg:Z

    return v0
.end method

.method public getsCurSelectedMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogController;->sCurSelectedMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getsCurSelectedTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogController;->sCurSelectedTag:Ljava/lang/String;

    return-object v0
.end method

.method public hasTempLog()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogController;->tempLogStartingSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTempLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 322
    if-nez p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const/4 v0, 0x0

    .line 328
    .local v0, "f":Ljava/io/File;
    invoke-static {p1}, Lcom/tencent/wstt/gt/utils/FileUtil;->isPathStringValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    const-string v3, ".log"

    invoke-static {p1, v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->convertValidFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "validPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/wstt/gt/utils/FileUtil;->isPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .restart local v0    # "f":Ljava/io/File;
    :goto_1
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/LogController;->tempLogFileWriterMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileWriter;

    .line 341
    .local v1, "fr":Ljava/io/FileWriter;
    invoke-static {v1}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto :goto_0

    .line 337
    .end local v1    # "fr":Ljava/io/FileWriter;
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    sget-object v3, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_LOG_FOLDER:Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "f":Ljava/io/File;
    goto :goto_1
.end method

.method public reudceTempLogStarting(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogController;->tempLogStartingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 428
    return-void
.end method

.method public setAutoSave(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/log/LogController;->allowAutoSave:Z

    .line 382
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "log_autosave_switch"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    if-eqz p1, :cond_0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/tencent/wstt/gt/log/LogController;->addTempLog(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 394
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/LogController;->curFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/log/LogController;->removeTempLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCurSelectedLevel(I)V
    .locals 0
    .param p1, "curSelectedLevel"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/tencent/wstt/gt/log/LogController;->curSelectedLevel:I

    .line 103
    return-void
.end method

.method public setCurShowDownMsgList(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "curShowDownMsgList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/LogController;->curShowDownMsgList:Ljava/util/LinkedList;

    .line 135
    return-void
.end method

.method public setMsgHistory(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "msgHistory":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/LogController;->msgHistory:Ljava/util/LinkedList;

    .line 127
    return-void
.end method

.method public setSaveDefaultSeg(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/log/LogController;->saveDefaultSeg:Z

    .line 406
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log_save_default_seg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    return-void
.end method

.method public setTempLogStarting(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogController;->tempLogStartingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    return-void
.end method

.method public setsCurSelectedMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "sCurSelectedMsg"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/LogController;->sCurSelectedMsg:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setsCurSelectedTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "sCurSelectedTag"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/LogController;->sCurSelectedTag:Ljava/lang/String;

    .line 111
    return-void
.end method
