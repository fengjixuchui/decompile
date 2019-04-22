.class public Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;
.super Ljava/lang/Object;
.source "HttpAssist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;
    }
.end annotation


# static fields
.field private static final CHARSET:Ljava/lang/String; = "utf-8"

.field private static final TIME_OUT:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doUpload([Ljava/io/File;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 47
    .param p0, "descfiles"    # [Ljava/io/File;
    .param p1, "csvFiles"    # [Ljava/io/File;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "product"    # Ljava/lang/String;
    .param p4, "path1"    # Ljava/lang/String;
    .param p5, "path2"    # Ljava/lang/String;
    .param p6, "path3"    # Ljava/lang/String;
    .param p7, "uin"    # Ljava/lang/String;
    .param p8, "sk"    # Ljava/lang/String;
    .param p9, "psk"    # Ljava/lang/String;
    .param p10, "lsk"    # Ljava/lang/String;

    .prologue
    .line 312
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v43, v0

    if-nez v43, :cond_1

    .line 314
    :cond_0
    const/16 v36, 0x452

    .line 612
    :goto_0
    return v36

    .line 317
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "BOUNDARY":Ljava/lang/String;
    const-string v6, "--"

    .local v6, "PREFIX":Ljava/lang/String;
    const-string v5, "\r\n"

    .line 319
    .local v5, "LINE_END":Ljava/lang/String;
    const-string v4, "multipart/form-data"

    .line 322
    .local v4, "CONTENT_TYPE":Ljava/lang/String;
    const-string v7, "http://gt.qq.com/GTAppServer/user/upload"

    .line 324
    .local v7, "RequestURL":Ljava/lang/String;
    :try_start_0
    new-instance v42, Ljava/net/URL;

    move-object/from16 v0, v42

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 325
    .local v42, "url":Ljava/net/URL;
    invoke-virtual/range {v42 .. v42}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljava/net/HttpURLConnection;

    .line 326
    .local v14, "conn":Ljava/net/HttpURLConnection;
    const/16 v43, 0x2710

    move/from16 v0, v43

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 327
    const/16 v43, 0x2710

    move/from16 v0, v43

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 328
    const/16 v43, 0x1

    move/from16 v0, v43

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 329
    const/16 v43, 0x1

    move/from16 v0, v43

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 330
    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 331
    const-string v43, "POST"

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 332
    const-string v43, "Charset"

    const-string v44, "utf-8"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v14, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v43, "Content-Type"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v45, ";boundary="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v14, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v43, "Cookie"

    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, " uin=o0"

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ";"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " p_luin=o0"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ";"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " p_lskey="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ";"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v14, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v29

    .line 338
    .local v29, "outputSteam":Ljava/io/OutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 339
    .local v16, "dos":Ljava/io/DataOutputStream;
    new-instance v38, Ljava/lang/StringBuffer;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    .local v38, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    const-string v43, "Content-Disposition: form-data; name=\"productId\""

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    const-string v43, "Content-Disposition: form-data; name=\"product\""

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    const-string v43, "Content-Disposition: form-data; name=\"path1\""

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    move-object/from16 v0, v38

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const-string v43, "Content-Disposition: form-data; name=\"path2\""

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    move-object/from16 v0, v38

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    const-string v43, "Content-Disposition: form-data; name=\"path3\""

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    move-object/from16 v0, v38

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string v43, "Content-Disposition: form-data; name=\"date\""

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveDateMs()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const-string v43, "Content-Disposition: form-data; name=\"uin\""

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    move-object/from16 v0, v38

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    const-string v43, "Content-Disposition: form-data; name=\"attrs\""

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    new-instance v25, Lorg/json/JSONObject;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONObject;-><init>()V

    .line 420
    .local v25, "json_data":Lorg/json/JSONObject;
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 421
    .local v20, "env_attr":Lorg/json/JSONObject;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 425
    .local v26, "json_list":Ljava/util/List;
    :try_start_1
    const-string v43, "android_ver"

    sget v44, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 426
    const-string v43, "phone_model"

    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevModel()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string v43, "rom"

    sget-object v44, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v43, "root"

    sget-boolean v44, Lcom/tencent/wstt/gt/utils/RootUtil;->rootJustNow:Z

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 429
    const-string v43, "env_attr"

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 434
    :goto_1
    :try_start_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v44, v0
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v43, 0x0

    :goto_2
    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_4

    .line 512
    :goto_3
    :try_start_3
    const-string v43, "attr_list"

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    .line 517
    .local v24, "json":Ljava/lang/String;
    const-string v43, "utf-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 518
    .local v18, "encodeJson":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->getBytes()[B

    move-result-object v43

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 525
    .end local v18    # "encodeJson":Ljava/lang/String;
    .end local v24    # "json":Ljava/lang/String;
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v44, v0

    const/16 v43, 0x0

    :goto_5
    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_e

    .line 547
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v44, v0

    const/16 v43, 0x0

    :goto_6
    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_f

    .line 567
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    .line 568
    .local v19, "end_data":[B
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 569
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    .line 574
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v33

    .line 575
    .local v33, "res":I
    const/16 v43, 0xc8

    move/from16 v0, v33

    move/from16 v1, v43

    if-ne v0, v1, :cond_3

    .line 576
    const-string v43, "Content-Type"

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 577
    .local v15, "contentType":Ljava/lang/String;
    const/4 v13, 0x0

    .line 578
    .local v13, "charset":Ljava/lang/String;
    const-string v43, " "

    const-string v44, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    const-string v44, ";"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v45, v0

    const/16 v43, 0x0

    :goto_7
    move/from16 v0, v43

    move/from16 v1, v45

    if-lt v0, v1, :cond_10

    .line 584
    :goto_8
    if-nez v13, :cond_2

    const-string v13, "utf-8"

    .line 586
    :cond_2
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    .line 587
    .local v23, "in":Ljava/io/InputStream;
    const/16 v31, 0x0

    .line 588
    .local v31, "reader":Ljava/io/BufferedReader;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 590
    .local v35, "retData":Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v32, Ljava/io/BufferedReader;

    new-instance v43, Ljava/io/InputStreamReader;

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 591
    .end local v31    # "reader":Ljava/io/BufferedReader;
    .local v32, "reader":Ljava/io/BufferedReader;
    :goto_9
    :try_start_6
    invoke-virtual/range {v32 .. v32}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    .local v27, "line":Ljava/lang/String;
    if-nez v27, :cond_12

    .line 594
    new-instance v37, Lorg/json/JSONObject;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 595
    .local v37, "retj":Lorg/json/JSONObject;
    const-string v43, "code"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v36

    .line 604
    .local v36, "retcode":I
    :try_start_7
    invoke-static/range {v32 .. v32}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 607
    .end local v13    # "charset":Ljava/lang/String;
    .end local v14    # "conn":Ljava/net/HttpURLConnection;
    .end local v15    # "contentType":Ljava/lang/String;
    .end local v16    # "dos":Ljava/io/DataOutputStream;
    .end local v19    # "end_data":[B
    .end local v20    # "env_attr":Lorg/json/JSONObject;
    .end local v23    # "in":Ljava/io/InputStream;
    .end local v25    # "json_data":Lorg/json/JSONObject;
    .end local v26    # "json_list":Ljava/util/List;
    .end local v27    # "line":Ljava/lang/String;
    .end local v29    # "outputSteam":Ljava/io/OutputStream;
    .end local v32    # "reader":Ljava/io/BufferedReader;
    .end local v33    # "res":I
    .end local v35    # "retData":Ljava/lang/StringBuilder;
    .end local v36    # "retcode":I
    .end local v37    # "retj":Lorg/json/JSONObject;
    .end local v38    # "sb":Ljava/lang/StringBuffer;
    .end local v42    # "url":Ljava/net/URL;
    :catch_0
    move-exception v17

    .line 608
    .local v17, "e":Ljava/net/MalformedURLException;
    invoke-virtual/range {v17 .. v17}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 612
    .end local v17    # "e":Ljava/net/MalformedURLException;
    :cond_3
    :goto_a
    const/16 v36, 0x270f

    goto/16 :goto_0

    .line 434
    .restart local v14    # "conn":Ljava/net/HttpURLConnection;
    .restart local v16    # "dos":Ljava/io/DataOutputStream;
    .restart local v20    # "env_attr":Lorg/json/JSONObject;
    .restart local v25    # "json_data":Lorg/json/JSONObject;
    .restart local v26    # "json_list":Ljava/util/List;
    .restart local v29    # "outputSteam":Ljava/io/OutputStream;
    .restart local v38    # "sb":Ljava/lang/StringBuffer;
    .restart local v42    # "url":Ljava/net/URL;
    :cond_4
    :try_start_8
    aget-object v21, p1, v43

    .line 436
    .local v21, "file":Ljava/io/File;
    if-eqz v21, :cond_d

    .line 470
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 471
    .local v8, "attrMap":Lorg/json/JSONObject;
    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    .line 472
    .local v22, "file_attr":Lorg/json/JSONObject;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 473
    .local v9, "base_attr":Lorg/json/JSONObject;
    new-instance v40, Lorg/json/JSONObject;

    invoke-direct/range {v40 .. v40}, Lorg/json/JSONObject;-><init>()V

    .line 474
    .local v40, "statistics_attr":Lorg/json/JSONObject;
    new-instance v41, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;

    invoke-direct/range {v41 .. v41}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;-><init>()V

    .line 475
    .local v41, "type":Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    .line 476
    .local v28, "name":Ljava/lang/String;
    move-object/from16 v0, v41

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->parseDefaultConcernMode(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 479
    const/4 v10, 0x0

    .line 481
    .local v10, "br":Ljava/io/BufferedReader;
    :try_start_9
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v45, Ljava/io/FileReader;

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v45

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 482
    .end local v10    # "br":Ljava/io/BufferedReader;
    .local v11, "br":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 483
    .local v12, "buffer":Ljava/lang/String;
    const/16 v34, 0x1

    .line 485
    .local v34, "ret":Z
    :cond_5
    :try_start_a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v45

    const-string v46, ""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result v45

    if-eqz v45, :cond_7

    .line 489
    :cond_6
    :goto_b
    if-nez v34, :cond_8

    .line 507
    :try_start_b
    invoke-static {v11}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_3

    .line 609
    .end local v8    # "attrMap":Lorg/json/JSONObject;
    .end local v9    # "base_attr":Lorg/json/JSONObject;
    .end local v11    # "br":Ljava/io/BufferedReader;
    .end local v12    # "buffer":Ljava/lang/String;
    .end local v14    # "conn":Ljava/net/HttpURLConnection;
    .end local v16    # "dos":Ljava/io/DataOutputStream;
    .end local v20    # "env_attr":Lorg/json/JSONObject;
    .end local v21    # "file":Ljava/io/File;
    .end local v22    # "file_attr":Lorg/json/JSONObject;
    .end local v25    # "json_data":Lorg/json/JSONObject;
    .end local v26    # "json_list":Ljava/util/List;
    .end local v28    # "name":Ljava/lang/String;
    .end local v29    # "outputSteam":Ljava/io/OutputStream;
    .end local v34    # "ret":Z
    .end local v38    # "sb":Ljava/lang/StringBuffer;
    .end local v40    # "statistics_attr":Lorg/json/JSONObject;
    .end local v41    # "type":Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;
    .end local v42    # "url":Ljava/net/URL;
    :catch_1
    move-exception v17

    .line 610
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 486
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v8    # "attrMap":Lorg/json/JSONObject;
    .restart local v9    # "base_attr":Lorg/json/JSONObject;
    .restart local v11    # "br":Ljava/io/BufferedReader;
    .restart local v12    # "buffer":Ljava/lang/String;
    .restart local v14    # "conn":Ljava/net/HttpURLConnection;
    .restart local v16    # "dos":Ljava/io/DataOutputStream;
    .restart local v20    # "env_attr":Lorg/json/JSONObject;
    .restart local v21    # "file":Ljava/io/File;
    .restart local v22    # "file_attr":Lorg/json/JSONObject;
    .restart local v25    # "json_data":Lorg/json/JSONObject;
    .restart local v26    # "json_list":Ljava/util/List;
    .restart local v28    # "name":Ljava/lang/String;
    .restart local v29    # "outputSteam":Ljava/io/OutputStream;
    .restart local v34    # "ret":Z
    .restart local v38    # "sb":Ljava/lang/StringBuffer;
    .restart local v40    # "statistics_attr":Lorg/json/JSONObject;
    .restart local v41    # "type":Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;
    .restart local v42    # "url":Ljava/net/URL;
    :cond_7
    :try_start_c
    move-object/from16 v0, v41

    invoke-static {v12, v0, v9}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;->visitStateLine(Ljava/lang/String;Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;Lorg/json/JSONObject;)Z

    move-result v34

    .line 487
    if-nez v34, :cond_5

    goto :goto_b

    .line 490
    :cond_8
    const-string v45, "basic_attr"

    move-object/from16 v0, v22

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    :cond_9
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v45

    const-string v46, ""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result v45

    if-eqz v45, :cond_b

    .line 497
    :cond_a
    :goto_c
    if-nez v34, :cond_c

    .line 507
    :try_start_d
    invoke-static {v11}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_3

    .line 494
    :cond_b
    :try_start_e
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v12, v0, v1}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;->visitAttrLine(Ljava/lang/String;Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;Lorg/json/JSONObject;)Z

    move-result v34

    .line 495
    if-nez v34, :cond_9

    goto :goto_c

    .line 498
    :cond_c
    const-string v45, "statistics_attr"

    move-object/from16 v0, v22

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    const-string v45, "file_attr"

    move-object/from16 v0, v45

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string v45, "file_name"

    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    move-object/from16 v0, v26

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 507
    :try_start_f
    invoke-static {v11}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    .line 434
    .end local v8    # "attrMap":Lorg/json/JSONObject;
    .end local v9    # "base_attr":Lorg/json/JSONObject;
    .end local v11    # "br":Ljava/io/BufferedReader;
    .end local v12    # "buffer":Ljava/lang/String;
    .end local v22    # "file_attr":Lorg/json/JSONObject;
    .end local v28    # "name":Ljava/lang/String;
    .end local v34    # "ret":Z
    .end local v40    # "statistics_attr":Lorg/json/JSONObject;
    .end local v41    # "type":Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;
    :cond_d
    :goto_d
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_2

    .line 502
    .restart local v8    # "attrMap":Lorg/json/JSONObject;
    .restart local v9    # "base_attr":Lorg/json/JSONObject;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v22    # "file_attr":Lorg/json/JSONObject;
    .restart local v28    # "name":Ljava/lang/String;
    .restart local v40    # "statistics_attr":Lorg/json/JSONObject;
    .restart local v41    # "type":Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;
    :catch_2
    move-exception v17

    .line 503
    .local v17, "e":Ljava/lang/Exception;
    :goto_e
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 507
    :try_start_11
    invoke-static {v10}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto :goto_d

    .line 506
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v43

    .line 507
    :goto_f
    invoke-static {v10}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 508
    throw v43

    .line 521
    .end local v8    # "attrMap":Lorg/json/JSONObject;
    .end local v9    # "base_attr":Lorg/json/JSONObject;
    .end local v10    # "br":Ljava/io/BufferedReader;
    .end local v21    # "file":Ljava/io/File;
    .end local v22    # "file_attr":Lorg/json/JSONObject;
    .end local v28    # "name":Ljava/lang/String;
    .end local v40    # "statistics_attr":Lorg/json/JSONObject;
    .end local v41    # "type":Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;
    :catch_3
    move-exception v17

    .line 522
    .local v17, "e":Lorg/json/JSONException;
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 525
    .end local v17    # "e":Lorg/json/JSONException;
    :cond_e
    aget-object v21, p0, v43

    .line 530
    .restart local v21    # "file":Ljava/io/File;
    new-instance v39, Ljava/lang/StringBuffer;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuffer;-><init>()V

    .line 531
    .local v39, "sbFileHeader":Ljava/lang/StringBuffer;
    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 539
    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 538
    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "Content-Type: application/octet-stream; charset=utf-8"

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->getBytes()[B

    move-result-object v45

    move-object/from16 v0, v16

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 543
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;->writeFile(Ljava/io/File;Ljava/io/DataOutputStream;)V

    .line 544
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v45

    move-object/from16 v0, v16

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 525
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_5

    .line 547
    .end local v21    # "file":Ljava/io/File;
    .end local v39    # "sbFileHeader":Ljava/lang/StringBuffer;
    :cond_f
    aget-object v21, p1, v43

    .line 551
    .restart local v21    # "file":Ljava/io/File;
    new-instance v39, Ljava/lang/StringBuffer;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuffer;-><init>()V

    .line 552
    .restart local v39    # "sbFileHeader":Ljava/lang/StringBuffer;
    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 560
    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 559
    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "Content-Type: application/octet-stream; charset=utf-8"

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 562
    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->getBytes()[B

    move-result-object v45

    move-object/from16 v0, v16

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 564
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;->writeFile(Ljava/io/File;Ljava/io/DataOutputStream;)V

    .line 565
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v45

    move-object/from16 v0, v16

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 547
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_6

    .line 578
    .end local v21    # "file":Ljava/io/File;
    .end local v39    # "sbFileHeader":Ljava/lang/StringBuffer;
    .restart local v13    # "charset":Ljava/lang/String;
    .restart local v15    # "contentType":Ljava/lang/String;
    .restart local v19    # "end_data":[B
    .restart local v33    # "res":I
    :cond_10
    aget-object v30, v44, v43

    .line 579
    .local v30, "param":Ljava/lang/String;
    const-string v46, "charset="

    move-object/from16 v0, v30

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_11

    .line 580
    const-string v43, "="

    const/16 v44, 0x2

    move-object/from16 v0, v30

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    aget-object v13, v43, v44
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    .line 581
    goto/16 :goto_8

    .line 578
    :cond_11
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_7

    .line 592
    .end local v30    # "param":Ljava/lang/String;
    .restart local v23    # "in":Ljava/io/InputStream;
    .restart local v27    # "line":Ljava/lang/String;
    .restart local v32    # "reader":Ljava/io/BufferedReader;
    .restart local v35    # "retData":Ljava/lang/StringBuilder;
    :cond_12
    :try_start_12
    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_9

    .line 598
    .end local v27    # "line":Ljava/lang/String;
    :catch_4
    move-exception v17

    move-object/from16 v31, v32

    .line 604
    .end local v32    # "reader":Ljava/io/BufferedReader;
    .local v17, "e":Ljava/lang/Exception;
    .restart local v31    # "reader":Ljava/io/BufferedReader;
    :goto_10
    :try_start_13
    invoke-static/range {v31 .. v31}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 600
    const/16 v36, 0x64

    goto/16 :goto_0

    .line 603
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v43

    .line 604
    :goto_11
    invoke-static/range {v31 .. v31}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 605
    throw v43
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1

    .line 603
    .end local v31    # "reader":Ljava/io/BufferedReader;
    .restart local v32    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v43

    move-object/from16 v31, v32

    .end local v32    # "reader":Ljava/io/BufferedReader;
    .restart local v31    # "reader":Ljava/io/BufferedReader;
    goto :goto_11

    .line 598
    :catch_5
    move-exception v17

    goto :goto_10

    .line 506
    .end local v13    # "charset":Ljava/lang/String;
    .end local v15    # "contentType":Ljava/lang/String;
    .end local v19    # "end_data":[B
    .end local v23    # "in":Ljava/io/InputStream;
    .end local v31    # "reader":Ljava/io/BufferedReader;
    .end local v33    # "res":I
    .end local v35    # "retData":Ljava/lang/StringBuilder;
    .restart local v8    # "attrMap":Lorg/json/JSONObject;
    .restart local v9    # "base_attr":Lorg/json/JSONObject;
    .restart local v11    # "br":Ljava/io/BufferedReader;
    .restart local v12    # "buffer":Ljava/lang/String;
    .restart local v21    # "file":Ljava/io/File;
    .restart local v22    # "file_attr":Lorg/json/JSONObject;
    .restart local v28    # "name":Ljava/lang/String;
    .restart local v34    # "ret":Z
    .restart local v40    # "statistics_attr":Lorg/json/JSONObject;
    .restart local v41    # "type":Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;
    :catchall_3
    move-exception v43

    move-object v10, v11

    .end local v11    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_f

    .line 502
    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v17

    move-object v10, v11

    .end local v11    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_e

    .line 430
    .end local v8    # "attrMap":Lorg/json/JSONObject;
    .end local v9    # "base_attr":Lorg/json/JSONObject;
    .end local v10    # "br":Ljava/io/BufferedReader;
    .end local v12    # "buffer":Ljava/lang/String;
    .end local v21    # "file":Ljava/io/File;
    .end local v22    # "file_attr":Lorg/json/JSONObject;
    .end local v28    # "name":Ljava/lang/String;
    .end local v34    # "ret":Z
    .end local v40    # "statistics_attr":Lorg/json/JSONObject;
    .end local v41    # "type":Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;
    :catch_7
    move-exception v43

    goto/16 :goto_1
.end method

.method public static preUpload([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;
    .locals 25
    .param p0, "csvFiles"    # [Ljava/io/File;
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "path1"    # Ljava/lang/String;
    .param p3, "path2"    # Ljava/lang/String;
    .param p4, "path3"    # Ljava/lang/String;
    .param p5, "uin"    # Ljava/lang/String;
    .param p6, "sk"    # Ljava/lang/String;
    .param p7, "psk"    # Ljava/lang/String;
    .param p8, "lsk"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v16, "requestUrlBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v22, "http://gt.qq.com/GTAppServer/user/preupload?product="

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v22, "&path1="

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v22, "utf-8"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v22, "&path2="

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v22, "utf-8"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v22, "&path3="

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v22, "utf-8"

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const-string v2, "application/json"

    .line 227
    .local v2, "CONTENT_TYPE":Ljava/lang/String;
    const/4 v11, 0x0

    .line 229
    .local v11, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v21, Ljava/net/URL;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 230
    .local v21, "url":Ljava/net/URL;
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 231
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/16 v22, 0x2710

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 232
    const/16 v22, 0x2710

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 233
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 236
    const-string v22, "GET"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 237
    const-string v22, "Charset"

    const-string v23, "utf-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v22, "Content-Type"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v22, "Cookie"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, " p_luin=o0"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " p_lskey="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 247
    .local v17, "resCode":I
    const/16 v22, 0xc8

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 249
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v22

    sget-object v23, Lmqq/sdet/gt/protocol/ErrorMsg;->UNKNOW_ERROR:Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    invoke-static {v11}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 250
    const/16 v18, 0x0

    .line 299
    .end local v2    # "CONTENT_TYPE":Ljava/lang/String;
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v17    # "resCode":I
    .end local v21    # "url":Ljava/net/URL;
    :goto_0
    return-object v18

    .line 221
    :catch_0
    move-exception v5

    .line 222
    .local v5, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 223
    const/16 v18, 0x0

    goto :goto_0

    .line 252
    .end local v5    # "e1":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "CONTENT_TYPE":Ljava/lang/String;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "resCode":I
    .restart local v21    # "url":Ljava/net/URL;
    :cond_0
    :try_start_2
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    .end local v11    # "in":Ljava/io/BufferedReader;
    .local v12, "in":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 254
    .local v13, "inputLine":Ljava/lang/String;
    :try_start_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v20, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    .line 260
    new-instance v18, Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;

    invoke-direct/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;-><init>()V

    .line 261
    .local v18, "result":Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;
    new-instance v19, Lorg/json/JSONObject;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 262
    .local v19, "retj":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 264
    .local v9, "hasExistFileList":Lorg/json/JSONArray;
    const-string v22, "freeSize"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 265
    .local v8, "freeSize":I
    move-object/from16 v0, v18

    iput v8, v0, Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;->freeSize:I

    .line 267
    new-instance v15, Ljava/util/ArrayList;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    .local v15, "listFile":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v22, "retList"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 270
    const-string v22, "retList"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 279
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v10, v0, :cond_3

    .line 292
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;->choicedCsvFileList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    invoke-static {v12}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto :goto_0

    .line 257
    .end local v8    # "freeSize":I
    .end local v9    # "hasExistFileList":Lorg/json/JSONArray;
    .end local v10    # "i":I
    .end local v15    # "listFile":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v18    # "result":Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;
    .end local v19    # "retj":Lorg/json/JSONObject;
    :cond_1
    :try_start_4
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 296
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v4

    move-object v11, v12

    .line 298
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "inputLine":Ljava/lang/String;
    .end local v17    # "resCode":I
    .end local v21    # "url":Ljava/net/URL;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f0900f9

    invoke-static/range {v22 .. v23}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 303
    invoke-static {v11}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 299
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 274
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "freeSize":I
    .restart local v9    # "hasExistFileList":Lorg/json/JSONArray;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "inputLine":Ljava/lang/String;
    .restart local v15    # "listFile":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v17    # "resCode":I
    .restart local v18    # "result":Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;
    .restart local v19    # "retj":Lorg/json/JSONObject;
    .restart local v20    # "sb":Ljava/lang/StringBuilder;
    .restart local v21    # "url":Ljava/net/URL;
    :cond_2
    :try_start_6
    move-object/from16 v0, v18

    iput-object v15, v0, Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;->choicedCsvFileList:Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 303
    invoke-static {v12}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto/16 :goto_0

    .line 281
    .restart local v10    # "i":I
    :cond_3
    :try_start_7
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "filename":Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v14, v22, -0x1

    .local v14, "j":I
    :goto_4
    if-gez v14, :cond_4

    .line 279
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 283
    :cond_4
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_6

    .line 282
    :goto_5
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    .line 283
    :cond_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 285
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 287
    invoke-interface {v15, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 302
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "freeSize":I
    .end local v9    # "hasExistFileList":Lorg/json/JSONArray;
    .end local v10    # "i":I
    .end local v14    # "j":I
    .end local v15    # "listFile":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v18    # "result":Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;
    .end local v19    # "retj":Lorg/json/JSONObject;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v22

    move-object v11, v12

    .line 303
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "inputLine":Ljava/lang/String;
    .end local v17    # "resCode":I
    .end local v21    # "url":Ljava/net/URL;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    :goto_6
    invoke-static {v11}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 304
    throw v22

    .line 302
    :catchall_1
    move-exception v22

    goto :goto_6

    .line 296
    :catch_2
    move-exception v4

    goto :goto_3
.end method

.method public static prepareProductPairs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 20
    .param p0, "uin"    # Ljava/lang/String;
    .param p1, "p_lskey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "pairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v3, "http://gt.qq.com/GTAppServer/user/products"

    .line 129
    .local v3, "RequestURL":Ljava/lang/String;
    const-string v2, "application/json"

    .line 130
    .local v2, "CONTENT_TYPE":Ljava/lang/String;
    const/4 v9, 0x0

    .line 132
    .local v9, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 134
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 135
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 136
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 139
    const-string v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 140
    const-string v17, "Charset"

    const-string v18, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v17, "Content-Type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v17, "Cookie"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, " p_luin=o0"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " p_lskey="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    .line 150
    .local v13, "resCode":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v13, v0, :cond_0

    .line 153
    add-int/lit8 v17, v13, 0x64

    .line 192
    invoke-static {v9}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 188
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v13    # "resCode":I
    .end local v16    # "url":Ljava/net/URL;
    :goto_0
    return v17

    .line 155
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v13    # "resCode":I
    .restart local v16    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v9    # "in":Ljava/io/BufferedReader;
    .local v10, "in":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 157
    .local v11, "inputLine":Ljava/lang/String;
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v15, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 163
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 165
    new-instance v14, Lorg/json/JSONObject;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    .local v14, "retj":Lorg/json/JSONObject;
    const-string v17, "appIds"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 167
    .local v4, "appIds":Lorg/json/JSONArray;
    const-string v17, "appNames"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 168
    .local v5, "appNames":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_2

    .line 174
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v17

    if-eqz v17, :cond_3

    .line 192
    invoke-static {v10}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 177
    const/16 v17, 0x453

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 160
    .end local v4    # "appIds":Lorg/json/JSONArray;
    .end local v5    # "appNames":Lorg/json/JSONArray;
    .end local v8    # "i":I
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v14    # "retj":Lorg/json/JSONObject;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 185
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    move-object v9, v10

    .line 192
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v11    # "inputLine":Ljava/lang/String;
    .end local v13    # "resCode":I
    .end local v16    # "url":Ljava/net/URL;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :goto_3
    invoke-static {v9}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 188
    const/16 v17, 0x270d

    goto :goto_0

    .line 170
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "appIds":Lorg/json/JSONArray;
    .restart local v5    # "appNames":Lorg/json/JSONArray;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "i":I
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "inputLine":Ljava/lang/String;
    .restart local v13    # "resCode":I
    .restart local v14    # "retj":Lorg/json/JSONObject;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "url":Ljava/net/URL;
    :cond_2
    :try_start_4
    new-instance v12, Lcom/tencent/wstt/gt/plugin/octopus/ProductPair;

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Lcom/tencent/wstt/gt/plugin/octopus/ProductPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .local v12, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 168
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 192
    .end local v12    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {v10}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 182
    const/16 v17, 0x0

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 191
    .end local v4    # "appIds":Lorg/json/JSONArray;
    .end local v5    # "appNames":Lorg/json/JSONArray;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "i":I
    .end local v11    # "inputLine":Ljava/lang/String;
    .end local v13    # "resCode":I
    .end local v14    # "retj":Lorg/json/JSONObject;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v17

    .line 192
    :goto_4
    invoke-static {v9}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 193
    throw v17

    .line 191
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "inputLine":Ljava/lang/String;
    .restart local v13    # "resCode":I
    .restart local v16    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 185
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "inputLine":Ljava/lang/String;
    .end local v13    # "resCode":I
    .end local v16    # "url":Ljava/net/URL;
    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method public static registProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "uin"    # Ljava/lang/String;
    .param p1, "p_lskey"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 73
    :cond_0
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "null\u53c2\u6570!"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13

    .line 76
    :cond_1
    const-string v13, "utf-8"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "encodeName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "http://gt.qq.com/GTAppServer/user/regproduct?name="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "RequestURL":Ljava/lang/String;
    const-string v1, "application/json"

    .line 79
    .local v1, "CONTENT_TYPE":Ljava/lang/String;
    const/4 v5, 0x0

    .line 81
    .local v5, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 82
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 83
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/16 v13, 0x2710

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 84
    const/16 v13, 0x2710

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 85
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 88
    const-string v13, "GET"

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 89
    const-string v13, "Charset"

    const-string v14, "utf-8"

    invoke-virtual {v3, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v13, "Content-Type"

    invoke-virtual {v3, v13, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v13, "Cookie"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, " p_luin=o0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " p_lskey="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 99
    .local v8, "resCode":I
    const/16 v13, 0xc8

    if-eq v8, v13, :cond_2

    .line 101
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0900fa

    invoke-static {v13, v14}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    .line 102
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "\u672a\u77e5\u7f51\u7edc\u9519\u8bef!"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "resCode":I
    .end local v12    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v13

    .line 122
    :goto_0
    invoke-static {v5}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 123
    throw v13

    .line 104
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "resCode":I
    .restart local v12    # "url":Ljava/net/URL;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v5    # "in":Ljava/io/BufferedReader;
    .local v6, "in":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 106
    .local v7, "inputLine":Ljava/lang/String;
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v11, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    .line 112
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .local v10, "retj":Lorg/json/JSONObject;
    const-string v13, "appId"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "ret":Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 116
    :cond_3
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "\u6ce8\u518c\u4ea7\u54c1\u5931\u8d25!"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13

    .line 121
    .end local v9    # "ret":Ljava/lang/String;
    .end local v10    # "retj":Lorg/json/JSONObject;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v13

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 109
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 122
    .restart local v9    # "ret":Ljava/lang/String;
    .restart local v10    # "retj":Lorg/json/JSONObject;
    :cond_5
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 118
    return-object v9
.end method

.method public static uploadFile([Ljava/io/File;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "descfiles"    # [Ljava/io/File;
    .param p1, "csvFiles"    # [Ljava/io/File;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "product"    # Ljava/lang/String;
    .param p4, "path1"    # Ljava/lang/String;
    .param p5, "path2"    # Ljava/lang/String;
    .param p6, "path3"    # Ljava/lang/String;
    .param p7, "uin"    # Ljava/lang/String;
    .param p8, "sk"    # Ljava/lang/String;
    .param p9, "psk"    # Ljava/lang/String;
    .param p10, "lsk"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static/range {p0 .. p10}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;->doUpload([Ljava/io/File;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static visitAttrLine(Ljava/lang/String;Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;Lorg/json/JSONObject;)Z
    .locals 9
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;
    .param p2, "map4Json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 716
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 717
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 718
    .local v3, "seqs":[Ljava/lang/String;
    array-length v6, v3

    if-ge v6, v8, :cond_1

    .line 824
    :cond_0
    :goto_0
    return v4

    .line 721
    :cond_1
    iget v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->concernMode:I

    if-ne v6, v5, :cond_2

    aget-object v6, v3, v4

    const-string v7, "avg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 723
    goto :goto_0

    .line 728
    :cond_2
    iget v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->multiMode:I

    if-ge v6, v8, :cond_8

    aget-object v6, v3, v4

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 730
    iput v5, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->multiMode:I

    .line 732
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 733
    .local v0, "attrList":Lorg/json/JSONArray;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v6, v3

    if-lt v2, v6, :cond_7

    .line 738
    const-string v6, "data_title"

    invoke-virtual {p2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 747
    .end local v0    # "attrList":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_3
    :goto_2
    aget-object v6, v3, v4

    const-string v7, "min"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 748
    aget-object v6, v3, v4

    const-string v7, "max"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 749
    aget-object v6, v3, v4

    const-string v7, "avg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 751
    :cond_4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 752
    .restart local v0    # "attrList":Lorg/json/JSONArray;
    iget v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->multiMode:I

    if-nez v6, :cond_9

    .line 754
    aget-object v1, v3, v5

    .line 755
    .local v1, "data":Ljava/lang/String;
    aget-object v6, v3, v5

    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 757
    iget v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitLengthBeforeChange:I

    if-lez v6, :cond_0

    .line 761
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitLengthBeforeChange:I

    sub-int/2addr v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 762
    iput-boolean v5, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->isDataWithUnit:Z

    .line 764
    :cond_5
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 765
    aget-object v4, v3, v4

    invoke-virtual {p2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .end local v1    # "data":Ljava/lang/String;
    :cond_6
    :goto_3
    move v4, v5

    .line 824
    goto :goto_0

    .line 735
    .restart local v2    # "i":I
    :cond_7
    iget-object v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->multiNameList:Ljava/util/List;

    aget-object v7, v3, v2

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    aget-object v6, v3, v2

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 733
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 740
    .end local v0    # "attrList":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_8
    array-length v6, v3

    if-ne v6, v8, :cond_3

    .line 742
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 743
    .restart local v0    # "attrList":Lorg/json/JSONArray;
    iget-object v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->alias:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 744
    const-string v6, "data_title"

    invoke-virtual {p2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 767
    :cond_9
    iget v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->multiMode:I

    if-ne v6, v5, :cond_6

    .line 769
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_4
    array-length v6, v3

    if-lt v2, v6, :cond_a

    .line 783
    aget-object v4, v3, v4

    invoke-virtual {p2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 771
    :cond_a
    aget-object v1, v3, v2

    .line 772
    .restart local v1    # "data":Ljava/lang/String;
    aget-object v6, v3, v2

    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 774
    iget v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitLengthBeforeChange:I

    if-lez v6, :cond_0

    .line 778
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitLengthBeforeChange:I

    sub-int/2addr v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 779
    iput-boolean v5, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->isDataWithUnit:Z

    .line 781
    :cond_b
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 769
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 788
    .end local v0    # "attrList":Lorg/json/JSONArray;
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_c
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 789
    .restart local v0    # "attrList":Lorg/json/JSONArray;
    iget v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->multiMode:I

    if-nez v6, :cond_f

    .line 791
    aget-object v1, v3, v5

    .line 792
    .restart local v1    # "data":Ljava/lang/String;
    aget-object v6, v3, v5

    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 794
    iget v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitLengthBeforeChange:I

    if-gtz v6, :cond_d

    move v4, v5

    .line 797
    goto/16 :goto_0

    .line 799
    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitLengthBeforeChange:I

    sub-int/2addr v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 801
    :cond_e
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 802
    aget-object v4, v3, v4

    invoke-virtual {p2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 804
    .end local v1    # "data":Ljava/lang/String;
    :cond_f
    iget v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->multiMode:I

    if-ne v6, v5, :cond_6

    .line 806
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_5
    array-length v6, v3

    if-lt v2, v6, :cond_10

    .line 821
    aget-object v4, v3, v4

    invoke-virtual {p2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 808
    :cond_10
    aget-object v1, v3, v2

    .line 809
    .restart local v1    # "data":Ljava/lang/String;
    aget-object v6, v3, v2

    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 811
    iget v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitLengthBeforeChange:I

    if-gtz v6, :cond_11

    move v4, v5

    .line 814
    goto/16 :goto_0

    .line 816
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitLengthBeforeChange:I

    sub-int/2addr v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 817
    iput-boolean v5, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->isDataWithUnit:Z

    .line 819
    :cond_12
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 806
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private static visitStateLine(Ljava/lang/String;Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;Lorg/json/JSONObject;)Z
    .locals 8
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;
    .param p2, "map4Json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 639
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 640
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, "seqs":[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v5

    .line 642
    :cond_1
    aget-object v6, v1, v4

    const-string v7, "key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 643
    aget-object v6, v1, v4

    const-string v7, "alias"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 644
    aget-object v6, v1, v4

    const-string v7, "begin date"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 645
    aget-object v6, v1, v4

    const-string v7, "end date"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 646
    aget-object v6, v1, v4

    const-string v7, "count"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 648
    :cond_2
    aget-object v6, v1, v4

    aget-object v7, v1, v5

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    :cond_3
    aget-object v6, v1, v4

    const-string v7, "key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 652
    aget-object v4, v1, v5

    iput-object v4, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->key:Ljava/lang/String;

    goto :goto_0

    .line 654
    :cond_4
    aget-object v6, v1, v4

    const-string v7, "alias"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 656
    aget-object v4, v1, v5

    iput-object v4, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->alias:Ljava/lang/String;

    goto :goto_0

    .line 660
    :cond_5
    aget-object v6, v1, v4

    const-string v7, "need unit change"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 662
    aget-object v6, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    :goto_1
    iput-boolean v4, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->needUnitChange:Z

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_1

    .line 664
    :cond_7
    aget-object v6, v1, v4

    const-string v7, "unit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 666
    array-length v6, v1

    if-le v6, v5, :cond_0

    .line 669
    aget-object v6, v1, v5

    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "realUnit":Ljava/lang/String;
    iget-boolean v6, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->needUnitChange:Z

    if-eqz v6, :cond_8

    .line 671
    const-string v6, "*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 673
    :cond_9
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, "temp":[Ljava/lang/String;
    aget-object v3, v2, v5

    .line 675
    .local v3, "unitAfterChanged":Ljava/lang/String;
    aget-object v6, v1, v4

    invoke-virtual {p2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    aget-object v6, v2, v4

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 678
    iput v4, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitChangeType:I

    .line 679
    aget-object v4, v2, v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitChangeCarry:I

    .line 691
    .end local v2    # "temp":[Ljava/lang/String;
    .end local v3    # "unitAfterChanged":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitLengthBeforeChange:I

    goto/16 :goto_0

    .line 681
    .restart local v2    # "temp":[Ljava/lang/String;
    .restart local v3    # "unitAfterChanged":Ljava/lang/String;
    :cond_b
    aget-object v6, v2, v4

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 683
    iput v5, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitChangeType:I

    .line 684
    aget-object v4, v2, v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitChangeCarry:I

    goto :goto_2

    .line 689
    .end local v2    # "temp":[Ljava/lang/String;
    .end local v3    # "unitAfterChanged":Ljava/lang/String;
    :cond_c
    aget-object v4, v1, v4

    invoke-virtual {p2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 694
    .end local v0    # "realUnit":Ljava/lang/String;
    :cond_d
    aget-object v6, v1, v4

    const-string v7, "updateMode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 696
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->updateMode:I

    goto/16 :goto_0

    .line 699
    :cond_e
    aget-object v6, v1, v4

    const-string v7, "compareMode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 701
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->compareMode:I

    goto/16 :goto_0

    .line 703
    :cond_f
    aget-object v6, v1, v4

    const-string v7, "concernMode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 705
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->concernMode:I

    goto/16 :goto_0

    .line 707
    :cond_10
    aget-object v6, v1, v4

    const-string v7, "multiMode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 709
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->multiMode:I

    goto/16 :goto_0
.end method

.method private static writeFile(Ljava/io/File;Ljava/io/DataOutputStream;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "dos"    # Ljava/io/DataOutputStream;

    .prologue
    .line 617
    const/4 v2, 0x0

    .line 620
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 622
    .local v0, "bytes":[B
    const/4 v4, 0x0

    .line 623
    .local v4, "len":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 633
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 635
    .end local v0    # "bytes":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "len":I
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_1
    return-void

    .line 624
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "bytes":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "len":I
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p1, v0, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 627
    .end local v0    # "bytes":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 629
    .end local v3    # "is":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 633
    invoke-static {v2}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_1

    .line 632
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 633
    :goto_3
    invoke-static {v2}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 634
    throw v5

    .line 632
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 627
    :catch_1
    move-exception v1

    goto :goto_2
.end method
