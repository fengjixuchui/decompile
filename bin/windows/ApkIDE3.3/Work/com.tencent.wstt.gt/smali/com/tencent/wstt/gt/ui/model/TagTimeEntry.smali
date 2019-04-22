.class public Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
.super Lcom/tencent/wstt/gt/ui/model/NamedEntry;
.source "TagTimeEntry.java"


# static fields
.field public static final TYPE_GLOBAL:I = 0x0

.field public static final TYPE_THREAD:I = 0x1


# instance fields
.field private alias:Ljava/lang/String;

.field private ave:J

.field private carry:J

.field private carry_l2d:J

.field private carry_s:J

.field private carry_save:J

.field private changedListener:Lcom/tencent/wstt/gt/ui/model/ChangedListener;

.field private dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/wstt/gt/ui/model/DataRecorder",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/TimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private desc:Ljava/lang/String;

.field public exInt_1:I

.field public exInt_2:I

.field public exInt_3:I

.field private exkey:I

.field private functionId:I

.field private lastStart:J

.field private lastValue:Ljava/lang/String;

.field private max:J

.field private min:J

.field private nameT:Ljava/lang/String;

.field private parent:Lcom/tencent/wstt/gt/ui/model/NamedEntry;

.field private scale:I

.field private subEntrys:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

.field private thresholdEntry:Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

.field private tid:J

.field private total:D

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V
    .locals 8
    .param p1, "parent"    # Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x3e8

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Lcom/tencent/wstt/gt/ui/model/NamedEntry;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->unit:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->alias:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->lastValue:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->desc:Ljava/lang/String;

    .line 50
    new-array v0, v2, [Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->subEntrys:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 52
    iput-wide v6, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->lastStart:J

    .line 54
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->max:J

    .line 55
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->min:J

    .line 56
    iput-wide v6, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->ave:J

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->total:D

    .line 60
    iput v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exInt_1:I

    .line 61
    iput v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exInt_2:I

    .line 62
    iput v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exInt_3:I

    .line 73
    iput-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry:J

    .line 74
    iput-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_save:J

    .line 75
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    .line 76
    iput-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_l2d:J

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    .line 88
    iput-object p1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->parent:Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    .line 89
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;-><init>(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->thresholdEntry:Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    .line 90
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/ui/model/DataRecorder;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    .line 91
    return-void
.end method


# virtual methods
.method public add(J)I
    .locals 11
    .param p1, "record"    # J

    .prologue
    .line 243
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_save:J

    div-long v4, p1, v2

    .line 244
    .local v4, "secondRecord":J
    iget-object v8, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    new-instance v1, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->functionId:I

    invoke-direct/range {v1 .. v6}, Lcom/tencent/wstt/gt/ui/model/TimeEntry;-><init>(JJI)V

    invoke-virtual {v8, v1}, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->add(Ljava/lang/Object;)V

    .line 245
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .line 246
    .local v7, "result":I
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->max:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->max:J

    .line 247
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->min:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->min:J

    .line 248
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->total:D

    long-to-double v8, v4

    add-double/2addr v2, v8

    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->total:D

    .line 249
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->calcAve()V

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->changedListener:Lcom/tencent/wstt/gt/ui/model/ChangedListener;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->changedListener:Lcom/tencent/wstt/gt/ui/model/ChangedListener;

    invoke-interface {v1, p1, p2}, Lcom/tencent/wstt/gt/ui/model/ChangedListener;->onLongValueChanged(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return v7

    .line 257
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public add(JJ)I
    .locals 11
    .param p1, "time"    # J
    .param p3, "record"    # J

    .prologue
    .line 267
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_save:J

    div-long v4, p3, v2

    .line 268
    .local v4, "secondRecord":J
    iget-object v8, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    new-instance v1, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->functionId:I

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/wstt/gt/ui/model/TimeEntry;-><init>(JJI)V

    invoke-virtual {v8, v1}, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->add(Ljava/lang/Object;)V

    .line 269
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .line 270
    .local v7, "result":I
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->max:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->max:J

    .line 271
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->min:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->min:J

    .line 272
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->total:D

    long-to-double v8, v4

    add-double/2addr v2, v8

    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->total:D

    .line 273
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->calcAve()V

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->changedListener:Lcom/tencent/wstt/gt/ui/model/ChangedListener;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->changedListener:Lcom/tencent/wstt/gt/ui/model/ChangedListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/tencent/wstt/gt/ui/model/ChangedListener;->onLongValueChanged(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    return v7

    .line 281
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public calcAve()V
    .locals 4

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->total:D

    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->ave:J

    .line 295
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 339
    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->subEntrys:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 344
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->clear()V

    .line 348
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->max:J

    .line 349
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->min:J

    .line 350
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->ave:J

    .line 351
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->total:D

    .line 352
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->thresholdEntry:Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->clear()V

    .line 353
    return-void

    .line 339
    :cond_0
    aget-object v0, v2, v1

    .line 341
    .local v0, "child":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->clear()V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getAve()Ljava/lang/String;
    .locals 6

    .prologue
    .line 382
    iget v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->functionId:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->ave:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    long-to-double v4, v4

    iget v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->ave:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    long-to-double v2, v2

    iget v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAveLong()J
    .locals 2

    .prologue
    .line 394
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->ave:J

    return-wide v0
.end method

.method public getCarry()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry:J

    return-wide v0
.end method

.method public getCarry_l2d()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_l2d:J

    return-wide v0
.end method

.method public getCarry_s()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    return-wide v0
.end method

.method public getCarry_save()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_save:J

    return-wide v0
.end method

.method public getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->subEntrys:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getExkey()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exkey:I

    return v0
.end method

.method public getFunctionId()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->functionId:I

    return v0
.end method

.method public getLastStart()J
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->lastStart:J

    return-wide v0
.end method

.method public getLastValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->lastValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()Ljava/lang/String;
    .locals 6

    .prologue
    .line 356
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->max:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 358
    const-string v0, ""

    .line 365
    :goto_0
    return-object v0

    .line 360
    :cond_0
    iget v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->functionId:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->max:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    long-to-double v4, v4

    iget v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_1
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->max:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    long-to-double v2, v2

    iget v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMin()Ljava/lang/String;
    .locals 6

    .prologue
    .line 369
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->min:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 371
    const-string v0, ""

    .line 378
    :goto_0
    return-object v0

    .line 373
    :cond_0
    iget v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->functionId:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->min:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    long-to-double v4, v4

    iget v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 378
    :cond_1
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->min:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    long-to-double v2, v2

    iget v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNameT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->nameT:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->parent:Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    return-object v0
.end method

.method public getRecord(I)Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    .locals 1
    .param p1, "seq"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->getRecord(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    return-object v0
.end method

.method public getRecordList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/TimeEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->getRecordList()Ljava/util/ArrayList;

    move-result-object v0

    .line 316
    .local v0, "tempRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    return-object v0
.end method

.method public getRecordList(II)Ljava/util/ArrayList;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/TimeEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->getRecordList(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 306
    .local v0, "tempRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->size()I

    move-result v0

    return v0
.end method

.method public getRecordSizeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->dataRecorder:Lcom/tencent/wstt/gt/ui/model/DataRecorder;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/DataRecorder;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    return v0
.end method

.method public getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->subEntrys:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    return-object v0
.end method

.method public getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->thresholdEntry:Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    return-object v0
.end method

.method public getTid()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->tid:J

    return-wide v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 7

    .prologue
    .line 398
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->total:D

    const-wide v4, 0x41cdcd64ff800000L    # 9.99999999E8

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 400
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->total:D

    iget-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    long-to-double v4, v4

    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    .line 405
    :goto_0
    return-object v2

    .line 404
    :cond_0
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->total:D

    iget-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-long v0, v2

    .line 405
    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public hasChild()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->subEntrys:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initChildren(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 95
    const/4 v2, 0x1

    if-ge p1, v2, :cond_1

    .line 107
    :cond_0
    return-void

    .line 99
    :cond_1
    new-array v2, p1, [Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    iput-object v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->subEntrys:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 102
    new-instance v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;-><init>(Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V

    .line 103
    .local v1, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    iget v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->functionId:I

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setFunctionId(I)V

    .line 104
    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->unit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->setUnit(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->subEntrys:[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    aput-object v1, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->alias:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setChangedListener(Lcom/tencent/wstt/gt/ui/model/ChangedListener;)V
    .locals 0
    .param p1, "changedListener"    # Lcom/tencent/wstt/gt/ui/model/ChangedListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->changedListener:Lcom/tencent/wstt/gt/ui/model/ChangedListener;

    .line 84
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->desc:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setExkey(I)V
    .locals 0
    .param p1, "exkey"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->exkey:I

    .line 148
    return-void
.end method

.method public setFunctionId(I)V
    .locals 10
    .param p1, "functionId"    # I

    .prologue
    const-wide/16 v8, 0x64

    const/4 v6, 0x3

    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x1

    .line 153
    iput p1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->functionId:I

    .line 156
    iget v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->functionId:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :pswitch_0
    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry:J

    .line 194
    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    .line 195
    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_save:J

    .line 196
    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_l2d:J

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    .line 200
    :goto_0
    return-void

    .line 159
    :pswitch_1
    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry:J

    .line 160
    iput-wide v8, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    .line 161
    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_save:J

    .line 162
    iput-wide v8, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_l2d:J

    .line 163
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    goto :goto_0

    .line 173
    :pswitch_2
    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry:J

    .line 174
    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    .line 175
    iput-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_save:J

    .line 176
    iput-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_l2d:J

    .line 177
    iput v6, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    goto :goto_0

    .line 182
    :pswitch_3
    iput-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry:J

    .line 183
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_s:J

    .line 184
    iput-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_save:J

    .line 185
    iput-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->carry_l2d:J

    .line 186
    iput v6, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->scale:I

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setLastStart(J)V
    .locals 1
    .param p1, "start"    # J

    .prologue
    .line 233
    iput-wide p1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->lastStart:J

    .line 234
    return-void
.end method

.method public setLastValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastValue"    # Ljava/lang/String;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->lastValue:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->name:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(T)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->nameT:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setThresholdEntry(Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;)V
    .locals 0
    .param p1, "thresholdEntry"    # Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->thresholdEntry:Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    .line 454
    return-void
.end method

.method public setTid(J)V
    .locals 1
    .param p1, "type"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->tid:J

    .line 140
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 2
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 424
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->unit:Ljava/lang/String;

    .line 426
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->unit:Ljava/lang/String;

    .line 430
    :cond_1
    return-void
.end method
