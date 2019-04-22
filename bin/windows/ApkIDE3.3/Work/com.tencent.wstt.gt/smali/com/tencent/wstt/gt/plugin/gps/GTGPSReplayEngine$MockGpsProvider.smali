.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;
.super Landroid/os/AsyncTask;
.source "GTGPSReplayEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockGpsProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final GPS_MOCK_PROVIDER:Ljava/lang/String; = "gps"

.field public static final LOG_TAG:Ljava/lang/String; = "GpsMockProvider"


# instance fields
.field public orgiFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;Ljava/lang/String;)V
    .locals 0
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    .line 379
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 381
    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->orgiFileName:Ljava/lang/String;

    .line 382
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 35
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 387
    const/16 v21, 0x0

    .line 390
    .local v21, "hasMockEnd":Z
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v34, "timezones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "start"

    # invokes: Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->sendMockBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;Landroid/content/Context;Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->listeners:Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->access$1(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 405
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isReplay()Z

    move-result v4

    if-nez v4, :cond_3

    .line 534
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    const/4 v5, 0x0

    iput v5, v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->listeners:Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->access$1(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_b

    .line 544
    new-instance v20, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_LOG_FOLDER:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "gpsreplay/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    .local v20, "folder":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->orgiFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 548
    .local v31, "recordFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->orgiFileName:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".gps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->orgiFileName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->orgiFileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_log.gps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 553
    :cond_1
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 555
    .local v19, "f":Ljava/io/File;
    const/4 v15, 0x0

    .line 558
    .local v15, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z

    .line 559
    new-instance v16, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    .end local v15    # "bw":Ljava/io/BufferedWriter;
    .local v16, "bw":Ljava/io/BufferedWriter;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_4
    :try_start_1
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    move/from16 v0, v22

    if-lt v0, v4, :cond_c

    .line 570
    invoke-static/range {v16 .. v16}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    move-object/from16 v15, v16

    .line 573
    .end local v16    # "bw":Ljava/io/BufferedWriter;
    .end local v22    # "i":I
    .restart local v15    # "bw":Ljava/io/BufferedWriter;
    :goto_5
    const/4 v4, 0x0

    return-object v4

    .line 394
    .end local v15    # "bw":Ljava/io/BufferedWriter;
    .end local v19    # "f":Ljava/io/File;
    .end local v20    # "folder":Ljava/io/File;
    .end local v31    # "recordFileName":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;

    .line 396
    .local v24, "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    invoke-interface/range {v24 .. v24}, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;->onReplayStart()V

    goto/16 :goto_0

    .line 408
    .end local v24    # "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    iget v4, v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    aget-object v33, p1, v4

    .line 409
    .local v33, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    iget v4, v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    move-object/from16 v0, p1

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_7

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    iget v4, v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    iget v5, v5, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mreplayspeed:I

    add-int/2addr v4, v5

    move-object/from16 v0, p1

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_6

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    iget v5, v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    .line 431
    :cond_4
    :goto_6
    new-instance v25, Landroid/location/Location;

    const-string v4, "gps"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 434
    .local v25, "location":Landroid/location/Location;
    :try_start_2
    const-string v4, ","

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 435
    .local v30, "parts":[Ljava/lang/String;
    const/4 v4, 0x6

    aget-object v4, v30, v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    .line 436
    .local v28, "nowtimeStamp":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setTime(J)V

    .line 437
    const/4 v4, 0x1

    aget-object v4, v30, v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 438
    const/4 v4, 0x0

    aget-object v4, v30, v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 439
    const/4 v4, 0x2

    aget-object v4, v30, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/location/Location;->setAccuracy(F)V

    .line 440
    const/4 v4, 0x7

    aget-object v4, v30, v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setAltitude(D)V

    .line 441
    const/4 v4, 0x3

    aget-object v4, v30, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/location/Location;->setBearing(F)V

    .line 442
    const/4 v4, 0x4

    aget-object v4, v30, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/location/Location;->setSpeed(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 450
    :try_start_3
    const-class v4, Landroid/location/Location;

    const-string v5, "makeComplete"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v26

    .line 451
    .local v26, "method":Ljava/lang/reflect/Method;
    if-eqz v26, :cond_5

    .line 452
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 465
    .end local v26    # "method":Ljava/lang/reflect/Method;
    :cond_5
    :goto_7
    const-string v4, "GpsMockProvider"

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->locationManager:Landroid/location/LocationManager;
    invoke-static {v4}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->access$2(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;)Landroid/location/LocationManager;

    move-result-object v4

    .line 471
    const-string v5, "gps"

    .line 472
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 473
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 474
    const/4 v10, 0x1

    .line 475
    const/4 v11, 0x1

    .line 476
    const/4 v12, 0x1

    .line 477
    const/4 v13, 0x1

    .line 478
    const/4 v14, 0x1

    .line 470
    invoke-virtual/range {v4 .. v14}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->locationManager:Landroid/location/LocationManager;
    invoke-static {v4}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->access$2(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;)Landroid/location/LocationManager;

    move-result-object v4

    const-string v5, "gps"

    .line 480
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 479
    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->locationManager:Landroid/location/LocationManager;
    invoke-static {v4}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->access$2(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;)Landroid/location/LocationManager;

    move-result-object v4

    const-string v5, "gps"

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    iget v4, v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    move-object/from16 v0, p1

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_8

    .line 497
    const-wide/16 v4, 0x7d0

    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 498
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .line 416
    .end local v25    # "location":Landroid/location/Location;
    .end local v28    # "nowtimeStamp":D
    .end local v30    # "parts":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    iget v5, v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    iget v6, v6, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mreplayspeed:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    goto/16 :goto_6

    .line 421
    :cond_7
    if-nez v21, :cond_4

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "end"

    # invokes: Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->sendMockBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;Landroid/content/Context;Ljava/lang/String;)V

    .line 423
    const/16 v21, 0x1

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->listeners:Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->access$1(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;

    .line 427
    .restart local v24    # "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    invoke-interface/range {v24 .. v24}, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;->onReplayEnd()V

    goto :goto_8

    .line 457
    .end local v24    # "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    .restart local v25    # "location":Landroid/location/Location;
    .restart local v28    # "nowtimeStamp":D
    .restart local v30    # "parts":[Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 458
    .local v17, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_7

    .line 461
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v28    # "nowtimeStamp":D
    .end local v30    # "parts":[Ljava/lang/String;
    :catch_2
    move-exception v17

    .line 462
    .restart local v17    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 485
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v28    # "nowtimeStamp":D
    .restart local v30    # "parts":[Ljava/lang/String;
    :catch_3
    move-exception v17

    .line 488
    .restart local v17    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 489
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0900ef

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 488
    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 505
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v23, 0x7d0

    .line 507
    .local v23, "interval":I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    iget v4, v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v4, v5, :cond_9

    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    iget v4, v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    aget-object v27, p1, v4

    .line 509
    .local v27, "next":Ljava/lang/String;
    const-string v4, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 510
    const/4 v4, 0x6

    aget-object v4, v30, v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double v4, v4, v28

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v23, v0

    .line 512
    if-gtz v23, :cond_9

    .line 514
    const/16 v23, 0x7d0

    .line 517
    .end local v27    # "next":Ljava/lang/String;
    :cond_9
    const-string v4, "interval"

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    iget v4, v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mreplayspeed:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 520
    move/from16 v0, v23

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 526
    :goto_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 527
    new-instance v4, Ljava/lang/InterruptedException;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 528
    :catch_4
    move-exception v4

    goto/16 :goto_2

    .line 524
    :cond_a
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_9

    .line 535
    .end local v23    # "interval":I
    .end local v25    # "location":Landroid/location/Location;
    .end local v28    # "nowtimeStamp":D
    .end local v30    # "parts":[Ljava/lang/String;
    .end local v33    # "str":Ljava/lang/String;
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;

    .line 537
    .restart local v24    # "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    invoke-interface/range {v24 .. v24}, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;->onReplayStop()V

    goto/16 :goto_3

    .line 562
    .end local v24    # "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    .restart local v16    # "bw":Ljava/io/BufferedWriter;
    .restart local v19    # "f":Ljava/io/File;
    .restart local v20    # "folder":Ljava/io/File;
    .restart local v22    # "i":I
    .restart local v31    # "recordFileName":Ljava/lang/String;
    :cond_c
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v22

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 563
    .local v32, "relayLine":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 560
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 565
    .end local v16    # "bw":Ljava/io/BufferedWriter;
    .end local v22    # "i":I
    .end local v32    # "relayLine":Ljava/lang/String;
    .restart local v15    # "bw":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v18

    .line 566
    .local v18, "e1":Ljava/io/IOException;
    :goto_a
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 570
    invoke-static {v15}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    goto/16 :goto_5

    .line 569
    .end local v18    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 570
    :goto_b
    invoke-static {v15}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeWriter(Ljava/io/Writer;)V

    .line 571
    throw v4

    .line 569
    .end local v15    # "bw":Ljava/io/BufferedWriter;
    .restart local v16    # "bw":Ljava/io/BufferedWriter;
    .restart local v22    # "i":I
    :catchall_1
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "bw":Ljava/io/BufferedWriter;
    .restart local v15    # "bw":Ljava/io/BufferedWriter;
    goto :goto_b

    .line 565
    .end local v15    # "bw":Ljava/io/BufferedWriter;
    .restart local v16    # "bw":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v18

    move-object/from16 v15, v16

    .end local v16    # "bw":Ljava/io/BufferedWriter;
    .restart local v15    # "bw":Ljava/io/BufferedWriter;
    goto :goto_a

    .line 455
    .end local v15    # "bw":Ljava/io/BufferedWriter;
    .end local v19    # "f":Ljava/io/File;
    .end local v20    # "folder":Ljava/io/File;
    .end local v22    # "i":I
    .end local v31    # "recordFileName":Ljava/lang/String;
    .restart local v25    # "location":Landroid/location/Location;
    .restart local v28    # "nowtimeStamp":D
    .restart local v30    # "parts":[Ljava/lang/String;
    .restart local v33    # "str":Ljava/lang/String;
    :catch_7
    move-exception v4

    goto/16 :goto_7
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 578
    const-string v0, "GpsMockProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProgressUpdate():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
