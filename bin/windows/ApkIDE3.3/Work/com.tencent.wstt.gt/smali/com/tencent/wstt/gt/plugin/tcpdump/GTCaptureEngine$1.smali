.class Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine$1;
.super Ljava/lang/Object;
.source "GTCaptureEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->doCapture(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

.field private final synthetic val$filePath:Ljava/lang/String;

.field private final synthetic val$param:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine$1;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine$1;->val$param:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine$1;->val$filePath:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 126
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine$1;->val$param:Ljava/lang/String;

    .line 127
    .local v1, "realParam":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine$1;->val$param:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine$1;->val$param:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    :cond_0
    const-string v1, "-p -s 0 -vv -w"

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine$1;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine$1;->val$filePath:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->startTcpDump(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 136
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine$1;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->listeners:Ljava/util/List;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->access$0(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    return-void

    .line 136
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;

    .line 138
    .local v0, "listener":Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;
    invoke-interface {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;->onStopCaptureEnd()V

    goto :goto_0
.end method
