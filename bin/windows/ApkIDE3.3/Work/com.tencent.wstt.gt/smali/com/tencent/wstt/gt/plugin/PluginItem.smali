.class public abstract Lcom/tencent/wstt/gt/plugin/PluginItem;
.super Ljava/lang/Object;
.source "PluginItem.java"


# instance fields
.field public activityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public alias:Ljava/lang/String;

.field private consumerThread:Ljava/lang/Thread;

.field public description:Ljava/lang/String;

.field public logo_id:I

.field private mExecutor:Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;

.field public name:Ljava/lang/String;

.field protected taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "descriotion"    # Ljava/lang/String;
    .param p4, "logo_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p5, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->name:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->alias:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->description:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->logo_id:I

    .line 52
    iput-object p5, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->activityClass:Ljava/lang/Class;

    .line 55
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/PluginItem;)Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->mExecutor:Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;

    return-object v0
.end method


# virtual methods
.method public addTask(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public doTask(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->mExecutor:Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;

    invoke-interface {v0, p1}, Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;->execute(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    if-ne p1, p0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    instance-of v3, p1, Lcom/tencent/wstt/gt/plugin/PluginItem;

    if-nez v3, :cond_2

    move v1, v2

    .line 128
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 130
    check-cast v0, Lcom/tencent/wstt/gt/plugin/PluginItem;

    .line 131
    .local v0, "otherItem":Lcom/tencent/wstt/gt/plugin/PluginItem;
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/wstt/gt/plugin/PluginItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 136
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, -0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public onInitConnectGT()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public removeTaskExecutor()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->consumerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->consumerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->consumerThread:Ljava/lang/Thread;

    .line 108
    :cond_0
    return-void
.end method

.method public setTaskExecutor(Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;)V
    .locals 2
    .param p1, "executor"    # Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->consumerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->consumerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->consumerThread:Ljava/lang/Thread;

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->mExecutor:Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;

    .line 82
    new-instance v0, Lcom/tencent/wstt/gt/plugin/PluginItem$1;

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->mExecutor:Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/wstt/gt/plugin/PluginItem$1;-><init>(Lcom/tencent/wstt/gt/plugin/PluginItem;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->consumerThread:Ljava/lang/Thread;

    .line 98
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/PluginItem;->consumerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method
