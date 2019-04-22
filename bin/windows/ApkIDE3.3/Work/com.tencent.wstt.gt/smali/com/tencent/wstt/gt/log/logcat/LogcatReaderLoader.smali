.class public Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;
.super Ljava/lang/Object;
.source "LogcatReaderLoader.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lastLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private multiple:Z

.field private recordingMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader$1;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader$1;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->lastLines:Ljava/util/Map;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->recordingMode:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->multiple:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 28
    return-void

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    move v2, v4

    .line 22
    goto :goto_0

    :cond_1
    move v3, v4

    .line 23
    goto :goto_1

    .line 25
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 26
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->lastLines:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Z)V
    .locals 4
    .param p2, "recordingMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "buffers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->lastLines:Ljava/util/Map;

    .line 31
    iput-boolean p2, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->recordingMode:Z

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->multiple:Z

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    return-void

    .line 32
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    .local v0, "buffer":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/logcat/LogcatHelper;->getLastLogLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "lastLine":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->lastLines:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 35
    .end local v1    # "lastLine":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static create(Landroid/content/Context;Z)Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recordingMode"    # Z

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "buffers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "main"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;

    invoke-direct {v1, v0, p1}, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;-><init>(Ljava/util/List;Z)V

    .line 59
    .local v1, "loader":Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public loadReader()Lcom/tencent/wstt/gt/log/logcat/LogcatReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-boolean v3, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->multiple:Z

    if-nez v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->lastLines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "buffer":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->lastLines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    .local v1, "lastLine":Ljava/lang/String;
    new-instance v2, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;

    iget-boolean v3, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->recordingMode:Z

    invoke-direct {v2, v3, v0, v1}, Lcom/tencent/wstt/gt/log/logcat/SingleLogcatReader;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v1    # "lastLine":Ljava/lang/String;
    .local v2, "reader":Lcom/tencent/wstt/gt/log/logcat/LogcatReader;
    :goto_0
    return-object v2

    .line 49
    .end local v2    # "reader":Lcom/tencent/wstt/gt/log/logcat/LogcatReader;
    :cond_0
    new-instance v2, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;

    iget-boolean v3, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->recordingMode:Z

    iget-object v4, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->lastLines:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lcom/tencent/wstt/gt/log/logcat/MultipleLogcatReader;-><init>(ZLjava/util/Map;)V

    .restart local v2    # "reader":Lcom/tencent/wstt/gt/log/logcat/LogcatReader;
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 68
    iget-boolean v2, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->recordingMode:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-boolean v2, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->multiple:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/logcat/LogcatReaderLoader;->lastLines:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 75
    return-void

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    move v2, v4

    .line 68
    goto :goto_0

    :cond_1
    move v3, v4

    .line 69
    goto :goto_1

    .line 71
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 72
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
