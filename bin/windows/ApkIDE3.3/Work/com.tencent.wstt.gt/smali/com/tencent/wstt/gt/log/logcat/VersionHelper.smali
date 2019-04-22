.class public Lcom/tencent/wstt/gt/log/logcat/VersionHelper;
.super Ljava/lang/Object;
.source "VersionHelper.java"


# static fields
.field public static final VERSION_CUPCAKE:I = 0x3

.field public static final VERSION_DONUT:I = 0x4

.field public static final VERSION_FROYO:I = 0x8

.field public static final VERSION_JELLYBEAN:I = 0x10

.field private static fetchedSdkIntField:Z

.field private static sdkIntField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->sdkIntField:Ljava/lang/reflect/Field;

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->fetchedSdkIntField:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSdkIntField()Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 30
    sget-boolean v0, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->fetchedSdkIntField:Z

    if-nez v0, :cond_0

    .line 32
    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SDK_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->sdkIntField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->fetchedSdkIntField:Z

    .line 38
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->sdkIntField:Ljava/lang/reflect/Field;

    return-object v0

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getVersionSdkIntCompat()I
    .locals 2

    .prologue
    .line 19
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/log/logcat/VersionHelper;->getSdkIntField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 20
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 21
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 26
    :goto_0
    return v1

    .line 23
    :catch_0
    move-exception v1

    .line 26
    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method
