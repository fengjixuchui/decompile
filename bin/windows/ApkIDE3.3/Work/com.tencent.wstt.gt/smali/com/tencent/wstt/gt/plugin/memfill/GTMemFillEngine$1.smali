.class Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine$1;
.super Ljava/lang/Object;
.source "GTMemFillEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->fill(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

.field private final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine$1;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    iput p2, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine$1;->val$size:I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 77
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine$1;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->isFilled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine$1;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    # getter for: Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->listeners:Ljava/util/List;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->access$0(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 87
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/MemFillTool;->getInstance()Lcom/tencent/wstt/gt/api/utils/MemFillTool;

    move-result-object v2

    iget v3, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine$1;->val$size:I

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/api/utils/MemFillTool;->fillMem(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine$1;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    # getter for: Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->listeners:Ljava/util/List;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->access$0(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 102
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine$1;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->setFilled(Z)V

    goto :goto_0

    .line 83
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;

    .line 85
    .local v1, "listener":Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;
    invoke-interface {v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;->onFillStart()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 89
    .end local v1    # "listener":Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine$1;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    # getter for: Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->listeners:Ljava/util/List;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->access$0(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;

    .line 94
    .restart local v1    # "listener":Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;
    const-string v3, ""

    invoke-interface {v1, v3}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;->onFillFail(Ljava/lang/String;)V

    goto :goto_3

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;

    .line 100
    .restart local v1    # "listener":Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;
    invoke-interface {v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;->onFillEnd()V

    goto :goto_2
.end method
