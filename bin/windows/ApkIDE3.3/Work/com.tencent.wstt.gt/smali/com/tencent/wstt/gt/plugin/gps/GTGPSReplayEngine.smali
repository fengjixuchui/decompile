.class public Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;
.super Lcom/tencent/wstt/gt/plugin/BaseService;
.source "GTGPSReplayEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;
    }
.end annotation


# static fields
.field private static final GPS_MOCK_ACTION:Ljava/lang/String; = "com.tencent.wstt.gt.ACTION_GPS_MOCK"

.field private static INSTANCE:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;


# instance fields
.field public index:I

.field private isReplay:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationManager:Landroid/location/LocationManager;

.field public mGPSFileLength:I

.field private mMockGpsProviderTask:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;

.field public mreplayspeed:I

.field public selectedItem:Ljava/lang/String;

.field public selectedItemPos:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/BaseService;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mMockGpsProviderTask:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;

    .line 62
    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->locationManager:Landroid/location/LocationManager;

    .line 65
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isReplay:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    .line 70
    iput v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mGPSFileLength:I

    .line 72
    iput v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->listeners:Ljava/util/List;

    .line 88
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p1, p2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->sendMockBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;)Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    .line 82
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    return-object v0
.end method

.method private isAllowMock()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 174
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 178
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x5

    .line 177
    invoke-virtual/range {v0 .. v10}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 179
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->locationManager:Landroid/location/LocationManager;

    .line 180
    const-string v1, "gps"

    const/4 v2, 0x1

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v14

    .line 193
    :goto_0
    return v0

    .line 182
    :catch_0
    move-exception v11

    .line 185
    .local v11, "e":Ljava/lang/SecurityException;
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v13

    .line 190
    goto :goto_0

    .line 185
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;

    .line 188
    .local v12, "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-interface {v12, v1}, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;->onReplayFail(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private replay(Ljava/lang/String;)V
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isAllowMock()Z

    move-result v9

    if-nez v9, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->locationManager:Landroid/location/LocationManager;

    const-string v10, "gps"

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 265
    const/4 v7, 0x0

    .line 267
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    sget-object v9, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_GPS_FOLDER:Ljava/io/File;

    invoke-direct {v3, v9, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    .local v3, "f":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 271
    .local v4, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 273
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 274
    .local v5, "line":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 277
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_4

    .line 280
    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->listeners:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_3

    .line 303
    invoke-static {v8}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto :goto_0

    .line 275
    :cond_2
    :try_start_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 297
    :catch_0
    move-exception v2

    move-object v7, v8

    .line 298
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_3
    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isReplay:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 303
    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto :goto_0

    .line 280
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;

    .line 283
    .local v6, "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0900f0

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 282
    invoke-interface {v6, v10}, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;->onReplayFail(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 302
    .end local v6    # "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    :catchall_0
    move-exception v9

    move-object v7, v8

    .line 303
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_4
    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 304
    throw v9

    .line 287
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    iput v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mGPSFileLength:I

    .line 289
    iget v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mGPSFileLength:I

    new-array v0, v9, [Ljava/lang/String;

    .line 290
    .local v0, "coordinates":[Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 292
    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mMockGpsProviderTask:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;

    if-nez v9, :cond_5

    .line 293
    new-instance v9, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;

    iget-object v10, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItem:Ljava/lang/String;

    invoke-direct {v9, p0, v10}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mMockGpsProviderTask:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;

    .line 295
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isReplay:Z

    .line 296
    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mMockGpsProviderTask:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;

    invoke-virtual {v9, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 303
    invoke-static {v8}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto/16 :goto_0

    .line 302
    .end local v0    # "coordinates":[Ljava/lang/String;
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    goto :goto_4

    .line 297
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method private replay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "sLng"    # Ljava/lang/String;
    .param p2, "sLat"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 201
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isAllowMock()Z

    move-result v9

    if-nez v9, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->locationManager:Landroid/location/LocationManager;

    const-string v10, "gps"

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 208
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 209
    .local v6, "lng":D
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 212
    .local v2, "lat":D
    const-wide v10, -0x3f99800000000000L    # -180.0

    cmpg-double v9, v6, v10

    if-ltz v9, :cond_2

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v9, v6, v10

    if-gtz v9, :cond_2

    const-wide v10, -0x3fa9800000000000L    # -90.0

    cmpg-double v9, v2, v10

    if-ltz v9, :cond_2

    const-wide v10, 0x4056800000000000L    # 90.0

    cmpl-double v9, v2, v10

    if-lez v9, :cond_3

    .line 215
    :cond_2
    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->listeners:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;

    .line 218
    .local v4, "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0900f0

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 217
    invoke-interface {v4, v10}, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;->onReplayFail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 247
    .end local v2    # "lat":D
    .end local v4    # "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    .end local v6    # "lng":D
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v12, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isReplay:Z

    goto :goto_0

    .line 223
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "lat":D
    .restart local v6    # "lng":D
    :cond_3
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 225
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 227
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    .line 241
    .local v0, "coordinates":[Ljava/lang/String;
    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mMockGpsProviderTask:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;

    if-nez v9, :cond_4

    .line 242
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveDate()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_.gps"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "replayRecordFileName":Ljava/lang/String;
    new-instance v9, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;

    invoke-direct {v9, p0, v5}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mMockGpsProviderTask:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;

    .line 245
    .end local v5    # "replayRecordFileName":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isReplay:Z

    .line 246
    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mMockGpsProviderTask:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;

    invoke-virtual {v9, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private sendMockBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.tencent.wstt.gt.ACTION_GPS_MOCK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method private stopReplay()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isReplay:Z

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->stopMockLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGPSFileLength()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mGPSFileLength:I

    return v0
.end method

.method public getPercentage()D
    .locals 4

    .prologue
    .line 352
    iget v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mGPSFileLength:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    if-eqz v0, :cond_0

    .line 353
    iget v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    int-to-double v0, v0

    iget v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mGPSFileLength:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 355
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getReplaySpeed()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mreplayspeed:I

    return v0
.end method

.method public declared-synchronized isReplay()Z
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isReplay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/plugin/BaseService;->onCreate(Landroid/content/Context;)V

    .line 109
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 108
    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->locationManager:Landroid/location/LocationManager;

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/tencent/wstt/gt/plugin/BaseService;->onDestroy()V

    .line 164
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->stopReplay()V

    .line 165
    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 114
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/plugin/BaseService;->onStart(Landroid/content/Intent;)V

    .line 115
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v5, "seq"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    .line 121
    const/16 v5, 0x64

    const-string v6, "progress"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 122
    .local v4, "progess":I
    const-string v5, "replayspeed"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mreplayspeed:I

    .line 123
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getGPSFileLength()I

    move-result v5

    mul-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x64

    iput v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->index:I

    .line 124
    iget v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    if-ne v7, v5, :cond_5

    .line 126
    const-string v5, "filename"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItem:Ljava/lang/String;

    .line 127
    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItem:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 130
    const-string v5, "lng"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "lng":Ljava/lang/String;
    const-string v5, "lat"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "lat":Ljava/lang/String;
    if-eqz v3, :cond_2

    if-nez v1, :cond_3

    .line 135
    :cond_2
    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;

    .line 138
    .local v2, "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0900ed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-interface {v2, v6}, Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;->onReplayFail(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    .end local v2    # "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;
    :cond_3
    invoke-direct {p0, v3, v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->replay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    .end local v1    # "lat":Ljava/lang/String;
    .end local v3    # "lng":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItem:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->replay(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_5
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSUtils;->getGPSFileList()Ljava/util/ArrayList;

    move-result-object v0

    .line 156
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    if-le v5, v6, :cond_0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "empty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 157
    iget v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->replay(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized removeListener(Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopMockLocation()V
    .locals 3

    .prologue
    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mMockGpsProviderTask:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;->cancel(Z)Z

    .line 333
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->mMockGpsProviderTask:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine$MockGpsProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    check-cast v0, Landroid/location/LocationManager;

    .line 341
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeTestProvider(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    :goto_1
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "stop"

    invoke-direct {p0, v1, v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->sendMockBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    return-void

    .line 342
    :catch_0
    move-exception v1

    goto :goto_1

    .line 334
    :catch_1
    move-exception v1

    goto :goto_0
.end method
