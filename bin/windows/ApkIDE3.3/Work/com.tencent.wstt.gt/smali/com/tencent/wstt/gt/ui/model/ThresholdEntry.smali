.class public Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;
.super Ljava/lang/Object;
.source "ThresholdEntry.java"


# instance fields
.field private durLowerTimes:I

.field private durUpperTimes:I

.field private duration:I

.field private enable:Z

.field private isLowerRecordStarted:Z

.field private isToasted:Z

.field private isUpperRecordStarted:Z

.field private lastLowerBeginSeq:I

.field private lastUpperBeginSeq:I

.field private lastestWarning:Lcom/tencent/wstt/gt/ui/model/WarningEntry;

.field private lowerValue:D

.field private lowerWariningCount:I

.field private newWarning:Z

.field private src:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

.field private upperValue:D

.field private upperWariningCount:I


# direct methods
.method protected constructor <init>(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 3
    .param p1, "src"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->enable:Z

    .line 41
    const v0, 0x7fffffff

    iput v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    .line 42
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    iput-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperValue:D

    .line 43
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    iput-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerValue:D

    .line 51
    iput v2, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->durUpperTimes:I

    .line 52
    iput v2, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->durLowerTimes:I

    .line 64
    iput-object p1, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->src:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 65
    return-void
.end method

.method private judgeToast()V
    .locals 4

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperValue:D

    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerValue:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isToasted:Z

    if-nez v0, :cond_1

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isToasted:Z

    .line 193
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "lower value must less than upper value!"

    .line 192
    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperValue:D

    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerValue:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isToasted:Z

    if-nez v0, :cond_0

    .line 201
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isToasted:Z

    goto :goto_0
.end method

.method private recordLastestWaring(II)V
    .locals 2
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    .line 183
    new-instance v0, Lcom/tencent/wstt/gt/ui/model/WarningEntry;

    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->src:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-direct {v0, v1, p1, p2}, Lcom/tencent/wstt/gt/ui/model/WarningEntry;-><init>(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;II)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastestWarning:Lcom/tencent/wstt/gt/ui/model/WarningEntry;

    .line 184
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getOpWarningManager()Lcom/tencent/wstt/gt/manager/OpWarningManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastestWarning:Lcom/tencent/wstt/gt/ui/model/WarningEntry;

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/manager/OpWarningManager;->add(Lcom/tencent/wstt/gt/ui/model/WarningEntry;)V

    .line 185
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 81
    const v0, 0x7fffffff

    iput v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    .line 82
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    iput-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperValue:D

    .line 83
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    iput-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerValue:D

    .line 84
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 11
    .param p1, "data"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 210
    iget-boolean v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->enable:Z

    if-nez v6, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperValue:D

    .line 216
    .local v4, "realUpperV":D
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerValue:D

    .line 218
    .local v2, "realLowerV":D
    invoke-direct {p0}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->judgeToast()V

    .line 220
    iget-object v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->src:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getCarry_l2d()J

    move-result-wide v6

    div-long v6, p1, v6

    long-to-double v0, v6

    .line 222
    .local v0, "d":D
    cmpl-double v6, v0, v4

    if-lez v6, :cond_4

    .line 224
    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->durUpperTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->durUpperTimes:I

    .line 226
    iget-boolean v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isUpperRecordStarted:Z

    if-eqz v6, :cond_2

    .line 228
    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->durUpperTimes:I

    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    if-ne v6, v7, :cond_0

    .line 231
    iput-boolean v9, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->newWarning:Z

    .line 232
    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperWariningCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperWariningCount:I

    .line 233
    invoke-direct {p0, v8, v8}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->recordLastestWaring(II)V

    goto :goto_0

    .line 236
    :cond_2
    iget-boolean v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isUpperRecordStarted:Z

    if-nez v6, :cond_3

    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    if-ne v6, v9, :cond_3

    .line 238
    iput-boolean v9, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isUpperRecordStarted:Z

    .line 241
    iput-boolean v9, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->newWarning:Z

    .line 242
    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperWariningCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperWariningCount:I

    .line 243
    invoke-direct {p0, v8, v8}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->recordLastestWaring(II)V

    goto :goto_0

    .line 247
    :cond_3
    iput-boolean v9, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isUpperRecordStarted:Z

    goto :goto_0

    .line 250
    :cond_4
    cmpg-double v6, v0, v2

    if-gez v6, :cond_7

    .line 252
    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->durLowerTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->durLowerTimes:I

    .line 254
    iget-boolean v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    if-eqz v6, :cond_5

    .line 256
    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->durLowerTimes:I

    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    if-ne v6, v7, :cond_0

    .line 259
    iput-boolean v9, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->newWarning:Z

    .line 260
    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerWariningCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerWariningCount:I

    .line 261
    invoke-direct {p0, v8, v8}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->recordLastestWaring(II)V

    goto :goto_0

    .line 264
    :cond_5
    iget-boolean v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    if-nez v6, :cond_6

    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    if-ne v6, v9, :cond_6

    .line 266
    iput-boolean v9, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    .line 269
    iput-boolean v9, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->newWarning:Z

    .line 270
    iget v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerWariningCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerWariningCount:I

    .line 271
    invoke-direct {p0, v8, v8}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->recordLastestWaring(II)V

    goto :goto_0

    .line 275
    :cond_6
    iput-boolean v9, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    goto/16 :goto_0

    .line 280
    :cond_7
    iput-boolean v10, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isUpperRecordStarted:Z

    .line 281
    iput v8, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastUpperBeginSeq:I

    .line 282
    iput-boolean v10, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    .line 283
    iput v8, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastLowerBeginSeq:I

    .line 284
    iput v10, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->durUpperTimes:I

    .line 285
    iput v10, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->durLowerTimes:I

    goto/16 :goto_0
.end method

.method public add(JI)V
    .locals 11
    .param p1, "data"    # J
    .param p3, "seq"    # I

    .prologue
    .line 291
    iget-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->enable:Z

    if-nez v7, :cond_0

    .line 392
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperValue:D

    .line 301
    .local v4, "realUpperV":D
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerValue:D

    .line 303
    .local v2, "realLowerV":D
    invoke-direct {p0}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->judgeToast()V

    .line 306
    iget-object v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->src:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getCarry_l2d()J

    move-result-wide v8

    div-long v8, p1, v8

    long-to-double v0, v8

    .line 307
    .local v0, "d":D
    cmpl-double v7, v0, v4

    if-lez v7, :cond_5

    .line 309
    iget-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isUpperRecordStarted:Z

    if-eqz v7, :cond_3

    .line 311
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastUpperBeginSeq:I

    sub-int v6, p3, v7

    .line 313
    .local v6, "seqReduce":I
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    if-le v6, v7, :cond_2

    iget-object v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastestWarning:Lcom/tencent/wstt/gt/ui/model/WarningEntry;

    if-eqz v7, :cond_2

    .line 316
    iget-object v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastestWarning:Lcom/tencent/wstt/gt/ui/model/WarningEntry;

    iput p3, v7, Lcom/tencent/wstt/gt/ui/model/WarningEntry;->end:I

    .line 343
    .end local v6    # "seqReduce":I
    :cond_1
    :goto_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    .line 344
    const/4 v7, -0x1

    iput v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastLowerBeginSeq:I

    goto :goto_0

    .line 318
    .restart local v6    # "seqReduce":I
    :cond_2
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    if-ne v6, v7, :cond_1

    .line 321
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->newWarning:Z

    .line 322
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperWariningCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperWariningCount:I

    .line 323
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastUpperBeginSeq:I

    invoke-direct {p0, v7, p3}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->recordLastestWaring(II)V

    goto :goto_1

    .line 326
    .end local v6    # "seqReduce":I
    :cond_3
    iget-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isUpperRecordStarted:Z

    if-nez v7, :cond_4

    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 328
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isUpperRecordStarted:Z

    .line 329
    iput p3, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastUpperBeginSeq:I

    .line 332
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->newWarning:Z

    .line 333
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperWariningCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperWariningCount:I

    .line 334
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastUpperBeginSeq:I

    invoke-direct {p0, v7, p3}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->recordLastestWaring(II)V

    goto :goto_1

    .line 338
    :cond_4
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isUpperRecordStarted:Z

    .line 339
    iput p3, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastUpperBeginSeq:I

    goto :goto_1

    .line 346
    :cond_5
    cmpg-double v7, v0, v2

    if-gez v7, :cond_a

    .line 348
    iget-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    if-eqz v7, :cond_8

    .line 350
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastLowerBeginSeq:I

    sub-int v6, p3, v7

    .line 352
    .restart local v6    # "seqReduce":I
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    if-le v6, v7, :cond_7

    iget-object v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastestWarning:Lcom/tencent/wstt/gt/ui/model/WarningEntry;

    if-eqz v7, :cond_7

    .line 355
    iget-object v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastestWarning:Lcom/tencent/wstt/gt/ui/model/WarningEntry;

    iput p3, v7, Lcom/tencent/wstt/gt/ui/model/WarningEntry;->end:I

    .line 382
    .end local v6    # "seqReduce":I
    :cond_6
    :goto_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isUpperRecordStarted:Z

    .line 383
    const/4 v7, -0x1

    iput v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastUpperBeginSeq:I

    goto/16 :goto_0

    .line 357
    .restart local v6    # "seqReduce":I
    :cond_7
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    if-ne v6, v7, :cond_6

    .line 360
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->newWarning:Z

    .line 361
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerWariningCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerWariningCount:I

    .line 362
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastLowerBeginSeq:I

    invoke-direct {p0, v7, p3}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->recordLastestWaring(II)V

    goto :goto_2

    .line 365
    .end local v6    # "seqReduce":I
    :cond_8
    iget-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    if-nez v7, :cond_9

    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 367
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    .line 368
    iput p3, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastLowerBeginSeq:I

    .line 371
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->newWarning:Z

    .line 372
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerWariningCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerWariningCount:I

    .line 373
    iget v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastLowerBeginSeq:I

    invoke-direct {p0, v7, p3}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->recordLastestWaring(II)V

    goto :goto_2

    .line 377
    :cond_9
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    .line 378
    iput p3, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastLowerBeginSeq:I

    goto :goto_2

    .line 387
    :cond_a
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isUpperRecordStarted:Z

    .line 388
    const/4 v7, -0x1

    iput v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastUpperBeginSeq:I

    .line 389
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    .line 390
    const/4 v7, -0x1

    iput v7, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastLowerBeginSeq:I

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperWariningCount:I

    .line 70
    iput v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerWariningCount:I

    .line 71
    iput v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastUpperBeginSeq:I

    .line 72
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    .line 73
    iput v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastLowerBeginSeq:I

    .line 74
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isLowerRecordStarted:Z

    .line 75
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->newWarning:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastestWarning:Lcom/tencent/wstt/gt/ui/model/WarningEntry;

    .line 77
    return-void
.end method

.method public getLowerValue()D
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerValue:D

    return-wide v0
.end method

.method public getLowerWariningCount()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerWariningCount:I

    return v0
.end method

.method public getUpperValue()D
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperValue:D

    return-wide v0
.end method

.method public getUpperWariningCount()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperWariningCount:I

    return v0
.end method

.method public getduration()I
    .locals 4

    .prologue
    const v1, 0x7fffffff

    .line 95
    iget v2, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    if-ne v2, v1, :cond_0

    .line 108
    :goto_0
    return v1

    .line 105
    :cond_0
    iget v2, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    sget v3, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond:I

    mul-int/2addr v2, v3

    div-int/lit16 v0, v2, 0x3e8

    .line 108
    .local v0, "temp":I
    if-lez v0, :cond_1

    .end local v0    # "temp":I
    :goto_1
    move v1, v0

    goto :goto_0

    .restart local v0    # "temp":I
    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->enable:Z

    return v0
.end method

.method public isNewWarning()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->newWarning:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->enable:Z

    .line 400
    if-nez p1, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->clear()V

    .line 404
    :cond_0
    return-void
.end method

.method public setThreshold(IDD)Z
    .locals 4
    .param p1, "duration"    # I
    .param p2, "upperValue"    # D
    .param p4, "lowerValue"    # D

    .prologue
    const/4 v1, 0x0

    .line 129
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->clear()V

    .line 132
    invoke-direct {p0}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->reset()V

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 137
    :cond_1
    mul-int/lit16 v2, p1, 0x3e8

    sget v3, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond:I

    if-lt v2, v3, :cond_0

    .line 143
    sget v0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond:I

    .line 149
    .local v0, "sampleRate":I
    mul-int/lit16 v2, p1, 0x3e8

    rem-int/2addr v2, v0

    if-lez v2, :cond_2

    .line 151
    mul-int/lit16 v2, p1, 0x3e8

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    .line 159
    :goto_1
    iput-wide p2, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperValue:D

    .line 160
    iput-wide p4, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerValue:D

    .line 165
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lastestWarning:Lcom/tencent/wstt/gt/ui/model/WarningEntry;

    .line 166
    iput v1, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->upperWariningCount:I

    .line 167
    iput v1, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->lowerWariningCount:I

    .line 169
    const/4 v1, 0x1

    goto :goto_0

    .line 155
    :cond_2
    mul-int/lit16 v2, p1, 0x3e8

    div-int/2addr v2, v0

    iput v2, p0, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->duration:I

    goto :goto_1
.end method
