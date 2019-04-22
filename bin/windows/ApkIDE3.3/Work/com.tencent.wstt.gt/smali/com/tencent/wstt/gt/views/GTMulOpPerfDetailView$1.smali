.class Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;
.super Ljava/lang/Object;
.source "GTMulOpPerfDetailView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 597
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    # invokes: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->judgeEffectiveLongClick()Z
    invoke-static {v3}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$0(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 599
    const/4 v3, 0x0

    .line 643
    :goto_0
    return v3

    .line 602
    :cond_0
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    iget-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->lastX:F
    invoke-static {v4}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$1(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)F

    move-result v4

    iput v4, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    .line 603
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    iget v3, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$2()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 604
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$2()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    .line 606
    :cond_1
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    iget v3, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$3()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 607
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absXMax:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$3()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    .line 611
    :cond_2
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    iget v3, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$2()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I
    invoke-static {v4}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$4(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->w:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$5()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 612
    .local v0, "i":I
    const/16 v3, 0x32

    if-lt v0, v3, :cond_3

    .line 613
    const/16 v0, 0x31

    .line 615
    :cond_3
    if-gez v0, :cond_4

    .line 616
    const/4 v0, 0x0

    .line 618
    :cond_4
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->cache:[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;
    invoke-static {v3}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$6(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)[[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;

    move-result-object v3

    aget-object v2, v3, v0

    .line 620
    .local v2, "nearest":[Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$4(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 622
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->absX:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$2()I

    move-result v4

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->w:I
    invoke-static {}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$5()I

    move-result v5

    mul-int/2addr v5, v0

    iget-object v6, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    # getter for: Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->curSize:I
    invoke-static {v6}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->access$4(Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;)I

    move-result v6

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorX:F

    .line 625
    :cond_5
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    iget-object v3, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    if-nez v3, :cond_6

    .line 627
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    array-length v4, v2

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    .line 628
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    array-length v4, v2

    new-array v4, v4, [J

    iput-object v4, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorValue:[J

    .line 629
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    array-length v4, v2

    new-array v4, v4, [J

    iput-object v4, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorTime:[J

    .line 630
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    array-length v4, v2

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorSeq:[I

    .line 633
    :cond_6
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_7

    .line 642
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->postInvalidate()V

    .line 643
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 635
    :cond_7
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    iget-object v3, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorY:[F

    aget-object v4, v2, v1

    iget v4, v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->y:F

    aput v4, v3, v1

    .line 636
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    iget-object v3, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorValue:[J

    aget-object v4, v2, v1

    iget-wide v4, v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->value:J

    aput-wide v4, v3, v1

    .line 637
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    iget-object v3, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorTime:[J

    aget-object v4, v2, v1

    iget-wide v4, v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->time:J

    aput-wide v4, v3, v1

    .line 638
    iget-object v3, p0, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$1;->this$0:Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;

    iget-object v3, v3, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView;->anchorSeq:[I

    aget-object v4, v2, v1

    iget v4, v4, Lcom/tencent/wstt/gt/views/GTMulOpPerfDetailView$DrawEntry;->i:I

    aput v4, v3, v1

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
