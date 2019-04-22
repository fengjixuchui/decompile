.class Lcom/tencent/wstt/gt/plugin/PluginItem$1;
.super Ljava/lang/Thread;
.source "PluginItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/PluginItem;->setTaskExecutor(Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/PluginItem;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/PluginItem;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/PluginItem$1;->this$0:Lcom/tencent/wstt/gt/plugin/PluginItem;

    .line 82
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/PluginItem$1;->this$0:Lcom/tencent/wstt/gt/plugin/PluginItem;

    iget-object v2, v2, Lcom/tencent/wstt/gt/plugin/PluginItem;->taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 91
    .local v1, "task":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/PluginItem$1;->this$0:Lcom/tencent/wstt/gt/plugin/PluginItem;

    # getter for: Lcom/tencent/wstt/gt/plugin/PluginItem;->mExecutor:Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/PluginItem;->access$0(Lcom/tencent/wstt/gt/plugin/PluginItem;)Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;->execute(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v1    # "task":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 96
    return-void
.end method
