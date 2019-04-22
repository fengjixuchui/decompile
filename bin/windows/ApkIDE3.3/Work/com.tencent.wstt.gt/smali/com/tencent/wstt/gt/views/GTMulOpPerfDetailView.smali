.class public Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;
.super Landroid/view/View;
.source "GTMulOpPerfDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;
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
.field anchorSeq:[I

.field anchorTime:[J

.field anchorValue:[J

.field anchorX:F

.field anchorY:[F

.field private cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

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

.field lineColors:[I

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
    sput-boolean v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->measured:Z

    .line 54
    sput v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->devW:I

    .line 55
    sput v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->devH:I

    .line 57
    const/16 v0, 0x2a2

    sput v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasW:I

    .line 58
    const/16 v0, 0x226

    sput v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasH:I

    .line 60
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasW:I

    int-to-float v0, v0

    const v1, 0x4133ae14    # 11.23f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    .line 61
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasW:I

    int-to-float v0, v0

    sget v1, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasW:I

    int-to-float v1, v1

    const v2, 0x419e8f5c    # 19.82f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    .line 62
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasH:I

    int-to-float v0, v0

    sget v1, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasH:I

    int-to-float v1, v1

    const v2, 0x409051ec    # 4.51f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    .line 63
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasH:I

    int-to-float v0, v0

    const v1, 0x40edc28f    # 7.43f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absYMax:I

    .line 65
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    sget v1, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    sub-int/2addr v0, v1

    sput v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->w:I

    .line 66
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    sget v1, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absYMax:I

    sub-int/2addr v0, v1

    sput v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->h:I

    .line 67
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    sget v1, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->middle:I

    .line 75
    const/4 v0, 0x7

    sput v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curScale:I

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "aSet"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xff

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-object v2, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    .line 81
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curAve:J

    .line 83
    iput v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->xGrid:I

    .line 84
    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->yGrid:I

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    .line 91
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->middle:I

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    .line 92
    iput-object v2, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    .line 93
    iput-object v2, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorValue:[J

    .line 94
    iput-object v2, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorTime:[J

    .line 95
    iput-object v2, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorSeq:[I

    .line 97
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->singleTextInterval:F

    .line 100
    iput-boolean v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isReachDataSetEnd:Z

    .line 101
    iput-boolean v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isAutoRefresh:Z

    .line 113
    new-array v0, v7, [I

    const/16 v1, 0xd2

    const/16 v2, 0x90

    const/16 v3, 0x29

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v4

    .line 114
    const/16 v1, 0x52

    const/16 v2, 0xa0

    const/16 v3, 0x69

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x2

    .line 115
    const/16 v2, 0x82

    const/16 v3, 0xd9

    invoke-static {v5, v2, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 116
    const/16 v2, 0xa2

    const/16 v3, 0x40

    const/16 v4, 0x79

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 117
    const/16 v2, 0x92

    const/16 v3, 0x20

    const/16 v4, 0xa9

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 118
    const/16 v2, 0xb2

    const/16 v3, 0x60

    const/16 v4, 0x49

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 119
    const/16 v2, 0x72

    const/16 v3, 0xe0

    invoke-static {v5, v2, v3, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 120
    const/16 v2, 0x62

    const/16 v3, 0xc0

    const/16 v4, 0x39

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 121
    const/16 v2, 0xc2

    const/16 v3, 0x80

    const/16 v4, 0x19

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->lineColors:[I

    .line 590
    new-instance v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;-><init>(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 12
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "dataSet"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v9, 0xff

    .line 124
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    .line 81
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curAve:J

    .line 83
    iput v10, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->xGrid:I

    .line 84
    const/16 v4, 0x64

    iput v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->yGrid:I

    .line 85
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    .line 86
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    .line 91
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->middle:I

    int-to-float v4, v4

    iput v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    .line 92
    iput-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    .line 93
    iput-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorValue:[J

    .line 94
    iput-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorTime:[J

    .line 95
    iput-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorSeq:[I

    .line 97
    const/high16 v4, 0x40c00000    # 6.0f

    iput v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->singleTextInterval:F

    .line 100
    iput-boolean v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isReachDataSetEnd:Z

    .line 101
    iput-boolean v10, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isAutoRefresh:Z

    .line 113
    new-array v4, v11, [I

    const/16 v5, 0xd2

    const/16 v6, 0x90

    const/16 v7, 0x29

    invoke-static {v9, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v4, v8

    .line 114
    const/16 v5, 0x52

    const/16 v6, 0xa0

    const/16 v7, 0x69

    invoke-static {v9, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v4, v10

    const/4 v5, 0x2

    .line 115
    const/16 v6, 0x82

    const/16 v7, 0xd9

    invoke-static {v9, v6, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x3

    .line 116
    const/16 v6, 0xa2

    const/16 v7, 0x40

    const/16 v8, 0x79

    invoke-static {v9, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x4

    .line 117
    const/16 v6, 0x92

    const/16 v7, 0x20

    const/16 v8, 0xa9

    invoke-static {v9, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x5

    .line 118
    const/16 v6, 0xb2

    const/16 v7, 0x60

    const/16 v8, 0x49

    invoke-static {v9, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x6

    .line 119
    const/16 v6, 0x72

    const/16 v7, 0xe0

    invoke-static {v9, v6, v7, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x7

    .line 120
    const/16 v6, 0x62

    const/16 v7, 0xc0

    const/16 v8, 0x39

    invoke-static {v9, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v4, v5

    const/16 v5, 0x8

    .line 121
    const/16 v6, 0xc2

    const/16 v7, 0x80

    const/16 v8, 0x19

    invoke-static {v9, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v4, v5

    iput-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->lineColors:[I

    .line 590
    new-instance v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;

    invoke-direct {v4, p0}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;-><init>(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)V

    iput-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 125
    iput-object p2, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 127
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->devW:I

    if-eqz v4, :cond_0

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->devH:I

    if-nez v4, :cond_1

    .line 129
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevWidth()I

    move-result v4

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->devW:I

    .line 130
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevHeight()I

    move-result v4

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->devH:I

    .line 133
    :cond_1
    const/4 v0, 0x1

    .line 134
    .local v0, "dimension":I
    invoke-virtual {p2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_2

    .line 136
    invoke-virtual {p2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    array-length v0, v4

    .line 138
    :cond_2
    const/16 v4, 0x32

    filled-new-array {v4, v0}, [I

    move-result-object v4

    const-class v5, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    iput-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    .line 139
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    array-length v4, v4

    if-lt v2, v4, :cond_3

    .line 146
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    .line 148
    iget-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    return-void

    .line 140
    :cond_3
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, v0, :cond_4

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_4
    new-instance v1, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;-><init>()V

    .line 143
    .local v1, "entry":Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;
    iget-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    aget-object v4, v4, v2

    aput-object v1, v4, v3

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)Z
    .locals 1

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->judgeEffectiveLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->lastX:F

    return v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    return v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    return v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    return v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->w:I

    return v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    return-object v0
.end method

.method private calcY(J)J
    .locals 9
    .param p1, "timeY"    # J

    .prologue
    .line 819
    sget v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    int-to-long v0, v0

    sget v2, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->h:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    sub-long v4, p1, v4

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    sub-long/2addr v4, v6

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private judgeEffectiveLongClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 797
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isSingleOffsetOverFlow:Z

    if-nez v0, :cond_0

    .line 798
    iget v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curLCOffset:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 800
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlip:Z

    .line 806
    :goto_0
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlipJudged:Z

    .line 807
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlip:Z

    return v0

    .line 804
    :cond_1
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlip:Z

    goto :goto_0
.end method

.method private setInput([Ljava/util/List;)V
    .locals 12
    .param p1, "input"    # [Ljava/util/List;

    .prologue
    .line 205
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    .line 206
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    if-lt v2, v6, :cond_8

    .line 217
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    .line 218
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    .line 219
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    if-lez v6, :cond_0

    .line 221
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-wide v6, v6, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->value:J

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    .line 224
    :cond_0
    const-wide/16 v0, 0x0

    .line 225
    .local v0, "aveCount":J
    const-wide/16 v4, 0x0

    .line 226
    .local v4, "tempAve":J
    const/4 v2, 0x0

    :goto_1
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    if-lt v2, v6, :cond_a

    .line 235
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    if-lez v6, :cond_1

    .line 237
    long-to-float v6, v0

    iget v7, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-long v4, v6

    .line 240
    :cond_1
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    const-wide/16 v8, 0xa

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    .line 241
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 243
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0xa

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    .line 245
    :cond_2
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    const-wide/32 v8, 0xf423f

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 247
    const-wide/32 v6, 0xf423f

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    .line 250
    :cond_3
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 252
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    const-wide/16 v8, 0xa

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    .line 254
    :cond_4
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    .line 256
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    iget-wide v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    iget-wide v10, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xa

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    .line 257
    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    .line 259
    :cond_5
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    const-wide/32 v8, 0xf423f

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 261
    const-wide/32 v6, 0xf423e

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    .line 265
    :cond_6
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_7

    .line 267
    invoke-direct {p0, v4, v5}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->calcY(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curAve:J

    .line 271
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->postInvalidate()V

    .line 272
    return-void

    .line 207
    .end local v0    # "aveCount":J
    .end local v4    # "tempAve":J
    :cond_8
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v6, p1

    if-lt v3, v6, :cond_9

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 209
    :cond_9
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    aget-object v6, v6, v2

    aget-object v7, v6, v3

    aget-object v6, p1, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    iget-wide v8, v6, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->time:J

    iput-wide v8, v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->time:J

    .line 210
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    aget-object v6, v6, v2

    aget-object v7, v6, v3

    aget-object v6, p1, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    iget-wide v8, v6, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->reduce:J

    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getCarry()J

    move-result-wide v10

    div-long/2addr v8, v10

    iput-wide v8, v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->value:J

    .line 211
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    iput v2, v6, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->i:I

    .line 212
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    const/4 v7, 0x0

    iput v7, v6, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->y:F

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 227
    .end local v3    # "j":I
    .restart local v0    # "aveCount":J
    .restart local v4    # "tempAve":J
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    array-length v6, p1

    if-lt v3, v6, :cond_b

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 229
    :cond_b
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    iget-object v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    aget-object v8, v8, v2

    aget-object v8, v8, v3

    iget-wide v8, v8, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->value:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    .line 230
    iget-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    iget-object v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    aget-object v8, v8, v2

    aget-object v8, v8, v3

    iget-wide v8, v8, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->value:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    .line 232
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    aget-object v6, v6, v2

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-wide v6, v6, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->value:J

    add-long/2addr v0, v6

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method public isAutoRefresh()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isAutoRefresh:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 58
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 277
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 280
    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->singleTextInterval:F

    .line 281
    sget-boolean v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->measured:Z

    if-nez v4, :cond_1

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->getMeasuredWidth()I

    move-result v4

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasW:I

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->getMeasuredHeight()I

    move-result v4

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasH:I

    .line 286
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasW:I

    int-to-float v4, v4

    const v5, 0x4133ae14    # 11.23f

    div-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    .line 287
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasW:I

    int-to-float v4, v4

    sget v5, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasW:I

    int-to-float v5, v5

    const v7, 0x419e8f5c    # 19.82f

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    .line 288
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasH:I

    int-to-float v4, v4

    sget v5, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasH:I

    int-to-float v5, v5

    const v7, 0x409051ec    # 4.51f

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    .line 289
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->canvasH:I

    int-to-float v4, v4

    const v5, 0x40edc28f    # 7.43f

    div-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absYMax:I

    .line 292
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->devW:I

    const/16 v5, 0x2d0

    if-ne v4, v5, :cond_9

    .line 294
    const/4 v4, 0x7

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curScale:I

    .line 308
    :cond_0
    :goto_0
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    sget v5, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    sub-int/2addr v4, v5

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->w:I

    .line 309
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    sget v5, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absYMax:I

    sub-int/2addr v4, v5

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->h:I

    .line 310
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    sget v5, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    add-int/2addr v4, v5

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->middle:I

    .line 311
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->middle:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    .line 313
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curAve:J

    .line 315
    const/4 v4, 0x1

    sput-boolean v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->measured:Z

    .line 322
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 330
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    int-to-float v5, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    int-to-float v6, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    int-to-float v7, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    int-to-float v8, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 331
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    int-to-float v5, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absYMax:I

    add-int/lit8 v4, v4, -0x5

    int-to-float v6, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    int-to-float v7, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    int-to-float v8, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 334
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    const/4 v5, 0x5

    if-gt v4, v5, :cond_b

    .line 336
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->xGrid:I

    .line 351
    :goto_1
    const/16 v30, 0x0

    .line 354
    .local v30, "j":I
    :cond_2
    const-wide/16 v42, 0x0

    .line 355
    .local v42, "preX":J
    const/4 v8, 0x0

    .line 356
    .local v8, "preY":F
    const-wide/16 v40, 0x0

    .line 358
    .local v40, "preValue":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v16, v0

    .line 359
    .local v16, "anchorEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_3

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    aget-object v16, v4, v30

    .line 364
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v51

    .line 365
    .local v51, "thresholdEntry":Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;
    invoke-virtual/range {v51 .. v51}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getUpperValue()D

    move-result-wide v54

    .line 366
    .local v54, "upper":D
    invoke-virtual/range {v51 .. v51}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->getLowerValue()D

    move-result-wide v32

    .line 367
    .local v32, "lower":D
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getCarry_l2d()J

    move-result-wide v4

    long-to-double v4, v4

    move-wide/from16 v0, v54

    invoke-static {v0, v1, v4, v5}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->mul(DD)D

    move-result-wide v20

    .line 368
    .local v20, "dUpper":D
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getCarry_l2d()J

    move-result-wide v4

    long-to-double v4, v4

    move-wide/from16 v0, v32

    invoke-static {v0, v1, v4, v5}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->mul(DD)D

    move-result-wide v18

    .line 369
    .local v18, "dLower":D
    move-wide/from16 v0, v20

    double-to-long v0, v0

    move-wide/from16 v46, v0

    .line 370
    .local v46, "realUpper":J
    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v44, v0

    .line 371
    .local v44, "realLower":J
    invoke-virtual/range {v51 .. v51}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isEnable()Z

    move-result v29

    .line 373
    .local v29, "isWarningEable":Z
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    move/from16 v0, v28

    if-lt v0, v4, :cond_d

    .line 448
    add-int/lit8 v30, v30, 0x1

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    array-length v4, v4

    .line 352
    move/from16 v0, v30

    if-lt v0, v4, :cond_2

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getUnit()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    add-int/lit8 v5, v5, -0xa

    int-to-float v5, v5

    sget v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absYMax:I

    add-int/lit8 v7, v7, -0xf

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 460
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    sub-long/2addr v4, v10

    const-wide/16 v10, 0xa

    div-long/2addr v4, v10

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->yGrid:I

    .line 461
    const/16 v28, 0x0

    :goto_3
    const/16 v4, 0xb

    move/from16 v0, v28

    if-lt v0, v4, :cond_18

    .line 485
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMax:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x14

    const/16 v9, 0x8d

    const/16 v10, 0xc0

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 489
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    int-to-float v10, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curAve:J

    long-to-float v11, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curAve:J

    long-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 492
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 496
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlip:Z

    if-eqz v4, :cond_5

    .line 499
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    int-to-float v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absYMax:I

    add-int/lit8 v4, v4, -0xe

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 501
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 507
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->middle:I

    add-int/lit8 v4, v4, -0x50

    int-to-float v0, v4

    move/from16 v52, v0

    .line 510
    .local v52, "timeTextLocation":F
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->devW:I

    const/16 v5, 0x1e0

    if-le v4, v5, :cond_1a

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 514
    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->singleTextInterval:F

    .line 515
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->middle:I

    add-int/lit16 v4, v4, -0x9b

    int-to-float v0, v4

    move/from16 v52, v0

    .line 524
    :cond_6
    :goto_4
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absYMax:I

    add-int/lit8 v4, v4, -0xf

    int-to-float v0, v4

    move/from16 v35, v0

    .line 526
    .local v35, "offsetY":F
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    add-int/lit8 v4, v4, -0xa

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->singleTextInterval:F

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    add-float v34, v4, v5

    .line 528
    .local v34, "offsetX":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlip:Z

    if-nez v4, :cond_7

    .line 530
    const/16 v36, 0x0

    .line 531
    .local v36, "oppositeX":F
    const/16 v28, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    array-length v4, v4

    move/from16 v0, v28

    if-lt v0, v4, :cond_1b

    .line 551
    .end local v36    # "oppositeX":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    if-nez v4, :cond_1c

    .line 588
    :cond_8
    :goto_6
    return-void

    .line 296
    .end local v8    # "preY":F
    .end local v16    # "anchorEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .end local v18    # "dLower":D
    .end local v20    # "dUpper":D
    .end local v28    # "i":I
    .end local v29    # "isWarningEable":Z
    .end local v30    # "j":I
    .end local v32    # "lower":D
    .end local v34    # "offsetX":F
    .end local v35    # "offsetY":F
    .end local v40    # "preValue":J
    .end local v42    # "preX":J
    .end local v44    # "realLower":J
    .end local v46    # "realUpper":J
    .end local v51    # "thresholdEntry":Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;
    .end local v52    # "timeTextLocation":F
    .end local v54    # "upper":D
    :cond_9
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->devW:I

    const/16 v5, 0x140

    if-ne v4, v5, :cond_a

    .line 298
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    add-int/lit8 v4, v4, 0x10

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    .line 299
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    add-int/lit8 v4, v4, -0x12

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    .line 300
    const/4 v4, 0x5

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curScale:I

    goto/16 :goto_0

    .line 302
    :cond_a
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->devW:I

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_0

    .line 304
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    add-int/lit8 v4, v4, 0xa

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    .line 305
    const/4 v4, 0x5

    sput v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curScale:I

    goto/16 :goto_0

    .line 338
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    const/16 v5, 0xa

    if-gt v4, v5, :cond_c

    .line 340
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->xGrid:I

    goto/16 :goto_1

    .line 344
    :cond_c
    const/16 v4, 0xa

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->xGrid:I

    goto/16 :goto_1

    .line 374
    .restart local v8    # "preY":F
    .restart local v16    # "anchorEntry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .restart local v18    # "dLower":D
    .restart local v20    # "dUpper":D
    .restart local v28    # "i":I
    .restart local v29    # "isWarningEable":Z
    .restart local v30    # "j":I
    .restart local v32    # "lower":D
    .restart local v40    # "preValue":J
    .restart local v42    # "preX":J
    .restart local v44    # "realLower":J
    .restart local v46    # "realUpper":J
    .restart local v51    # "thresholdEntry":Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;
    .restart local v54    # "upper":D
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    aget-object v4, v4, v28

    aget-object v17, v4, v30

    .line 375
    .local v17, "entry":Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->value:J

    move-wide/from16 v38, v0

    .line 376
    .local v38, "point":J
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    sget v5, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->w:I

    mul-int v5, v5, v28

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    div-int/2addr v5, v7

    add-int/2addr v4, v5

    int-to-long v0, v4

    move-wide/from16 v56, v0

    .line 377
    .local v56, "x":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-direct {v0, v1, v2}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->calcY(J)J

    move-result-wide v4

    long-to-float v6, v4

    .line 378
    .local v6, "y":F
    move-object/from16 v0, v17

    iput v6, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->y:F

    .line 379
    move-wide/from16 v0, v56

    long-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 381
    if-lez v28, :cond_10

    .line 384
    if-eqz v29, :cond_16

    .line 385
    cmp-long v4, v46, v44

    if-lez v4, :cond_16

    .line 386
    cmp-long v4, v40, v46

    if-lez v4, :cond_e

    cmp-long v4, v38, v46

    if-gtz v4, :cond_f

    .line 387
    :cond_e
    cmp-long v4, v40, v44

    if-gez v4, :cond_16

    cmp-long v4, v38, v44

    if-gez v4, :cond_16

    .line 390
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 398
    move-wide/from16 v0, v56

    long-to-float v5, v0

    move-wide/from16 v0, v42

    long-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 402
    :cond_10
    if-eqz v29, :cond_17

    .line 403
    cmp-long v4, v46, v44

    if-lez v4, :cond_17

    .line 404
    cmp-long v4, v38, v46

    if-gtz v4, :cond_11

    cmp-long v4, v38, v44

    if-gez v4, :cond_17

    .line 406
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 413
    move-wide/from16 v0, v56

    long-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 416
    move-wide/from16 v42, v56

    .line 417
    move v8, v6

    .line 418
    move-wide/from16 v40, v38

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 423
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->xGrid:I

    rem-int v4, v28, v4

    if-nez v4, :cond_12

    .line 425
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->start:I

    add-int v4, v4, v28

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v56

    long-to-float v5, v0

    sget v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    add-int/lit8 v7, v7, 0x1e

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 426
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->time:J

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSystemTime(J)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v56

    long-to-float v5, v0

    sget v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    add-int/lit8 v7, v7, 0x2d

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 428
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    const/16 v5, 0x32

    if-ne v4, v5, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_13

    .line 430
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->start:I

    add-int v4, v4, v28

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v56

    long-to-float v5, v0

    sget v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    add-int/lit8 v7, v7, 0x1e

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 434
    :cond_13
    if-nez v30, :cond_15

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x3f

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 438
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->xGrid:I

    rem-int v4, v28, v4

    if-nez v4, :cond_14

    .line 440
    move-wide/from16 v0, v56

    long-to-float v10, v0

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    int-to-float v11, v4

    move-wide/from16 v0, v56

    long-to-float v12, v0

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absYMax:I

    add-int/lit8 v4, v4, -0x5

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 442
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    const/16 v5, 0x32

    if-ne v4, v5, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_15

    .line 444
    move-wide/from16 v0, v56

    long-to-float v10, v0

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absY:I

    int-to-float v11, v4

    move-wide/from16 v0, v56

    long-to-float v12, v0

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absYMax:I

    add-int/lit8 v4, v4, -0x5

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 373
    :cond_15
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2

    .line 394
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->lineColors:[I

    aget v5, v5, v30

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_7

    .line 410
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->lineColors:[I

    aget v5, v5, v30

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_8

    .line 463
    .end local v6    # "y":F
    .end local v17    # "entry":Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;
    .end local v38    # "point":J
    .end local v56    # "x":J
    :cond_18
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curYMin:J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->yGrid:I

    mul-int v7, v7, v28

    int-to-long v10, v7

    add-long v26, v4, v10

    .line 464
    .local v26, "g":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->calcY(J)J

    move-result-wide v4

    long-to-float v6, v4

    .line 465
    .restart local v6    # "y":F
    move-wide/from16 v0, v26

    long-to-double v4, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getCarry_l2d()J

    move-result-wide v10

    long-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getScale()I

    move-result v7

    invoke-static {v4, v5, v10, v11, v7}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v24

    .line 466
    .local v24, "dg":D
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v49

    .line 468
    .local v49, "sdg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 470
    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curScale:I

    if-le v4, v5, :cond_19

    .line 472
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    sget v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curScale:I

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    add-int/lit8 v5, v5, -0x28

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 479
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x3f

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 481
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    int-to-float v10, v4

    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v11, v6

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 461
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_3

    .line 476
    :cond_19
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    add-int/lit8 v5, v5, -0x28

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 517
    .end local v6    # "y":F
    .end local v24    # "dg":D
    .end local v26    # "g":J
    .end local v49    # "sdg":Ljava/lang/String;
    .restart local v52    # "timeTextLocation":F
    :cond_1a
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->devW:I

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_6

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 520
    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->singleTextInterval:F

    .line 521
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->middle:I

    add-int/lit8 v4, v4, -0x64

    int-to-float v0, v4

    move/from16 v52, v0

    goto/16 :goto_4

    .line 533
    .restart local v34    # "offsetX":F
    .restart local v35    # "offsetY":F
    .restart local v36    # "oppositeX":F
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    aget-object v4, v4, v28

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v50

    .line 536
    .local v50, "subKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->lineColors:[I

    aget v5, v5, v28

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 539
    add-float v10, v34, v36

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v11, v35, v4

    .line 540
    add-float v4, v34, v36

    const/high16 v5, 0x41800000    # 16.0f

    add-float v12, v4, v5

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v13, v35, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    .line 539
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 543
    add-float v4, v34, v36

    const/high16 v5, 0x41a00000    # 20.0f

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move/from16 v2, v35

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 546
    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->singleTextInterval:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x41a00000    # 20.0f

    add-float/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    add-float/2addr v4, v5

    add-float v36, v36, v4

    .line 531
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_5

    .line 556
    .end local v36    # "oppositeX":F
    .end local v50    # "subKey":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x87

    const/16 v9, 0x8c

    const/16 v10, 0x98

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorTime:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSystemTime(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v52

    move/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0xd2

    const/16 v9, 0x90

    const/16 v10, 0x29

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorSeq:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->start:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    .line 565
    .local v37, "sAnchorSeq":Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->singleTextInterval:F

    mul-float v15, v4, v5

    .line 566
    .local v15, "al":F
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->middle:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    move/from16 v2, v35

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 568
    const-string v48, ""

    .line 569
    .local v48, "sbValue":Ljava/lang/String;
    const/16 v28, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    array-length v4, v4

    move/from16 v0, v28

    if-lt v0, v4, :cond_1d

    .line 584
    sget v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->middle:I

    int-to-float v4, v4

    add-float v31, v4, v15

    .line 585
    .local v31, "middleAl":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v7, 0x38

    const/16 v9, 0xad

    const/16 v10, 0x29

    invoke-static {v5, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 586
    const/high16 v4, 0x41200000    # 10.0f

    add-float v4, v4, v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    move/from16 v2, v35

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 571
    .end local v31    # "middleAl":F
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    aget-object v16, v4, v28

    .line 574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorValue:[J

    aget-wide v4, v4, v28

    long-to-double v4, v4

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getCarry_l2d()J

    move-result-wide v10

    long-to-double v10, v10

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getScale()I

    move-result v7

    .line 573
    invoke-static {v4, v5, v10, v11, v7}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v22

    .line 576
    .local v22, "dY":D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_1e

    .line 579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 569
    :cond_1e
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_a
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v11, 0x32

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 787
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 651
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->lastX:F

    .line 652
    iput-boolean v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isAutoRefresh:Z

    .line 653
    iput-boolean v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlip:Z

    .line 654
    iput-boolean v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlipJudged:Z

    .line 655
    iput-boolean v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isSingleOffsetOverFlow:Z

    .line 656
    iput v9, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curLCOffset:F

    goto :goto_0

    .line 661
    :pswitch_1
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v1, v6, v7

    .line 662
    .local v1, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->lastX:F

    .line 667
    iget-boolean v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlipJudged:Z

    if-nez v6, :cond_2

    .line 669
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 671
    iput-boolean v10, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isSingleOffsetOverFlow:Z

    .line 672
    iput-boolean v10, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlipJudged:Z

    .line 674
    :cond_1
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curLCOffset:F

    add-float/2addr v6, v1

    iput v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curLCOffset:F

    .line 678
    :cond_2
    iget-boolean v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlip:Z

    if-eqz v6, :cond_a

    .line 680
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->lastX:F

    iput v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    .line 681
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    sget v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 682
    sget v6, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    int-to-float v6, v6

    iput v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    .line 684
    :cond_3
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    sget v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 685
    sget v6, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I

    int-to-float v6, v6

    iput v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    .line 689
    :cond_4
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    sget v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    sget v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->w:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v2, v6

    .line 690
    .local v2, "i":I
    if-lt v2, v11, :cond_5

    .line 691
    const/16 v2, 0x31

    .line 693
    :cond_5
    if-gez v2, :cond_6

    .line 694
    const/4 v2, 0x0

    .line 696
    :cond_6
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    aget-object v4, v6, v2

    .line 698
    .local v4, "nearest":[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    if-eqz v6, :cond_7

    .line 700
    sget v6, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I

    sget v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->w:I

    mul-int/2addr v7, v2

    iget v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    div-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    .line 703
    :cond_7
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    if-nez v6, :cond_8

    .line 705
    array-length v6, v4

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    .line 706
    array-length v6, v4

    new-array v6, v6, [J

    iput-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorValue:[J

    .line 707
    array-length v6, v4

    new-array v6, v6, [J

    iput-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorTime:[J

    .line 708
    array-length v6, v4

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorSeq:[I

    .line 711
    :cond_8
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v6, v4

    if-lt v3, v6, :cond_9

    .line 719
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->postInvalidate()V

    goto/16 :goto_0

    .line 713
    :cond_9
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    aget-object v7, v4, v3

    iget v7, v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->y:F

    aput v7, v6, v3

    .line 714
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorValue:[J

    aget-object v7, v4, v3

    iget-wide v8, v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->value:J

    aput-wide v8, v6, v3

    .line 715
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorTime:[J

    aget-object v7, v4, v3

    iget-wide v8, v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->time:J

    aput-wide v8, v6, v3

    .line 716
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorSeq:[I

    aget-object v7, v4, v3

    iget v7, v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->i:I

    aput v7, v6, v3

    .line 711
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 722
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "nearest":[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;
    :cond_a
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->end:I

    if-lt v6, v11, :cond_0

    .line 725
    cmpl-float v6, v1, v9

    if-lez v6, :cond_b

    .line 728
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    sget v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->w:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v0, v6

    .line 737
    .local v0, "d":I
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->start:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->end:I

    add-int/lit8 v7, v7, -0x32

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 738
    .local v5, "preStart":I
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->start:I

    add-int v5, v6, v0

    .line 741
    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->setInput(I)V

    goto/16 :goto_0

    .line 746
    .end local v0    # "d":I
    .end local v5    # "preStart":I
    :cond_b
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    sget v7, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->w:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v0, v6

    .line 755
    .restart local v0    # "d":I
    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->start:I

    add-int/2addr v6, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 758
    .restart local v5    # "preStart":I
    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->setInput(I)V

    goto/16 :goto_0

    .line 764
    .end local v0    # "d":I
    .end local v1    # "dx":F
    .end local v5    # "preStart":I
    :pswitch_2
    iput v9, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->lastX:F

    .line 765
    iput-boolean v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlip:Z

    .line 766
    iput-boolean v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isInLongFlipJudged:Z

    .line 767
    iput-boolean v8, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isSingleOffsetOverFlow:Z

    .line 768
    iput v9, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curLCOffset:F

    .line 771
    iget-boolean v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isReachDataSetEnd:Z

    if-eqz v6, :cond_c

    .line 773
    iput-boolean v10, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isAutoRefresh:Z

    .line 777
    :cond_c
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    if-eqz v6, :cond_0

    .line 779
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 781
    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    aput v9, v6, v2

    .line 779
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 649
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
    .line 829
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isAutoRefresh:Z

    .line 830
    return-void
.end method

.method public setInput(I)V
    .locals 9
    .param p1, "preStart"    # I

    .prologue
    const/4 v5, 0x0

    .line 168
    iput p1, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->start:I

    .line 169
    add-int/lit8 v4, p1, 0x32

    iput v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->end:I

    .line 170
    iput-boolean v5, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isReachDataSetEnd:Z

    .line 174
    iget-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v1

    .line 175
    .local v1, "minRecordSize":I
    iget-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_1

    .line 180
    iget v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->end:I

    if-lt v4, v1, :cond_0

    .line 182
    iput v1, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->end:I

    .line 183
    iget v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->end:I

    add-int/lit8 v4, v4, -0x32

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->start:I

    .line 184
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->isReachDataSetEnd:Z

    .line 186
    :cond_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    array-length v4, v4

    new-array v2, v4, [Ljava/util/List;

    .line 187
    .local v2, "tempList":[Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 192
    invoke-direct {p0, v2}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->setInput([Ljava/util/List;)V

    .line 193
    return-void

    .line 175
    .end local v0    # "i":I
    .end local v2    # "tempList":[Ljava/util/List;
    :cond_1
    aget-object v3, v6, v4

    .line 177
    .local v3, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    .end local v3    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .restart local v0    # "i":I
    .restart local v2    # "tempList":[Ljava/util/List;
    :cond_2
    iget-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    aget-object v4, v4, v0

    iget v5, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->start:I

    iget v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->end:I

    invoke-virtual {v4, v5, v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordList(II)Ljava/util/ArrayList;

    move-result-object v4

    aput-object v4, v2, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
