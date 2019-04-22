.class public Lcom/tencent/wstt/gt/api/utils/SignalUtils;
.super Ljava/lang/Object;
.source "SignalUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;
    }
.end annotation


# static fields
.field private static gTSignalListener:Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->gTSignalListener:Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCellId()I
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->gTSignalListener:Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->getCellId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getDBM()I
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->gTSignalListener:Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->getDBM()I

    move-result v0

    return v0
.end method

.method public static getNetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->gTSignalListener:Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->getNetType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->gTSignalListener:Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->getOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->gTSignalListener:Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->getPhoneType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWifiStrength()I
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->gTSignalListener:Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->getWifiStrength()I

    move-result v0

    return v0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->gTSignalListener:Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->gTSignalListener:Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;

    .line 51
    :cond_0
    return-void
.end method
