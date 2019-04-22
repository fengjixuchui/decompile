.class public final Lcom/tencent/wstt/gt/api/utils/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;
    }
.end annotation


# static fields
.field public static final ADB_DIR_NAME:Ljava/lang/String; = "platform-tools"

.field public static final ADT_PLUGIN_ID:Ljava/lang/String; = "com.android.ide.eclipse.adt"

.field public static final ADT_PLUGIN_PREFERENCES_SDK:Ljava/lang/String; = "com.android.ide.eclipse.adt.sdk"

.field public static final ALL_CPU_KIND_COUNT:I = 0x2

.field public static final ALL_MEM_KIND_COUNT:I = 0x9

.field public static final ANDROID_2X:I = 0x1

.field public static final ANDROID_4X:I = 0x0

.field public static final APTLOG_COLUMN_NAME:Ljava/lang/String; = "COLUMN_NAME"

.field public static final APTLOG_FILECONTENT_NEWLINE:Ljava/lang/String; = "\r\n"

.field public static final APTLOG_FILECONTENT_SPLIT:Ljava/lang/String; = ","

.field public static final APTLOG_FILENAME_PREFIX:Ljava/lang/String; = "APT"

.field public static final APTLOG_FILENAME_SPLIT:Ljava/lang/String; = "_"

.field public static final APTLOG_FILENAME_SUFFIX:Ljava/lang/String; = ".log"

.field public static final APTLOG_KEYVALUE_SPLIT:Ljava/lang/String; = "="

.field public static final APTLOG_PKGNAME:Ljava/lang/String; = "PKG_NAME"

.field public static final APTLOG_TESTITEM:Ljava/lang/String; = "TESTITEM"

.field public static final APT_OFFICIAL_WEBSITE:Ljava/lang/String; = "http://pub.code.oa.com/project/home?projectName=APT"

.field public static final APT_SERVER_URL:Ljava/lang/String; = "http://10.6.222.155:8080/apt/upload/"

.field public static final BLANK_SPLIT:Ljava/lang/String; = "\\s+"

.field public static final CMD_RESULT_SPLIT:Ljava/lang/String; = "\r\n"

.field public static final CPU_INDEX:I = 0x0

.field public static final CPU_ITEM_MAPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CPU_ITEM_TITLES:[Ljava/lang/String;

.field public static final CPU_JIFFIES_INDEX:I = 0x1

.field public static final CPU_PERSENT_INDEX:I = 0x0

.field public static final CPU_TESTMETHOD_NUMBER:I = 0x2

.field public static final CPU_TESTMETHOD_TITLES:[Ljava/lang/String;

.field public static final DATAITEM_SPLIT:Ljava/lang/String; = ";"

.field public static final DUMPSYS_CPUINFO_INDEX:I = 0x1

.field public static final FAILED:I = 0xa

.field public static final HEAPALLOC_DALVIK_INDEX:I = 0x7

.field public static final HEAPALLOC_NATIVE_INDEX:I = 0x6

.field public static final HEAPALLOC_TOTAL_INDEX:I = 0x8

.field public static final LINE_WIDTH:F = 2.0f

.field public static final MARGIN_WIDTH:I = 0xa

.field public static final MARGIN_WIDTH_NARROW:I = 0x5

.field public static final MAX_PKG_NUMBER:I = 0x3

.field public static final MEM_INDEX:I = 0x1

.field public static final MEM_ITEM_MAPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEM_ITEM_TITLES:[Ljava/lang/String;

.field public static final PID_NOT_EXSIT:Ljava/lang/String; = "-1"

.field public static final PRIV_DALVIK_INDEX:I = 0x1

.field public static final PRIV_NATIVE_INDEX:I = 0x0

.field public static final PRIV_TOTAL_INDEX:I = 0x2

.field public static final PSS_DALVIK_INDEX:I = 0x4

.field public static final PSS_NATIVE_INDEX:I = 0x3

.field public static final PSS_TOTAL_INDEX:I = 0x5

.field public static final TEST_ITEM_COUNT:I = 0x2

.field public static final TEXT_ITEM_TITLES:[Ljava/lang/String;

.field public static final TOP_INDEX:I = 0x0

.field public static final TOP_UPDATE_PERIOD:I = 0x3

.field public static final VIEW_MARGIN_WIDTH:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "CPU%"

    aput-object v1, v0, v3

    const-string v1, "Jiffies"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Constant;->CPU_ITEM_TITLES:[Ljava/lang/String;

    .line 83
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "top"

    aput-object v1, v0, v3

    const-string v1, "dumpsys cpuinfo"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Constant;->CPU_TESTMETHOD_TITLES:[Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/tencent/wstt/gt/api/utils/Constant$1;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/api/utils/Constant$1;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Constant;->CPU_ITEM_MAPS:Ljava/util/Map;

    .line 117
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PrivNative"

    aput-object v1, v0, v3

    const-string v1, "PrivDalvik"

    aput-object v1, v0, v4

    .line 118
    const-string v1, "PrivTotal"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "PSSNative"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PSSDalvik"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PSSTotal"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 119
    const-string v2, "HeapAllocNative"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HeapAllocDalvik"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HeapAllocTotal"

    aput-object v2, v0, v1

    .line 117
    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Constant;->MEM_ITEM_TITLES:[Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/tencent/wstt/gt/api/utils/Constant$2;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/api/utils/Constant$2;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Constant;->MEM_ITEM_MAPS:Ljava/util/Map;

    .line 147
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "CPU"

    aput-object v1, v0, v3

    const-string v1, "Memory"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Constant;->TEXT_ITEM_TITLES:[Ljava/lang/String;

    .line 188
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
