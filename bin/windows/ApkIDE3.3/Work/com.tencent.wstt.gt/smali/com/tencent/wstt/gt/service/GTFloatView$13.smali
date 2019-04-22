.class Lcom/tencent/wstt/gt/service/GTFloatView$13;
.super Ljava/util/TimerTask;
.source "GTFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/service/GTFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTFloatView;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$13;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 2133
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2136
    .local v2, "curTime":J
    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->baseTime:J
    invoke-static {}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$79()J

    move-result-wide v6

    sub-long v6, v2, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v4, v6, v8

    .line 2137
    .local v4, "tempTime":D
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 2138
    .local v0, "b":Ljava/math/BigDecimal;
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$13;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$80(Lcom/tencent/wstt/gt/service/GTFloatView;D)V

    .line 2139
    return-void
.end method
