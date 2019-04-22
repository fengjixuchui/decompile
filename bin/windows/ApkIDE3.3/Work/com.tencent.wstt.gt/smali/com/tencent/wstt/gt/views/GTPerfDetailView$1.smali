.class Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;
.super Ljava/lang/Object;
.source "GTPerfDetailView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/views/GTPerfDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 486
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    # invokes: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->judgeEffectiveLongClick()Z
    invoke-static {v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$0(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 488
    const/4 v2, 0x0

    .line 520
    :goto_0
    return v2

    .line 491
    :cond_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->lastX:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$1(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)F

    move-result v3

    iput v3, v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    .line 492
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    iget v2, v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$2()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 493
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$2()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    .line 495
    :cond_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    iget v2, v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$3()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 496
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absXMax:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$3()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    .line 500
    :cond_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    iget v2, v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$2()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$4(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->w:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$5()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 501
    .local v0, "i":I
    const/16 v2, 0x32

    if-lt v0, v2, :cond_3

    .line 502
    const/16 v0, 0x31

    .line 504
    :cond_3
    if-gez v0, :cond_4

    .line 505
    const/4 v0, 0x0

    .line 507
    :cond_4
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->cache:[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;
    invoke-static {v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$6(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)[Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;

    move-result-object v2

    aget-object v1, v2, v0

    .line 509
    .local v1, "nearest":Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$4(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 511
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->absX:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$2()I

    move-result v3

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->w:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$5()I

    move-result v4

    mul-int/2addr v4, v0

    iget-object v5, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTPerfDetailView;->curSize:I
    invoke-static {v5}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->access$4(Lcom/tencent/wstt/gt/views/GTPerfDetailView;)I

    move-result v5

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorX:F

    .line 514
    :cond_5
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    iget v3, v1, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->y:F

    iput v3, v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorY:F

    .line 515
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    iget-wide v4, v1, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->value:J

    iput-wide v4, v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorValue:J

    .line 516
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    iget-wide v4, v1, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->time:J

    iput-wide v4, v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorTime:J

    .line 517
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    iget v3, v1, Lcom/tencent/wstt/gt/views/GTPerfDetailView$DrawEntry;->i:I

    iput v3, v2, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->anchorSeq:I

    .line 519
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTPerfDetailView;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/views/GTPerfDetailView;->postInvalidate()V

    .line 520
    const/4 v2, 0x1

    goto/16 :goto_0
.end method
