.class public Lcom/tencent/wstt/gt/ui/model/WarningEntry;
.super Ljava/lang/Object;
.source "WarningEntry.java"


# instance fields
.field public begin:I

.field public end:I

.field public src:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;II)V
    .locals 0
    .param p1, "src"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .param p2, "begin"    # I
    .param p3, "end"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tencent/wstt/gt/ui/model/WarningEntry;->src:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 34
    iput p2, p0, Lcom/tencent/wstt/gt/ui/model/WarningEntry;->begin:I

    .line 35
    iput p3, p0, Lcom/tencent/wstt/gt/ui/model/WarningEntry;->end:I

    .line 36
    return-void
.end method
