.class public Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;
.super Ljava/lang/Object;
.source "PartialWakeLock.java"


# static fields
.field public static flag:Z

.field private static wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;->wl:Landroid/os/PowerManager$WakeLock;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;->flag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toggle(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 36
    sget-object v1, Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 38
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    check-cast v0, Landroid/os/PowerManager;

    .line 40
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "GTPartialLockAction"

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;->wl:Landroid/os/PowerManager$WakeLock;

    .line 43
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-boolean v1, Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;->flag:Z

    if-nez v1, :cond_1

    .line 44
    sput-boolean v2, Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;->flag:Z

    .line 45
    sget-object v1, Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;->flag:Z

    .line 48
    sget-object v1, Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method
