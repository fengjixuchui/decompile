.class public Lcom/tencent/wstt/gt/plugin/listener/PluginListener;
.super Ljava/lang/Object;
.source "PluginListener.java"


# static fields
.field public static mapPIListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/tencent/wstt/gt/plugin/listener/PluginListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flag_listener:Z

.field private listener:Lcom/tencent/wstt/gt/plugin/listener/IPluginListener$Icallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->mapPIListener:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->flag_listener:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->listener:Lcom/tencent/wstt/gt/plugin/listener/IPluginListener$Icallback;

    .line 30
    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->listener:Lcom/tencent/wstt/gt/plugin/listener/IPluginListener$Icallback;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->listener:Lcom/tencent/wstt/gt/plugin/listener/IPluginListener$Icallback;

    invoke-interface {v0}, Lcom/tencent/wstt/gt/plugin/listener/IPluginListener$Icallback;->end()V

    .line 54
    :cond_0
    return-void
.end method

.method public setCallbackListener(Lcom/tencent/wstt/gt/plugin/listener/IPluginListener$Icallback;)V
    .locals 0
    .param p1, "cb1"    # Lcom/tencent/wstt/gt/plugin/listener/IPluginListener$Icallback;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->listener:Lcom/tencent/wstt/gt/plugin/listener/IPluginListener$Icallback;

    .line 38
    return-void
.end method

.method public setFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->flag_listener:Z

    .line 42
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->flag_listener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->listener:Lcom/tencent/wstt/gt/plugin/listener/IPluginListener$Icallback;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->listener:Lcom/tencent/wstt/gt/plugin/listener/IPluginListener$Icallback;

    invoke-interface {v0}, Lcom/tencent/wstt/gt/plugin/listener/IPluginListener$Icallback;->start()V

    .line 48
    :cond_0
    return-void
.end method
