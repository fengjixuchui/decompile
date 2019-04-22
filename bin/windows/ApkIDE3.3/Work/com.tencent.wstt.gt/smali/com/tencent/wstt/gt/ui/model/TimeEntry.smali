.class public Lcom/tencent/wstt/gt/ui/model/TimeEntry;
.super Ljava/lang/Object;
.source "TimeEntry.java"


# instance fields
.field funcId:I

.field public reduce:J

.field public time:J


# direct methods
.method public constructor <init>(JJI)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "reduce"    # J
    .param p5, "funcId"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0xc

    iput v0, p0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->funcId:I

    .line 37
    iput-wide p1, p0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->time:J

    .line 38
    iput-wide p3, p0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->reduce:J

    .line 39
    iput p5, p0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->funcId:I

    .line 40
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 45
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->time:J

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveTime(J)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "dateString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    iget v2, p0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->funcId:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 53
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->reduce:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const/4 v6, 0x2

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 54
    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 58
    :cond_0
    iget-wide v2, p0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->reduce:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
