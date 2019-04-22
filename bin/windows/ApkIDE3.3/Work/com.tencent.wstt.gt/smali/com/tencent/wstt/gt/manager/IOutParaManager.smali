.class public abstract Lcom/tencent/wstt/gt/manager/IOutParaManager;
.super Ljava/lang/Object;
.source "IOutParaManager.java"


# instance fields
.field protected client:Lcom/tencent/wstt/gt/manager/Client;

.field protected outParaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/manager/Client;)V
    .locals 1
    .param p1, "client"    # Lcom/tencent/wstt/gt/manager/Client;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/IOutParaManager;->outParaMap:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/tencent/wstt/gt/manager/IOutParaManager;->client:Lcom/tencent/wstt/gt/manager/Client;

    .line 46
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->getAll()Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "opList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    return-void

    .line 96
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/OutPara;

    .line 98
    .local v0, "op":Lcom/tencent/wstt/gt/OutPara;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->removeOutPara(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    iget-object v1, p0, Lcom/tencent/wstt/gt/manager/IOutParaManager;->outParaMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    return-object v0
.end method

.method public getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/IOutParaManager;->outParaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/OutPara;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/IOutParaManager;->outParaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract register(Lcom/tencent/wstt/gt/OutPara;)V
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 60
    :cond_0
    new-instance v0, Lcom/tencent/wstt/gt/OutPara;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/OutPara;-><init>()V

    .line 61
    .local v0, "para":Lcom/tencent/wstt/gt/OutPara;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/OutPara;->setKey(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, p2}, Lcom/tencent/wstt/gt/OutPara;->setAlias(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v3}, Lcom/tencent/wstt/gt/OutPara;->setDisplayProperty(I)V

    .line 64
    iget-object v1, p0, Lcom/tencent/wstt/gt/manager/IOutParaManager;->client:Lcom/tencent/wstt/gt/manager/Client;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/manager/Client;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/OutPara;->setClient(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/tencent/wstt/gt/manager/IOutParaManager;->outParaMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    return-void
.end method

.method public removeOutPara(Ljava/lang/String;)V
    .locals 2
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/tencent/wstt/gt/manager/IOutParaManager;->outParaMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/OutPara;

    .line 73
    .local v0, "para":Lcom/tencent/wstt/gt/OutPara;
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->getInstance()Lcom/tencent/wstt/gt/manager/OpPerfManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/wstt/gt/manager/OpPerfManager;->remove(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public setOutparaMonitor(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 83
    .local v0, "ov":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p2}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    .line 86
    :cond_0
    return-void
.end method
