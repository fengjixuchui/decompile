.class public Lcom/tencent/wstt/gt/api/utils/Env;
.super Ljava/lang/Object;
.source "Env.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;
    }
.end annotation


# static fields
.field public static final API:I

.field public static final BUGLY_APPPAGE:Ljava/lang/String; = "http://bugly.qq.com/apps"

.field public static final CMD_ROOT_PATH:Ljava/lang/String;

.field public static CRASH_LOG_FOLDER:Ljava/io/File; = null

.field public static CUR_APP_NAME:Ljava/lang/String; = null

.field public static CUR_APP_VER:Ljava/lang/String; = null

.field public static final GT_APP_NAME:Ljava/lang/String; = "default"

.field public static final GT_CRASH_LOG:Ljava/io/File;

.field public static final GT_HOMEPAGE:Ljava/lang/String; = "http://gt.qq.com/"

.field public static final GT_POLICY:Ljava/lang/String; = "http://gt.qq.com/wp-content/EULA_EN.html"

.field public static final INSIDE_SO_FOLDER:Ljava/lang/String;

.field public static final LIB_FILE:Ljava/lang/String;

.field public static final LIB_FOLDER:Ljava/lang/String;

.field public static ROOT_BATTERY_FOLDER:Ljava/io/File;

.field public static ROOT_CONFIG_FOLDER:Ljava/io/File;

.field public static ROOT_GPS_FOLDER:Ljava/io/File;

.field public static ROOT_GT_FOLDER:Ljava/io/File;

.field public static ROOT_GW_FOLDER:Ljava/io/File;

.field public static ROOT_GW_MAN_FOLDER:Ljava/io/File;

.field public static ROOT_LOG_FOLDER:Ljava/io/File;

.field public static ROOT_TCPDUMP_FOLDER:Ljava/io/File;

.field public static ROOT_TIME_AUTO_FOLDER:Ljava/io/File;

.field public static ROOT_TIME_FOLDER:Ljava/io/File;

.field public static final S_CRASH_LOG_FOLDER:Ljava/lang/String;

.field public static final S_ROOT_BATTERY_FOLDER:Ljava/lang/String;

.field public static final S_ROOT_CONFIG_FOLDER:Ljava/lang/String;

.field public static final S_ROOT_DUMP_FOLDER:Ljava/lang/String;

.field public static final S_ROOT_GPS_FOLDER:Ljava/lang/String;

.field public static S_ROOT_GT_FOLDER:Ljava/lang/String;

.field public static final S_ROOT_GW_FOLDER:Ljava/lang/String;

.field public static final S_ROOT_GW_MAN_FOLDER:Ljava/lang/String;

.field public static final S_ROOT_LOG_FOLDER:Ljava/lang/String;

.field public static final S_ROOT_TCPDUMP_FOLDER:Ljava/lang/String;

.field public static final S_ROOT_TIME_AUTO_FOLDER:Ljava/lang/String;

.field public static final S_ROOT_TIME_FOLDER:Ljava/lang/String;

.field private static hasSDCardNotExistWarned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->CMD_ROOT_PATH:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->LIB_FILE:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->LIB_FOLDER:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->INSIDE_SO_FOLDER:Ljava/lang/String;

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/tencent/wstt/gt/api/utils/Env;->API:I

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->getAbsoluteSdcardPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/GT/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GT_FOLDER:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_LOG_FOLDER:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_LOG_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "GPS/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GPS_FOLDER:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_LOG_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Crash/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_CRASH_LOG_FOLDER:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Profiler/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_TIME_FOLDER:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "GW/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GW_FOLDER:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Man/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GW_MAN_FOLDER:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_TIME_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Auto/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_TIME_AUTO_FOLDER:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Dump/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_DUMP_FOLDER:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Tcpdump/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_TCPDUMP_FOLDER:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Config/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_CONFIG_FOLDER:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Battery/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_BATTERY_FOLDER:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->CRASH_LOG_FOLDER:Ljava/io/File;

    const-string v2, "gt_crashlog.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->GT_CRASH_LOG:Ljava/io/File;

    .line 98
    const-string v0, "default"

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_NAME:Ljava/lang/String;

    .line 99
    const-string v0, ""

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_VER:Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/api/utils/Env;->hasSDCardNotExistWarned:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GT_FOLDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 109
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_LOG_FOLDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 110
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GPS_FOLDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 111
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_CRASH_LOG_FOLDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 112
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_TIME_FOLDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 113
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GW_FOLDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 114
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GW_MAN_FOLDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 115
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_TIME_AUTO_FOLDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 116
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_TCPDUMP_FOLDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 117
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_CONFIG_FOLDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 118
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_BATTERY_FOLDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 120
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GT_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_GT_FOLDER:Ljava/io/File;

    .line 121
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GT_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_GT_FOLDER:Ljava/io/File;

    .line 122
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_LOG_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_LOG_FOLDER:Ljava/io/File;

    .line 123
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GPS_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_GPS_FOLDER:Ljava/io/File;

    .line 124
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_CRASH_LOG_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->CRASH_LOG_FOLDER:Ljava/io/File;

    .line 125
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_TIME_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_TIME_FOLDER:Ljava/io/File;

    .line 126
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GW_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_GW_FOLDER:Ljava/io/File;

    .line 127
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_GW_MAN_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_GW_MAN_FOLDER:Ljava/io/File;

    .line 128
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_TIME_AUTO_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_TIME_AUTO_FOLDER:Ljava/io/File;

    .line 129
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_TCPDUMP_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_TCPDUMP_FOLDER:Ljava/io/File;

    .line 130
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_CONFIG_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_CONFIG_FOLDER:Ljava/io/File;

    .line 131
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_BATTERY_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_BATTERY_FOLDER:Ljava/io/File;

    .line 132
    return-void
.end method

.method public static isSDCardExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 138
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    sget-boolean v1, Lcom/tencent/wstt/gt/api/utils/Env;->hasSDCardNotExistWarned:Z

    if-nez v1, :cond_0

    .line 143
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sdcard required!"

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    sput-boolean v0, Lcom/tencent/wstt/gt/api/utils/Env;->hasSDCardNotExistWarned:Z

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 148
    :cond_1
    return v0
.end method
