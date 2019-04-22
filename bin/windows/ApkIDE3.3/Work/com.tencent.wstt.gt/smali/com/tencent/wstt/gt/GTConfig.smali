.class public Lcom/tencent/wstt/gt/GTConfig;
.super Ljava/lang/Object;
.source "GTConfig.java"


# static fields
.field public static final CONNECT_RES_CODE_OK:I = 0xc8

.field public static final CONNECT_RES_CODE_REFUSE:I = 0x193

.field public static final CONNECT_RES_CODE_UNCONNECT:I = -0x1

.field public static final CONNECT_RES_CODE_VERSION_INVALID:I = 0x196

.field public static final DEVELOP:B = 0x1t

.field public static final INTERVAL_VID:I = 0x898

.field public static PLATFORM:Ljava/lang/String;

.field public static final RELEASE:B

.field public static VERSION:Ljava/lang/String;

.field public static VERSION_TYPE:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "2.2"

    sput-object v0, Lcom/tencent/wstt/gt/GTConfig;->VERSION:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-byte v0, Lcom/tencent/wstt/gt/GTConfig;->VERSION_TYPE:B

    .line 41
    const-string v0, "android"

    sput-object v0, Lcom/tencent/wstt/gt/GTConfig;->PLATFORM:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
