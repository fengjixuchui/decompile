.class public Lcom/tencent/wstt/gt/utils/DoubleUtils;
.super Ljava/lang/Object;
.source "DoubleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static div(DDI)D
    .locals 6
    .param p0, "d1"    # D
    .param p2, "d2"    # D
    .param p4, "scale"    # I

    .prologue
    .line 70
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "bd1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "bd2":Ljava/math/BigDecimal;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v1, p4, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 82
    :goto_0
    return-wide v4

    .line 77
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static mul(DD)D
    .locals 6
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    .prologue
    .line 42
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "bd1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "bd2":Ljava/math/BigDecimal;
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 53
    :goto_0
    return-wide v4

    .line 48
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    const-wide/16 v4, 0x0

    goto :goto_0
.end method
