.class public Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;
.super Ljava/lang/Object;
.source "GTDaemonThreadManager.java"


# static fields
.field private static INSTANCE:Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;


# instance fields
.field private threadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wstt/gt/internal/GTDaemonThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->INSTANCE:Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->threadMap:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->INSTANCE:Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->threadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lcom/tencent/wstt/gt/internal/GTDaemonThread;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "t"    # Lcom/tencent/wstt/gt/internal/GTDaemonThread;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->threadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->threadMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    return-void
.end method

.method public quickFnish(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->threadMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/internal/GTDaemonThread;

    .line 83
    .local v0, "t":Lcom/tencent/wstt/gt/internal/GTDaemonThread;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/internal/GTDaemonThread;->quickFnish()V

    .line 87
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->threadMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 48
    .local v0, "t":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    :cond_0
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/tencent/wstt/gt/internal/GTDaemonThreadManager;->threadMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 57
    .local v0, "t":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 61
    :cond_0
    return-void
.end method
