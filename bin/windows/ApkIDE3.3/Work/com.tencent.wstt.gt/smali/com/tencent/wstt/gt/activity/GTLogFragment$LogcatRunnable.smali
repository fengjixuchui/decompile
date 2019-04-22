.class public Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogcatRunnable"
.end annotation


# instance fields
.field private killed:Z

.field private final lock:Ljava/lang/Object;

.field private reader:Lcom/tencent/wstt/gt/log/logcat/LogcatReader;

.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V
    .locals 1

    .prologue
    .line 695
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public killReader()V
    .locals 2

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->killed:Z

    if-nez v0, :cond_1

    .line 727
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 728
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->killed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->reader:Lcom/tencent/wstt/gt/log/logcat/LogcatReader;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->reader:Lcom/tencent/wstt/gt/log/logcat/LogcatReader;

    invoke-interface {v0}, Lcom/tencent/wstt/gt/log/logcat/LogcatReader;->killQuietly()V

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->killed:Z

    .line 727
    :cond_0
    monitor-exit v1

    .line 734
    :cond_1
    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 704
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    .line 703
    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->create(Landroid/content/Context;Z)Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;

    move-result-object v2

    .line 705
    .local v2, "loader":Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;
    invoke-virtual {v2}, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->loadReader()Lcom/tencent/wstt/gt/log/logcat/LogcatReader;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->reader:Lcom/tencent/wstt/gt/log/logcat/LogcatReader;

    .line 707
    :goto_0
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->cb_logcatSwitch:Lcom/tencent/wstt/gt/views/GTCheckBox;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$9(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Lcom/tencent/wstt/gt/views/GTCheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/views/GTCheckBox;->isChecked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->killReader()V

    .line 723
    .end local v2    # "loader":Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;
    :goto_1
    return-void

    .line 708
    .restart local v2    # "loader":Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->reader:Lcom/tencent/wstt/gt/log/logcat/LogcatReader;

    invoke-interface {v3}, Lcom/tencent/wstt/gt/log/logcat/LogcatReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 712
    invoke-virtual {v2}, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->loadReader()Lcom/tencent/wstt/gt/log/logcat/LogcatReader;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->reader:Lcom/tencent/wstt/gt/log/logcat/LogcatReader;

    .line 713
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->reader:Lcom/tencent/wstt/gt/log/logcat/LogcatReader;

    invoke-interface {v3}, Lcom/tencent/wstt/gt/log/logcat/LogcatReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 715
    :cond_1
    invoke-static {v1}, Lcom/tencent/wstt/gt/api/base/GTLog;->logCat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 718
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "loader":Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 721
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->killReader()V

    goto :goto_1

    .line 720
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 721
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTLogFragment$LogcatRunnable;->killReader()V

    .line 722
    throw v3
.end method
