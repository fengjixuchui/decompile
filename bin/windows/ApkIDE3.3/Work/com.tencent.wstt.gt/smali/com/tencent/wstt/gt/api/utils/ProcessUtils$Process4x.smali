.class Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process4x;
.super Ljava/lang/Object;
.source "ProcessUtils.java"

# interfaces
.implements Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/api/utils/ProcessUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Process4x"
.end annotation


# instance fields
.field private uidPkgCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process4x;->uidPkgCache:Landroid/util/SparseArray;

    .line 531
    return-void
.end method

.method private getUidPkgCache()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process4x;->uidPkgCache:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public getAllRunningAppProcessInfo()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 544
    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 543
    check-cast v0, Landroid/app/ActivityManager;

    .line 546
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 547
    .local v1, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 555
    return-object v4

    .line 548
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 551
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    new-instance v3, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v8, -0x1

    iget v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;-><init>(ILjava/lang/String;II)V

    .line 552
    .local v3, "processInfo":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPackageByUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 561
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProcessPID(Ljava/lang/String;)I
    .locals 7
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 566
    const/4 v3, -0x1

    .line 567
    .local v3, "pId":I
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 568
    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 567
    check-cast v0, Landroid/app/ActivityManager;

    .line 570
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 571
    .local v1, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 572
    .local v4, "pLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 578
    :goto_1
    return v3

    .line 573
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 574
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 575
    goto :goto_1

    .line 572
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getProcessUID(Ljava/lang/String;)I
    .locals 7
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 583
    const/4 v4, 0x0

    .line 584
    .local v4, "uId":I
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 585
    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 584
    check-cast v0, Landroid/app/ActivityManager;

    .line 587
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 588
    .local v1, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 589
    .local v3, "pLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 595
    :goto_1
    return v4

    .line 590
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 591
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 592
    goto :goto_1

    .line 589
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public hasProcessRunPkg(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 600
    if-nez p1, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v5

    .line 601
    :cond_1
    const/4 v4, -0x1

    .line 602
    .local v4, "uid":I
    invoke-direct {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process4x;->getUidPkgCache()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 603
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_3

    .line 612
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process4x;->getAllRunningAppProcessInfo()Ljava/util/List;

    move-result-object v0

    .line 613
    .local v0, "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    .line 614
    .local v2, "info":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    iget v7, v2, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->uid:I

    if-ne v7, v4, :cond_2

    .line 616
    const/4 v5, 0x1

    goto :goto_0

    .line 605
    .end local v0    # "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    .end local v2    # "info":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    :cond_3
    invoke-direct {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process4x;->getUidPkgCache()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 607
    invoke-direct {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process4x;->getUidPkgCache()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 608
    goto :goto_2

    .line 603
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public initUidPkgCache()Z
    .locals 10

    .prologue
    .line 659
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process4x;->uidPkgCache:Landroid/util/SparseArray;

    .line 660
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 661
    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 660
    check-cast v0, Landroid/app/ActivityManager;

    .line 663
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 664
    .local v1, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 671
    const/4 v5, 0x1

    return v5

    .line 664
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 665
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 666
    .local v4, "pkgList":[Ljava/lang/String;
    array-length v7, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v3, v4, v5

    .line 668
    .local v3, "pkg":Ljava/lang/String;
    iget-object v8, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process4x;->uidPkgCache:Landroid/util/SparseArray;

    iget v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v8, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 666
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public isProcessAlive(Ljava/lang/String;)Z
    .locals 8
    .param p1, "sPid"    # Ljava/lang/String;

    .prologue
    .line 624
    const/4 v4, 0x0

    .line 625
    .local v4, "isAlive":Z
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 626
    const/4 v5, -0x1

    .line 629
    .local v5, "pid":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 636
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 637
    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 636
    check-cast v0, Landroid/app/ActivityManager;

    .line 639
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 640
    .local v1, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "pid":I
    :cond_1
    :goto_0
    move v6, v4

    .line 648
    :goto_1
    return v6

    .line 631
    .restart local v5    # "pid":I
    :catch_0
    move-exception v2

    .line 633
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_1

    .line 640
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 641
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v5, :cond_0

    .line 642
    const/4 v4, 0x1

    .line 643
    goto :goto_0
.end method

.method public killprocess(Ljava/lang/String;I)V
    .locals 0
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "cmd"    # I

    .prologue
    .line 653
    # invokes: Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->killprocessNormal(Ljava/lang/String;I)V
    invoke-static {p1, p2}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->access$0(Ljava/lang/String;I)V

    .line 654
    return-void
.end method
