.class Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;
.super Ljava/lang/Object;
.source "ProcessUtils.java"

# interfaces
.implements Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/api/utils/ProcessUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Process5x"
.end annotation


# instance fields
.field private isRootcheckedResult:Z

.field private procInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private uidPkgCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->isRootcheckedResult:Z

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->procInfoCache:Ljava/util/Map;

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->uidPkgCache:Landroid/util/SparseArray;

    .line 246
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->procInfoCache:Ljava/util/Map;

    return-object v0
.end method

.method private getUidPkgCache()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->uidPkgCache:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public getAllRunningAppProcessInfo()Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v5, "appProcessList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    const/16 v27, -0x1

    .line 266
    .local v27, "zygotePid":I
    const/16 v28, -0x1

    .line 268
    .local v28, "zygotePid64":I
    const/16 v24, 0x0

    .line 270
    .local v24, "readerZ":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 271
    .local v12, "execBuilderZ":Ljava/lang/ProcessBuilder;
    :try_start_0
    new-instance v13, Ljava/lang/ProcessBuilder;

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "sh"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const-string v31, "-c"

    aput-object v31, v29, v30

    const/16 v30, 0x2

    const-string v31, "ps |grep zygote"

    aput-object v31, v29, v30

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .end local v12    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    .local v13, "execBuilderZ":Ljava/lang/ProcessBuilder;
    const/16 v29, 0x1

    :try_start_1
    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 273
    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v14

    .line 274
    .local v14, "execZ":Ljava/lang/Process;
    invoke-virtual {v14}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 275
    .local v16, "isZ":Ljava/io/InputStream;
    new-instance v25, Ljava/io/BufferedReader;

    .line 276
    new-instance v29, Ljava/io/InputStreamReader;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 275
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    .end local v24    # "readerZ":Ljava/io/BufferedReader;
    .local v25, "readerZ":Ljava/io/BufferedReader;
    :try_start_2
    const-string v18, ""

    .line 279
    .local v18, "lineZ":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v18

    if-nez v18, :cond_1

    .line 296
    invoke-static/range {v25 .. v25}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    move-object/from16 v24, v25

    .line 298
    .end local v13    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    .end local v14    # "execZ":Ljava/lang/Process;
    .end local v16    # "isZ":Ljava/io/InputStream;
    .end local v18    # "lineZ":Ljava/lang/String;
    .end local v25    # "readerZ":Ljava/io/BufferedReader;
    .restart local v24    # "readerZ":Ljava/io/BufferedReader;
    :goto_1
    if-gez v27, :cond_3

    .line 340
    :goto_2
    return-object v5

    .line 280
    .end local v24    # "readerZ":Ljava/io/BufferedReader;
    .restart local v13    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    .restart local v14    # "execZ":Ljava/lang/Process;
    .restart local v16    # "isZ":Ljava/io/InputStream;
    .restart local v18    # "lineZ":Ljava/lang/String;
    .restart local v25    # "readerZ":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string v30, "\\s+"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, "arrayZ":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v29, v0

    const/16 v30, 0x9

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_0

    .line 282
    const/16 v29, 0x8

    aget-object v29, v7, v29

    const-string v30, "zygote"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 284
    const/16 v29, 0x1

    aget-object v29, v7, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 285
    goto :goto_0

    .line 286
    :cond_2
    const/16 v29, 0x8

    aget-object v29, v7, v29

    const-string v30, "zygote64"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 288
    const/16 v29, 0x1

    aget-object v29, v7, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v28

    goto :goto_0

    .line 293
    .end local v7    # "arrayZ":[Ljava/lang/String;
    .end local v13    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    .end local v14    # "execZ":Ljava/lang/Process;
    .end local v16    # "isZ":Ljava/io/InputStream;
    .end local v18    # "lineZ":Ljava/lang/String;
    .end local v25    # "readerZ":Ljava/io/BufferedReader;
    .restart local v12    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    .restart local v24    # "readerZ":Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    .line 294
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto :goto_1

    .line 295
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    :catchall_0
    move-exception v29

    .line 296
    :goto_4
    invoke-static/range {v24 .. v24}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 297
    throw v29

    .line 304
    :cond_3
    const/16 v22, 0x0

    .line 306
    .local v22, "reader":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 307
    .local v10, "execBuilder":Ljava/lang/ProcessBuilder;
    :try_start_5
    new-instance v11, Ljava/lang/ProcessBuilder;

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "sh"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const-string v31, "-c"

    aput-object v31, v29, v30

    const/16 v30, 0x2

    const-string v31, "ps |grep u0_a"

    aput-object v31, v29, v30

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 308
    .end local v10    # "execBuilder":Ljava/lang/ProcessBuilder;
    .local v11, "execBuilder":Ljava/lang/ProcessBuilder;
    const/16 v29, 0x1

    :try_start_6
    move/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 309
    const/4 v9, 0x0

    .line 310
    .local v9, "exec":Ljava/lang/Process;
    invoke-virtual {v11}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v9

    .line 311
    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 312
    .local v15, "is":Ljava/io/InputStream;
    new-instance v23, Ljava/io/BufferedReader;

    .line 313
    new-instance v29, Ljava/io/InputStreamReader;

    move-object/from16 v0, v29

    invoke-direct {v0, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 312
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 315
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .local v23, "reader":Ljava/io/BufferedReader;
    :try_start_7
    const-string v17, ""

    .line 316
    .local v17, "line":Ljava/lang/String;
    :cond_4
    :goto_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v17

    if-nez v17, :cond_5

    .line 337
    invoke-static/range {v23 .. v23}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 317
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string v30, "\\s+"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "array":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v29, v0

    const/16 v30, 0x9

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_4

    .line 319
    const/16 v29, 0x0

    aget-object v29, v6, v29

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    add-int/lit16 v0, v0, 0x2710

    move/from16 v26, v0

    .line 320
    .local v26, "uid":I
    const/16 v29, 0x1

    aget-object v29, v6, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 321
    .local v20, "pid":I
    const/16 v29, 0x2

    aget-object v29, v6, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 323
    .local v21, "ppid":I
    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 325
    :cond_6
    new-instance v19, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    const/16 v29, 0x8

    aget-object v29, v6, v29

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v29

    move/from16 v3, v21

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;-><init>(ILjava/lang/String;II)V

    .line 326
    .local v19, "pi":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->procInfoCache:Ljava/util/Map;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    aget-object v30, v6, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    .line 332
    .end local v6    # "array":[Ljava/lang/String;
    .end local v17    # "line":Ljava/lang/String;
    .end local v19    # "pi":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    .end local v20    # "pid":I
    .end local v21    # "ppid":I
    .end local v26    # "uid":I
    :catch_1
    move-exception v8

    move-object v10, v11

    .end local v11    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v10    # "execBuilder":Ljava/lang/ProcessBuilder;
    move-object/from16 v22, v23

    .line 333
    .end local v9    # "exec":Ljava/lang/Process;
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    :goto_6
    :try_start_9
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 337
    invoke-static/range {v22 .. v22}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto/16 :goto_2

    .line 336
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "execBuilder":Ljava/lang/ProcessBuilder;
    :catchall_1
    move-exception v29

    .line 337
    :goto_7
    invoke-static/range {v22 .. v22}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 338
    throw v29

    .line 336
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "exec":Ljava/lang/Process;
    .restart local v11    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v29

    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 332
    .end local v9    # "exec":Ljava/lang/Process;
    .end local v11    # "execBuilder":Ljava/lang/ProcessBuilder;
    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v10    # "execBuilder":Ljava/lang/ProcessBuilder;
    :catch_2
    move-exception v8

    goto :goto_6

    .end local v10    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v11    # "execBuilder":Ljava/lang/ProcessBuilder;
    :catch_3
    move-exception v8

    move-object v10, v11

    .end local v11    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v10    # "execBuilder":Ljava/lang/ProcessBuilder;
    goto :goto_6

    .line 295
    .end local v10    # "execBuilder":Ljava/lang/ProcessBuilder;
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .end local v24    # "readerZ":Ljava/io/BufferedReader;
    .restart local v13    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    .restart local v14    # "execZ":Ljava/lang/Process;
    .restart local v16    # "isZ":Ljava/io/InputStream;
    .restart local v25    # "readerZ":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v29

    move-object/from16 v24, v25

    .end local v25    # "readerZ":Ljava/io/BufferedReader;
    .restart local v24    # "readerZ":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 293
    .end local v14    # "execZ":Ljava/lang/Process;
    .end local v16    # "isZ":Ljava/io/InputStream;
    :catch_4
    move-exception v8

    move-object v12, v13

    .end local v13    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    .restart local v12    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    goto/16 :goto_3

    .end local v12    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    .end local v24    # "readerZ":Ljava/io/BufferedReader;
    .restart local v13    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    .restart local v14    # "execZ":Ljava/lang/Process;
    .restart local v16    # "isZ":Ljava/io/InputStream;
    .restart local v25    # "readerZ":Ljava/io/BufferedReader;
    :catch_5
    move-exception v8

    move-object v12, v13

    .end local v13    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    .restart local v12    # "execBuilderZ":Ljava/lang/ProcessBuilder;
    move-object/from16 v24, v25

    .end local v25    # "readerZ":Ljava/io/BufferedReader;
    .restart local v24    # "readerZ":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public getPackageByUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->uidPkgCache:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->initUidPkgCache()Z

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->uidPkgCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProcessPID(Ljava/lang/String;)I
    .locals 5
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v2, -0x1

    .line 355
    .local v2, "pId":I
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->getAllRunningAppProcessInfo()Ljava/util/List;

    move-result-object v0

    .line 356
    .local v0, "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 362
    :goto_0
    return v2

    .line 356
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    .line 357
    .local v1, "info":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    iget-object v4, v1, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    iget v2, v1, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    .line 359
    goto :goto_0
.end method

.method public getProcessUID(Ljava/lang/String;)I
    .locals 6
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 367
    const/4 v3, 0x0

    .line 368
    .local v3, "uId":I
    iget-object v4, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->procInfoCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->getAllRunningAppProcessInfo()Ljava/util/List;

    move-result-object v0

    .line 372
    .local v0, "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 402
    .end local v0    # "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    :goto_0
    return v3

    .line 372
    .restart local v0    # "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    .line 373
    .local v1, "pi":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    iget-object v5, v1, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 375
    iget v3, v1, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->uid:I

    .line 376
    goto :goto_0

    .line 382
    .end local v0    # "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    .end local v1    # "pi":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    :cond_2
    iget-object v4, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->procInfoCache:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    .line 388
    .restart local v1    # "pi":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    if-nez v1, :cond_4

    .line 390
    iget-object v4, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->procInfoCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 400
    :cond_4
    :goto_1
    if-nez v1, :cond_6

    const/4 v3, -0x1

    :goto_2
    goto :goto_0

    .line 390
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    .line 392
    .local v2, "tpi":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    iget-object v5, v2, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 394
    move-object v1, v2

    .line 395
    iget-object v4, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->procInfoCache:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 400
    .end local v2    # "tpi":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    :cond_6
    iget v3, v1, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->uid:I

    goto :goto_2
.end method

.method public hasProcessRunPkg(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 407
    if-nez p1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v5

    .line 408
    :cond_1
    const/4 v4, -0x1

    .line 410
    .local v4, "uid":I
    invoke-direct {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->getUidPkgCache()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 412
    .local v3, "len":I
    if-eqz v3, :cond_5

    .line 414
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_3

    .line 423
    :goto_2
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->getAllRunningAppProcessInfo()Ljava/util/List;

    move-result-object v0

    .line 425
    .local v0, "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    .line 426
    .local v2, "info":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    iget v8, v2, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->uid:I

    if-ne v8, v4, :cond_2

    move v5, v6

    .line 428
    goto :goto_0

    .line 416
    .end local v0    # "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    .end local v2    # "info":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    :cond_3
    invoke-direct {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->getUidPkgCache()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 418
    invoke-direct {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->getUidPkgCache()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 419
    goto :goto_2

    .line 414
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 435
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->getAllRunningAppProcessInfo()Ljava/util/List;

    move-result-object v0

    .line 436
    .restart local v0    # "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    .line 437
    .restart local v2    # "info":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    iget-object v8, v2, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v5, v6

    .line 439
    goto :goto_0
.end method

.method public initUidPkgCache()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 485
    iget-boolean v8, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->isRootcheckedResult:Z

    if-nez v8, :cond_0

    .line 527
    :goto_0
    return v6

    .line 490
    :cond_0
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->uidPkgCache:Landroid/util/SparseArray;

    .line 491
    const-string v3, "/data/system/packages.list"

    .line 493
    .local v3, "pkgListPath":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "chmod 777 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/wstt/gt/api/utils/CMDExecute;->doCmd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "temp":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 511
    iget-object v8, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->uidPkgCache:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 513
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->isRootcheckedResult:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 524
    invoke-static {v1}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto :goto_0

    .line 494
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 495
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "root needed!"

    invoke-static {v7, v8}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 496
    iput-boolean v6, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->isRootcheckedResult:Z

    goto :goto_0

    .line 504
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "temp":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 505
    .local v5, "tempArray":[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-le v8, v9, :cond_1

    .line 506
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Lcom/tencent/wstt/gt/utils/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 507
    iget-object v8, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->uidPkgCache:Landroid/util/SparseArray;

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 517
    .end local v4    # "temp":Ljava/lang/String;
    .end local v5    # "tempArray":[Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v1

    .line 518
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 519
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->isRootcheckedResult:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 524
    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto :goto_0

    .line 523
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 524
    :goto_3
    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 525
    throw v6

    .line 524
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "temp":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 526
    iput-boolean v7, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->isRootcheckedResult:Z

    move v6, v7

    .line 527
    goto/16 :goto_0

    .line 523
    .end local v4    # "temp":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 517
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public isProcessAlive(Ljava/lang/String;)Z
    .locals 14
    .param p1, "sPid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 448
    const/4 v5, 0x0

    .line 449
    .local v5, "isAlive":Z
    if-eqz p1, :cond_0

    .line 451
    const/4 v7, 0x0

    .line 453
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 454
    .local v2, "execBuilder":Ljava/lang/ProcessBuilder;
    :try_start_0
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "sh"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "-c"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "cd proc/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v3, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    .end local v2    # "execBuilder":Ljava/lang/ProcessBuilder;
    .local v3, "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v10, 0x1

    :try_start_1
    invoke-virtual {v3, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 456
    const/4 v1, 0x0

    .line 457
    .local v1, "exec":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 458
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 459
    .local v4, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedReader;

    .line 460
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 459
    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 463
    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 471
    invoke-static {v8}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    move v5, v9

    .line 475
    .end local v1    # "exec":Ljava/lang/Process;
    .end local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "isAlive":Z
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return v5

    .line 466
    .restart local v2    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v5    # "isAlive":Z
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 471
    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto :goto_0

    .line 470
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "execBuilder":Ljava/lang/ProcessBuilder;
    :catchall_0
    move-exception v9

    .line 471
    :goto_2
    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 472
    throw v9

    .line 471
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "exec":Ljava/lang/Process;
    .restart local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_1
    invoke-static {v8}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto :goto_0

    .line 470
    .end local v6    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 466
    .end local v1    # "exec":Ljava/lang/Process;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v2    # "execBuilder":Ljava/lang/ProcessBuilder;
    goto :goto_1

    .end local v2    # "execBuilder":Ljava/lang/ProcessBuilder;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "exec":Ljava/lang/Process;
    .restart local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v2    # "execBuilder":Ljava/lang/ProcessBuilder;
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public killprocess(Ljava/lang/String;I)V
    .locals 0
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "cmd"    # I

    .prologue
    .line 480
    # invokes: Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->killprocessNormal(Ljava/lang/String;I)V
    invoke-static {p1, p2}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->access$0(Ljava/lang/String;I)V

    .line 481
    return-void
.end method
