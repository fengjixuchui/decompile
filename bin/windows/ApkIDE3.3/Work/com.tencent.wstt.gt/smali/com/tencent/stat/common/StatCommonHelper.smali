.class public Lcom/tencent/stat/common/StatCommonHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/Random;

.field private static f:Landroid/util/DisplayMetrics;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:I

.field private static m:Lcom/tencent/stat/common/StatLogger;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static volatile p:I

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:J

.field private static t:Ljava/lang/String;

.field private static u:Lcom/tencent/stat/common/n;

.field private static v:Ljava/lang/String;

.field private static w:I

.field private static x:J

.field private static y:I

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->a:Ljava/lang/String;

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->b:Ljava/lang/String;

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->c:Ljava/lang/String;

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->d:Ljava/lang/String;

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->e:Ljava/util/Random;

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->f:Landroid/util/DisplayMetrics;

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->h:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->i:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->j:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->k:Ljava/lang/String;

    sput v2, Lcom/tencent/stat/common/StatCommonHelper;->l:I

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->n:Ljava/lang/String;

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->o:Ljava/lang/String;

    sput v2, Lcom/tencent/stat/common/StatCommonHelper;->p:I

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->q:Ljava/lang/String;

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->r:Ljava/lang/String;

    sput-wide v4, Lcom/tencent/stat/common/StatCommonHelper;->s:J

    const-string v0, ""

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->t:Ljava/lang/String;

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->u:Lcom/tencent/stat/common/n;

    const-string v0, "__MTA_FIRST_ACTIVATE__"

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->v:Ljava/lang/String;

    sput v2, Lcom/tencent/stat/common/StatCommonHelper;->w:I

    sput-wide v4, Lcom/tencent/stat/common/StatCommonHelper;->x:J

    const/4 v0, 0x0

    sput v0, Lcom/tencent/stat/common/StatCommonHelper;->y:I

    const-string v0, ""

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/tencent/stat/common/StatLogger;
    .locals 1

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->o:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->o:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)J
    .locals 2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method private static declared-synchronized b()Ljava/util/Random;
    .locals 2

    const-class v1, Lcom/tencent/stat/common/StatCommonHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->e:Ljava/util/Random;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->e:Ljava/util/Random;

    :cond_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->e:Ljava/util/Random;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c()J
    .locals 6

    const/4 v4, 0x0

    sget-wide v0, Lcom/tencent/stat/common/StatCommonHelper;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-wide v0, Lcom/tencent/stat/common/StatCommonHelper;->s:J

    :goto_0
    return-wide v0

    :cond_0
    const-string v2, "/proc/meminfo"

    const-wide/16 v0, 0x1

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v3, v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "\\s+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    :cond_1
    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_1
    sput-wide v0, Lcom/tencent/stat/common/StatCommonHelper;->s:J

    sget-wide v0, Lcom/tencent/stat/common/StatCommonHelper;->s:J

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v3, v4

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_4
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_3
    if-eqz v5, :cond_5

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v5, v4

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v4, v5

    goto :goto_2
.end method

.method public static checkBluetooth()I
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkFirstTimeActivate(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->v:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tencent/stat/common/StatPreferences;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/stat/common/StatCommonHelper;->w:I

    sget v0, Lcom/tencent/stat/common/StatCommonHelper;->w:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->v:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/stat/common/StatPreferences;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static checkPhoneState(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static convertStringToLong(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;)Ljava/lang/Long;
    .locals 11

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p4

    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    if-ne v0, p3, :cond_0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_1
    array-length v2, v3

    if-ge v1, v2, :cond_4

    int-to-long v4, p2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object p4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deocdeGZipContent([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v2
.end method

.method public static getActivityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAllSensors(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->t:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_1

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->t:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static getAndroidOsBuildVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "TA_APPKEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "Could not read APPKEY meta-data from AndroidManifest.xml"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "Could not read APPKEY meta-data from AndroidManifest.xml"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->k:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->k:Ljava/lang/String;

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "unknown"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_2
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCameras(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->z:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->z:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    :cond_2
    :goto_1
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->z:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCameras failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    :cond_3
    throw v0
.end method

.method public static declared-synchronized getCamerasHelper(Landroid/content/Context;)Lcom/tencent/stat/common/n;
    .locals 2

    const-class v1, Lcom/tencent/stat/common/StatCommonHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->u:Lcom/tencent/stat/common/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/stat/common/n;

    invoke-direct {v0}, Lcom/tencent/stat/common/n;-><init>()V

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->u:Lcom/tencent/stat/common/n;

    :cond_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->u:Lcom/tencent/stat/common/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCpuInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "n"

    invoke-static {}, Lcom/tencent/stat/common/l;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/tencent/stat/common/l;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "na"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {}, Lcom/tencent/stat/common/l;->b()I

    move-result v0

    if-lez v0, :cond_1

    const-string v2, "fx"

    const v3, 0xf4240

    div-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lcom/tencent/stat/common/l;->c()I

    move-result v0

    if-lez v0, :cond_2

    const-string v2, "fn"

    const v3, 0xf4240

    div-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "MtaSDK"

    const-string v3, "get cpu error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getCpuString()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->q:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Intel"

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->q:Ljava/lang/String;

    :goto_1
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->q:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/proc/cpuinfo"

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->q:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_1
    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->q:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getCpuType()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/tencent/stat/common/StatCommonHelper;->getCpuString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "ARMv5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "armv5"

    :goto_0
    const-string v2, "neon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_neon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "ARMv6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "armv6"

    goto :goto_0

    :cond_1
    const-string v0, "ARMv7"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "armv7"

    goto :goto_0

    :cond_2
    const-string v0, "Intel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "x86"

    goto :goto_0

    :cond_3
    const-string v0, "unknown"

    goto :goto_1

    :cond_4
    const-string v2, "vfpv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vfpv3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v2, " vfp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vfp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getCurAppMd5Signature(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->i:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "packageInfo is null "

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_3

    :cond_2
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "signatures is null"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->i:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getCurAppSHA1Signature(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->j:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "packageInfo is null "

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_3

    :cond_2
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "signatures is null"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_6

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v3, -0x1

    if-eq v0, v4, :cond_5

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->j:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->j:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public static getCurAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->h:Ljava/lang/String;

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_1
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDatabaseName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/stat/common/StatConstants;->DATABASE_NAME:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/stat/common/StatCommonHelper;->getTagForConcurrentProcess(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormat(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateString(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->roll(II)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/tencent/stat/common/StatCommonHelper;->checkPhoneState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getDeviceModel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getDiffTime(Landroid/content/Context;Z)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/tencent/stat/common/StatCommonHelper;->readDiffTimeFromServer(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/tencent/stat/common/StatCommonHelper;->y:I

    :cond_0
    sget v0, Lcom/tencent/stat/common/StatCommonHelper;->y:I

    return v0
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->f:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->f:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->f:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->f:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static getExternalStorageInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->n:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Lcom/tencent/stat/common/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v2, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/stat/common/StatCommonHelper;->n:Ljava/lang/String;

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->n:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v2, "can not get the permission of android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getGPSLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v2, "getGPSLocation"

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGPSLocation location:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    sget-object v2, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getHttpProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string v2, "cmwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.172"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_6
    move-object v0, v1

    goto :goto_0

    :cond_7
    :try_start_1
    const-string v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.200"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getInstallChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "InstallChannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "Could not read InstallChannel meta-data from AndroidManifest.xml"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "Could not read InstallChannel meta-data from AndroidManifest.xml"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getLinkedWay(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v2, ""

    :try_start_0
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_6

    const-string v3, "WIFI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "WIFI"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v3, "MOBILE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_2
    const-string v0, "MOBILE"

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "can not get the permission of android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static declared-synchronized getLogger()Lcom/tencent/stat/common/StatLogger;
    .locals 3

    const-class v1, Lcom/tencent/stat/common/StatCommonHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/stat/common/StatLogger;

    const-string v2, "MtaSDK"

    invoke-direct {v0, v2}, Lcom/tencent/stat/common/StatLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->setDebugEnable(Z)V

    :cond_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMacId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/tencent/stat/common/StatCommonHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/tencent/stat/common/Util;->getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->c:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getNetworkLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v2, "getNetworkLocation"

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkLocation location:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    sget-object v2, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static declared-synchronized getNextEventIndexNo(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 5

    const/4 v0, 0x0

    const-class v2, Lcom/tencent/stat/common/StatCommonHelper;

    monitor-enter v2

    :try_start_0
    sget v1, Lcom/tencent/stat/common/StatCommonHelper;->p:I

    if-lez v1, :cond_1

    sget v1, Lcom/tencent/stat/common/StatCommonHelper;->p:I

    rem-int/lit16 v1, v1, 0x3e8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    sget v1, Lcom/tencent/stat/common/StatCommonHelper;->p:I

    add-int/lit16 v1, v1, 0x3e8

    sget v3, Lcom/tencent/stat/common/StatCommonHelper;->p:I

    const v4, 0x7ffe795f

    if-lt v3, v4, :cond_2

    :goto_0
    const-string v1, "MTA_EVENT_INDEX"

    invoke-static {p0, v1, v0}, Lcom/tencent/stat/common/StatPreferences;->putInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    :try_start_2
    sget v0, Lcom/tencent/stat/common/StatCommonHelper;->p:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/stat/common/StatCommonHelper;->p:I

    sget v0, Lcom/tencent/stat/common/StatCommonHelper;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_4
    const-string v0, "MTA_EVENT_INDEX"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/stat/common/StatPreferences;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/stat/common/StatCommonHelper;->p:I

    const-string v0, "MTA_EVENT_INDEX"

    sget v1, Lcom/tencent/stat/common/StatCommonHelper;->p:I

    add-int/lit16 v1, v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/tencent/stat/common/StatPreferences;->putInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static getNextSessionID()I
    .locals 2

    invoke-static {}, Lcom/tencent/stat/common/StatCommonHelper;->b()Ljava/util/Random;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "android.permission.GET_TASKS"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "Could not get permission of android.permission.GET_TASKS"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getRomMemory()Ljava/lang/String;
    .locals 8

    const-wide/32 v6, 0xf4240

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->r:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/stat/common/StatCommonHelper;->getTotalInternalMemorySize()J

    move-result-wide v0

    div-long/2addr v0, v6

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->r:Ljava/lang/String;

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSDKLongVersion(Ljava/lang/String;)J
    .locals 6

    const-string v0, "."

    const/16 v1, 0x64

    const/4 v2, 0x3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/stat/common/StatCommonHelper;->convertStringToLong(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/tencent/stat/common/StatCommonHelper;->checkPhoneState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->g:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "Could not get permission of android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getStatSendStrategy(Landroid/content/Context;)Lcom/tencent/stat/StatReportStrategy;
    .locals 1

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getStatSendStrategy()Lcom/tencent/stat/StatReportStrategy;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemMemory(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-static {p0}, Lcom/tencent/stat/common/StatCommonHelper;->b(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {}, Lcom/tencent/stat/common/StatCommonHelper;->c()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTagForConcurrentProcess(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableConcurrentProcess()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/stat/common/StatCommonHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->o:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static getTelephonyNetworkType(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTomorrowStartMilliseconds()J
    .locals 6

    const-wide/32 v4, 0x5265c00

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v0, v4

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v4

    goto :goto_0
.end method

.method public static getTotalInternalMemorySize()J
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUser(Landroid/content/Context;)Lcom/tencent/stat/common/DeviceInfo;
    .locals 1

    invoke-static {p0}, Lcom/tencent/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/stat/ba;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/stat/ba;->b(Landroid/content/Context;)Lcom/tencent/stat/common/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getUserID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/tencent/stat/common/StatCommonHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/tencent/stat/common/Util;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->a:Ljava/lang/String;

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/stat/common/StatCommonHelper;->b()Ljava/util/Random;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/StatCommonHelper;->a:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasRootAccess(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/tencent/stat/common/StatCommonHelper;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/tencent/stat/common/StatCommonHelper;->l:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/tencent/stat/common/StatCommonHelper;->l:I

    :try_start_0
    invoke-static {}, Lcom/tencent/stat/common/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput v0, Lcom/tencent/stat/common/StatCommonHelper;->l:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget v0, Lcom/tencent/stat/common/StatCommonHelper;->l:I

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static haveGravity(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isApplicationBroughtToBackground(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "android.permission.GET_TASKS"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    sget-object v3, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isApplicationBroughtToBackground top package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static isBackground(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBackground processName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", importance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/tencent/stat/common/StatCommonHelper;->isLockScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/tencent/stat/common/StatCommonHelper;->isApplicationBroughtToBackground(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBackgroundRunning(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x190

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static isLockScreenOn(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public static isSpecifyReportedValid(Lcom/tencent/stat/StatSpecifyReportedInfo;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/stat/StatSpecifyReportedInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isStringValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized isTheFirstTimeActivate(Landroid/content/Context;)I
    .locals 3

    const-class v1, Lcom/tencent/stat/common/StatCommonHelper;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/tencent/stat/common/StatCommonHelper;->w:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    sget v0, Lcom/tencent/stat/common/StatCommonHelper;->w:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/tencent/stat/common/StatCommonHelper;->checkFirstTimeActivate(Landroid/content/Context;)V

    sget v0, Lcom/tencent/stat/common/StatCommonHelper;->w:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isWiFiActive(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    const-string v2, "can not get the permission of android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/stat/common/StatCommonHelper;->m:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static md5sum(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "0"

    goto :goto_0
.end method

.method public static needCheckTime(Landroid/content/Context;)Z
    .locals 4

    const-wide/16 v2, 0x0

    sget-wide v0, Lcom/tencent/stat/common/StatCommonHelper;->x:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "mta.qq.com.checktime"

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/stat/common/StatPreferences;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/stat/common/StatCommonHelper;->x:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/stat/common/StatCommonHelper;->x:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readDiffTimeFromServer(Landroid/content/Context;)I
    .locals 2

    const-string v0, "mta.qq.com.difftime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/stat/common/StatPreferences;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static updateCheckTime(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/stat/common/StatCommonHelper;->x:J

    const-string v0, "mta.qq.com.checktime"

    sget-wide v2, Lcom/tencent/stat/common/StatCommonHelper;->x:J

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/stat/common/StatPreferences;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static writeDiffTimeFromServer(Landroid/content/Context;I)V
    .locals 1

    sput p1, Lcom/tencent/stat/common/StatCommonHelper;->y:I

    const-string v0, "mta.qq.com.difftime"

    invoke-static {p0, v0, p1}, Lcom/tencent/stat/common/StatPreferences;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
