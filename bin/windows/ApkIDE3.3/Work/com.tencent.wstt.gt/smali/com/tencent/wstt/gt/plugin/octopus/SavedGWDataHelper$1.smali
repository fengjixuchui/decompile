.class Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper$1;
.super Ljava/lang/Object;
.source "SavedGWDataHelper.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
