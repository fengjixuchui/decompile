.class public Lcom/tencent/wstt/gt/log/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static CACHE:I = 0x0

.field public static final CAPACITY:J = 0x400000L

.field public static final GW_DESC_POSFIX:Ljava/lang/String; = ".txt"

.field public static final GW_DESC_PREFIX:Ljava/lang/String; = "gtdesc_"

.field public static final GW_POSFIX:Ljava/lang/String; = ".csv"

.field public static final LOG_FILE_MATCHE:Ljava/lang/String; = "\\d+.log"

.field public static final LOG_POSFIX:Ljava/lang/String; = ".log"

.field public static final TLOG_POSFIX:Ljava/lang/String; = ".csv"

.field private static autoSaveQuickFlush:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0x3e8

    sput v0, Lcom/tencent/wstt/gt/log/LogUtils;->CACHE:I

    .line 57
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "log_autosaveflush_switch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/wstt/gt/log/LogUtils;->autoSaveQuickFlush:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTagTimeEntryFileName(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;Lcom/tencent/wstt/gt/log/GWSaveEntry;)Ljava/lang/String;
    .locals 8
    .param p0, "tte"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .param p1, "saveEntry"    # Lcom/tencent/wstt/gt/log/GWSaveEntry;

    .prologue
    const/4 v6, 0x0

    .line 713
    const-wide/16 v2, 0x0

    .line 714
    .local v2, "lastDataTime":J
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v5

    if-lez v5, :cond_1

    .line 716
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordList()Ljava/util/ArrayList;

    move-result-object v0

    .line 717
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    iget-wide v2, v5, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->time:J

    .line 725
    .end local v0    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_2

    iget-object v1, p1, Lcom/tencent/wstt/gt/log/GWSaveEntry;->now:Ljava/lang/String;

    .line 726
    .local v1, "recordTime":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".csv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 727
    .local v4, "tteFileName":Ljava/lang/String;
    const/16 v5, 0x3a

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 728
    return-object v4

    .line 719
    .end local v1    # "recordTime":Ljava/lang/String;
    .end local v4    # "tteFileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v5

    if-lez v5, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordList()Ljava/util/ArrayList;

    move-result-object v0

    .line 722
    .restart local v0    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    iget-wide v2, v5, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->time:J

    goto :goto_0

    .line 725
    .end local v0    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    :cond_2
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveDate(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static isAutoSaveQuickFlush()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/tencent/wstt/gt/log/LogUtils;->autoSaveQuickFlush:Z

    return v0
.end method

.method public static setAutoSaveQuickFlush(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 60
    sput-boolean p0, Lcom/tencent/wstt/gt/log/LogUtils;->autoSaveQuickFlush:Z

    .line 61
    return-void
.end method

.method public static writeBuff(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/CharSequence;
    .param p1, "f"    # Ljava/io/File;
    .param p2, "writer"    # Ljava/io/FileWriter;

    .prologue
    .line 842
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 849
    sget-boolean v1, Lcom/tencent/wstt/gt/log/LogUtils;->autoSaveQuickFlush:Z

    if-eqz v1, :cond_0

    .line 850
    invoke-virtual {p2}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeFilterLog(Ljava/util/List;Ljava/io/File;Z)V
    .locals 5
    .param p1, "f"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->isSDCardExist()Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p2, :cond_1

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 136
    :cond_1
    const/4 v1, 0x0

    .line 138
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v2, p1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    move-object v1, v2

    .line 142
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 146
    invoke-static {v1}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto :goto_0

    .line 139
    .end local v3    # "i":I
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4, p1, v1}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 144
    const-string v4, "\r\n"

    invoke-static {v4, p1, v1}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static writeGWData(Lcom/tencent/wstt/gt/log/GWSaveEntry;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 32
    .param p0, "saveEntry"    # Lcom/tencent/wstt/gt/log/GWSaveEntry;
    .param p1, "tte"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    .line 324
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->isSDCardExist()Z

    move-result v28

    if-eqz v28, :cond_0

    if-nez p1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v28

    if-nez v28, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v28

    if-eqz v28, :cond_0

    .line 330
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v28

    if-eqz v28, :cond_0

    .line 334
    :cond_3
    new-instance v28, Ljava/lang/StringBuilder;

    sget-object v29, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GW_FOLDER:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path1:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path2:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path3:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 334
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 336
    .local v20, "sFolder":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v10, "folder":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 339
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/log/LogUtils;->getTagTimeEntryFileName(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;Lcom/tencent/wstt/gt/log/GWSaveEntry;)Ljava/lang/String;

    move-result-object v7

    .line 340
    .local v7, "fName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v10, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 341
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_0

    .line 346
    const/4 v11, 0x0

    .line 348
    .local v11, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v12, Ljava/io/FileWriter;

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-direct {v12, v6, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 350
    .end local v11    # "fw":Ljava/io/FileWriter;
    .local v12, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 351
    .local v21, "sb":Ljava/lang/StringBuffer;
    const-string v28, "key,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    const-string v28, "alias,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAlias()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    const-string v28, "unit,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getFunctionId()I

    move-result v28

    const/16 v29, 0xf

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 361
    const-string v28, "(KB)"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    :goto_1
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v28

    if-nez v28, :cond_a

    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v22

    .line 369
    .local v22, "size":I
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecord(I)Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    move-result-object v28

    move-object/from16 v0, v28

    iget-wide v8, v0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->time:J

    .line 370
    .local v8, "firstTime":J
    add-int/lit8 v28, v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecord(I)Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    move-result-object v28

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->time:J

    move-wide/from16 v18, v0

    .line 371
    .local v18, "lastTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordList()Ljava/util/ArrayList;

    move-result-object v26

    .line 373
    .local v26, "tempRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    const-string v28, "begin date,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    invoke-static {v8, v9}, Lcom/tencent/wstt/gt/utils/GTUtils;->getDate(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    const-string v28, "end date,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    invoke-static/range {v18 .. v19}, Lcom/tencent/wstt/gt/utils/GTUtils;->getDate(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const-string v28, "count,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 381
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    const-string v28, "min,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMin()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    const-string v28, "max,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMax()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    const-string v28, "avg,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAve()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-nez v29, :cond_8

    .line 478
    .end local v26    # "tempRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v28

    if-eqz v28, :cond_5

    .line 479
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 481
    :cond_5
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0, v6, v12}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    invoke-static {v12}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    move-object v11, v12

    .line 491
    .end local v8    # "firstTime":J
    .end local v12    # "fw":Ljava/io/FileWriter;
    .end local v18    # "lastTime":J
    .end local v21    # "sb":Ljava/lang/StringBuffer;
    .end local v22    # "size":I
    .restart local v11    # "fw":Ljava/io/FileWriter;
    :goto_3
    sget-object v28, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->memInfoList:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_0

    .line 494
    new-instance v24, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "tagMem_"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->now:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".csv"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 495
    .local v24, "tagFile":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 496
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 499
    :cond_6
    const/4 v13, 0x0

    .line 501
    .local v13, "fwTagFile":Ljava/io/FileWriter;
    :try_start_2
    new-instance v14, Ljava/io/FileWriter;

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-direct {v14, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v13    # "fwTagFile":Ljava/io/FileWriter;
    .local v14, "fwTagFile":Ljava/io/FileWriter;
    move-object v13, v14

    .line 506
    .end local v14    # "fwTagFile":Ljava/io/FileWriter;
    .restart local v13    # "fwTagFile":Ljava/io/FileWriter;
    :goto_4
    const/16 v21, 0x0

    .line 508
    .restart local v21    # "sb":Ljava/lang/StringBuffer;
    new-instance v21, Ljava/lang/StringBuffer;

    .end local v21    # "sb":Ljava/lang/StringBuffer;
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 509
    .restart local v21    # "sb":Ljava/lang/StringBuffer;
    const-string v28, "time(ms)"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    const-string v28, "DalvikHeapSize(KB)"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    const-string v28, "DalvikAllocated(KB)"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    const-string v28, "private_dirty(KB)"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    const-string v28, "PSS_Total(KB)"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    const-string v28, "PSS_Dalvik(KB)"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    const-string v28, "PSS_Native(KB)"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    const-string v28, "PSS_OtherDev(KB)"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    const-string v28, "PSS_Graphics(KB)"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    const-string v28, "PSS_GL(KB)"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    const-string v28, "PSS_Unknow(KB)"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    sget-object v28, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->memInfoList:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-nez v29, :cond_13

    .line 560
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-static {v0, v1, v13}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 561
    invoke-static {v13}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto/16 :goto_0

    .line 363
    .end local v11    # "fw":Ljava/io/FileWriter;
    .end local v13    # "fwTagFile":Ljava/io/FileWriter;
    .end local v24    # "tagFile":Ljava/io/File;
    .restart local v12    # "fw":Ljava/io/FileWriter;
    :cond_7
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getUnit()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 483
    .end local v21    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v5

    move-object v11, v12

    .line 484
    .end local v12    # "fw":Ljava/io/FileWriter;
    .local v5, "e":Ljava/io/IOException;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    :goto_6
    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 486
    invoke-static {v11}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto/16 :goto_3

    .line 395
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "firstTime":J
    .restart local v12    # "fw":Ljava/io/FileWriter;
    .restart local v18    # "lastTime":J
    .restart local v21    # "sb":Ljava/lang/StringBuffer;
    .restart local v22    # "size":I
    .restart local v26    # "tempRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    :cond_8
    :try_start_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    .line 396
    .local v27, "time":Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    const/16 v30, 0x2000

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_9

    .line 397
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v0, v6, v12}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 398
    new-instance v21, Ljava/lang/StringBuffer;

    .end local v21    # "sb":Ljava/lang/StringBuffer;
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 400
    .restart local v21    # "sb":Ljava/lang/StringBuffer;
    :cond_9
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 401
    const-string v29, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 485
    .end local v8    # "firstTime":J
    .end local v18    # "lastTime":J
    .end local v21    # "sb":Ljava/lang/StringBuffer;
    .end local v22    # "size":I
    .end local v26    # "tempRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    .end local v27    # "time":Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    :catchall_0
    move-exception v28

    move-object v11, v12

    .line 486
    .end local v12    # "fw":Ljava/io/FileWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    :goto_7
    invoke-static {v11}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    .line 487
    throw v28

    .line 405
    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v12    # "fw":Ljava/io/FileWriter;
    .restart local v21    # "sb":Ljava/lang/StringBuffer;
    :cond_a
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v25, v28, v29

    .line 406
    .local v25, "temp":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual/range {v25 .. v25}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v22

    .line 407
    .restart local v22    # "size":I
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecord(I)Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    move-result-object v28

    move-object/from16 v0, v28

    iget-wide v8, v0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->time:J

    .line 408
    .restart local v8    # "firstTime":J
    add-int/lit8 v28, v22, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecord(I)Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    move-result-object v28

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->time:J

    move-wide/from16 v18, v0

    .line 410
    .restart local v18    # "lastTime":J
    const-string v28, "begin date,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-static {v8, v9}, Lcom/tencent/wstt/gt/utils/GTUtils;->getDate(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    const-string v28, "end date,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    invoke-static/range {v18 .. v19}, Lcom/tencent/wstt/gt/utils/GTUtils;->getDate(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    const-string v28, "count,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 418
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_8
    move/from16 v0, v28

    move/from16 v1, v30

    if-lt v0, v1, :cond_b

    .line 426
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 427
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const-string v28, "min,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_9
    move/from16 v0, v28

    move/from16 v1, v30

    if-lt v0, v1, :cond_c

    .line 434
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 435
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    const-string v28, "max,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_a
    move/from16 v0, v28

    move/from16 v1, v30

    if-lt v0, v1, :cond_d

    .line 442
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 443
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    const-string v28, "avg,"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_b
    move/from16 v0, v28

    move/from16 v1, v30

    if-lt v0, v1, :cond_e

    .line 450
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 451
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_c
    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    .line 455
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-lt v0, v1, :cond_f

    .line 454
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 422
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_b
    aget-object v4, v29, v28

    .line 423
    .local v4, "child":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    const-string v31, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_8

    .line 430
    .end local v4    # "child":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_c
    aget-object v4, v29, v28

    .line 431
    .restart local v4    # "child":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMin()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    const-string v31, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 438
    .end local v4    # "child":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_d
    aget-object v4, v29, v28

    .line 439
    .restart local v4    # "child":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMax()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const-string v31, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_a

    .line 446
    .end local v4    # "child":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_e
    aget-object v4, v29, v28

    .line 447
    .restart local v4    # "child":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAve()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    const-string v31, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_b

    .line 456
    .end local v4    # "child":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .restart local v15    # "i":I
    .restart local v16    # "j":I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v28

    aget-object v23, v28, v16

    .line 457
    .local v23, "subEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecord(I)Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    move-result-object v27

    .line 459
    .restart local v27    # "time":Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    const/16 v29, 0x2000

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_10

    .line 460
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0, v6, v12}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 461
    new-instance v21, Ljava/lang/StringBuffer;

    .end local v21    # "sb":Ljava/lang/StringBuffer;
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 464
    .restart local v21    # "sb":Ljava/lang/StringBuffer;
    :cond_10
    if-nez v16, :cond_11

    .line 465
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 470
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 471
    const-string v28, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    :goto_f
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_d

    .line 467
    :cond_11
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->reduce:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 473
    :cond_12
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_f

    .line 502
    .end local v8    # "firstTime":J
    .end local v12    # "fw":Ljava/io/FileWriter;
    .end local v15    # "i":I
    .end local v16    # "j":I
    .end local v18    # "lastTime":J
    .end local v21    # "sb":Ljava/lang/StringBuffer;
    .end local v22    # "size":I
    .end local v23    # "subEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .end local v25    # "temp":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .end local v27    # "time":Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    .restart local v13    # "fwTagFile":Ljava/io/FileWriter;
    .restart local v24    # "tagFile":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 503
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 532
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v21    # "sb":Ljava/lang/StringBuffer;
    :cond_13
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;

    .line 533
    .local v17, "mem":Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    const/16 v30, 0x2000

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_14

    .line 534
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-static {v0, v1, v13}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 535
    new-instance v21, Ljava/lang/StringBuffer;

    .end local v21    # "sb":Ljava/lang/StringBuffer;
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 537
    .restart local v21    # "sb":Ljava/lang/StringBuffer;
    :cond_14
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->time:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveTime(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikHeapSize:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 540
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikAllocated:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 542
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->private_dirty:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 544
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_total:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 546
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Dalvik:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 548
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Native:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 550
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_OtherDev:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 552
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_graphics:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 554
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_gl:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 556
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_UnKnown:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 558
    const-string v29, "\r\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 485
    .end local v13    # "fwTagFile":Ljava/io/FileWriter;
    .end local v17    # "mem":Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    .end local v21    # "sb":Ljava/lang/StringBuffer;
    .end local v24    # "tagFile":Ljava/io/File;
    :catchall_1
    move-exception v28

    goto/16 :goto_7

    .line 483
    :catch_2
    move-exception v5

    goto/16 :goto_6
.end method

.method public static writeGWDataForSM(Lcom/tencent/wstt/gt/log/GWSaveEntry;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 21
    .param p0, "saveEntry"    # Lcom/tencent/wstt/gt/log/GWSaveEntry;
    .param p1, "tte"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    .line 567
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->isSDCardExist()Z

    move-result v18

    if-eqz v18, :cond_0

    if-nez p1, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v18

    if-eqz v18, :cond_0

    .line 573
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v18

    if-eqz v18, :cond_0

    .line 577
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GW_FOLDER:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path1:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path2:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path3:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 577
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 579
    .local v12, "sFolder":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    .local v5, "folder":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 583
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/log/LogUtils;->getTagTimeEntryFileName(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;Lcom/tencent/wstt/gt/log/GWSaveEntry;)Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "fName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 585
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    .line 590
    const/4 v8, 0x0

    .line 593
    .local v8, "fw":Ljava/io/FileWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordList()Ljava/util/ArrayList;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/api/utils/SMUtils;->getSmDetail(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v15

    .line 594
    .local v15, "smrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exInt_1:I

    .line 595
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exInt_2:I

    .line 596
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exInt_3:I

    .line 599
    :try_start_0
    new-instance v9, Ljava/io/FileWriter;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v9, v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    .end local v8    # "fw":Ljava/io/FileWriter;
    .local v9, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 602
    .local v13, "sb":Ljava/lang/StringBuffer;
    const-string v18, "key,"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    const-string v18, "alias,"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAlias()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    const-string v18, "unit,"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getUnit()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v14

    .line 615
    .local v14, "size":I
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecord(I)Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    move-result-object v18

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->time:J

    .line 616
    .local v6, "firstTime":J
    add-int/lit8 v18, v14, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecord(I)Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    move-result-object v18

    move-object/from16 v0, v18

    iget-wide v10, v0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->time:J

    .line 617
    .local v10, "lastTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordList()Ljava/util/ArrayList;

    move-result-object v16

    .line 619
    .local v16, "tempRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    const-string v18, "begin date,"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    invoke-static {v6, v7}, Lcom/tencent/wstt/gt/utils/GTUtils;->getDate(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    const-string v18, "end date,"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    invoke-static {v10, v11}, Lcom/tencent/wstt/gt/utils/GTUtils;->getDate(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    const-string v18, "count,"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 627
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    const-string v18, "bad time,"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exInt_1:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 632
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    const-string v18, "good time,"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exInt_2:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 635
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    const-string v18, "score,"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exInt_3:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 638
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    const-string v18, "min,"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMin()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 642
    const-string v18, "avg,"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAve()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_5

    .line 655
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v18

    if-eqz v18, :cond_4

    .line 656
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 658
    :cond_4
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v3, v9}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 663
    invoke-static {v9}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    move-object v8, v9

    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_0

    .line 647
    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    :cond_5
    :try_start_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    .line 648
    .local v17, "time":Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    const/16 v20, 0x2000

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    .line 649
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v3, v9}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 650
    new-instance v13, Ljava/lang/StringBuffer;

    .end local v13    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 652
    .restart local v13    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 653
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 660
    .end local v6    # "firstTime":J
    .end local v10    # "lastTime":J
    .end local v13    # "sb":Ljava/lang/StringBuffer;
    .end local v14    # "size":I
    .end local v16    # "tempRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    .end local v17    # "time":Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    :catch_0
    move-exception v2

    move-object v8, v9

    .line 661
    .end local v9    # "fw":Ljava/io/FileWriter;
    .local v2, "e":Ljava/io/IOException;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 663
    invoke-static {v8}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto/16 :goto_0

    .line 662
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 663
    :goto_3
    invoke-static {v8}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    .line 664
    throw v18

    .line 662
    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v18

    move-object v8, v9

    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 660
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static varargs writeGWDesc(Lcom/tencent/wstt/gt/log/GWSaveEntry;[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 16
    .param p0, "saveEntry"    # Lcom/tencent/wstt/gt/log/GWSaveEntry;
    .param p1, "ttes"    # [Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    .line 668
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GW_FOLDER:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path1:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path2:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path3:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 668
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 670
    .local v8, "sFolder":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 673
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "gtdesc_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->now:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".txt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "fName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 676
    .local v2, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 678
    .local v5, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 679
    .local v9, "sb":Ljava/lang/StringBuffer;
    const-string v12, "gtdesc:="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->desc:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 681
    const-string v12, "\r\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    const-string v12, "\r\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 683
    const-string v12, "opfiles:="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    const-string v12, "\r\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 686
    const/4 v7, 0x0

    .line 687
    .local v7, "hasValidData":Z
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v13, :cond_1

    .line 698
    if-eqz v7, :cond_0

    .line 700
    new-instance v6, Ljava/io/FileWriter;

    const/4 v12, 0x1

    invoke-direct {v6, v2, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2, v6}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v6

    .line 707
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_0
    invoke-static {v5}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    .line 709
    .end local v7    # "hasValidData":Z
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-void

    .line 687
    .restart local v7    # "hasValidData":Z
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_2
    aget-object v10, p1, v12

    .line 689
    .local v10, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/tencent/wstt/gt/log/LogUtils;->getTagTimeEntryFileName(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;Lcom/tencent/wstt/gt/log/GWSaveEntry;)Ljava/lang/String;

    move-result-object v11

    .line 690
    .local v11, "tteFileName":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v10}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v14

    if-gtz v14, :cond_3

    .line 691
    :cond_2
    invoke-virtual {v10}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v10}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v14

    if-lez v14, :cond_4

    .line 693
    :cond_3
    const/4 v7, 0x1

    .line 694
    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    const-string v14, "\r\n"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 687
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 704
    .end local v7    # "hasValidData":Z
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .end local v11    # "tteFileName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 705
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 707
    invoke-static {v5}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto :goto_1

    .line 706
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 707
    :goto_3
    invoke-static {v5}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    .line 708
    throw v12

    .line 706
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "hasValidData":Z
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 704
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static writeLog(Ljava/util/List;Ljava/io/File;Z)V
    .locals 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/LogEntry;",
            ">;",
            "Ljava/io/File;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/LogEntry;>;"
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->isSDCardExist()Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p2, :cond_1

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 114
    :cond_1
    const/4 v2, 0x0

    .line 116
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    move-object v2, v3

    .line 120
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 124
    invoke-static {v2}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .line 121
    .local v1, "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    iget-object v5, v1, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    invoke-static {v5, p1, v2}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 122
    const-string v5, "\r\n"

    invoke-static {v5, p1, v2}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    goto :goto_2
.end method

.method public static writeLog(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/LogEntry;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/LogEntry;>;"
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->isSDCardExist()Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v2, 0x0

    .line 80
    .local v2, "f":Ljava/io/File;
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "\\"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v2    # "f":Ljava/io/File;
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez p2, :cond_2

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 90
    :cond_2
    const/4 v3, 0x0

    .line 92
    .local v3, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "fw":Ljava/io/FileWriter;
    .local v4, "fw":Ljava/io/FileWriter;
    move-object v3, v4

    .line 97
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 101
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto :goto_0

    .line 83
    .end local v3    # "fw":Ljava/io/FileWriter;
    :cond_3
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    sget-object v5, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_LOG_FOLDER:Ljava/io/File;

    invoke-direct {v2, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2    # "f":Ljava/io/File;
    goto :goto_1

    .line 93
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .line 98
    .local v1, "entry":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    iget-object v6, v1, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    invoke-static {v6, v2, v3}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 99
    const-string v6, "\r\n"

    invoke-static {v6, v2, v3}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    goto :goto_3
.end method

.method private static writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/CharSequence;
    .param p1, "f"    # Ljava/io/File;
    .param p2, "writer"    # Ljava/io/FileWriter;

    .prologue
    .line 862
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 864
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 865
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :cond_0
    :try_start_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 879
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 876
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeTagMemData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->isSDCardExist()Z

    move-result v10

    if-nez v10, :cond_0

    .line 836
    :goto_0
    return-void

    .line 736
    :cond_0
    const-string v10, "."

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 737
    .local v5, "la":I
    if-gez v5, :cond_4

    .line 738
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".csv"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 748
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 749
    .local v1, "f":Ljava/io/File;
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "\\"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 750
    :cond_2
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 759
    .restart local v1    # "f":Ljava/io/File;
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 760
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 763
    :cond_3
    const/4 v3, 0x0

    .line 765
    .local v3, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const/4 v10, 0x1

    invoke-direct {v4, v1, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "fw":Ljava/io/FileWriter;
    .local v4, "fw":Ljava/io/FileWriter;
    move-object v3, v4

    .line 770
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :goto_3
    const/4 v8, 0x0

    .line 772
    .local v8, "sb":Ljava/lang/StringBuffer;
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 773
    .restart local v8    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 774
    const-string v10, "\r\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 775
    const-string v10, "time(ms)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 776
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 777
    const-string v10, "DalvikHeapSize(KB)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 778
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 779
    const-string v10, "DalvikAllocated(KB)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 780
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    const-string v10, "NativeHeapSize(KB)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 782
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 783
    const-string v10, "NativeAllocated(KB)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 784
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 785
    const-string v10, "private_dirty(KB)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 786
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    const-string v10, "PSS_Total(KB)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    const-string v10, "PSS_Dalvik(KB)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 790
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 791
    const-string v10, "PSS_Native(KB)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 792
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    const-string v10, "PSS_OtherDev(KB)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 794
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    const-string v10, "PSS_Graphics(KB)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    const-string v10, "PSS_GL(KB)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    const-string v10, "PSS_Unknow(KB)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    const-string v10, "\r\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    sget-object v10, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->memInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_7

    .line 834
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1, v3}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 835
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto/16 :goto_0

    .line 740
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 741
    .local v9, "temp":Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "\\"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 743
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".csv"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 752
    .end local v9    # "temp":Ljava/lang/String;
    .restart local v1    # "f":Ljava/io/File;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GW_MAN_FOLDER:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 753
    .local v7, "parentFolder":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 756
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "f":Ljava/io/File;
    goto/16 :goto_2

    .line 766
    .end local v2    # "folder":Ljava/io/File;
    .end local v7    # "parentFolder":Ljava/lang/String;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 802
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;

    .line 803
    .local v6, "mem":Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/16 v12, 0x2000

    if-le v11, v12, :cond_8

    .line 804
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1, v3}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 805
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 807
    .restart local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_8
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->time:J

    invoke-static {v12, v13}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 809
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikHeapSize:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 810
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 811
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikAllocated:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 812
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 813
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->nativeHeapSize:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 814
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 815
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->nativeAllocated:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 816
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->private_dirty:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 818
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_total:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 820
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 821
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Dalvik:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 822
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Native:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 824
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_OtherDev:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 826
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 827
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_graphics:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 828
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 829
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_gl:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 830
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 831
    iget-wide v12, v6, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_UnKnown:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 832
    const-string v11, "\r\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4
.end method

.method public static writeTimeDetail(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;Ljava/lang/String;)V
    .locals 18
    .param p0, "tte"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->isSDCardExist()Z

    move-result v13

    if-nez v13, :cond_0

    .line 320
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string v13, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 232
    .local v8, "la":I
    if-gez v8, :cond_7

    .line 233
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".csv"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 244
    .local v3, "f":Ljava/io/File;
    const-string v13, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "\\"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 245
    :cond_2
    new-instance v3, Ljava/io/File;

    .end local v3    # "f":Ljava/io/File;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .restart local v3    # "f":Ljava/io/File;
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 252
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 255
    :cond_3
    const/4 v4, 0x0

    .line 257
    .local v4, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    const/4 v13, 0x1

    invoke-direct {v5, v3, v13}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "fw":Ljava/io/FileWriter;
    .local v5, "fw":Ljava/io/FileWriter;
    move-object v4, v5

    .line 262
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :goto_3
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v9, "sb":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getParent()Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getParent()Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v13

    instance-of v13, v13, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    if-eqz v13, :cond_4

    .line 265
    const-string v13, "group,"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getParent()Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v13

    invoke-virtual {v13}, Lcom/tencent/wstt/gt/ui/model/NamedEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    const-string v13, "\r\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    :cond_4
    const-string v13, "tag,"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    const-string v13, "\r\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    const-string v13, "isInThread,"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getTid()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_a

    const-string v13, "false"

    :goto_4
    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    const-string v13, "\r\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v13

    if-nez v13, :cond_d

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_b

    .line 313
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v13

    if-eqz v13, :cond_6

    .line 314
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 316
    :cond_6
    const-string v13, "\r\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3, v4}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 319
    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto/16 :goto_0

    .line 235
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fw":Ljava/io/FileWriter;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 236
    .local v11, "temp":Ljava/lang/String;
    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "\\"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 238
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".csv"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 247
    .end local v11    # "temp":Ljava/lang/String;
    .restart local v3    # "f":Ljava/io/File;
    :cond_9
    sget-object v13, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_TIME_FOLDER:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 248
    new-instance v3, Ljava/io/File;

    .end local v3    # "f":Ljava/io/File;
    sget-object v13, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_TIME_FOLDER:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v3    # "f":Ljava/io/File;
    goto/16 :goto_2

    .line 258
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 273
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    :cond_a
    const-string v13, "true"

    goto :goto_4

    .line 277
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    .line 278
    .local v12, "time":Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    const/16 v15, 0x2000

    if-le v14, v15, :cond_c

    .line 279
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3, v4}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 280
    new-instance v9, Ljava/lang/StringBuffer;

    .end local v9    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    :cond_c
    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 283
    const-string v14, "\r\n"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 287
    .end local v12    # "time":Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    :cond_d
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v13

    if-ge v6, v13, :cond_5

    .line 288
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v13

    array-length v13, v13

    if-lt v7, v13, :cond_e

    .line 287
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 289
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v13

    aget-object v10, v13, v7

    .line 291
    .local v10, "subEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v10, v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecord(I)Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    move-result-object v12

    .line 293
    .restart local v12    # "time":Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    const/16 v14, 0x2000

    if-le v13, v14, :cond_f

    .line 294
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3, v4}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 295
    new-instance v9, Ljava/lang/StringBuffer;

    .end local v9    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 298
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    :cond_f
    if-nez v7, :cond_10

    .line 299
    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 304
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    if-ne v7, v13, :cond_11

    .line 305
    const-string v13, "\r\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 301
    :cond_10
    iget-wide v14, v12, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->reduce:J

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 307
    :cond_11
    const-string v13, ","

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9
.end method

.method public static writeTimeLog(Ljava/util/List;Ljava/lang/String;)V
    .locals 20
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;>;"
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->isSDCardExist()Z

    move-result v13

    if-nez v13, :cond_0

    .line 223
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v13, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 156
    .local v7, "la":I
    if-gez v7, :cond_5

    .line 157
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".csv"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 168
    .local v3, "f":Ljava/io/File;
    const-string v13, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "\\"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 169
    :cond_2
    new-instance v3, Ljava/io/File;

    .end local v3    # "f":Ljava/io/File;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .restart local v3    # "f":Ljava/io/File;
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 176
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 179
    :cond_3
    const/4 v4, 0x0

    .line 181
    .local v4, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    const/4 v13, 0x1

    invoke-direct {v5, v3, v13}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "fw":Ljava/io/FileWriter;
    .local v5, "fw":Ljava/io/FileWriter;
    move-object v4, v5

    .line 186
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :goto_3
    const/4 v8, 0x0

    .line 188
    .local v8, "sb":Ljava/lang/StringBuffer;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_8

    .line 222
    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto :goto_0

    .line 159
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fw":Ljava/io/FileWriter;
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, "temp":Ljava/lang/String;
    const-string v13, "/"

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "\\"

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 162
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".csv"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 171
    .end local v9    # "temp":Ljava/lang/String;
    .restart local v3    # "f":Ljava/io/File;
    :cond_7
    sget-object v13, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_TIME_FOLDER:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 172
    new-instance v3, Ljava/io/File;

    .end local v3    # "f":Ljava/io/File;
    sget-object v13, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_TIME_FOLDER:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v3    # "f":Ljava/io/File;
    goto :goto_2

    .line 182
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 188
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    .line 189
    .local v6, "gte":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    invoke-virtual {v6}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->entrys()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 190
    .local v12, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .restart local v8    # "sb":Ljava/lang/StringBuffer;
    const-string v13, "group,"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v6}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string v13, "\r\n"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    const-string v13, "tag,"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v12}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    const-string v13, "\r\n"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string v13, "isInThread,"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v12}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getTid()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-nez v13, :cond_a

    const-string v13, "false"

    :goto_5
    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v13, "\r\n"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v12}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordList()Ljava/util/ArrayList;

    move-result-object v10

    .line 203
    .local v10, "tempRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_b

    .line 213
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    .line 214
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 216
    :cond_9
    const/4 v10, 0x0

    .line 217
    const-string v13, "\r\n"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3, v4}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    goto :goto_4

    .line 198
    .end local v10    # "tempRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    :cond_a
    const-string v13, "true"

    goto :goto_5

    .line 203
    .restart local v10    # "tempRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    .line 204
    .local v11, "time":Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    const/16 v17, 0x2000

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_c

    .line 205
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v3, v4}, Lcom/tencent/wstt/gt/log/LogUtils;->writeNotClose(Ljava/lang/CharSequence;Ljava/io/File;Ljava/io/FileWriter;)V

    .line 206
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    .restart local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_c
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 210
    const-string v16, "\r\n"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6
.end method
