.class public Lcom/tencent/wstt/gt/utils/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public appIcon:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/utils/AppInfo;->appName:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/utils/AppInfo;->packageName:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/utils/AppInfo;->versionName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/utils/AppInfo;->versionCode:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/utils/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 29
    return-void
.end method


# virtual methods
.method public print()V
    .locals 3

    .prologue
    .line 38
    const-string v0, "app"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wstt/gt/utils/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/utils/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v0, "app"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wstt/gt/utils/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " versionName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/utils/AppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v0, "app"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wstt/gt/utils/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " versionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/wstt/gt/utils/AppInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method
