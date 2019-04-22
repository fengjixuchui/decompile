.class Lcom/tencent/wstt/gt/service/GTFloatView$32;
.super Ljava/lang/Object;
.source "GTFloatView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/service/GTFloatView;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

.field private final synthetic val$sbar_height:I


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iput p2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->val$sbar_height:I

    .line 1961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v7, -0x3b860000    # -1000.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1964
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$127(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 1965
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->val$sbar_height:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$128(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 1967
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2028
    :goto_0
    return v6

    .line 1969
    :pswitch_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v2, v5}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$129(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 1970
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v2, v5}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$130(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 1971
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iput v5, v2, Lcom/tencent/wstt/gt/service/GTFloatView;->state:I

    .line 1972
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->x:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$131(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v3

    iput v3, v2, Lcom/tencent/wstt/gt/service/GTFloatView;->StartX:F

    .line 1973
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->y:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$132(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v3

    iput v3, v2, Lcom/tencent/wstt/gt/service/GTFloatView;->StartY:F

    .line 1974
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$133(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 1975
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$134(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 1976
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->mTouchStartX:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$135(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$136(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 1977
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->mTouchStartY:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$137(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$138(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 1978
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$139(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 1979
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$140(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 1981
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->clickHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$141(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1985
    :pswitch_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    const/4 v3, 0x2

    iput v3, v2, Lcom/tencent/wstt/gt/service/GTFloatView;->state:I

    .line 1986
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$142(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 1987
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$143(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 1989
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1990
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 1992
    .local v1, "mTouchSlop":I
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->move_oldX:F
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$144(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v2

    cmpl-float v2, v2, v7

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->move_oldY:F
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$145(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v2

    cmpl-float v2, v2, v7

    if-nez v2, :cond_1

    .line 1993
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->moveX:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$146(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$147(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 1994
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->moveY:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$148(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$149(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 1995
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->moveX:F
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$146(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->ProX:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$12(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1996
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->moveY:F
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$148(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->ProY:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$13(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1997
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v2, v5}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$129(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    goto/16 :goto_0

    .line 1999
    :cond_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v2, v6}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$129(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 2000
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->updateViewPosition()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$150(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto/16 :goto_0

    .line 2003
    :cond_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->move_event:Z
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$125(Lcom/tencent/wstt/gt/service/GTFloatView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2004
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->moveX:F
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$146(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->move_oldX:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$144(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 2005
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->moveY:F
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$148(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->move_oldY:F
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$145(Lcom/tencent/wstt/gt/service/GTFloatView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 2006
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v2, v5}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$129(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    goto/16 :goto_0

    .line 2008
    :cond_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v2, v6}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$129(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 2009
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->updateViewPosition()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$150(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto/16 :goto_0

    .line 2012
    :cond_3
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->updateViewPosition()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$150(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    goto/16 :goto_0

    .line 2017
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    .end local v1    # "mTouchSlop":I
    :pswitch_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iput v6, v2, Lcom/tencent/wstt/gt/service/GTFloatView;->state:I

    .line 2018
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->updateViewPositionEnd()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$151(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 2019
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v2, v7}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$147(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 2020
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v2, v7}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$149(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 2021
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$134(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    invoke-static {v2, v4}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$133(Lcom/tencent/wstt/gt/service/GTFloatView;F)V

    .line 2022
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-static {v2, v6}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$130(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 2023
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$32;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->clickHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$141(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1967
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
