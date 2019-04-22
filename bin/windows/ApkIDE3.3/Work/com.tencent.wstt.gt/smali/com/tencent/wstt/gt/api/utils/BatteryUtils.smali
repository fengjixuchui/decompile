.class public Lcom/tencent/wstt/gt/api/utils/BatteryUtils;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/api/utils/BatteryUtils$BatteryBroadcastReceiver;
    }
.end annotation


# instance fields
.field public batteryHealth:Ljava/lang/String;

.field private temperature:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils$BatteryBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/api/utils/BatteryUtils$BatteryBroadcastReceiver;-><init>(Lcom/tencent/wstt/gt/api/utils/BatteryUtils;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils;->temperature:I

    .line 40
    const-string v0, "\u672a\u77e5\u72b6\u51b5"

    iput-object v0, p0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils;->batteryHealth:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/api/utils/BatteryUtils;I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils;->temperature:I

    return-void
.end method


# virtual methods
.method public getBatteryHealth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils;->batteryHealth:Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryTemp()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils;->temperature:I

    return v0
.end method
