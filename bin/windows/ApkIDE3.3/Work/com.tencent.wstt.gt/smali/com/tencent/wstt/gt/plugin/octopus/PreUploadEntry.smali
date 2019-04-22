.class public Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;
.super Ljava/lang/Object;
.source "PreUploadEntry.java"


# instance fields
.field public choicedCsvFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public freeSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;->choicedCsvFileList:Ljava/util/List;

    .line 30
    return-void
.end method
