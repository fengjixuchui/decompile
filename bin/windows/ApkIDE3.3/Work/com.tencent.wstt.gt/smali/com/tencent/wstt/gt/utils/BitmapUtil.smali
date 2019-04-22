.class public Lcom/tencent/wstt/gt/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 74
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x4

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "b":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public static createJustBoundsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/utils/BitmapUtil;->getJustBoundsOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public static createOriginalBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public static createOriginalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public static createPurgeableBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/utils/BitmapUtil;->getPurgeableBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public static createPurgeableBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/utils/BitmapUtil;->getPurgeableBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public static createPurgeableBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "resPath"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/utils/BitmapUtil;->getPurgeableBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public static createPurgeableBitmap([BII)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/utils/BitmapUtil;->getPurgeableBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method private static getJustBoundsOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 135
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 136
    return-object v0
.end method

.method private static getPurgeableBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 95
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 97
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 98
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 99
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 100
    return-object v0
.end method
