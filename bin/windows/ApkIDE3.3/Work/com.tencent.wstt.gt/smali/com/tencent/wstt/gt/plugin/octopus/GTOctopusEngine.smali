.class public Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;
.super Lcom/tencent/wstt/gt/plugin/BaseService;
.source "GTOctopusEngine.java"

# interfaces
.implements Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;


# static fields
.field private static INSTANCE:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/BaseService;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->listeners:Ljava/util/List;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct/range {p0 .. p11}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->upload(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getFilesFromPaths([Ljava/lang/String;)[Ljava/io/File;
    .locals 7
    .param p0, "paths"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    array-length v5, p0

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 236
    new-array v3, v4, [Ljava/io/File;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/io/File;

    return-object v3

    .line 228
    :cond_0
    aget-object v2, p0, v3

    .line 230
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    .line 65
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    return-object v0
.end method

.method private upload(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "filePaths"    # [Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "productName"    # Ljava/lang/String;
    .param p5, "path1"    # Ljava/lang/String;
    .param p6, "path2"    # Ljava/lang/String;
    .param p7, "path3"    # Ljava/lang/String;
    .param p8, "uin"    # Ljava/lang/String;
    .param p9, "sk"    # Ljava/lang/String;
    .param p10, "psk"    # Ljava/lang/String;
    .param p11, "lsk"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v12, "folder":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 181
    invoke-static/range {p2 .. p2}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->getFilesFromPaths([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 182
    .local v2, "csvfiles":[Ljava/io/File;
    sget-object v3, Lcom/tencent/wstt/gt/utils/FileUtil;->DESC_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {v12, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 184
    .local v1, "descfiles":[Ljava/io/File;
    array-length v3, v2

    if-lez v3, :cond_5

    .line 187
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    const/4 v4, 0x2

    aput-object p5, v3, v4

    const/4 v4, 0x3

    aput-object p6, v3, v4

    const/4 v4, 0x4

    aput-object p7, v3, v4

    const/4 v4, 0x5

    aput-object p8, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->valid([Ljava/io/File;[Ljava/io/File;[Ljava/lang/String;)Lmqq/sdet/gt/protocol/SimpleValidBean;

    move-result-object v15

    .line 188
    .local v15, "valid":Lmqq/sdet/gt/protocol/SimpleValidBean;
    invoke-virtual {v15}, Lmqq/sdet/gt/protocol/SimpleValidBean;->getRetCode()I

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 223
    .end local v1    # "descfiles":[Ljava/io/File;
    .end local v2    # "csvfiles":[Ljava/io/File;
    .end local v15    # "valid":Lmqq/sdet/gt/protocol/SimpleValidBean;
    :cond_0
    return-void

    .line 176
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;

    .line 178
    .local v13, "listener":Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;->onStartUpload(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v13    # "listener":Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;
    .restart local v1    # "descfiles":[Ljava/io/File;
    .restart local v2    # "csvfiles":[Ljava/io/File;
    .restart local v15    # "valid":Lmqq/sdet/gt/protocol/SimpleValidBean;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;

    .line 192
    .restart local v13    # "listener":Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;
    invoke-virtual {v15}, Lmqq/sdet/gt/protocol/SimpleValidBean;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;->onUploadFail(Ljava/lang/String;)V

    goto :goto_1

    .end local v13    # "listener":Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;
    :cond_3
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 197
    invoke-static/range {v1 .. v11}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;->uploadFile([Ljava/io/File;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 199
    .local v14, "ret":I
    if-nez v14, :cond_4

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;

    .line 203
    .restart local v13    # "listener":Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;
    invoke-interface {v13}, Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;->onUploadSucess()V

    goto :goto_2

    .line 209
    .end local v13    # "listener":Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;

    .line 211
    .restart local v13    # "listener":Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;
    invoke-static {v14}, Lmqq/sdet/gt/protocol/Code;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;->onUploadFail(Ljava/lang/String;)V

    goto :goto_3

    .line 217
    .end local v13    # "listener":Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;
    .end local v14    # "ret":I
    .end local v15    # "valid":Lmqq/sdet/gt/protocol/SimpleValidBean;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;

    .line 219
    .restart local v13    # "listener":Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;
    const/16 v4, 0x452

    invoke-static {v4}, Lmqq/sdet/gt/protocol/Code;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;->onUploadFail(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static varargs valid([Ljava/io/File;[Ljava/io/File;[Ljava/lang/String;)Lmqq/sdet/gt/protocol/SimpleValidBean;
    .locals 10
    .param p0, "descFiles"    # [Ljava/io/File;
    .param p1, "csvFiles"    # [Ljava/io/File;
    .param p2, "strs"    # [Ljava/lang/String;

    .prologue
    const/16 v7, 0x65

    const/4 v3, 0x0

    .line 241
    new-instance v1, Lmqq/sdet/gt/protocol/SimpleValidBean;

    invoke-direct {v1}, Lmqq/sdet/gt/protocol/SimpleValidBean;-><init>()V

    .line 242
    .local v1, "ret":Lmqq/sdet/gt/protocol/SimpleValidBean;
    invoke-virtual {v1, v3}, Lmqq/sdet/gt/protocol/SimpleValidBean;->setRetCode(I)V

    .line 244
    array-length v5, p2

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_1

    .line 253
    if-nez p1, :cond_3

    .line 255
    const/16 v3, 0x4b1

    invoke-virtual {v1, v3}, Lmqq/sdet/gt/protocol/SimpleValidBean;->setRetCode(I)V

    .line 256
    sget-object v3, Lmqq/sdet/gt/protocol/ErrorMsg;->NOT_VALID_LETTER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmqq/sdet/gt/protocol/SimpleValidBean;->setErrorMsg(Ljava/lang/String;)V

    .line 284
    :cond_0
    :goto_1
    return-object v1

    .line 244
    :cond_1
    aget-object v2, p2, v4

    .line 246
    .local v2, "s":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 248
    invoke-virtual {v1, v7}, Lmqq/sdet/gt/protocol/SimpleValidBean;->setRetCode(I)V

    .line 249
    sget-object v3, Lmqq/sdet/gt/protocol/ErrorMsg;->NULL_PARAM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmqq/sdet/gt/protocol/SimpleValidBean;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    array-length v5, p2

    move v4, v3

    :goto_2
    if-lt v4, v5, :cond_4

    .line 268
    array-length v4, p1

    int-to-long v4, v4

    const-wide/16 v6, 0x28

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 270
    const/16 v3, 0x3e9

    invoke-virtual {v1, v3}, Lmqq/sdet/gt/protocol/SimpleValidBean;->setRetCode(I)V

    .line 271
    sget-object v3, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_FILE_NUM_OVER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmqq/sdet/gt/protocol/SimpleValidBean;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    :cond_4
    aget-object v2, p2, v4

    .line 261
    .restart local v2    # "s":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/wstt/gt/utils/StringUtil;->isLetter(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 263
    invoke-virtual {v1, v7}, Lmqq/sdet/gt/protocol/SimpleValidBean;->setRetCode(I)V

    .line 264
    sget-object v3, Lmqq/sdet/gt/protocol/ErrorMsg;->NULL_PARAM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmqq/sdet/gt/protocol/SimpleValidBean;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 274
    .end local v2    # "s":Ljava/lang/String;
    :cond_6
    array-length v4, p1

    :goto_3
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 276
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x400000

    cmp-long v5, v6, v8

    if-lez v5, :cond_7

    .line 278
    const/16 v3, 0x3ea

    invoke-virtual {v1, v3}, Lmqq/sdet/gt/protocol/SimpleValidBean;->setRetCode(I)V

    .line 279
    sget-object v3, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_FILE_SIZE_OVER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmqq/sdet/gt/protocol/SimpleValidBean;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 274
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const-string v8, "cmd"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "cmd":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v8, "start"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 85
    const-string v8, "srcFolder"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "folderPath":Ljava/lang/String;
    const-string v8, "upload_product_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "productId":Ljava/lang/String;
    const-string v8, "upload_product_name"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "productName":Ljava/lang/String;
    const-string v8, "upload_product_version"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "path1":Ljava/lang/String;
    const-string v8, "upload_feature"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "path2":Ljava/lang/String;
    const-string v8, "upload_path3"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "path3":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 94
    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 97
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "srcFolder"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v8, "upload_product_id"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v8, "upload_product_name"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v8, "upload_product_version"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v8, "upload_feature"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v8, "upload_path3"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v8

    invoke-virtual {v8, p0, v2}, Lcom/tencent/wstt/gt/plugin/PluginControler;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;

    .line 108
    .end local v1    # "folderPath":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "path1":Ljava/lang/String;
    .end local v4    # "path2":Ljava/lang/String;
    .end local v5    # "path3":Ljava/lang/String;
    .end local v6    # "productId":Ljava/lang/String;
    .end local v7    # "productName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onBind()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/plugin/BaseService;->onCreate(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/tencent/wstt/gt/plugin/BaseService;->onDestroy()V

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    .line 153
    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/plugin/BaseService;->onStart(Landroid/content/Intent;)V

    .line 118
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v0, "srcFolder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "srcFolder":Ljava/lang/String;
    const-string v0, "file_array"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "files":[Ljava/lang/String;
    const-string v0, "upload_product_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "productId":Ljava/lang/String;
    const-string v0, "upload_product_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "productName":Ljava/lang/String;
    const-string v0, "upload_product_version"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "path1":Ljava/lang/String;
    const-string v0, "upload_feature"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "path2":Ljava/lang/String;
    const-string v0, "upload_path3"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "path3":Ljava/lang/String;
    const-string v0, "qq_uin"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, "uin":Ljava/lang/String;
    const-string v0, "qq_sk"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, "sk":Ljava/lang/String;
    const-string v0, "qq_psk"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, "psk":Ljava/lang/String;
    const-string v0, "qq_lsk"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 136
    .local v12, "lsk":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    .line 141
    new-instance v13, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v13, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public declared-synchronized removeListener(Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
