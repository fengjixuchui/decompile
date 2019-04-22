.class public Lcom/tencent/wstt/gt/manager/IpUIManager;
.super Ljava/lang/Object;
.source "IpUIManager.java"


# static fields
.field public static list_ip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 35
    sput-object v0, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addItemToAC(Lcom/tencent/wstt/gt/InPara;)V
    .locals 7
    .param p0, "ip"    # Lcom/tencent/wstt/gt/InPara;

    .prologue
    const/4 v6, 0x3

    .line 76
    sget-object v4, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/InPara;->getDisplayProperty()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/manager/IpUIManager;->getInListDividePosition()I

    move-result v3

    .line 87
    .local v3, "pos_AC":I
    if-nez v3, :cond_2

    .line 90
    new-instance v0, Lcom/tencent/wstt/gt/InPara;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/InPara;-><init>()V

    .line 91
    .local v0, "iv_ac":Lcom/tencent/wstt/gt/InPara;
    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_INIT_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/tencent/wstt/gt/InPara;->setKey(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v6}, Lcom/tencent/wstt/gt/InPara;->setDisplayProperty(I)V

    .line 93
    sget-object v4, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v2, Lcom/tencent/wstt/gt/InPara;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/InPara;-><init>()V

    .line 97
    .local v2, "iv_normalDivid":Lcom/tencent/wstt/gt/InPara;
    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/tencent/wstt/gt/InPara;->setKey(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2, v6}, Lcom/tencent/wstt/gt/InPara;->setDisplayProperty(I)V

    .line 99
    sget-object v4, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/tencent/wstt/gt/InPara;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/InPara;-><init>()V

    .line 103
    .local v1, "iv_disableDivid":Lcom/tencent/wstt/gt/InPara;
    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_DISABLE_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tencent/wstt/gt/InPara;->setKey(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, v6}, Lcom/tencent/wstt/gt/InPara;->setDisplayProperty(I)V

    .line 105
    sget-object v4, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const/4 v3, 0x1

    .line 109
    .end local v0    # "iv_ac":Lcom/tencent/wstt/gt/InPara;
    .end local v1    # "iv_disableDivid":Lcom/tencent/wstt/gt/InPara;
    .end local v2    # "iv_normalDivid":Lcom/tencent/wstt/gt/InPara;
    :cond_2
    const/4 v4, 0x4

    if-ge v3, v4, :cond_3

    .line 111
    sget-object v4, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v4, v3, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/InPara;->setDisplayProperty(I)V

    goto :goto_0
.end method

.method public static getACInputParams()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v2, "show_iv":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/InPara;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 141
    :cond_0
    return-object v2

    .line 134
    :cond_1
    sget-object v3, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/InPara;

    .line 135
    .local v1, "ip":Lcom/tencent/wstt/gt/InPara;
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    sget-object v3, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wstt/gt/InPara;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/InPara;>;"
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/manager/ClientManager;->getAllClient()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    return-object v1

    .line 53
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/manager/Client;

    .line 55
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/Client;->getAllInParas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static getInListDisableTitlePosition()I
    .locals 4

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 71
    :goto_1
    return v1

    .line 65
    :cond_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_DISABLE_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    move v1, v0

    .line 68
    goto :goto_1

    .line 63
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInListDividePosition()I
    .locals 4

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 127
    :goto_1
    return v1

    .line 122
    :cond_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    move v1, v0

    .line 124
    goto :goto_1

    .line 121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty()Z
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/manager/ClientManager;->getAllClient()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 40
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    check-cast v0, Lcom/tencent/wstt/gt/manager/Client;

    .line 42
    .restart local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/Client;->isInParaEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    const/4 v1, 0x0

    goto :goto_0
.end method
