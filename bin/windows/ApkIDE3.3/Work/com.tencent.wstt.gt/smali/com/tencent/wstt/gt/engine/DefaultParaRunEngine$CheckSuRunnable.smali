.class Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$CheckSuRunnable;
.super Ljava/lang/Object;
.source "DefaultParaRunEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckSuRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$CheckSuRunnable;->this$0:Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$CheckSuRunnable;->this$0:Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->access$3(Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;Z)V

    .line 215
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->setPid()V

    .line 216
    return-void
.end method
