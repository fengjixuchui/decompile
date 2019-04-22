.class public Lcom/tencent/wstt/gt/log/GTGWInternal;
.super Ljava/lang/Object;
.source "GTGWInternal.java"


# static fields
.field private static lastSaveFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, ""

    sput-object v0, Lcom/tencent/wstt/gt/log/GTGWInternal;->lastSaveFolder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllEnableGWData()V
    .locals 5

    .prologue
    .line 104
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getAllEnableProfilerData()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    .line 105
    .local v2, "ttes":[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 112
    return-void

    .line 105
    :cond_0
    aget-object v1, v2, v3

    .line 107
    .local v1, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->clear()V

    .line 109
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->clearNetValue(Ljava/lang/String;)V

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static clearAllGWData()V
    .locals 5

    .prologue
    .line 92
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getAllProfilerData()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    .line 93
    .local v2, "ttes":[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 100
    return-void

    .line 93
    :cond_0
    aget-object v1, v2, v3

    .line 95
    .local v1, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->clear()V

    .line 97
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->clearNetValue(Ljava/lang/String;)V

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getLastSaveFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/tencent/wstt/gt/log/GTGWInternal;->lastSaveFolder:Ljava/lang/String;

    return-object v0
.end method

.method public static saveAllEnableGWData(Lcom/tencent/wstt/gt/log/GWSaveEntry;)V
    .locals 7
    .param p0, "saveEntry"    # Lcom/tencent/wstt/gt/log/GWSaveEntry;

    .prologue
    .line 72
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path3:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/wstt/gt/log/GTGWInternal;->setLastSaveFolder(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveDate()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "now":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/log/GWSaveEntry;->setNow(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getAllEnableProfilerData()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    .line 76
    .local v2, "ttes":[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 87
    invoke-static {p0, v2}, Lcom/tencent/wstt/gt/log/LogUtils;->writeGWDesc(Lcom/tencent/wstt/gt/log/GWSaveEntry;[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 88
    return-void

    .line 76
    :cond_0
    aget-object v1, v2, v3

    .line 78
    .local v1, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAlias()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/log/LogUtils;->writeGWDataForSM(Lcom/tencent/wstt/gt/log/GWSaveEntry;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 76
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/log/LogUtils;->writeGWData(Lcom/tencent/wstt/gt/log/GWSaveEntry;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    goto :goto_1
.end method

.method public static saveAllGWData(Lcom/tencent/wstt/gt/log/GWSaveEntry;)V
    .locals 7
    .param p0, "saveEntry"    # Lcom/tencent/wstt/gt/log/GWSaveEntry;

    .prologue
    .line 53
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path3:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/wstt/gt/log/GTGWInternal;->setLastSaveFolder(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveDate()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "now":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/log/GWSaveEntry;->setNow(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getAllProfilerData()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    .line 57
    .local v2, "ttes":[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 68
    invoke-static {p0, v2}, Lcom/tencent/wstt/gt/log/LogUtils;->writeGWDesc(Lcom/tencent/wstt/gt/log/GWSaveEntry;[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 69
    return-void

    .line 57
    :cond_0
    aget-object v1, v2, v3

    .line 59
    .local v1, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAlias()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/log/LogUtils;->writeGWDataForSM(Lcom/tencent/wstt/gt/log/GWSaveEntry;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 57
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/log/LogUtils;->writeGWData(Lcom/tencent/wstt/gt/log/GWSaveEntry;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    goto :goto_1
.end method

.method public static saveGWData(Lcom/tencent/wstt/gt/log/GWSaveEntry;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 3
    .param p0, "saveEntry"    # Lcom/tencent/wstt/gt/log/GWSaveEntry;
    .param p1, "tagTimeEntry"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path3:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/wstt/gt/log/GTGWInternal;->setLastSaveFolder(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveDate()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "now":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/log/GWSaveEntry;->setNow(Ljava/lang/String;)V

    .line 48
    invoke-static {p0, p1}, Lcom/tencent/wstt/gt/log/LogUtils;->writeGWData(Lcom/tencent/wstt/gt/log/GWSaveEntry;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 49
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/log/LogUtils;->writeGWDesc(Lcom/tencent/wstt/gt/log/GWSaveEntry;[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 50
    return-void
.end method

.method public static saveGWDataForSM(Lcom/tencent/wstt/gt/log/GWSaveEntry;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 3
    .param p0, "saveEntry"    # Lcom/tencent/wstt/gt/log/GWSaveEntry;
    .param p1, "tagTimeEntry"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path3:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/wstt/gt/log/GTGWInternal;->setLastSaveFolder(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveDate()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "now":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/log/GWSaveEntry;->setNow(Ljava/lang/String;)V

    .line 39
    invoke-static {p0, p1}, Lcom/tencent/wstt/gt/log/LogUtils;->writeGWDataForSM(Lcom/tencent/wstt/gt/log/GWSaveEntry;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 40
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/log/LogUtils;->writeGWDesc(Lcom/tencent/wstt/gt/log/GWSaveEntry;[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 41
    return-void
.end method

.method public static setLastSaveFolder(Ljava/lang/String;)V
    .locals 0
    .param p0, "lastSaveFolder"    # Ljava/lang/String;

    .prologue
    .line 119
    sput-object p0, Lcom/tencent/wstt/gt/log/GTGWInternal;->lastSaveFolder:Ljava/lang/String;

    .line 120
    return-void
.end method
