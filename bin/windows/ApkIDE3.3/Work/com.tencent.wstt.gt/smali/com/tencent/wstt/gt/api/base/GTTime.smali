.class public Lcom/tencent/wstt/gt/api/base/GTTime;
.super Ljava/lang/Object;
.source "GTTime.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static creatPerfDigitalEntry(ILjava/lang/String;Ljava/lang/String;J[I)Lcom/tencent/wstt/gt/PerfDigitalEntry;
    .locals 7
    .param p0, "functionId"    # I
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "pid"    # J
    .param p5, "exKeys"    # [I

    .prologue
    .line 64
    new-instance v0, Lcom/tencent/wstt/gt/PerfDigitalEntry;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;-><init>()V

    .line 65
    .local v0, "entry":Lcom/tencent/wstt/gt/PerfDigitalEntry;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->setData(J)V

    .line 66
    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->setFunctionId(I)V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->setLogTime(J)V

    .line 69
    const/4 v6, 0x0

    .line 70
    .local v6, "exKey":I
    if-eqz p5, :cond_0

    array-length v2, p5

    if-lez v2, :cond_0

    .line 72
    const/4 v2, 0x0

    aget v6, p5, v2

    .line 74
    :cond_0
    new-instance v1, Lcom/tencent/wstt/gt/QueryPerfEntry;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/tencent/wstt/gt/QueryPerfEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 75
    .local v1, "queryPerfEntry":Lcom/tencent/wstt/gt/QueryPerfEntry;
    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->setQueryEntry(Lcom/tencent/wstt/gt/QueryPerfEntry;)V

    .line 77
    return-object v0
.end method

.method public static disable()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->setETStarted(Z)V

    .line 51
    return-void
.end method

.method public static enable()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->setETStarted(Z)V

    .line 43
    return-void
.end method

.method public static endTime(Ljava/lang/String;Ljava/lang/String;[I)J
    .locals 7
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "exKeys"    # [I

    .prologue
    .line 105
    const/4 v1, 0x7

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    .line 104
    invoke-static/range {v1 .. v6}, Lcom/tencent/wstt/gt/api/base/GTTime;->creatPerfDigitalEntry(ILjava/lang/String;Ljava/lang/String;J[I)Lcom/tencent/wstt/gt/PerfDigitalEntry;

    move-result-object v0

    .line 106
    .local v0, "entry":Lcom/tencent/wstt/gt/PerfDigitalEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->endDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static endTimeInThread(Ljava/lang/String;Ljava/lang/String;[I)J
    .locals 7
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "exKeys"    # [I

    .prologue
    .line 130
    const/16 v1, 0x9

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    .line 129
    invoke-static/range {v1 .. v6}, Lcom/tencent/wstt/gt/api/base/GTTime;->creatPerfDigitalEntry(ILjava/lang/String;Ljava/lang/String;J[I)Lcom/tencent/wstt/gt/PerfDigitalEntry;

    move-result-object v0

    .line 131
    .local v0, "entry":Lcom/tencent/wstt/gt/PerfDigitalEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->endDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static isEnable()Z
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->isETStarted()Z

    move-result v0

    return v0
.end method

.method public static startTime(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 7
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "exKeys"    # [I

    .prologue
    .line 93
    const/4 v1, 0x6

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    .line 92
    invoke-static/range {v1 .. v6}, Lcom/tencent/wstt/gt/api/base/GTTime;->creatPerfDigitalEntry(ILjava/lang/String;Ljava/lang/String;J[I)Lcom/tencent/wstt/gt/PerfDigitalEntry;

    move-result-object v0

    .line 94
    .local v0, "entry":Lcom/tencent/wstt/gt/PerfDigitalEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->startDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)V

    .line 95
    return-void
.end method

.method public static startTimeInThread(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 7
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "exKeys"    # [I

    .prologue
    .line 117
    const/16 v1, 0x8

    .line 118
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x0

    int-to-long v4, v2

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    .line 116
    invoke-static/range {v1 .. v6}, Lcom/tencent/wstt/gt/api/base/GTTime;->creatPerfDigitalEntry(ILjava/lang/String;Ljava/lang/String;J[I)Lcom/tencent/wstt/gt/PerfDigitalEntry;

    move-result-object v0

    .line 119
    .local v0, "entry":Lcom/tencent/wstt/gt/PerfDigitalEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->startDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)V

    .line 120
    return-void
.end method
