.class Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;
.super Landroid/os/Handler;
.source "GTMemHelperFloatview.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 371
    iget v0, p1, Landroid/os/Message;->what:I

    .line 372
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    iget-object v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->pName:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$0(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->getProInfo(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$1(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_mem:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$2(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refresh("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tagTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_mem:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$2(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->draw:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$3(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 380
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # invokes: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->dumpHeap()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$4(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)V

    .line 381
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_dump:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$5(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->draw:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$3(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 383
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # invokes: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->gc()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$6(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)V

    .line 386
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_gc:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$7(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;->this$0:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    # getter for: Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->draw:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->access$3(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
