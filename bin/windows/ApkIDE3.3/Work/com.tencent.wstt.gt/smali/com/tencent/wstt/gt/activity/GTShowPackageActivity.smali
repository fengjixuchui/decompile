.class public Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTShowPackageActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$AppAdapter;,
        Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$ShowappHandler;
    }
.end annotation


# instance fields
.field appList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/wstt/gt/utils/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/wstt/gt/utils/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private proDialog:Landroid/app/ProgressDialog;

.field updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->dataList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->appList:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;-><init>(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->updateHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;I)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->backToSetting(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->proDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->dataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private backToSetting(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    const/4 v5, 0x0

    .line 189
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/utils/AppInfo;

    .line 190
    .local v0, "appSelected":Lcom/tencent/wstt/gt/utils/AppInfo;
    iget-object v3, v0, Lcom/tencent/wstt/gt/utils/AppInfo;->packageName:Ljava/lang/String;

    sput-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    .line 191
    iget-object v3, v0, Lcom/tencent/wstt/gt/utils/AppInfo;->appName:Ljava/lang/String;

    sput-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->apn:Ljava/lang/String;

    .line 192
    iget-object v3, v0, Lcom/tencent/wstt/gt/utils/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    sput-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->appic:Landroid/graphics/drawable/Drawable;

    .line 193
    iget-object v3, v0, Lcom/tencent/wstt/gt/utils/AppInfo;->packageName:Ljava/lang/String;

    sput-object v3, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_NAME:Ljava/lang/String;

    .line 194
    iget-object v3, v0, Lcom/tencent/wstt/gt/utils/AppInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_VER:Ljava/lang/String;

    .line 197
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v3

    const-string v4, "_AUT__"

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/manager/ClientManager;->removeClient(Ljava/lang/String;)V

    .line 200
    new-instance v1, Lcom/tencent/wstt/gt/manager/SingleInstanceClientFactory;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/manager/SingleInstanceClientFactory;-><init>()V

    .line 202
    .local v1, "cf":Lcom/tencent/wstt/gt/manager/ClientFactory;
    const-string v3, "_AUT__"

    const-string v4, "_AUT__"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 201
    invoke-virtual {v1, v3, v4, v5, v5}, Lcom/tencent/wstt/gt/manager/ClientFactory;->orderClient(Ljava/lang/String;I[Lcom/tencent/wstt/gt/OutPara;[Lcom/tencent/wstt/gt/InPara;)Lcom/tencent/wstt/gt/manager/Client;

    .line 205
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 206
    .local v2, "prop":Ljava/util/Properties;
    const-string v3, "pkgName"

    sget-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    const-string v3, "Selected AUT"

    invoke-static {p0, v3, v2}, Lcom/tencent/stat/StatService;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    .line 208
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->finish()V

    .line 209
    return-void
.end method


# virtual methods
.method public getInstalledApp()V
    .locals 7

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 112
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 113
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v3, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/utils/AppInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 134
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->appList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    return-void

    .line 115
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 116
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v4, Lcom/tencent/wstt/gt/utils/AppInfo;

    invoke-direct {v4}, Lcom/tencent/wstt/gt/utils/AppInfo;-><init>()V

    .line 117
    .local v4, "tmpInfo":Lcom/tencent/wstt/gt/utils/AppInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 118
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 117
    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 118
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    iput-object v5, v4, Lcom/tencent/wstt/gt/utils/AppInfo;->appName:Ljava/lang/String;

    .line 119
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/wstt/gt/utils/AppInfo;->packageName:Ljava/lang/String;

    .line 120
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/wstt/gt/utils/AppInfo;->versionName:Ljava/lang/String;

    .line 121
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v5, v4, Lcom/tencent/wstt/gt/utils/AppInfo;->versionCode:I

    .line 122
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 123
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 122
    iput-object v5, v4, Lcom/tencent/wstt/gt/utils/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 125
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 126
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->appList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v1, 0x7f03002f

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->setContentView(I)V

    .line 92
    const-string v1, "Searching.."

    .line 93
    const-string v2, "searching..wait...."

    .line 92
    invoke-static {p0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->proDialog:Landroid/app/ProgressDialog;

    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$ShowappHandler;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$ShowappHandler;-><init>(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    .local v0, "loginThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onResume()V

    .line 140
    return-void
.end method
