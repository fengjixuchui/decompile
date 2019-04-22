.class public Lcom/tencent/wstt/gt/utils/LibManager;
.super Ljava/lang/Object;
.source "LibManager.java"


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/tencent/wstt/gt/utils/LibManager;


# instance fields
.field private libPath:Ljava/lang/String;

.field private mApplicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/utils/LibManager;->sGlobalLock:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/utils/LibManager;->libPath:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/utils/LibManager;->mApplicationContext:Landroid/content/Context;

    .line 52
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->INSIDE_SO_FOLDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wstt/gt/utils/LibManager;->libPath:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/wstt/gt/utils/LibManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v1, Lcom/tencent/wstt/gt/utils/LibManager;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/tencent/wstt/gt/utils/LibManager;->sInstance:Lcom/tencent/wstt/gt/utils/LibManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/tencent/wstt/gt/utils/LibManager;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/utils/LibManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/wstt/gt/utils/LibManager;->sInstance:Lcom/tencent/wstt/gt/utils/LibManager;

    .line 46
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/utils/LibManager;->sInstance:Lcom/tencent/wstt/gt/utils/LibManager;

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public loadLibrary(Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "load"    # Z

    .prologue
    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lib"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "libFullName":Ljava/lang/String;
    move-object v2, v4

    .line 60
    .local v2, "fromPath":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getABI()Ljava/lang/String;

    move-result-object v6

    const-string v7, "arm64-v8a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/arm64-v8a/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/tencent/wstt/gt/utils/LibManager;->libPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "toPath":Ljava/lang/String;
    sget-object v6, Lcom/tencent/wstt/gt/api/utils/Env;->CMD_ROOT_PATH:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 68
    sget-object v6, Lcom/tencent/wstt/gt/api/utils/Env;->CMD_ROOT_PATH:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 71
    :cond_1
    iget-object v6, p0, Lcom/tencent/wstt/gt/utils/LibManager;->libPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 72
    iget-object v6, p0, Lcom/tencent/wstt/gt/utils/LibManager;->libPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 75
    :cond_2
    invoke-static {v5}, Lcom/tencent/wstt/gt/utils/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 76
    const/4 v3, 0x0

    .line 78
    .local v3, "fs":Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lcom/tencent/wstt/gt/utils/LibManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 79
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 80
    invoke-static {v3, v5}, Lcom/tencent/wstt/gt/utils/FileUtil;->copyInputToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 88
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v3    # "fs":Ljava/io/InputStream;
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 92
    :try_start_1
    invoke-static {v5}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :cond_4
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 81
    .restart local v3    # "fs":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 84
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 85
    throw v6

    .line 93
    .end local v3    # "fs":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v6, 0x0

    goto :goto_1
.end method
