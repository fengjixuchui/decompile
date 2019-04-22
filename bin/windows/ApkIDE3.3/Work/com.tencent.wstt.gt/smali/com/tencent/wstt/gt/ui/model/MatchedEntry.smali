.class public Lcom/tencent/wstt/gt/ui/model/MatchedEntry;
.super Ljava/lang/Object;
.source "MatchedEntry.java"


# instance fields
.field public end:I

.field public posionInDataSet:I

.field public start:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "posionInDataSet"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->posionInDataSet:I

    .line 35
    iput p2, p0, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->start:I

    .line 36
    iput p3, p0, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->end:I

    .line 37
    return-void
.end method
