.class interface abstract Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/api/utils/ProcessUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IProcess"
.end annotation


# virtual methods
.method public abstract getAllRunningAppProcessInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageByUid(I)Ljava/lang/String;
.end method

.method public abstract getProcessPID(Ljava/lang/String;)I
.end method

.method public abstract getProcessUID(Ljava/lang/String;)I
.end method

.method public abstract hasProcessRunPkg(Ljava/lang/String;)Z
.end method

.method public abstract initUidPkgCache()Z
.end method

.method public abstract isProcessAlive(Ljava/lang/String;)Z
.end method

.method public abstract killprocess(Ljava/lang/String;I)V
.end method
