.class public Lcom/tencent/wstt/gt/manager/OpPerfBridge;
.super Ljava/lang/Object;
.source "OpPerfBridge.java"


# static fields
.field private static opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

.field private static opWarningManager:Lcom/tencent/wstt/gt/manager/OpWarningManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->getInstance()Lcom/tencent/wstt/gt/manager/OpPerfManager;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    .line 44
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpWarningManager;->getInstance()Lcom/tencent/wstt/gt/manager/OpWarningManager;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opWarningManager:Lcom/tencent/wstt/gt/manager/OpWarningManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V
    .locals 4
    .param p0, "op"    # Lcom/tencent/wstt/gt/OutPara;
    .param p1, "nowValue"    # Ljava/lang/String;
    .param p2, "data"    # J

    .prologue
    .line 159
    sget-boolean v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-nez v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->get(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    .line 165
    .local v0, "profilerEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->isMonitor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v0, p2, p3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->add(J)I

    move-result v1

    .line 175
    .local v1, "seq":I
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v1}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->add(JI)V

    .line 176
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setLastValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;JJ)V
    .locals 4
    .param p0, "op"    # Lcom/tencent/wstt/gt/OutPara;
    .param p1, "nowValue"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "data"    # J

    .prologue
    .line 188
    sget-boolean v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-nez v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->get(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    .line 194
    .local v0, "profilerEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->isMonitor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->add(JJ)I

    move-result v1

    .line 204
    .local v1, "seq":I
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v2

    invoke-virtual {v2, p4, p5, v1}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->add(JI)V

    .line 205
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setLastValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;[J)V
    .locals 10
    .param p0, "parentOp"    # Lcom/tencent/wstt/gt/OutPara;
    .param p1, "nowValue"    # Ljava/lang/String;
    .param p2, "data"    # [J

    .prologue
    const/4 v4, 0x0

    .line 223
    sget-boolean v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-nez v5, :cond_1

    .line 261
    :cond_0
    return-void

    .line 228
    :cond_1
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->get(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    .line 229
    .local v1, "profilerEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->isMonitor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    invoke-virtual {v1, p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setLastValue(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "i":I
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 243
    .local v3, "subEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    aget-wide v8, p2, v0

    invoke-virtual {v3, v8, v9}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->add(J)I

    move-result v2

    .line 246
    .local v2, "seq":I
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v7

    aget-wide v8, p2, v0

    invoke-virtual {v7, v8, v9, v2}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->add(JI)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "i":I
    .end local v2    # "seq":I
    .end local v3    # "subEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_2
    const/4 v0, 0x0

    .line 253
    .restart local v0    # "i":I
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 256
    .restart local v3    # "subEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v7

    aget-wide v8, p2, v0

    invoke-virtual {v7, v8, v9}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->add(J)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    .line 253
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static endProfier(Lcom/tencent/wstt/gt/OutPara;)V
    .locals 0
    .param p0, "op"    # Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 144
    return-void
.end method

.method public static getAllEnableProfilerData()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->getAllEnable()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    return-object v0
.end method

.method public static getAllProfilerData()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->getAll()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    return-object v0
.end method

.method public static getOpWarningManager()Lcom/tencent/wstt/gt/manager/OpWarningManager;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opWarningManager:Lcom/tencent/wstt/gt/manager/OpWarningManager;

    return-object v0
.end method

.method public static getProfilerData(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->get(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    return-object v0
.end method

.method public static registMonitor(Lcom/tencent/wstt/gt/OutPara;)V
    .locals 12
    .param p0, "ov"    # Lcom/tencent/wstt/gt/OutPara;

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0xc

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "key":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/tencent/wstt/gt/OutPara;->hasMonitorOnce:Z

    if-eqz v7, :cond_0

    .line 335
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 283
    .local v0, "context":Landroid/content/Context;
    const-string v7, "MEM"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 285
    const-string v7, "ALL Used Memory(MB)"

    const-string v8, "MB"

    .line 284
    invoke-static {p0, v10, v7, v8}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_1
    iput-boolean v11, p0, Lcom/tencent/wstt/gt/OutPara;->hasMonitorOnce:Z

    goto :goto_0

    .line 286
    :cond_1
    const-string v7, "CPU"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 287
    const/16 v7, 0xd

    .line 288
    const-string v8, "ALL CPU occupy"

    const-string v9, "%"

    .line 287
    invoke-static {p0, v7, v8, v9}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :cond_2
    const-string v7, "NET"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 290
    new-array v1, v9, [I

    fill-array-data v1, :array_0

    .line 292
    .local v1, "funIds":[I
    new-array v5, v9, [Ljava/lang/String;

    const-string v7, "transmitted"

    aput-object v7, v5, v8

    const-string v7, "received"

    aput-object v7, v5, v11

    .line 294
    .local v5, "subKeys":[Ljava/lang/String;
    const-string v7, ""

    const-string v8, "KB"

    .line 293
    invoke-static {p0, v5, v1, v7, v8}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 295
    .end local v1    # "funIds":[I
    .end local v5    # "subKeys":[Ljava/lang/String;
    :cond_3
    const-string v7, "Signal"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 296
    new-array v4, v9, [Ljava/lang/String;

    const-string v7, "net"

    aput-object v7, v4, v8

    const-string v7, "wifi"

    aput-object v7, v4, v11

    .line 297
    .local v4, "sigSubKeys":[Ljava/lang/String;
    new-array v3, v9, [I

    fill-array-data v3, :array_1

    .line 299
    .local v3, "sigFuncIds":[I
    const-string v7, ""

    const-string v8, "dbm"

    invoke-static {p0, v4, v3, v7, v8}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 300
    .end local v3    # "sigFuncIds":[I
    .end local v4    # "sigSubKeys":[Ljava/lang/String;
    :cond_4
    const-string v7, "FPS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 302
    const-string v7, "FPS"

    const-string v8, ""

    .line 301
    invoke-static {p0, v10, v7, v8}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 306
    :cond_5
    const-string v7, "Volt"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 309
    const/16 v7, 0x100

    const-string v8, "Volt value(mV)"

    const-string v9, "mV"

    .line 308
    invoke-static {p0, v7, v8, v9}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 314
    :cond_6
    const-string v7, "Power"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 317
    const-string v7, "Power value(%)"

    const-string v8, "%"

    .line 316
    invoke-static {p0, v10, v7, v8}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 320
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 322
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 324
    :cond_8
    const-string v7, ""

    const-string v8, ""

    .line 323
    invoke-static {p0, v10, v7, v8}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 327
    :cond_9
    invoke-virtual {p0, v8}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    .line 328
    iput-boolean v8, p0, Lcom/tencent/wstt/gt/OutPara;->hasMonitorOnce:Z

    .line 330
    const-string v7, "observable OutPara value must be digit."

    .line 329
    invoke-static {v0, v7}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :array_0
    .array-data 4
        0xe
        0xe
    .end array-data

    .line 297
    :array_1
    .array-data 4
        0xe
        0xe
    .end array-data
.end method

.method public static removeProfilerData(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->remove(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static setOutparaChangedListener(Ljava/lang/String;Lcom/tencent/wstt/gt/ui/model/ChangedListener;)V
    .locals 1
    .param p0, "smName"    # Ljava/lang/String;
    .param p1, "changedListener"    # Lcom/tencent/wstt/gt/ui/model/ChangedListener;

    .prologue
    .line 339
    invoke-static {p0}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getProfilerData(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    .line 340
    .local v0, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setChangedListener(Lcom/tencent/wstt/gt/ui/model/ChangedListener;)V

    .line 341
    return-void
.end method

.method public static setThreshold(Ljava/lang/String;Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "threshold"    # Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    .prologue
    .line 148
    sget-object v1, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-virtual {v1, p0}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->get(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    .line 149
    .local v0, "profilerEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setThresholdEntry(Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;)V

    goto :goto_0
.end method

.method public static startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "outPara"    # Lcom/tencent/wstt/gt/OutPara;
    .param p1, "funcId"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "unit"    # Ljava/lang/String;

    .prologue
    .line 77
    if-nez p0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/wstt/gt/OutPara;->hasMonitorOnce:Z

    .line 84
    sget-object v1, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->get(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    .line 85
    .local v0, "profilerEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .end local v0    # "profilerEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;-><init>(Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V

    .line 88
    .restart local v0    # "profilerEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setAlias(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setFunctionId(I)V

    .line 91
    invoke-virtual {v0, p2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setDesc(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setUnit(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getClient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClientKey(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setExkey(I)V

    .line 94
    sget-object v1, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-virtual {v1, v0}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->add(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    goto :goto_0
.end method

.method public static startProfier(Lcom/tencent/wstt/gt/OutPara;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "outPara"    # Lcom/tencent/wstt/gt/OutPara;
    .param p1, "subKeys"    # [Ljava/lang/String;
    .param p2, "funcIds"    # [I
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "unit"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 106
    if-nez p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tencent/wstt/gt/OutPara;->hasMonitorOnce:Z

    .line 113
    sget-object v4, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->get(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    .line 114
    .local v1, "profilerEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-nez v1, :cond_0

    .line 116
    new-instance v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .end local v1    # "profilerEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;-><init>(Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V

    .line 117
    .restart local v1    # "profilerEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setName(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setAlias(Ljava/lang/String;)V

    .line 119
    aget v4, p2, v3

    invoke-virtual {v1, v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setFunctionId(I)V

    .line 120
    invoke-virtual {v1, p3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setDesc(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, p4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setUnit(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getClient()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClientKey(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setExkey(I)V

    .line 124
    array-length v4, p1

    invoke-virtual {v1, v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->initChildren(I)V

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "i":I
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-lt v3, v5, :cond_2

    .line 133
    sget-object v3, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->opPerfManager:Lcom/tencent/wstt/gt/manager/OpPerfManager;

    invoke-virtual {v3, v1}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->add(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    goto :goto_0

    .line 126
    :cond_2
    aget-object v2, v4, v3

    .line 128
    .local v2, "subEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    aget-object v6, p1, v0

    invoke-virtual {v2, v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setName(Ljava/lang/String;)V

    .line 129
    aget v6, p2, v0

    invoke-virtual {v2, v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setFunctionId(I)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
