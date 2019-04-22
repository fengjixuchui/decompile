.class public Lcom/tencent/wstt/gt/views/GTPerfDetailView;
.super Landroid/view/View;
.source "GTPerfDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;
    }
.end annotation


# static fields
.field private static final OFFSET_LIMIT_SINGLE_UPPER_BOUND:F = 2.0f

.field private static final OFFSET_LIMIT_SUM_UPPER_BOUND:F = 10.0f

.field static final TAG:Ljava/lang/String; = "--GTPerfDetailView--"

.field private static absX:I = 0x0

.field private static absXMax:I = 0x0

.field private static absY:I = 0x0

.field private static absYMax:I = 0x0

.field private static canvasH:I = 0x0

.field private static canvasW:I = 0x0

.field private static curScale:I = 0x0

.field private static devH:I = 0x0

.field private static devW:I = 0x0

.field private static h:I = 0x0

.field private static measured:Z = false

.field private static middle:I = 0x0

.field private static final scaleY320:I = 0x5

.field private static final scaleY480:I = 0x5

.field private static final scaleY720:I = 0x7

.field private static w:I = 0x0

.field public static final xMax:I = 0x32

.field private static final xMin:I = 0xa

.field private static final yGridMinMax:I = 0xa

.field private static final yMax:I = 0xf423f

.field private static final yMaxGridNum:I = 0xa


# instance fields
.field anchorSeq:I

.field anchorTime:J

.field anchorValue:J

.field anchorX:F

.field anchorY:F

.field private cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

.field private curAve:J

.field private curLCOffset:F

.field private curSize:I

.field curYMax:J

.field curYMin:J

.field private dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

.field private end:I

.field private isAutoRefresh:Z

.field private isInLongFlip:Z

.field private isInLongFlipJudged:Z

.field private isReachDataSetEnd:Z

.field private isSingleOffsetOverFlow:Z

.field private lastX:F

.field private mPaint:Landroid/graphics/Paint;

.field onLongClickListener:Landroid/view/View$OnLongClickListener;

.field singleTextInterval:F

.field private start:I

.field private xGrid:I

.field private yGrid:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->measured:Z

    .line 54
    sput v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->devW:I

    .line 55
    sput v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->devH:I

    .line 57
    const/16 v0, 0x2a2

    sput v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasW:I

    .line 58
    const/16 v0, 0x226

    sput v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasH:I

    .line 60
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasW:I

    int-to-float v0, v0

    const v1, 0x4133ae14    # 11.23f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    .line 61
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasW:I

    int-to-float v0, v0

    sget v1, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasW:I

    int-to-float v1, v1

    const v2, 0x419e8f5c    # 19.82f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    .line 62
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasH:I

    int-to-float v0, v0

    sget v1, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasH:I

    int-to-float v1, v1

    const v2, 0x409051ec    # 4.51f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    .line 63
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasH:I

    int-to-float v0, v0

    const v1, 0x40edc28f    # 7.43f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absYMax:I

    .line 65
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    sget v1, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    sub-int/2addr v0, v1

    sput v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->w:I

    .line 66
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    sget v1, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absYMax:I

    sub-int/2addr v0, v1

    sput v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->h:I

    .line 67
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    sget v1, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->middle:I

    .line 75
    const/4 v0, 0x7

    sput v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curScale:I

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "aSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    .line 81
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curAve:J

    .line 83
    iput v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->xGrid:I

    .line 84
    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->yGrid:I

    .line 85
    iput-wide v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    .line 86
    iput-wide v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    .line 91
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->middle:I

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorY:F

    .line 93
    iput-wide v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorValue:J

    .line 94
    iput-wide v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorTime:J

    .line 95
    iput v4, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorSeq:I

    .line 97
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->singleTextInterval:F

    .line 100
    iput-boolean v4, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isReachDataSetEnd:Z

    .line 101
    iput-boolean v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isAutoRefresh:Z

    .line 479
    new-instance v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;-><init>(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 8
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "dataSet"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    .line 81
    sget v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curAve:J

    .line 83
    iput v7, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->xGrid:I

    .line 84
    const/16 v2, 0x64

    iput v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->yGrid:I

    .line 85
    iput-wide v4, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    .line 86
    iput-wide v4, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    .line 91
    sget v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->middle:I

    int-to-float v2, v2

    iput v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    .line 92
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorY:F

    .line 93
    iput-wide v4, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorValue:J

    .line 94
    iput-wide v4, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorTime:J

    .line 95
    iput v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorSeq:I

    .line 97
    const/high16 v2, 0x40c00000    # 6.0f

    iput v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->singleTextInterval:F

    .line 100
    iput-boolean v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isReachDataSetEnd:Z

    .line 101
    iput-boolean v7, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isAutoRefresh:Z

    .line 479
    new-instance v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;-><init>(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)V

    iput-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 115
    iput-object p2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 117
    sget v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->devW:I

    if-eqz v2, :cond_0

    sget v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->devH:I

    if-nez v2, :cond_1

    .line 119
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevWidth()I

    move-result v2

    sput v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->devW:I

    .line 120
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevHeight()I

    move-result v2

    sput v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->devH:I

    .line 123
    :cond_1
    const/16 v2, 0x32

    new-array v2, v2, [Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    iput-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 128
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    .line 130
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    return-void

    .line 125
    :cond_2
    new-instance v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;-><init>()V

    .line 126
    .local v0, "entry":Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    aput-object v0, v2, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)Z
    .locals 1

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->judgeEffectiveLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->lastX:F

    return v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    return v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    return v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    return v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->w:I

    return v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    return-object v0
.end method

.method private calcY(J)J
    .locals 9
    .param p1, "timeY"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 679
    iget-wide v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    iget-wide v4, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    sget v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    int-to-long v0, v0

    sget v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->h:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    sub-long v4, p1, v4

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    sub-long/2addr v4, v6

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private judgeEffectiveLongClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 657
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isSingleOffsetOverFlow:Z

    if-nez v0, :cond_0

    .line 658
    iget v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curLCOffset:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 660
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isInLongFlip:Z

    .line 666
    :goto_0
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isInLongFlipJudged:Z

    .line 667
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isInLongFlip:Z

    return v0

    .line 664
    :cond_1
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isInLongFlip:Z

    goto :goto_0
.end method

.method private setInput(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/TimeEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "input":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    .line 174
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    if-lt v2, v3, :cond_8

    .line 182
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    .line 183
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    .line 184
    iget v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    if-lez v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    iget-wide v6, v3, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->value:J

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    .line 189
    :cond_0
    const-wide/16 v0, 0x0

    .line 190
    .local v0, "aveCount":J
    const-wide/16 v4, 0x0

    .line 191
    .local v4, "tempAve":J
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    if-lt v2, v3, :cond_9

    .line 197
    iget v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    if-lez v3, :cond_1

    .line 199
    long-to-float v3, v0

    iget v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v3

    .line 202
    :cond_1
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    const-wide/16 v8, 0xa

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    .line 203
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    const-wide/16 v8, 0xa

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 205
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0xa

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    .line 207
    :cond_2
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    const-wide/32 v8, 0xf423f

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    .line 209
    const-wide/32 v6, 0xf423f

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    .line 212
    :cond_3
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_4

    .line 214
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    const-wide/16 v8, 0xa

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    .line 216
    :cond_4
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    .line 218
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    iget-wide v8, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    iget-wide v10, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xa

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    .line 219
    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    .line 221
    :cond_5
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    const-wide/32 v8, 0xf423f

    cmp-long v3, v6, v8

    if-lez v3, :cond_6

    .line 223
    const-wide/32 v6, 0xf423e

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    .line 227
    :cond_6
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    .line 229
    invoke-direct {p0, v4, v5}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->calcY(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curAve:J

    .line 233
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->postInvalidate()V

    .line 234
    return-void

    .line 175
    .end local v0    # "aveCount":J
    .end local v4    # "tempAve":J
    :cond_8
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    aget-object v6, v3, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    iget-wide v8, v3, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->time:J

    iput-wide v8, v6, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->time:J

    .line 176
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    aget-object v6, v3, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    iget-wide v8, v3, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->reduce:J

    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getCarry()J

    move-result-wide v10

    div-long/2addr v8, v10

    iput-wide v8, v6, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->value:J

    .line 177
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    aget-object v3, v3, v2

    iput v2, v3, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->i:I

    .line 178
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    aget-object v3, v3, v2

    const/4 v6, 0x0

    iput v6, v3, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->y:F

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 192
    .restart local v0    # "aveCount":J
    .restart local v4    # "tempAve":J
    :cond_9
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    aget-object v3, v3, v2

    iget-wide v8, v3, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->value:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    .line 193
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    aget-object v3, v3, v2

    iget-wide v8, v3, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->value:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    .line 195
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    aget-object v3, v3, v2

    iget-wide v6, v3, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->value:J

    add-long/2addr v0, v6

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public isAutoRefresh()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isAutoRefresh:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 50
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 239
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->singleTextInterval:F

    .line 243
    sget-boolean v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->measured:Z

    if-nez v4, :cond_1

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->getMeasuredWidth()I

    move-result v4

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasW:I

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->getMeasuredHeight()I

    move-result v4

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasH:I

    .line 248
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasW:I

    int-to-float v4, v4

    const v5, 0x4133ae14    # 11.23f

    div-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    .line 249
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasW:I

    int-to-float v4, v4

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasW:I

    int-to-float v5, v5

    const v7, 0x419e8f5c    # 19.82f

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    .line 250
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasH:I

    int-to-float v4, v4

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasH:I

    int-to-float v5, v5

    const v7, 0x409051ec    # 4.51f

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    .line 251
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->canvasH:I

    int-to-float v4, v4

    const v5, 0x40edc28f    # 7.43f

    div-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absYMax:I

    .line 254
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->devW:I

    const/16 v5, 0x2d0

    if-ne v4, v5, :cond_6

    .line 256
    const/4 v4, 0x7

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curScale:I

    .line 270
    :cond_0
    :goto_0
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    sub-int/2addr v4, v5

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->w:I

    .line 271
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absYMax:I

    sub-int/2addr v4, v5

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->h:I

    .line 272
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    add-int/2addr v4, v5

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->middle:I

    .line 273
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->middle:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    .line 275
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curAve:J

    .line 277
    const/4 v4, 0x1

    sput-boolean v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->measured:Z

    .line 284
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 292
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    int-to-float v5, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    int-to-float v6, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    int-to-float v7, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    int-to-float v8, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 293
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    int-to-float v5, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absYMax:I

    add-int/lit8 v4, v4, -0x5

    int-to-float v6, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    int-to-float v7, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    int-to-float v8, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 296
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    const/4 v5, 0x5

    if-gt v4, v5, :cond_8

    .line 298
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->xGrid:I

    .line 310
    :goto_1
    const-wide/16 v36, 0x0

    .line 311
    .local v36, "preX":J
    const/4 v8, 0x0

    .line 312
    .local v8, "preY":F
    const-wide/16 v34, 0x0

    .line 315
    .local v34, "preValue":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v43

    .line 316
    .local v43, "thresholdEntry":Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;
    invoke-virtual/range {v43 .. v43}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getUpperValue()D

    move-result-wide v46

    .line 317
    .local v46, "upper":D
    invoke-virtual/range {v43 .. v43}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getLowerValue()D

    move-result-wide v28

    .line 318
    .local v28, "lower":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getCarry_l2d()J

    move-result-wide v4

    long-to-double v4, v4

    move-wide/from16 v0, v46

    invoke-static {v0, v1, v4, v5}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->mul(DD)D

    move-result-wide v18

    .line 319
    .local v18, "dUpper":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getCarry_l2d()J

    move-result-wide v4

    long-to-double v4, v4

    move-wide/from16 v0, v28

    invoke-static {v0, v1, v4, v5}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->mul(DD)D

    move-result-wide v16

    .line 320
    .local v16, "dLower":D
    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v40, v0

    .line 321
    .local v40, "realUpper":J
    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v38, v0

    .line 323
    .local v38, "realLower":J
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    move/from16 v0, v25

    if-lt v0, v4, :cond_a

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getUnit()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    add-int/lit8 v5, v5, -0xa

    int-to-float v5, v5

    sget v7, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absYMax:I

    add-int/lit8 v7, v7, -0xf

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 404
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    sub-long/2addr v4, v10

    const-wide/16 v10, 0xa

    div-long/2addr v4, v10

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->yGrid:I

    .line 406
    const/16 v25, 0x0

    :goto_3
    const/16 v4, 0xb

    move/from16 v0, v25

    if-lt v0, v4, :cond_15

    .line 430
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMax:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    if-lez v4, :cond_2

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x14

    const/16 v9, 0x8d

    const/16 v10, 0xc0

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 434
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    int-to-float v10, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curAve:J

    long-to-float v11, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curAve:J

    long-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 437
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 441
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isInLongFlip:Z

    if-eqz v4, :cond_3

    .line 444
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    int-to-float v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absYMax:I

    add-int/lit8 v4, v4, -0xe

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 446
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 449
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    .line 451
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->middle:I

    add-int/lit8 v4, v4, -0x50

    int-to-float v0, v4

    move/from16 v44, v0

    .line 454
    .local v44, "timeTextLocation":F
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->devW:I

    const/16 v5, 0x1e0

    if-lt v4, v5, :cond_4

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 458
    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->singleTextInterval:F

    .line 459
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->middle:I

    add-int/lit16 v4, v4, -0x9b

    int-to-float v0, v4

    move/from16 v44, v0

    .line 463
    :cond_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorValue:J

    long-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getCarry_l2d()J

    move-result-wide v10

    long-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getScale()I

    move-result v7

    .line 462
    invoke-static {v4, v5, v10, v11, v7}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v20

    .line 464
    .local v20, "dY":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorTime:J

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSystemTime(J)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absYMax:I

    add-int/lit8 v5, v5, -0xf

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0xd2

    const/16 v9, 0x90

    const/16 v10, 0x29

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorSeq:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->start:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    .line 469
    .local v31, "sAnchorSeq":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->singleTextInterval:F

    mul-float v15, v4, v5

    .line 470
    .local v15, "al":F
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->middle:I

    int-to-float v4, v4

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absYMax:I

    add-int/lit8 v5, v5, -0xf

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 473
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->middle:I

    int-to-float v4, v4

    add-float v30, v4, v15

    .line 474
    .local v30, "middleAl":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x38

    const/16 v9, 0xad

    const/16 v10, 0x29

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    add-float v5, v5, v30

    sget v7, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absYMax:I

    add-int/lit8 v7, v7, -0xf

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 477
    .end local v15    # "al":F
    .end local v20    # "dY":D
    .end local v30    # "middleAl":F
    .end local v31    # "sAnchorSeq":Ljava/lang/String;
    .end local v44    # "timeTextLocation":F
    :cond_5
    return-void

    .line 258
    .end local v8    # "preY":F
    .end local v16    # "dLower":D
    .end local v18    # "dUpper":D
    .end local v25    # "i":I
    .end local v28    # "lower":D
    .end local v34    # "preValue":J
    .end local v36    # "preX":J
    .end local v38    # "realLower":J
    .end local v40    # "realUpper":J
    .end local v43    # "thresholdEntry":Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;
    .end local v46    # "upper":D
    :cond_6
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->devW:I

    const/16 v5, 0x140

    if-ne v4, v5, :cond_7

    .line 260
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    add-int/lit8 v4, v4, 0x10

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    .line 261
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    add-int/lit8 v4, v4, -0x12

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    .line 262
    const/4 v4, 0x5

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curScale:I

    goto/16 :goto_0

    .line 264
    :cond_7
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->devW:I

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_0

    .line 266
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    add-int/lit8 v4, v4, 0xa

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    .line 267
    const/4 v4, 0x5

    sput v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curScale:I

    goto/16 :goto_0

    .line 300
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    const/16 v5, 0xa

    if-gt v4, v5, :cond_9

    .line 302
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->xGrid:I

    goto/16 :goto_1

    .line 306
    :cond_9
    const/16 v4, 0xa

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->xGrid:I

    goto/16 :goto_1

    .line 324
    .restart local v8    # "preY":F
    .restart local v16    # "dLower":D
    .restart local v18    # "dUpper":D
    .restart local v25    # "i":I
    .restart local v28    # "lower":D
    .restart local v34    # "preValue":J
    .restart local v36    # "preX":J
    .restart local v38    # "realLower":J
    .restart local v40    # "realUpper":J
    .restart local v43    # "thresholdEntry":Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;
    .restart local v46    # "upper":D
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    aget-object v24, v4, v25

    .line 325
    .local v24, "entry":Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->value:J

    move-wide/from16 v32, v0

    .line 326
    .local v32, "point":J
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->w:I

    mul-int v5, v5, v25

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    div-int/2addr v5, v7

    add-int/2addr v4, v5

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 327
    .local v48, "x":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->calcY(J)J

    move-result-wide v4

    long-to-float v6, v4

    .line 328
    .local v6, "y":F
    move-object/from16 v0, v24

    iput v6, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->y:F

    .line 329
    move-wide/from16 v0, v48

    long-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 331
    if-lez v25, :cond_d

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 335
    cmp-long v4, v40, v38

    if-lez v4, :cond_13

    .line 336
    cmp-long v4, v34, v40

    if-lez v4, :cond_b

    cmp-long v4, v32, v40

    if-gtz v4, :cond_c

    .line 337
    :cond_b
    cmp-long v4, v34, v38

    if-gez v4, :cond_13

    cmp-long v4, v32, v38

    if-gez v4, :cond_13

    .line 340
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 348
    move-wide/from16 v0, v48

    long-to-float v5, v0

    move-wide/from16 v0, v36

    long-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 352
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 353
    cmp-long v4, v40, v38

    if-lez v4, :cond_14

    .line 354
    cmp-long v4, v32, v40

    if-gtz v4, :cond_e

    cmp-long v4, v32, v38

    if-gez v4, :cond_14

    .line 356
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 363
    move-wide/from16 v0, v48

    long-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 365
    move-wide/from16 v36, v48

    .line 366
    move v8, v6

    .line 367
    move-wide/from16 v34, v32

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 373
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->xGrid:I

    rem-int v4, v25, v4

    if-nez v4, :cond_f

    .line 375
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->start:I

    add-int v4, v4, v25

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v48

    long-to-float v5, v0

    sget v7, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    add-int/lit8 v7, v7, 0x1e

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 376
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->time:J

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSystemTime(J)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v48

    long-to-float v5, v0

    sget v7, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    add-int/lit8 v7, v7, 0x2d

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 378
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    const/16 v5, 0x32

    if-ne v4, v5, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_10

    .line 380
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->start:I

    add-int v4, v4, v25

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v48

    long-to-float v5, v0

    sget v7, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    add-int/lit8 v7, v7, 0x1e

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 384
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x3f

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 386
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->xGrid:I

    rem-int v4, v25, v4

    if-nez v4, :cond_11

    .line 388
    move-wide/from16 v0, v48

    long-to-float v10, v0

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    int-to-float v11, v4

    move-wide/from16 v0, v48

    long-to-float v12, v0

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absYMax:I

    add-int/lit8 v4, v4, -0x5

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 390
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    const/16 v5, 0x32

    if-ne v4, v5, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_12

    .line 392
    move-wide/from16 v0, v48

    long-to-float v10, v0

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absY:I

    int-to-float v11, v4

    move-wide/from16 v0, v48

    long-to-float v12, v0

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absYMax:I

    add-int/lit8 v4, v4, -0x5

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 323
    :cond_12
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 344
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0xd2

    const/16 v9, 0x90

    const/16 v10, 0x29

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 360
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0xd2

    const/16 v9, 0x90

    const/16 v10, 0x29

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    .line 408
    .end local v6    # "y":F
    .end local v24    # "entry":Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;
    .end local v32    # "point":J
    .end local v48    # "x":J
    :cond_15
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curYMin:J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->yGrid:I

    mul-int v7, v7, v25

    int-to-long v10, v7

    add-long v26, v4, v10

    .line 409
    .local v26, "g":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->calcY(J)J

    move-result-wide v4

    long-to-float v6, v4

    .line 410
    .restart local v6    # "y":F
    move-wide/from16 v0, v26

    long-to-double v4, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getCarry_l2d()J

    move-result-wide v10

    long-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getScale()I

    move-result v7

    invoke-static {v4, v5, v10, v11, v7}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v22

    .line 411
    .local v22, "dg":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v42

    .line 413
    .local v42, "sdg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 415
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curScale:I

    if-le v4, v5, :cond_16

    .line 417
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    sget v7, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curScale:I

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    add-int/lit8 v5, v5, -0x28

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 424
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x3f

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 426
    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    int-to-float v10, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v11, v6

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 406
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_3

    .line 421
    :cond_16
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    add-int/lit8 v5, v5, -0x28

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v10, 0x32

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 647
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 528
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->lastX:F

    .line 529
    iput-boolean v7, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isAutoRefresh:Z

    .line 530
    iput-boolean v7, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isInLongFlip:Z

    .line 531
    iput-boolean v7, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isInLongFlipJudged:Z

    .line 532
    iput-boolean v7, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isSingleOffsetOverFlow:Z

    .line 533
    iput v8, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curLCOffset:F

    goto :goto_0

    .line 538
    :pswitch_1
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v1, v5, v6

    .line 539
    .local v1, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->lastX:F

    .line 544
    iget-boolean v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isInLongFlipJudged:Z

    if-nez v5, :cond_2

    .line 546
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 548
    iput-boolean v9, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isSingleOffsetOverFlow:Z

    .line 549
    iput-boolean v9, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isInLongFlipJudged:Z

    .line 551
    :cond_1
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curLCOffset:F

    add-float/2addr v5, v1

    iput v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curLCOffset:F

    .line 555
    :cond_2
    iget-boolean v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isInLongFlip:Z

    if-eqz v5, :cond_8

    .line 557
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->lastX:F

    iput v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    .line 558
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    sget v6, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 559
    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    int-to-float v5, v5

    iput v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    .line 561
    :cond_3
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    sget v6, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 562
    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I

    int-to-float v5, v5

    iput v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    .line 566
    :cond_4
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    sget v6, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sget v6, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->w:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 567
    .local v2, "i":I
    if-lt v2, v10, :cond_5

    .line 568
    const/16 v2, 0x31

    .line 570
    :cond_5
    if-gez v2, :cond_6

    .line 571
    const/4 v2, 0x0

    .line 573
    :cond_6
    iget-object v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    aget-object v3, v5, v2

    .line 575
    .local v3, "nearest":Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    if-eqz v5, :cond_7

    .line 577
    sget v5, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I

    sget v6, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->w:I

    mul-int/2addr v6, v2

    iget v7, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    div-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    .line 580
    :cond_7
    iget v5, v3, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->y:F

    iput v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorY:F

    .line 581
    iget-wide v6, v3, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->value:J

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorValue:J

    .line 582
    iget-wide v6, v3, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->time:J

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorTime:J

    .line 583
    iget v5, v3, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->i:I

    iput v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorSeq:I

    .line 585
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->postInvalidate()V

    goto/16 :goto_0

    .line 588
    .end local v2    # "i":I
    .end local v3    # "nearest":Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;
    :cond_8
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->end:I

    if-lt v5, v10, :cond_0

    .line 591
    cmpl-float v5, v1, v8

    if-lez v5, :cond_9

    .line 594
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sget v6, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->w:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v0, v5

    .line 603
    .local v0, "d":I
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->start:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->end:I

    add-int/lit8 v6, v6, -0x32

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 604
    .local v4, "preStart":I
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->start:I

    add-int v4, v5, v0

    .line 607
    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setInput(I)V

    goto/16 :goto_0

    .line 612
    .end local v0    # "d":I
    .end local v4    # "preStart":I
    :cond_9
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sget v6, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->w:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v0, v5

    .line 621
    .restart local v0    # "d":I
    iget v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->start:I

    add-int/2addr v5, v0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 624
    .restart local v4    # "preStart":I
    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setInput(I)V

    goto/16 :goto_0

    .line 630
    .end local v0    # "d":I
    .end local v1    # "dx":F
    .end local v4    # "preStart":I
    :pswitch_2
    iput v8, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->lastX:F

    .line 631
    iput-boolean v7, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isInLongFlip:Z

    .line 632
    iput-boolean v7, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isInLongFlipJudged:Z

    .line 633
    iput-boolean v7, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isSingleOffsetOverFlow:Z

    .line 634
    iput v8, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curLCOffset:F

    .line 637
    iget-boolean v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isReachDataSetEnd:Z

    if-eqz v5, :cond_a

    .line 639
    iput-boolean v9, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isAutoRefresh:Z

    .line 643
    :cond_a
    iput v8, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorY:F

    goto/16 :goto_0

    .line 526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAutoRefresh(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 689
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isAutoRefresh:Z

    .line 690
    return-void
.end method

.method public setInput(I)V
    .locals 4
    .param p1, "preStart"    # I

    .prologue
    const/4 v3, 0x0

    .line 149
    iput p1, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->start:I

    .line 150
    add-int/lit8 v1, p1, 0x32

    iput v1, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->end:I

    .line 151
    iput-boolean v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isReachDataSetEnd:Z

    .line 153
    iget v1, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->end:I

    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 155
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v1

    iput v1, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->end:I

    .line 156
    iget v1, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->end:I

    add-int/lit8 v1, v1, -0x32

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->start:I

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->isReachDataSetEnd:Z

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    iget v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->start:I

    iget v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->end:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordList(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    .local v0, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->setInput(Ljava/util/List;)V

    .line 161
    return-void
.end method
