.class public Loicq/wlogin_sdk/tools/util;
.super Ljava/lang/Object;
.source "util.java"


# static fields
.field public static final ASYN_CHECK_IMAGE:I = 0x2

.field public static final ASYN_CHECK_SMS:I = 0x4

.field public static final ASYN_EXCEPTION:I = 0xb

.field public static final ASYN_GET_A1_WITH_A1:I = 0x6

.field public static final ASYN_GET_ST_WITHOUT_PWD:I = 0x5

.field public static final ASYN_GET_ST_WITH_PWD:I = 0x0

.field public static final ASYN_REFLUSH_IMAGE:I = 0x1

.field public static final ASYN_REFLUSH_SMS:I = 0x3

.field public static final ASYN_REPORT:I = 0x7

.field public static final ASYN_REPORT_ERROR:I = 0x8

.field public static final ASYN_SMSLOGIN_CHECK:I = 0xc

.field public static final ASYN_SMSLOGIN_REFRESH:I = 0xe

.field public static final ASYN_SMSLOGIN_VERIFY:I = 0xd

.field public static final ASYN_TRANSPORT:I = 0x9

.field public static final ASYN_TRANSPORT_MSF:I = 0xa

.field public static final BUILD_TIME:J = 0x55bb059fL

.field public static final D:I = 0x2

.field private static DAYFORMAT:Ljava/text/SimpleDateFormat; = null

.field public static final E_A1_DECRYPT:I = -0x3f6

.field public static final E_A1_FORMAT:I = -0x3f8

.field public static final E_APK_CHK_ERR:I = -0x3fd

.field public static final E_DECRYPT:I = -0x3ea

.field public static final E_ENCODING:I = -0x3f5

.field public static final E_INPUT:I = -0x3f9

.field public static final E_NAME_INVALID:I = -0x3f0

.field public static final E_NO_KEY:I = -0x3ec

.field public static final E_NO_REG_CMD:I = -0x3f2

.field public static final E_NO_RET:I = -0x3e8

.field public static final E_NO_TGTKEY:I = -0x3ee

.field public static final E_NO_UIN:I = -0x3eb

.field public static final E_PENDING:I = -0x3e9

.field public static final E_PK_LEN:I = -0x3f1

.field public static final E_PUSH_REG:I = -0x3f3

.field public static final E_RESOLVE_ADDR:I = -0x3ef

.field public static final E_SAVE_TICKET_ERROR:I = -0x3fe

.field public static final E_SHARE_SERVICE_EXCEPTION:I = -0x3fc

.field public static final E_SHARE_SERVICE_PARAM:I = -0x3fb

.field public static final E_SHARE_SERVICE_UNCHECK:I = -0x3fa

.field public static final E_SYSTEM:I = -0x3f4

.field public static final E_TLV_DECRYPT:I = -0x3f7

.field public static final E_TLV_VERIFY:I = -0x3ed

.field public static final FILE_DIR:Ljava/lang/String; = "wtlogin"

.field private static HONEYCOMB:I = 0x0

.field public static final I:I = 0x1

.field public static LCB:Loicq/wlogin_sdk/tools/LogCallBack; = null

.field public static LOGCAT_OUT:Z = false

.field public static final LOG_DIR:Ljava/lang/String; = "tencent/wtlogin"

.field public static LOG_LEVEL:I = 0x0

.field public static MAX_APPID:I = 0x0

.field public static final MAX_CONTENT_SIZE:I = 0x1000

.field public static final MAX_FILE_SIZE:I = 0x19000

.field public static MAX_NAME_LEN:I = 0x0

.field private static MODE_MULTI_PROCESS:I = 0x0

.field public static final SDK_VERSION:Ljava/lang/String; = "5.4.0.7"

.field public static final SSO_VERSION:I = 0x5

.field public static final SVN_VER:J = 0x411L

.field public static final S_BABYLH_EXPIRED:I = 0x74

.field public static final S_GET_IMAGE:I = 0x2

.field public static final S_GET_SMS:I = 0xa0

.field public static final S_LH_EXPIRED:I = 0x29

.field public static final S_PWD_WRONG:I = 0x1

.field public static final S_ROLL_BACK:I = 0xb4

.field public static final S_SEC_GUID:I = 0xcc

.field public static final S_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "wlogin_sdk"

.field public static final W:I = 0x0

.field static final base64_encode_chars:[C

.field static final base64_pad_url:C = '_'

.field static final base64_reverse_table_url:[S

.field private static libwtecdh_loaded:Z

.field public static logContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 90
    const v1, 0xffff

    sput v1, Loicq/wlogin_sdk/tools/util;->MAX_APPID:I

    .line 91
    const/16 v1, 0x80

    sput v1, Loicq/wlogin_sdk/tools/util;->MAX_NAME_LEN:I

    .line 110
    const/4 v1, 0x1

    sput v1, Loicq/wlogin_sdk/tools/util;->LOG_LEVEL:I

    .line 114
    sput-object v2, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    .line 115
    sput-boolean v0, Loicq/wlogin_sdk/tools/util;->LOGCAT_OUT:Z

    .line 126
    const-string v1, ""

    sput-object v1, Loicq/wlogin_sdk/tools/util;->logContent:Ljava/lang/String;

    .line 128
    sput-object v2, Loicq/wlogin_sdk/tools/util;->DAYFORMAT:Ljava/text/SimpleDateFormat;

    .line 130
    sput-boolean v0, Loicq/wlogin_sdk/tools/util;->libwtecdh_loaded:Z

    .line 133
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    const/4 v0, 0x4

    :cond_0
    sput v0, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    .line 708
    const/16 v0, 0xb

    sput v0, Loicq/wlogin_sdk/tools/util;->HONEYCOMB:I

    .line 1249
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Loicq/wlogin_sdk/tools/util;->base64_encode_chars:[C

    .line 1290
    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Loicq/wlogin_sdk/tools/util;->base64_reverse_table_url:[S

    return-void

    .line 1249
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    .line 1290
    :array_1
    .array-data 2
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x3es
        -0x1s
        -0x1s
        0x3fs
        -0x1s
        -0x1s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x3bs
        0x3cs
        0x3ds
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    return-void
.end method

.method public static CheckMayFastLogin(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1912
    if-nez p0, :cond_1

    .line 1953
    :cond_0
    :goto_0
    return v0

    .line 1917
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1921
    :try_start_0
    const-string v3, "com.tencent.mobileqq"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1927
    if-eqz v2, :cond_0

    .line 1931
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1933
    const-string v3, "4.6.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    move v0, v1

    .line 1934
    goto :goto_0

    .line 1938
    :cond_2
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1939
    if-ltz v3, :cond_0

    .line 1941
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1943
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 1948
    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 1949
    goto :goto_0

    .line 1944
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1923
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static ExistSDCard()Z
    .locals 2

    .prologue
    .line 1453
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    const/4 v0, 0x1

    .line 1457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static LOGD(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1191
    :try_start_0
    sget v0, Loicq/wlogin_sdk/tools/util;->LOG_LEVEL:I

    if-lt v0, v1, :cond_0

    .line 1193
    sget-object v0, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    if-eqz v0, :cond_1

    .line 1194
    sget-object v0, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    invoke-virtual {v0, p0}, Loicq/wlogin_sdk/tools/LogCallBack;->OnLog(Ljava/lang/String;)V

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    sget-boolean v0, Loicq/wlogin_sdk/tools/util;->LOGCAT_OUT:Z

    if-eqz v0, :cond_0

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wlogin_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->getLineInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static LOGD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 1206
    :try_start_0
    sget v0, Loicq/wlogin_sdk/tools/util;->LOG_LEVEL:I

    if-lt v0, v1, :cond_0

    .line 1208
    sget-object v0, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    if-eqz v0, :cond_1

    .line 1209
    sget-object v0, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    invoke-virtual {v0, p0, p1}, Loicq/wlogin_sdk/tools/LogCallBack;->OnLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    sget-boolean v0, Loicq/wlogin_sdk/tools/util;->LOGCAT_OUT:Z

    if-eqz v0, :cond_0

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wlogin_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->getLineInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static LOGI(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1161
    :try_start_0
    sget v0, Loicq/wlogin_sdk/tools/util;->LOG_LEVEL:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 1162
    sget-object v0, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    if-eqz v0, :cond_1

    .line 1163
    sget-object v0, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    invoke-virtual {v0, p0}, Loicq/wlogin_sdk/tools/LogCallBack;->OnLog(Ljava/lang/String;)V

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    sget-boolean v0, Loicq/wlogin_sdk/tools/util;->LOGCAT_OUT:Z

    if-eqz v0, :cond_0

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wlogin_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->getLineInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static LOGI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1175
    :try_start_0
    sget v0, Loicq/wlogin_sdk/tools/util;->LOG_LEVEL:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 1176
    sget-object v0, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    if-eqz v0, :cond_2

    .line 1177
    sget-object v0, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    invoke-virtual {v0, p0}, Loicq/wlogin_sdk/tools/LogCallBack;->OnLog(Ljava/lang/String;)V

    .line 1183
    :cond_0
    :goto_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Loicq/wlogin_sdk/tools/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    :cond_1
    :goto_1
    return-void

    .line 1179
    :cond_2
    sget-boolean v0, Loicq/wlogin_sdk/tools/util;->LOGCAT_OUT:Z

    if-eqz v0, :cond_0

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wlogin_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->getLineInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1185
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static LOGW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1221
    :try_start_0
    sget v0, Loicq/wlogin_sdk/tools/util;->LOG_LEVEL:I

    if-ltz v0, :cond_0

    .line 1222
    sget-object v0, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    if-eqz v0, :cond_1

    .line 1223
    sget-object v0, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    invoke-virtual {v0, p0, p1}, Loicq/wlogin_sdk/tools/LogCallBack;->OnLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    sget-boolean v0, Loicq/wlogin_sdk/tools/util;->LOGCAT_OUT:Z

    if-eqz v0, :cond_0

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wlogin_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->getLineInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1229
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1235
    :try_start_0
    sget v0, Loicq/wlogin_sdk/tools/util;->LOG_LEVEL:I

    if-ltz v0, :cond_1

    .line 1236
    sget-object v0, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    if-eqz v0, :cond_2

    .line 1237
    sget-object v0, Loicq/wlogin_sdk/tools/util;->LCB:Loicq/wlogin_sdk/tools/LogCallBack;

    invoke-virtual {v0, p0, p1}, Loicq/wlogin_sdk/tools/LogCallBack;->OnLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    :cond_0
    :goto_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->r:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Loicq/wlogin_sdk/tools/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    :cond_1
    :goto_1
    return-void

    .line 1239
    :cond_2
    sget-boolean v0, Loicq/wlogin_sdk/tools/util;->LOGCAT_OUT:Z

    if-eqz v0, :cond_0

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wlogin_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->getLineInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1245
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static RSADecrypt([BLjava/security/Key;)[B
    .locals 11

    .prologue
    const/16 v10, 0x80

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1778
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1806
    :cond_0
    :goto_0
    return-object v0

    .line 1782
    :cond_1
    :try_start_0
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 1783
    const/4 v2, 0x2

    invoke-virtual {v3, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1785
    const/16 v4, 0x80

    .line 1786
    array-length v5, p0

    .line 1787
    new-array v6, v5, [B

    .line 1790
    rem-int v2, v5, v4

    if-nez v2, :cond_0

    move v2, v1

    .line 1793
    :goto_1
    div-int v7, v5, v4

    if-ge v1, v7, :cond_2

    .line 1794
    const/16 v7, 0x80

    new-array v7, v7, [B

    .line 1795
    mul-int v8, v1, v10

    const/4 v9, 0x0

    invoke-static {p0, v8, v7, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1796
    invoke-virtual {v3, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 1797
    const/4 v8, 0x0

    array-length v9, v7

    invoke-static {v7, v8, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1798
    array-length v7, v7

    add-int/2addr v2, v7

    .line 1793
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1800
    :cond_2
    new-array v1, v2, [B

    .line 1801
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v6, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1803
    goto :goto_0

    .line 1804
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static RSAEncrypt([BLjava/security/Key;)[B
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1749
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, v1

    .line 1774
    :cond_1
    :goto_0
    return-object v0

    .line 1753
    :cond_2
    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 1754
    const/4 v0, 0x1

    invoke-virtual {v7, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1756
    const/16 v8, 0x80

    .line 1757
    const/16 v6, 0x75

    .line 1759
    array-length v3, p0

    .line 1760
    div-int v0, v3, v6

    int-to-double v4, v0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v9, v4

    .line 1761
    mul-int v0, v8, v9

    new-array v0, v0, [B

    move v4, v2

    move v2, v6

    .line 1762
    :goto_1
    if-ge v4, v9, :cond_1

    .line 1763
    if-ge v3, v6, :cond_3

    move v2, v3

    .line 1766
    :cond_3
    new-array v5, v2, [B

    .line 1767
    mul-int v10, v4, v6

    const/4 v11, 0x0

    invoke-static {p0, v10, v5, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1768
    invoke-virtual {v7, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    const/4 v10, 0x0

    mul-int v11, v8, v4

    invoke-static {v5, v10, v0, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    sub-int v5, v3, v2

    .line 1762
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_1

    .line 1772
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1774
    goto :goto_0
.end method

.method public static RSAPrivKeyFromJNI([B)Ljava/security/Key;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1885
    if-nez p0, :cond_0

    .line 1908
    :goto_0
    return-object v0

    .line 1889
    :cond_0
    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 1890
    array-length v2, p0

    add-int/lit16 v2, v2, -0x25f

    .line 1891
    const/4 v3, 0x3

    aget-byte v4, v1, v3

    add-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1892
    const/16 v3, 0x19

    aget-byte v4, v1, v3

    add-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 1894
    array-length v2, v1

    array-length v3, p0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1895
    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1896
    array-length v1, v1

    array-length v3, p0

    invoke-static {p0, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1899
    :try_start_0
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 1900
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 1901
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1904
    :catch_0
    move-exception v1

    .line 1905
    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 1889
    nop

    :array_0
    .array-data 1
        0x30t
        -0x7et
        0x2t
        0x75t
        0x2t
        0x1t
        0x0t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x4t
        -0x7et
        0x2t
        0x5ft
    .end array-data
.end method

.method public static RSAPrivKeyFromJava([B)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1861
    if-nez p0, :cond_0

    .line 1881
    :goto_0
    return-object v0

    .line 1864
    :cond_0
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 1868
    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 1869
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1875
    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 1877
    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    .line 1878
    array-length v0, v2

    array-length v3, v1

    sub-int/2addr v0, v3

    new-array v0, v0, [B

    .line 1879
    array-length v1, v1

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1870
    :catch_0
    move-exception v1

    .line 1871
    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 1875
    nop

    :array_0
    .array-data 1
        0x30t
        -0x7et
        0x2t
        0x75t
        0x2t
        0x1t
        0x0t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x4t
        -0x7et
        0x2t
        0x5ft
    .end array-data
.end method

.method public static RSAPubKeyFromJNI([B)Ljava/security/Key;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1836
    if-nez p0, :cond_0

    .line 1857
    :goto_0
    return-object v0

    .line 1839
    :cond_0
    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 1843
    array-length v2, v1

    array-length v3, p0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1844
    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1845
    array-length v1, v1

    array-length v3, p0

    invoke-static {p0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1846
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1850
    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 1851
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1853
    :catch_0
    move-exception v1

    .line 1854
    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 1839
    nop

    :array_0
    .array-data 1
        0x30t
        -0x7ft
        -0x61t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x73t
        0x0t
    .end array-data
.end method

.method public static RSAPubKeyFromJava([B)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1810
    if-nez p0, :cond_0

    .line 1832
    :goto_0
    return-object v0

    .line 1813
    :cond_0
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1817
    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 1818
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1824
    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 1828
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 1829
    array-length v0, v2

    array-length v3, v1

    sub-int/2addr v0, v3

    new-array v0, v0, [B

    .line 1830
    array-length v1, v1

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1819
    :catch_0
    move-exception v1

    .line 1820
    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 1824
    nop

    :array_0
    .array-data 1
        0x30t
        -0x7ft
        -0x61t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x73t
        0x0t
    .end array-data
.end method

.method public static base64_decode_url([BI)[B
    .locals 11

    .prologue
    const/16 v10, 0x5f

    const/4 v3, 0x0

    .line 1308
    .line 1310
    const/16 v0, 0x18

    new-array v2, v0, [B

    move v1, v3

    move v4, v3

    move v0, v3

    move v5, v3

    .line 1313
    :goto_0
    add-int/lit8 v7, p1, -0x1

    if-lez p1, :cond_0

    add-int/lit8 v6, v5, 0x1

    aget-byte v0, p0, v5

    if-eqz v0, :cond_0

    .line 1314
    if-ne v0, v10, :cond_2

    .line 1345
    :cond_0
    if-ne v0, v10, :cond_1

    .line 1346
    rem-int/lit8 v0, v4, 0x4

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move-object v0, v2

    .line 1356
    :goto_2
    return-object v0

    .line 1317
    :cond_2
    const/16 v5, 0x20

    if-ne v0, v5, :cond_3

    .line 1318
    const/16 v0, 0x2a

    .line 1320
    :cond_3
    sget-object v5, Loicq/wlogin_sdk/tools/util;->base64_reverse_table_url:[S

    aget-short v5, v5, v0

    .line 1321
    if-gez v5, :cond_4

    move v0, v5

    move p1, v7

    move v5, v6

    .line 1322
    goto :goto_0

    .line 1324
    :cond_4
    rem-int/lit8 v0, v4, 0x4

    packed-switch v0, :pswitch_data_1

    move v0, v1

    .line 1340
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move p1, v7

    move v1, v0

    move v0, v5

    move v5, v6

    goto :goto_0

    .line 1326
    :pswitch_0
    shl-int/lit8 v0, v5, 0x2

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    move v0, v1

    .line 1327
    goto :goto_3

    .line 1329
    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    aget-byte v8, v2, v1

    shr-int/lit8 v9, v5, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v1

    .line 1330
    and-int/lit8 v1, v5, 0xf

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    goto :goto_3

    .line 1333
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aget-byte v8, v2, v1

    shr-int/lit8 v9, v5, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v1

    .line 1334
    and-int/lit8 v1, v5, 0x3

    shl-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    goto :goto_3

    .line 1337
    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aget-byte v8, v2, v1

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v2, v1

    goto :goto_3

    .line 1349
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1351
    :pswitch_5
    add-int/lit8 v1, v1, 0x1

    .line 1353
    :pswitch_6
    add-int/lit8 v0, v1, 0x1

    aput-byte v3, v2, v1

    goto :goto_1

    .line 1346
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1324
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static base64_encode([B)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1257
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1258
    array-length v2, p0

    .line 1259
    const/4 v0, 0x0

    .line 1261
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1262
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v4, v0, 0xff

    .line 1263
    if-ne v3, v2, :cond_1

    .line 1264
    sget-object v0, Loicq/wlogin_sdk/tools/util;->base64_encode_chars:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1265
    sget-object v0, Loicq/wlogin_sdk/tools/util;->base64_encode_chars:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1286
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1269
    :cond_1
    add-int/lit8 v5, v3, 0x1

    aget-byte v0, p0, v3

    and-int/lit16 v3, v0, 0xff

    .line 1270
    if-ne v5, v2, :cond_2

    .line 1271
    sget-object v0, Loicq/wlogin_sdk/tools/util;->base64_encode_chars:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1272
    sget-object v0, Loicq/wlogin_sdk/tools/util;->base64_encode_chars:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1274
    sget-object v0, Loicq/wlogin_sdk/tools/util;->base64_encode_chars:[C

    and-int/lit8 v2, v3, 0xf

    shl-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1278
    :cond_2
    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 1279
    sget-object v6, Loicq/wlogin_sdk/tools/util;->base64_encode_chars:[C

    ushr-int/lit8 v7, v4, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1280
    sget-object v6, Loicq/wlogin_sdk/tools/util;->base64_encode_chars:[C

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v4, v7

    aget-char v4, v6, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1282
    sget-object v4, Loicq/wlogin_sdk/tools/util;->base64_encode_chars:[C

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v6, v5, 0xc0

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1284
    sget-object v3, Loicq/wlogin_sdk/tools/util;->base64_encode_chars:[C

    and-int/lit8 v4, v5, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public static buf_len([B)J
    .locals 2

    .prologue
    .line 313
    if-nez p0, :cond_0

    .line 314
    const-wide/16 v0, 0x0

    .line 315
    :goto_0
    return-wide v0

    :cond_0
    array-length v0, p0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static buf_to_int16([BI)I
    .locals 2

    .prologue
    .line 182
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static buf_to_int32([BI)I
    .locals 3

    .prologue
    .line 186
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static buf_to_int64([BI)J
    .locals 6

    .prologue
    .line 192
    const-wide/16 v0, 0x0

    .line 194
    aget-byte v2, p0, p1

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    const-wide/high16 v4, -0x100000000000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 195
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 196
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    const-wide v4, 0xff0000000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 197
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xff00000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 198
    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 199
    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 200
    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 201
    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 203
    return-wide v0
.end method

.method public static buf_to_int8([BI)I
    .locals 1

    .prologue
    .line 178
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static buf_to_string([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    if-nez p0, :cond_1

    .line 287
    const-string v1, ""

    .line 294
    :cond_0
    return-object v1

    .line 289
    :cond_1
    const-string v1, ""

    .line 290
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p0, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static buf_to_string([BI)Ljava/lang/String;
    .locals 4

    .prologue
    .line 298
    if-nez p0, :cond_1

    .line 299
    const-string v0, ""

    .line 309
    :cond_0
    return-object v0

    .line 301
    :cond_1
    array-length v0, p0

    if-le p1, v0, :cond_2

    .line 302
    array-length p1, p0

    .line 304
    :cond_2
    const-string v1, ""

    .line 305
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    if-ge v1, p1, :cond_0

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public static check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 274
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 275
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0xee6b2800L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 276
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 278
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static chg_retry_type(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 702
    invoke-static {p0}, Loicq/wlogin_sdk/tools/util;->get_net_retry_type(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 703
    const/4 v0, 0x1

    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    .line 706
    :goto_0
    return-void

    .line 705
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static compress([B)[B
    .locals 2

    .prologue
    .line 1502
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 1513
    :cond_0
    :goto_0
    return-object p0

    .line 1506
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1508
    :try_start_0
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1509
    invoke-virtual {v1, p0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 1510
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 1511
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    const/4 v0, 0x0

    new-array p0, v0, [B

    goto :goto_0
.end method

.method public static decompress([B)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1519
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 1550
    :cond_0
    return-void

    .line 1523
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data len:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    move v0, v1

    move v2, v1

    .line 1526
    :goto_0
    array-length v3, p0

    add-int/lit8 v4, v2, 0x3

    if-le v3, v4, :cond_0

    .line 1527
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v3

    .line 1528
    array-length v4, p0

    add-int v5, v2, v3

    add-int/lit8 v5, v5, 0x3

    if-le v4, v5, :cond_0

    .line 1529
    new-array v4, v3, [B

    .line 1530
    add-int/lit8 v5, v2, 0x4

    invoke-static {p0, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1531
    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    .line 1532
    add-int/lit8 v0, v0, 0x1

    .line 1533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "len:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 1534
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1535
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1537
    :try_start_0
    new-instance v4, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v4, v5}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1538
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 1540
    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1541
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 1544
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1543
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static deleteExpireFile(Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 1681
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1709
    :cond_0
    :goto_0
    return-void

    .line 1685
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 1687
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1690
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1691
    if-eqz v1, :cond_0

    .line 1693
    array-length v2, v1

    .line 1694
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 1696
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1699
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 1700
    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    int-to-long v6, p1

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 1701
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1707
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteExpireLog(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1715
    if-nez p0, :cond_0

    .line 1735
    :goto_0
    return-void

    .line 1720
    :cond_0
    :try_start_0
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->ExistSDCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1721
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tencent/wtlogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1725
    const v1, 0xa8c00

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->deleteExpireFile(Ljava/lang/String;I)V

    goto :goto_0

    .line 1732
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1727
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tencent/wtlogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1730
    const v1, 0x3f480

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->deleteExpireFile(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static format_ret_code(I)I
    .locals 1

    .prologue
    .line 1104
    .line 1105
    sparse-switch p0, :sswitch_data_0

    .line 1126
    const/16 v0, 0x11

    .line 1129
    :goto_0
    return v0

    .line 1107
    :sswitch_0
    const/4 v0, 0x0

    .line 1108
    goto :goto_0

    .line 1111
    :sswitch_1
    const/4 v0, 0x1

    .line 1112
    goto :goto_0

    .line 1115
    :sswitch_2
    const/4 v0, 0x2

    .line 1116
    goto :goto_0

    .line 1122
    :sswitch_3
    const/4 v0, 0x5

    .line 1123
    goto :goto_0

    .line 1105
    :sswitch_data_0
    .sparse-switch
        -0x3f7 -> :sswitch_3
        -0x3f6 -> :sswitch_3
        -0x3ee -> :sswitch_3
        -0x3ea -> :sswitch_3
        -0x3e8 -> :sswitch_1
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
    .end sparse-switch
.end method

.method public static generateRSAKeyPair()Ljava/security/KeyPair;
    .locals 2

    .prologue
    .line 1739
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 1741
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 1742
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1745
    :goto_0
    return-object v0

    .line 1743
    :catch_0
    move-exception v0

    .line 1745
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAppName(Landroid/content/Context;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1410
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1412
    if-eqz v0, :cond_0

    .line 1413
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1415
    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1421
    :goto_0
    return-object v0

    .line 1418
    :catch_0
    move-exception v0

    .line 1421
    :cond_0
    new-array v0, v3, [B

    goto :goto_0
.end method

.method public static getChannelId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 2026
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2027
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 2030
    :cond_1
    const-string v0, ""

    .line 2031
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2032
    const-string v3, ""

    .line 2034
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " path "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_3

    const-string v2, "null"

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-static {v2, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 2074
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move-object v2, v3

    .line 2035
    goto :goto_0

    .line 2040
    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 2041
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v3

    int-to-long v8, v3

    .line 2043
    const-wide/16 v10, 0x100

    sub-long v10, v8, v10

    invoke-virtual {v6, v10, v11}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v10

    .line 2044
    sub-long/2addr v8, v10

    long-to-int v3, v8

    new-array v7, v3, [B

    .line 2045
    invoke-virtual {v6, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 2046
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 2049
    :goto_2
    array-length v3, v7

    add-int/lit8 v3, v3, -0x4

    if-ge v1, v3, :cond_7

    .line 2050
    aget-byte v3, v7, v1

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    if-ne v3, v6, :cond_6

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v7, v3

    const/4 v6, 0x1

    aget-byte v6, v2, v6

    if-ne v3, v6, :cond_6

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v7, v3

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    if-ne v3, v6, :cond_6

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v7, v3

    const/4 v6, 0x3

    aget-byte v6, v2, v6

    if-ne v3, v6, :cond_6

    .line 2051
    int-to-long v2, v1

    .line 2055
    :goto_3
    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 2058
    long-to-int v1, v2

    add-int/lit8 v1, v1, 0x14

    .line 2059
    aget-byte v4, v7, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, v7, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v4

    .line 2060
    if-eqz v1, :cond_2

    .line 2063
    new-array v4, v1, [B

    .line 2064
    const-wide/16 v8, 0x14

    add-long/2addr v2, v8

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v7, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2065
    const-string v1, "channelId=(\\S+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2066
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2067
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2068
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2069
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found comment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channelId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2070
    :catch_0
    move-exception v1

    .line 2071
    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2049
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_7
    move-wide v2, v4

    goto :goto_3

    .line 2040
    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method public static getCurrentDay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1463
    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/tools/util;->DAYFORMAT:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 1464
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Loicq/wlogin_sdk/tools/util;->DAYFORMAT:Ljava/text/SimpleDateFormat;

    .line 1465
    :cond_0
    sget-object v0, Loicq/wlogin_sdk/tools/util;->DAYFORMAT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1467
    :goto_0
    return-object v0

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1427
    const-string v0, ""

    .line 1429
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1433
    :goto_0
    return-object v0

    .line 1430
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getFileModifyTime(Ljava/lang/String;)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 1650
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1661
    :cond_0
    :goto_0
    return-wide v0

    .line 1655
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1656
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1659
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 1660
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1487
    .line 1489
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1491
    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 1497
    :cond_0
    :goto_0
    return v0

    .line 1493
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getLineInfo(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1147
    if-gez p0, :cond_0

    .line 1148
    const-string v0, ""

    .line 1155
    :goto_0
    return-object v0

    .line 1152
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, p0

    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    const-string v0, ""

    goto :goto_0
.end method

.method public static getLogFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1553
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1575
    :cond_0
    :goto_0
    return-object v0

    .line 1559
    :cond_1
    :try_start_0
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->ExistSDCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1561
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 1563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tencent/wtlogin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->base64_encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1567
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tencent/wtlogin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->base64_encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1572
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getLogModifyTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 1669
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1670
    :cond_0
    const-wide/16 v0, 0x0

    .line 1676
    :goto_0
    return-wide v0

    .line 1674
    :cond_1
    invoke-static {p0, p1}, Loicq/wlogin_sdk/tools/util;->getLogFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1676
    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->getFileModifyTime(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getPkgSigFromApkName(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1395
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1397
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 1399
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1404
    :goto_0
    return-object v0

    .line 1401
    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1402
    :catch_0
    move-exception v0

    .line 1404
    new-array v0, v3, [B

    goto :goto_0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1441
    const-string v0, "[5]"

    return-object v0
.end method

.method public static getThreadId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1445
    if-eqz p0, :cond_0

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1448
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[]"

    goto :goto_0
.end method

.method public static get_IMEI(Landroid/content/Context;)[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 458
    .line 461
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 463
    if-eqz v0, :cond_4

    .line 464
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 467
    :goto_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 469
    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 475
    :cond_0
    const-string v0, ""

    .line 476
    if-eqz v2, :cond_1

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    :cond_1
    if-eqz v1, :cond_2

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 481
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 488
    :goto_1
    return-object v0

    .line 483
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 484
    :catch_0
    move-exception v0

    .line 488
    new-array v0, v4, [B

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_0
.end method

.method public static get_IMSI(Landroid/content/Context;)[B
    .locals 1

    .prologue
    .line 440
    .line 443
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 445
    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 454
    :goto_0
    return-object v0

    .line 450
    :catch_0
    move-exception v0

    .line 454
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static get_android_id(Landroid/content/Context;)[B
    .locals 2

    .prologue
    .line 424
    .line 427
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    .line 432
    :catch_0
    move-exception v0

    .line 436
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static get_apk_id(Landroid/content/Context;)[B
    .locals 1

    .prologue
    .line 1089
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1091
    :goto_0
    return-object v0

    .line 1090
    :catch_0
    move-exception v0

    .line 1091
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static get_apk_v(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1097
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1099
    :goto_0
    return-object v0

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    new-array v0, v2, [B

    goto :goto_0
.end method

.method public static get_apn_string(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 667
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 669
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 671
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_1

    .line 680
    :goto_0
    return-object v0

    .line 676
    :cond_0
    const-string v0, "wifi"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 680
    :cond_1
    const-string v0, "wifi"

    goto :goto_0
.end method

.method public static get_bssid_addr(Landroid/content/Context;)[B
    .locals 1

    .prologue
    .line 363
    .line 366
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 368
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 376
    :catch_0
    move-exception v0

    .line 380
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static get_char(B)B
    .locals 1

    .prologue
    .line 319
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 320
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 326
    :goto_0
    return v0

    .line 321
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 322
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 323
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 324
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 326
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get_cp_pubkey(Landroid/content/Context;JJ)[B
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 1033
    if-nez p0, :cond_1

    new-array v0, v0, [B

    .line 1060
    :cond_0
    :goto_0
    return-object v0

    .line 1035
    :cond_1
    const-string v1, "oicq.wlogin_sdk.WloginProvider"

    .line 1036
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/rsa_pubkey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1041
    const/4 v2, 0x5

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "subappid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "pubkey"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "pubkey_md5"

    aput-object v4, v2, v3

    const-string v3, "appid=? and subappid=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1044
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1045
    const-string v0, "pubkey"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1046
    const-string v2, "pubkey_md5"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1050
    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1051
    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1056
    if-eqz v1, :cond_0

    .line 1057
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1053
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 1054
    :goto_1
    :try_start_2
    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1056
    if-eqz v1, :cond_2

    .line 1057
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1060
    :cond_2
    const-string v0, "30818902818100daaa2a418b271f3dfcf8f0a9120326d47f07618593d8d71d61a4fe987cc47740e491105bf8e68bd479bf51dfe19d3b06e12017df6d87a0f43bb82b57f59bd4220f2a3d8d68904a6ddb51197989e6e82512d8d8fa6c41b755a8ca962595d3e1e1be7ea01677249be4794cd7c6682d611c1bd81f0a16231fb83517515b94d13e5d0203010001"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_0

    .line 1056
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_3

    .line 1057
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1056
    :cond_3
    throw v0

    :cond_4
    if-eqz v1, :cond_2

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 1053
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static get_error_msg(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1133
    const-string v0, ""

    .line 1134
    packed-switch p0, :pswitch_data_0

    .line 1139
    sget-object v0, Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;->MSG_3:Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/InternationMsg;->a(Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;)Ljava/lang/String;

    move-result-object v0

    .line 1143
    :goto_0
    return-object v0

    .line 1136
    :pswitch_0
    sget-object v0, Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;->MSG_4:Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/InternationMsg;->a(Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1134
    nop

    :pswitch_data_0
    .packed-switch -0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public static get_file_imei(Landroid/content/Context;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 902
    if-nez p0, :cond_1

    .line 946
    :cond_0
    :goto_0
    return-object v0

    .line 906
    :cond_1
    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 910
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "wlogin_device.dat"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 911
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 913
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 914
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 916
    const/16 v3, 0x400

    if-ge v0, v3, :cond_2

    .line 917
    new-array v2, v0, [B

    .line 918
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 925
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 927
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_2
    move-object v0, v2

    .line 938
    :goto_3
    if-eqz v0, :cond_4

    array-length v1, v0

    if-gtz v1, :cond_0

    .line 939
    :cond_4
    invoke-static {p0}, Loicq/wlogin_sdk/tools/util;->get_saved_imei(Landroid/content/Context;)[B

    move-result-object v0

    .line 941
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 942
    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->save_file_imei(Landroid/content/Context;[B)V

    goto :goto_0

    .line 921
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 922
    :goto_4
    :try_start_3
    sget v3, Loicq/wlogin_sdk/request/u;->W:I

    const/high16 v4, 0x10000

    or-int/2addr v3, v4

    sput v3, Loicq/wlogin_sdk/request/u;->W:I

    .line 923
    const-string v3, ""

    invoke-static {v0, v3}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 925
    if-eqz v1, :cond_5

    .line 927
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_5
    move-object v0, v2

    .line 932
    goto :goto_3

    .line 925
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_6
    if-eqz v1, :cond_6

    .line 927
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 925
    :cond_6
    :goto_7
    throw v0

    .line 928
    :catch_1
    move-exception v1

    .line 929
    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_7

    .line 928
    :catch_2
    move-exception v0

    .line 929
    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_5

    .line 928
    :catch_3
    move-exception v0

    .line 929
    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2

    .line 925
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 921
    :catch_4
    move-exception v0

    goto :goto_4

    :cond_7
    move-object v1, v0

    goto :goto_1
.end method

.method public static get_imei_id(Landroid/content/Context;)[B
    .locals 1

    .prologue
    .line 405
    .line 408
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 410
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 419
    :goto_0
    return-object v0

    .line 415
    :catch_0
    move-exception v0

    .line 419
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static get_ksid(Landroid/content/Context;)[B
    .locals 5

    .prologue
    .line 749
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 751
    :try_start_0
    const-string v1, "WLOGIN_DEVICE_INFO"

    sget v2, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 752
    const-string v2, "ksid"

    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 757
    :goto_0
    return-object v0

    .line 754
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static get_last_flag(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 793
    .line 795
    :try_start_0
    const-string v1, "WLOGIN_DEVICE_INFO"

    sget v2, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 796
    const-string v2, "last_flag"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 800
    :goto_0
    return v0

    .line 797
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static get_last_guid(Landroid/content/Context;)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 863
    new-array v0, v5, [B

    .line 865
    :try_start_0
    const-string v1, "WLOGIN_DEVICE_INFO"

    sget v2, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 866
    const-string v2, "last_guid"

    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 870
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 871
    :cond_0
    new-array v0, v5, [B

    .line 874
    :cond_1
    return-object v0

    .line 868
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static get_last_imei(Landroid/content/Context;)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 838
    new-array v0, v5, [B

    .line 840
    :try_start_0
    const-string v1, "WLOGIN_DEVICE_INFO"

    sget v2, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 841
    const-string v2, "last_imei"

    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 845
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 846
    :cond_0
    new-array v0, v5, [B

    .line 849
    :cond_1
    return-object v0

    .line 843
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static get_last_mac(Landroid/content/Context;)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 814
    new-array v0, v5, [B

    .line 816
    :try_start_0
    const-string v1, "WLOGIN_DEVICE_INFO"

    sget v2, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 817
    const-string v2, "last_mac"

    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 820
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 821
    :cond_0
    new-array v0, v5, [B

    .line 824
    :cond_1
    return-object v0

    .line 818
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static get_mac_addr(Landroid/content/Context;)[B
    .locals 1

    .prologue
    .line 342
    .line 345
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 347
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    .line 355
    :catch_0
    move-exception v0

    .line 359
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static get_mpasswd()Ljava/lang/String;
    .locals 5

    .prologue
    .line 255
    const/16 v0, 0x10

    :try_start_0
    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v3

    .line 256
    const-string v1, ""

    .line 257
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_1

    .line 258
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    .line 259
    aget-byte v4, v3, v2

    rem-int/lit8 v4, v4, 0x1a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-eqz v1, :cond_0

    const/16 v1, 0x61

    :goto_1
    add-int/2addr v1, v4

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 257
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_0

    .line 259
    :cond_0
    const/16 v1, 0x41

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    .line 265
    const-string v0, "1234567890123456"

    :cond_1
    return-object v0
.end method

.method public static get_net_retry_type(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 636
    :try_start_0
    const-string v1, "WLOGIN_DEVICE_INFO"

    sget v2, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 637
    const-string v2, "netretry_type"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 639
    :goto_0
    return v0

    .line 638
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static get_network_type(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 512
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 514
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 520
    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    .line 525
    :goto_1
    return v0

    .line 516
    :catch_0
    move-exception v0

    move v0, v2

    .line 517
    goto :goto_0

    .line 522
    :cond_0
    if-ne v0, v1, :cond_1

    .line 523
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    move v0, v2

    .line 525
    goto :goto_1
.end method

.method public static get_os_type()[B
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/String;

    const-string v1, "android"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static get_os_version()[B
    .locals 1

    .prologue
    .line 140
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static get_prand_16byte()[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    .line 236
    const/16 v0, 0x10

    :try_start_0
    new-array v0, v0, [B

    .line 237
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 238
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 239
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 240
    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 241
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 242
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 243
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 244
    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 246
    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    new-array v0, v6, [B

    goto :goto_0
.end method

.method public static get_proxy_ip()Ljava/lang/String;
    .locals 2

    .prologue
    .line 713
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Loicq/wlogin_sdk/tools/util;->HONEYCOMB:I

    if-ge v0, v1, :cond_0

    .line 714
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 716
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static get_proxy_port()I
    .locals 2

    .prologue
    .line 723
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Loicq/wlogin_sdk/tools/util;->HONEYCOMB:I

    if-ge v0, v1, :cond_0

    .line 724
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    .line 730
    :goto_0
    return v0

    .line 727
    :cond_0
    :try_start_0
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 730
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static get_rand_16byte(Ljava/security/SecureRandom;)[B
    .locals 1

    .prologue
    .line 226
    const/16 v0, 0x10

    :try_start_0
    new-array v0, v0, [B

    .line 227
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_prand_16byte()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static get_rand_16byte([B)[B
    .locals 5

    .prologue
    .line 212
    const/16 v0, 0x10

    :try_start_0
    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v0

    .line 213
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 215
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    const/4 v2, 0x0

    array-length v0, v0

    array-length v3, p0

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    invoke-static {v1}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_prand_16byte()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static get_rand_32()I
    .locals 4

    .prologue
    .line 207
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static get_release_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1424
    const-string v0, "2015/07/31 13:20:30"

    return-object v0
.end method

.method public static get_rsa_privkey(Landroid/content/Context;)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1074
    new-array v0, v4, [B

    .line 1076
    :try_start_0
    const-string v1, "WLOGIN_DEVICE_INFO"

    sget v2, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1077
    const-string v2, "rsa_privkey"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1080
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1081
    :cond_0
    new-array v0, v4, [B

    .line 1084
    :cond_1
    return-object v0

    .line 1078
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static get_rsa_pubkey(Landroid/content/Context;)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 888
    new-array v0, v4, [B

    .line 890
    :try_start_0
    const-string v1, "WLOGIN_DEVICE_INFO"

    sget v2, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 891
    const-string v2, "rsa_pubkey"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 894
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 895
    :cond_0
    new-array v0, v4, [B

    .line 898
    :cond_1
    return-object v0

    .line 892
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static get_saved_imei(Landroid/content/Context;)[B
    .locals 5

    .prologue
    .line 771
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 773
    :try_start_0
    const-string v1, "WLOGIN_DEVICE_INFO"

    sget v2, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 774
    const-string v2, "imei"

    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 779
    :goto_0
    return-object v0

    .line 775
    :catch_0
    move-exception v1

    .line 776
    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->printThrowable(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static get_saved_network_type(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 531
    :try_start_0
    const-string v1, "WLOGIN_DEVICE_INFO"

    sget v2, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 532
    const-string v2, "network_type"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 534
    :goto_0
    return v0

    .line 533
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static get_server_cur_time()J
    .locals 2

    .prologue
    .line 269
    invoke-static {}, Loicq/wlogin_sdk/request/u;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public static get_server_host1(Landroid/content/Context;)[B
    .locals 3

    .prologue
    .line 570
    :try_start_0
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 571
    const-string v1, "host1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 573
    :goto_0
    return-object v0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static get_server_host2(Landroid/content/Context;)[B
    .locals 3

    .prologue
    .line 579
    :try_start_0
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 580
    const-string v1, "host2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 582
    :goto_0
    return-object v0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static get_sim_operator_name(Landroid/content/Context;)[B
    .locals 3

    .prologue
    .line 493
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 495
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 496
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 502
    :goto_0
    return-object v0

    .line 498
    :catch_0
    move-exception v0

    .line 502
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static get_ssid_addr(Landroid/content/Context;)[B
    .locals 1

    .prologue
    .line 384
    .line 387
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 389
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    .line 397
    :catch_0
    move-exception v0

    .line 401
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static get_wap_server_host1(Landroid/content/Context;)[B
    .locals 3

    .prologue
    .line 608
    :try_start_0
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 609
    const-string v1, "wap-host1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 611
    :goto_0
    return-object v0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static get_wap_server_host2(Landroid/content/Context;)[B
    .locals 3

    .prologue
    .line 617
    :try_start_0
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 618
    const-string v1, "wap-host2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static int16_to_buf([BII)V
    .locals 2

    .prologue
    .line 148
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 149
    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 150
    return-void
.end method

.method public static int32_to_buf([BII)V
    .locals 2

    .prologue
    .line 153
    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 154
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 155
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 156
    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 157
    return-void
.end method

.method public static int64_to_buf([BIJ)V
    .locals 4

    .prologue
    .line 160
    add-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    shr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 161
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    shr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 162
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    shr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 163
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    shr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 164
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    shr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 165
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    shr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 166
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    shr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 167
    add-int/lit8 v0, p1, 0x0

    const/16 v1, 0x38

    shr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 168
    return-void
.end method

.method public static int64_to_buf32([BIJ)V
    .locals 4

    .prologue
    .line 171
    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    shr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 172
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x8

    shr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 173
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x10

    shr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 174
    add-int/lit8 v0, p1, 0x0

    const/16 v1, 0x18

    shr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 175
    return-void
.end method

.method public static int8_to_buf([BII)V
    .locals 2

    .prologue
    .line 144
    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 145
    return-void
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1479
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1482
    :goto_0
    return v0

    .line 1481
    :catch_0
    move-exception v0

    .line 1482
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is_wap_proxy_retry(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 685
    :try_start_0
    invoke-static {p0}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 686
    if-eqz v1, :cond_2

    .line 687
    const-string v2, "cmwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v0

    .line 689
    :cond_1
    const-string v2, "uniwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 691
    const-string v2, "ctwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 693
    const-string v2, "3gwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 698
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static is_wap_retry(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 644
    invoke-static {p0}, Loicq/wlogin_sdk/tools/util;->get_net_retry_type(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 645
    const/4 v0, 0x0

    .line 647
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static loadLibrary(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1957
    sget-boolean v0, Loicq/wlogin_sdk/tools/util;->libwtecdh_loaded:Z

    if-eqz v0, :cond_0

    .line 1995
    :goto_0
    return v2

    .line 1960
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v2, v3

    .line 1961
    goto :goto_0

    .line 1965
    :cond_2
    const/4 v0, 0x0

    .line 1967
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/txlib/lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1969
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1970
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/lib/lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1976
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1978
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    .line 1984
    :goto_2
    if-nez v0, :cond_3

    .line 1986
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v2

    .line 1992
    :cond_3
    :goto_3
    sput-boolean v0, Loicq/wlogin_sdk/tools/util;->libwtecdh_loaded:Z

    .line 1993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "libwtecdh loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Loicq/wlogin_sdk/tools/util;->libwtecdh_loaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 1995
    goto/16 :goto_0

    .line 1973
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_4
    move-object v0, v1

    goto :goto_1

    .line 1980
    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_2

    .line 1988
    :catch_2
    move-exception v1

    goto :goto_3

    .line 1973
    :catch_3
    move-exception v0

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public static packBundle([[B)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1999
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2000
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 2001
    const-string v0, "len"

    array-length v2, p0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2002
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2003
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2002
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2005
    :cond_0
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2006
    const/4 v0, 0x0

    .line 2008
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static printException(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 1361
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1362
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1363
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1364
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1365
    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    .line 1366
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1367
    const-string v1, "exception:"

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    return-void
.end method

.method public static printException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1372
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1373
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1374
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1375
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1376
    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    .line 1377
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1378
    const-string v1, "exception"

    invoke-static {v1, v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    return-void
.end method

.method public static printThrowable(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1383
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1384
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1385
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1386
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1387
    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    .line 1388
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1389
    const-string v1, "throwable"

    invoke-static {v1, v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    return-void
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1606
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1628
    :cond_0
    :goto_0
    return-object v0

    .line 1611
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1616
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 1618
    const v3, 0x1a000

    if-le v1, v3, :cond_2

    .line 1619
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1627
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1622
    :cond_2
    new-array v1, v1, [B

    .line 1623
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 1624
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1626
    goto :goto_0
.end method

.method public static readLog(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 1636
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1637
    :cond_0
    const/4 v0, 0x0

    .line 1646
    :goto_0
    return-object v0

    .line 1642
    :cond_1
    invoke-static {p0, p1}, Loicq/wlogin_sdk/tools/util;->getLogFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1644
    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static save_cur_flag(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 783
    if-eqz p0, :cond_0

    .line 784
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 785
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 786
    const-string v1, "last_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 788
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 790
    :cond_0
    return-void
.end method

.method public static save_cur_guid(Landroid/content/Context;[B)V
    .locals 3

    .prologue
    .line 853
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 854
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 855
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 856
    const-string v1, "last_guid"

    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 858
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 860
    :cond_0
    return-void
.end method

.method public static save_cur_imei(Landroid/content/Context;[B)V
    .locals 3

    .prologue
    .line 828
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 829
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 830
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 831
    const-string v1, "last_imei"

    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 833
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 835
    :cond_0
    return-void
.end method

.method public static save_cur_mac(Landroid/content/Context;[B)V
    .locals 3

    .prologue
    .line 804
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 805
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 806
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 807
    const-string v1, "last_mac"

    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 809
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 811
    :cond_0
    return-void
.end method

.method public static save_file_imei(Landroid/content/Context;[B)V
    .locals 4

    .prologue
    .line 950
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 951
    const/4 v1, 0x0

    .line 954
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "wlogin_device.dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 956
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 957
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 960
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    invoke-direct {v2, v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 965
    :cond_1
    :try_start_2
    invoke-static {p0, p1}, Loicq/wlogin_sdk/tools/util;->save_imei(Landroid/content/Context;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 969
    if-eqz v1, :cond_2

    .line 971
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 978
    :cond_2
    :goto_0
    return-void

    .line 966
    :catch_0
    move-exception v0

    .line 967
    :goto_1
    :try_start_4
    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 969
    if-eqz v1, :cond_2

    .line 971
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 972
    :catch_1
    move-exception v0

    .line 973
    const-string v1, ""

    :goto_2
    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 969
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    .line 971
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 969
    :cond_3
    :goto_4
    throw v0

    .line 972
    :catch_2
    move-exception v1

    .line 973
    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_4

    .line 972
    :catch_3
    move-exception v0

    .line 973
    const-string v1, ""

    goto :goto_2

    .line 969
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 966
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static save_imei(Landroid/content/Context;[B)V
    .locals 3

    .prologue
    .line 761
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 762
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 763
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 764
    const-string v1, "imei"

    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 766
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 768
    :cond_0
    return-void
.end method

.method public static save_network_type(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 539
    if-eqz p0, :cond_0

    .line 540
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 541
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 542
    const-string v1, "network_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 544
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 546
    :cond_0
    return-void
.end method

.method public static save_rsa_privkey(Landroid/content/Context;[B)V
    .locals 3

    .prologue
    .line 1064
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 1065
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1066
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1067
    const-string v1, "rsa_privkey"

    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1069
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1071
    :cond_0
    return-void
.end method

.method public static save_rsa_pubkey(Landroid/content/Context;[B)V
    .locals 3

    .prologue
    .line 878
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 879
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 880
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 881
    const-string v1, "rsa_pubkey"

    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 883
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 885
    :cond_0
    return-void
.end method

.method public static set_cp_pubkey(Landroid/content/Context;JJ)Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 984
    if-nez p0, :cond_0

    move v0, v6

    .line 1029
    :goto_0
    return v0

    .line 986
    :cond_0
    const-string v1, "oicq.wlogin_sdk.WloginProvider"

    .line 987
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/rsa_pubkey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 989
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 993
    const/4 v2, 0x5

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "subappid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "pubkey"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "pubkey_md5"

    aput-object v4, v2, v3

    const-string v3, "appid=? and subappid=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 995
    if-nez v2, :cond_2

    .line 1025
    if-eqz v2, :cond_1

    .line 1026
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    .line 995
    goto/16 :goto_0

    .line 997
    :cond_2
    :try_start_1
    invoke-static {p0}, Loicq/wlogin_sdk/tools/util;->get_rsa_pubkey(Landroid/content/Context;)[B

    move-result-object v3

    invoke-static {v3}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v3

    .line 999
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_4

    .line 1025
    if-eqz v2, :cond_3

    .line 1026
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v6

    .line 1000
    goto/16 :goto_0

    .line 1002
    :cond_4
    :try_start_2
    invoke-static {v3}, Loicq/wlogin_sdk/tools/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1003
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 1004
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1005
    const-string v1, "pubkey"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v1, "pubkey_md5"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1025
    :goto_1
    if-eqz v2, :cond_5

    .line 1026
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v7

    .line 1021
    goto/16 :goto_0

    .line 1012
    :cond_6
    :try_start_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1013
    const-string v8, "appid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1014
    const-string v8, "subappid"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1015
    const-string v8, "pubkey"

    invoke-virtual {v5, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string v3, "pubkey_md5"

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inserted uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", with appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subappid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1022
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1023
    :goto_2
    :try_start_4
    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1025
    if-eqz v1, :cond_7

    .line 1026
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move v0, v6

    .line 1029
    goto/16 :goto_0

    .line 1025
    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_3
    if-eqz v2, :cond_8

    .line 1026
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1025
    :cond_8
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 1022
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method

.method public static set_ksid(Landroid/content/Context;[B)V
    .locals 3

    .prologue
    .line 736
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 737
    invoke-static {p0}, Loicq/wlogin_sdk/tools/util;->get_ksid(Landroid/content/Context;)[B

    move-result-object v0

    .line 738
    if-eqz v0, :cond_0

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 739
    :cond_0
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 740
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 741
    const-string v1, "ksid"

    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 743
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 746
    :cond_1
    return-void
.end method

.method public static set_net_retry_type(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 625
    if-eqz p0, :cond_0

    .line 626
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 627
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 628
    const-string v1, "netretry_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 630
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 632
    :cond_0
    return-void
.end method

.method public static set_server_host1(Landroid/content/Context;[B)V
    .locals 3

    .prologue
    .line 549
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 550
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 551
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 552
    const-string v1, "host1"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 554
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 556
    :cond_0
    return-void
.end method

.method public static set_server_host2(Landroid/content/Context;[B)V
    .locals 3

    .prologue
    .line 559
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 560
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 561
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 562
    const-string v1, "host2"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 564
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 566
    :cond_0
    return-void
.end method

.method public static set_wap_server_host1(Landroid/content/Context;[B)V
    .locals 3

    .prologue
    .line 587
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 588
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 589
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 590
    const-string v1, "wap-host1"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 592
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 594
    :cond_0
    return-void
.end method

.method public static set_wap_server_host2(Landroid/content/Context;[B)V
    .locals 3

    .prologue
    .line 597
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 598
    const-string v0, "WLOGIN_DEVICE_INFO"

    sget v1, Loicq/wlogin_sdk/tools/util;->MODE_MULTI_PROCESS:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 599
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 600
    const-string v1, "wap-host2"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 602
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 604
    :cond_0
    return-void
.end method

.method public static string_to_buf(Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 330
    if-nez p0, :cond_0

    .line 331
    new-array v0, v0, [B

    .line 338
    :goto_0
    return-object v0

    .line 333
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 334
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    .line 335
    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->get_char(B)B

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Loicq/wlogin_sdk/tools/util;->get_char(B)B

    move-result v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 338
    goto :goto_0
.end method

.method public static unpackBundle(Landroid/os/Bundle;)[[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2013
    if-eqz p0, :cond_0

    .line 2014
    const-string v0, "len"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2015
    filled-new-array {v2, v1}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 2016
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2017
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v1

    .line 2016
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2020
    :cond_0
    const/4 v0, 0x0

    check-cast v0, [[B

    .line 2022
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized writeFile(Ljava/lang/String;[B)V
    .locals 4

    .prologue
    .line 1580
    const-class v1, Loicq/wlogin_sdk/tools/util;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1603
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 1585
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1587
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 1589
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1595
    :cond_2
    invoke-static {p0}, Loicq/wlogin_sdk/tools/util;->getFileSize(Ljava/lang/String;)I

    move-result v2

    const v3, 0x19000

    if-ge v2, v3, :cond_0

    .line 1596
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1597
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1598
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1600
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1580
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
