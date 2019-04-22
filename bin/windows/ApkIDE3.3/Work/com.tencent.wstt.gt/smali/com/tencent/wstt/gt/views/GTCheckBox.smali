.class public Lcom/tencent/wstt/gt/views/GTCheckBox;
.super Landroid/widget/CompoundButton;
.source "GTCheckBox.java"


# instance fields
.field private bmpSlider:Landroid/graphics/Bitmap;

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wstt/gt/views/GTCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const v0, 0x101006c

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/wstt/gt/views/GTCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->p:Landroid/graphics/Paint;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->bmpSlider:Landroid/graphics/Bitmap;

    .line 59
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 160
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getDrawableState()[I

    move-result-object v0

    .line 164
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 166
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->invalidate()V

    .line 168
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/high16 v11, 0x40800000    # 4.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 66
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getGravity()I

    move-result v7

    and-int/lit8 v4, v7, 0x70

    .line 72
    .local v4, "verticalGravity":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 74
    .local v1, "height":I
    const/4 v6, 0x0

    .line 76
    .local v6, "y":I
    sparse-switch v4, :sswitch_data_0

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int/2addr v7, v8

    .line 87
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getWidth()I

    move-result v8

    add-int v9, v6, v1

    .line 85
    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    iget-object v7, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->bmpSlider:Landroid/graphics/Bitmap;

    if-nez v7, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 94
    const v8, 0x7f02002b

    .line 93
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->bmpSlider:Landroid/graphics/Bitmap;

    .line 97
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevWidth()I

    move-result v5

    .line 98
    .local v5, "width":I
    const/16 v3, 0x14

    .line 99
    .local v3, "textSize":I
    const/16 v7, 0x2d0

    if-lt v5, v7, :cond_3

    .line 100
    const/16 v3, 0x1c

    .line 105
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 106
    iget-object v7, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->p:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .line 108
    .local v2, "mDensity":F
    iget-object v7, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->p:Landroid/graphics/Paint;

    int-to-float v8, v3

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    iget-object v7, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->p:Landroid/graphics/Paint;

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v7, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->p:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 113
    const-string v7, "On"

    .line 114
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 115
    mul-float v9, v10, v2

    .line 114
    sub-float/2addr v8, v9

    .line 115
    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v6

    int-to-float v9, v9

    mul-float v10, v11, v2

    add-float/2addr v9, v10

    .line 116
    iget-object v10, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->p:Landroid/graphics/Paint;

    .line 113
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    iget-object v7, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->bmpSlider:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->bmpSlider:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 118
    int-to-float v9, v6

    .line 117
    invoke-virtual {p1, v7, v8, v9, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    .end local v1    # "height":I
    .end local v2    # "mDensity":F
    .end local v3    # "textSize":I
    .end local v4    # "verticalGravity":I
    .end local v5    # "width":I
    .end local v6    # "y":I
    :cond_2
    :goto_2
    return-void

    .line 78
    .restart local v1    # "height":I
    .restart local v4    # "verticalGravity":I
    .restart local v6    # "y":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getHeight()I

    move-result v7

    sub-int v6, v7, v1

    .line 79
    goto/16 :goto_0

    .line 81
    :sswitch_1
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getHeight()I

    move-result v7

    sub-int/2addr v7, v1

    div-int/lit8 v6, v7, 0x2

    goto/16 :goto_0

    .line 101
    .restart local v3    # "textSize":I
    .restart local v5    # "width":I
    :cond_3
    const/16 v7, 0x1e0

    if-gt v5, v7, :cond_1

    .line 102
    const/16 v3, 0xf

    goto :goto_1

    .line 120
    :cond_4
    iget-object v7, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->p:Landroid/graphics/Paint;

    const v8, -0x867f77

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .line 122
    .restart local v2    # "mDensity":F
    iget-object v7, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->p:Landroid/graphics/Paint;

    int-to-float v8, v3

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    iget-object v7, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->p:Landroid/graphics/Paint;

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v7, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->p:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 127
    const-string v7, "Off"

    .line 128
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 129
    mul-float v9, v10, v2

    .line 128
    add-float/2addr v8, v9

    .line 129
    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v6

    int-to-float v9, v9

    mul-float v10, v11, v2

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->p:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 130
    iget-object v7, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->bmpSlider:Landroid/graphics/Bitmap;

    .line 131
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    int-to-float v9, v6

    .line 130
    invoke-virtual {p1, v7, v8, v9, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 145
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 148
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 149
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 150
    iput-object p1, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 152
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setMinHeight(I)V

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/GTCheckBox;->refreshDrawableState()V

    .line 155
    return-void

    :cond_2
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method public setButtonGray(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wstt/gt/views/GTCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
