.class public Lcom/tencent/wstt/gt/service/GTService;
.super Landroid/app/Service;
.source "GTService.java"


# instance fields
.field private final binder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    new-instance v0, Lcom/tencent/wstt/gt/GTBinder;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/GTBinder;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTService;->binder:Landroid/os/IBinder;

    .line 40
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 49
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 63
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return v1

    .line 64
    :cond_0
    const-string v11, "Release"

    .line 65
    .local v11, "version_type":Ljava/lang/String;
    sget-byte v0, Lcom/tencent/wstt/gt/GTConfig;->VERSION_TYPE:B

    if-ne v4, v0, :cond_1

    .line 66
    const-string v11, "Develop"

    .line 69
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f02003b

    const-string v3, "GT"

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Version: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tencent/wstt/gt/GTConfig;->VERSION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    const-string v6, "GT is running"

    const-class v7, Lcom/tencent/wstt/gt/activity/GTMainActivity;

    move v8, v4

    move v9, v1

    move v10, v1

    .line 68
    invoke-static/range {v0 .. v10}, Lcom/tencent/wstt/gt/utils/NotificationHelper;->genNotification(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;ZZI)Landroid/app/Notification;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->notification:Landroid/app/Notification;

    .line 73
    const/16 v0, 0xa

    sget-object v1, Lcom/tencent/wstt/gt/activity/GTMainActivity;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wstt/gt/service/GTService;->startForeground(ILandroid/app/Notification;)V

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    goto :goto_0
.end method
