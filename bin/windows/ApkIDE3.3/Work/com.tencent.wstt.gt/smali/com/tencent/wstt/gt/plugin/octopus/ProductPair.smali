.class public Lcom/tencent/wstt/gt/plugin/octopus/ProductPair;
.super Landroid/util/Pair;
.source "ProductPair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Pair",
        "<TF;TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/tencent/wstt/gt/plugin/octopus/ProductPair;, "Lcom/tencent/wstt/gt/plugin/octopus/ProductPair<TF;TS;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/tencent/wstt/gt/plugin/octopus/ProductPair;, "Lcom/tencent/wstt/gt/plugin/octopus/ProductPair<TF;TS;>;"
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/ProductPair;->second:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
