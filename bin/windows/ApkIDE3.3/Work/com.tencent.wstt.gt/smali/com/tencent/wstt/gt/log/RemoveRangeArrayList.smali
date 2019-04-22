.class public Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
.super Ljava/util/ArrayList;
.source "RemoveRangeArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x748d1795d25ff1dbL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;, "Lcom/tencent/wstt/gt/log/RemoveRangeArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(II)V
    .locals 0
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 37
    .local p0, "this":Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;, "Lcom/tencent/wstt/gt/log/RemoveRangeArrayList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->removeRange(II)V

    .line 38
    return-void
.end method
