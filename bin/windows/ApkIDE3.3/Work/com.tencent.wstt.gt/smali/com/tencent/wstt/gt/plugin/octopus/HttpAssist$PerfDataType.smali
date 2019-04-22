.class Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;
.super Ljava/lang/Object;
.source "HttpAssist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PerfDataType"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field compareMode:I

.field concernMode:I

.field isDataWithUnit:Z

.field key:Ljava/lang/String;

.field multiMode:I

.field multiNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field needUnitChange:Z

.field unitChangeCarry:I

.field unitChangeType:I

.field unitLengthBeforeChange:I

.field updateMode:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    iput v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->concernMode:I

    .line 830
    iput v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->compareMode:I

    .line 831
    iput v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->updateMode:I

    .line 832
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->needUnitChange:Z

    .line 833
    iput v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitChangeType:I

    .line 834
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitChangeCarry:I

    .line 835
    iput v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->unitLengthBeforeChange:I

    .line 836
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->isDataWithUnit:Z

    .line 837
    iput v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->multiMode:I

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->multiNameList:Ljava/util/List;

    .line 839
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->key:Ljava/lang/String;

    .line 840
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->alias:Ljava/lang/String;

    .line 827
    return-void
.end method


# virtual methods
.method parseDefaultConcernMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 845
    const-string v0, "SM:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 847
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->concernMode:I

    .line 855
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->concernMode:I

    .line 858
    const-string v0, "Pnet:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 859
    const-string v0, "NET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 860
    const-string v0, "Power"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 861
    const-string v0, "Temperature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 863
    :cond_1
    iput v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->updateMode:I

    .line 865
    :cond_2
    return-void

    .line 849
    :cond_3
    const-string v0, "Pnet:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 850
    const-string v0, "NET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 851
    const-string v0, "Pjif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    :cond_4
    iput v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist$PerfDataType;->concernMode:I

    goto :goto_0
.end method
