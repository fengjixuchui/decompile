.class public Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;
.super Lcom/tencent/wstt/gt/plugin/BaseService;
.source "GTGPSRecordEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine$MyLocationListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;


# instance fields
.field private df:Ljava/text/DecimalFormat;

.field private gpsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRecord:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;",
            ">;"
        }
    .end annotation
.end field

.field private lm:Landroid/location/LocationManager;

.field private locationListener:Landroid/location/LocationListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private recordFile:Ljava/lang/String;

.field private timeStamp:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/BaseService;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->timeStamp:J

    .line 146
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->df:Ljava/text/DecimalFormat;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->gpsList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->listeners:Ljava/util/List;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->gpsList:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    .line 68
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    return-object v0
.end method

.method private saveGPS(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-static {p1}, Lcom/tencent/wstt/gt/utils/FileUtil;->isPathStringValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    const-string v4, ".log"

    .line 187
    invoke-static {p1, v4}, Lcom/tencent/wstt/gt/utils/FileUtil;->convertValidFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "validPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->isPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1    # "f":Ljava/io/File;
    .local v2, "f":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 197
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "validPath":Ljava/lang/String;
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->gpsList:Ljava/util/List;

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lcom/tencent/wstt/gt/log/LogUtils;->writeFilterLog(Ljava/util/List;Ljava/io/File;Z)V

    .line 201
    :goto_1
    return-void

    .line 193
    .restart local v3    # "validPath":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_GPS_FOLDER:Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    move-object v1, v2

    .end local v2    # "f":Ljava/io/File;
    .restart local v1    # "f":Ljava/io/File;
    goto :goto_0

    .line 198
    .end local v3    # "validPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "validPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "f":Ljava/io/File;
    .restart local v1    # "f":Ljava/io/File;
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRecord()Z
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->isRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public locToString(Landroid/location/Location;)Ljava/lang/String;
    .locals 12
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const-wide/16 v10, 0x0

    .line 149
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 152
    .local v0, "currtime":J
    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/GTUtils;->getGpsSaveTime(J)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "timestr":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 155
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 157
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 159
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 161
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 163
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->df:Ljava/text/DecimalFormat;

    long-to-double v6, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 171
    iget-wide v4, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->timeStamp:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->timeStamp:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 173
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "record tag success"

    .line 174
    const/4 v6, 0x0

    .line 173
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 174
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 175
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v4, "tag"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_0
    iput-wide v10, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->timeStamp:J

    .line 180
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public onBind()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 105
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "start record.."

    .line 106
    const/4 v2, 0x0

    .line 105
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->lm:Landroid/location/LocationManager;

    .line 109
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine$MyLocationListener;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine$MyLocationListener;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->locationListener:Landroid/location/LocationListener;

    .line 110
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 111
    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->locationListener:Landroid/location/LocationListener;

    .line 110
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".gps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->recordFile:Ljava/lang/String;

    .line 115
    iput-boolean v8, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->isRecord:Z

    .line 117
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 122
    check-cast v7, Landroid/os/PowerManager;

    .line 125
    .local v7, "powerManager":Landroid/os/PowerManager;
    const-string v0, "location_in_bg"

    .line 124
    invoke-virtual {v7, v8, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 127
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 128
    return-void

    .line 117
    .end local v7    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;

    .line 119
    .local v6, "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;
    invoke-interface {v6}, Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;->onRecordStart()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 135
    :cond_0
    invoke-super {p0}, Lcom/tencent/wstt/gt/plugin/BaseService;->onDestroy()V

    .line 136
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->lm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 137
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->recordFile:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->saveGPS(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->isRecord:Z

    .line 144
    return-void

    .line 139
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;

    .line 141
    .local v0, "listener":Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;
    invoke-interface {v0}, Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;->onRecordStop()V

    goto :goto_0
.end method

.method public declared-synchronized removeListener(Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->timeStamp:J

    .line 95
    return-void
.end method
