.class public Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;
.super Ljava/lang/Object;
.source "GTMemFillEngine.java"

# interfaces
.implements Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;


# static fields
.field private static INSTANCE:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;


# instance fields
.field private isFilled:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->listeners:Ljava/util/List;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    .line 45
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->INSTANCE:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 122
    const-string v2, "cmd"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "cmd":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "fill"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const-string v2, "fillnum"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 125
    .local v1, "num":I
    if-lez v1, :cond_0

    .line 127
    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->fill(I)V

    .line 133
    .end local v1    # "num":I
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    if-eqz v0, :cond_0

    const-string v2, "free"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->free()V

    goto :goto_0
.end method

.method public fill(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine$1;-><init>(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;I)V

    .line 103
    const-string v2, "GTMemFillThread"

    .line 73
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method

.method public free()V
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->isFilled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/MemFillTool;->getInstance()Lcom/tencent/wstt/gt/api/utils/MemFillTool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/api/utils/MemFillTool;->freeMem()I

    .line 112
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->setFilled(Z)V

    .line 118
    :cond_0
    return-void

    .line 112
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;

    .line 114
    .local v0, "listener":Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;
    invoke-interface {v0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;->onFree()V

    goto :goto_0
.end method

.method public isFilled()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->isFilled:Z

    return v0
.end method

.method public declared-synchronized removeListener(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFilled(Z)V
    .locals 0
    .param p1, "isFilled"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->isFilled:Z

    .line 69
    return-void
.end method
