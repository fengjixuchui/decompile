.class public Lcom/tencent/wstt/gt/manager/OpUIManager;
.super Ljava/lang/Object;
.source "OpUIManager.java"


# static fields
.field public static delaytime:I

.field public static gw_running:Z

.field public static list_change:Z

.field public static list_op:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;"
        }
    .end annotation
.end field

.field public static refresh_op_drag_conflict_flag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const/16 v0, 0x3e8

    sput v0, Lcom/tencent/wstt/gt/manager/OpUIManager;->delaytime:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    .line 45
    sput-boolean v1, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    .line 55
    sput-boolean v1, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_change:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addItemToAC(Lcom/tencent/wstt/gt/OutPara;)V
    .locals 3
    .param p0, "op"    # Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 74
    sget-object v1, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDividePosition()I

    move-result v0

    .line 80
    .local v0, "pos_AC":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 82
    sget-object v1, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v1, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/OutPara;->setDisplayProperty(I)V

    goto :goto_0
.end method

.method public static getACOutputParams()Ljava/util/List;
    .locals 6
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
    .line 297
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v3, "show_ov":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    sget-object v4, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 299
    .local v1, "len":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 308
    :cond_0
    return-object v3

    .line 301
    :cond_1
    sget-object v4, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    .line 302
    .local v2, "op":Lcom/tencent/wstt/gt/OutPara;
    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 305
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
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
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
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

    .line 318
    return-object v1

    .line 314
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/manager/Client;

    .line 316
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/Client;->getAllOutParas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static getOutListAcDividePosition()I
    .locals 4

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 271
    :goto_1
    return v1

    .line 266
    :cond_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_INIT_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    move v1, v0

    .line 268
    goto :goto_1

    .line 265
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getOutListDisableTitlePosition()I
    .locals 4

    .prologue
    .line 275
    const/4 v1, -0x1

    .line 276
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 282
    :goto_1
    return v1

    .line 277
    :cond_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_DISABLE_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    move v1, v0

    .line 279
    goto :goto_1

    .line 276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getOutListDividePosition()I
    .locals 4

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 108
    :goto_1
    return v1

    .line 103
    :cond_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    move v1, v0

    .line 105
    goto :goto_1

    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getPosition(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 142
    return v1

    .line 138
    :cond_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 139
    move v1, v0

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static initDefaultOutputParamList()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 152
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 153
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getAll()Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "outParaList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    new-instance v3, Lcom/tencent/wstt/gt/OutPara;

    invoke-direct {v3}, Lcom/tencent/wstt/gt/OutPara;-><init>()V

    .line 156
    .local v3, "ov_title":Lcom/tencent/wstt/gt/OutPara;
    sget-object v5, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_TITLE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/tencent/wstt/gt/OutPara;->setKey(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3, v8}, Lcom/tencent/wstt/gt/OutPara;->setDisplayProperty(I)V

    .line 158
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 168
    new-instance v4, Lcom/tencent/wstt/gt/OutPara;

    invoke-direct {v4}, Lcom/tencent/wstt/gt/OutPara;-><init>()V

    .line 169
    .local v4, "ov_title_divid":Lcom/tencent/wstt/gt/OutPara;
    sget-object v5, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/OutPara;->setKey(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v4, v8}, Lcom/tencent/wstt/gt/OutPara;->setDisplayProperty(I)V

    .line 171
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 181
    new-instance v0, Lcom/tencent/wstt/gt/OutPara;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/OutPara;-><init>()V

    .line 182
    .local v0, "op_title_disable":Lcom/tencent/wstt/gt/OutPara;
    sget-object v5, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_DISABLE_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/tencent/wstt/gt/OutPara;->setKey(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, v8}, Lcom/tencent/wstt/gt/OutPara;->setDisplayProperty(I)V

    .line 184
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 193
    return-void

    .line 161
    .end local v0    # "op_title_disable":Lcom/tencent/wstt/gt/OutPara;
    .end local v4    # "ov_title_divid":Lcom/tencent/wstt/gt/OutPara;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    .line 162
    .local v2, "ov":Lcom/tencent/wstt/gt/OutPara;
    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 163
    sget-object v6, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v2    # "ov":Lcom/tencent/wstt/gt/OutPara;
    .restart local v4    # "ov_title_divid":Lcom/tencent/wstt/gt/OutPara;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    .line 175
    .restart local v2    # "ov":Lcom/tencent/wstt/gt/OutPara;
    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v6

    if-nez v6, :cond_1

    .line 176
    sget-object v6, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    .end local v2    # "ov":Lcom/tencent/wstt/gt/OutPara;
    .restart local v0    # "op_title_disable":Lcom/tencent/wstt/gt/OutPara;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    .line 188
    .restart local v2    # "ov":Lcom/tencent/wstt/gt/OutPara;
    sget-object v6, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 189
    const/4 v6, 0x2

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 190
    sget-object v6, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static refreshOutputParam()V
    .locals 5

    .prologue
    .line 287
    sget-object v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v0, "op":Lcom/tencent/wstt/gt/OutPara;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 294
    return-void

    .line 287
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "op":Lcom/tencent/wstt/gt/OutPara;
    check-cast v0, Lcom/tencent/wstt/gt/OutPara;

    .line 288
    .restart local v0    # "op":Lcom/tencent/wstt/gt/OutPara;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/OutPara;->setFreezValue(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static refreshUIOpList()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 200
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getAll()Ljava/util/List;

    move-result-object v0

    .line 203
    .local v0, "outParaList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 217
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDividePosition()I

    move-result v3

    .line 219
    .local v3, "pos_divid_line":I
    if-le v3, v8, :cond_8

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 255
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_c

    .line 261
    return-void

    .line 203
    .end local v3    # "pos_divid_line":I
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    .line 204
    .local v1, "ov":Lcom/tencent/wstt/gt/OutPara;
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v5

    if-nez v5, :cond_0

    .line 206
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDisableTitlePosition()I

    move-result v5

    if-eq v7, v5, :cond_5

    .line 207
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDisableTitlePosition()I

    move-result v6

    invoke-interface {v5, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_5
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    .end local v1    # "ov":Lcom/tencent/wstt/gt/OutPara;
    .restart local v3    # "pos_divid_line":I
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    .line 222
    .restart local v1    # "ov":Lcom/tencent/wstt/gt/OutPara;
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDisableTitlePosition()I

    move-result v5

    if-eq v7, v5, :cond_7

    .line 223
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v5

    if-ne v8, v5, :cond_7

    .line 224
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 225
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDisableTitlePosition()I

    move-result v6

    invoke-interface {v5, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 226
    :cond_7
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v5

    if-nez v5, :cond_1

    .line 227
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 228
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    .end local v1    # "ov":Lcom/tencent/wstt/gt/OutPara;
    :cond_8
    const/4 v2, 0x1

    .line 235
    .local v2, "pos":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    .line 236
    .restart local v1    # "ov":Lcom/tencent/wstt/gt/OutPara;
    const/4 v5, 0x4

    if-ge v2, v5, :cond_a

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v5

    if-ne v8, v5, :cond_a

    .line 237
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 238
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 239
    add-int/lit8 v2, v2, 0x1

    .line 240
    goto :goto_3

    .line 241
    :cond_a
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDisableTitlePosition()I

    move-result v5

    if-eq v7, v5, :cond_b

    .line 243
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v5

    .line 242
    if-nez v5, :cond_b

    .line 244
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 245
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDisableTitlePosition()I

    move-result v6

    invoke-interface {v5, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 247
    :cond_b
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v5

    if-nez v5, :cond_9

    .line 248
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 249
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 255
    .end local v1    # "ov":Lcom/tencent/wstt/gt/OutPara;
    .end local v2    # "pos":I
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    .line 256
    .restart local v1    # "ov":Lcom/tencent/wstt/gt/OutPara;
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 257
    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 258
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public static setAUTitemTop(Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;)V
    .locals 6
    .param p0, "outparam_adapter"    # Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;

    .prologue
    .line 59
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDividePosition()I

    move-result v3

    .line 60
    .local v3, "pos_Divide":I
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/manager/ClientManager;->getAUTClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 61
    .local v0, "autClient":Lcom/tencent/wstt/gt/manager/Client;
    if-nez v0, :cond_1

    .line 71
    :cond_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/Client;->getAllOutParas()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    .line 66
    .local v2, "op":Lcom/tencent/wstt/gt/OutPara;
    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v5

    if-nez v5, :cond_2

    .line 67
    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getPosition(Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "listpos":I
    add-int/lit8 v5, v3, 0x1

    invoke-static {p0, v1, v5}, Lcom/tencent/wstt/gt/manager/OpUIManager;->setOutListItemToTop(Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;II)V

    goto :goto_0
.end method

.method public static setItemToNormal(Lcom/tencent/wstt/gt/OutPara;)V
    .locals 2
    .param p0, "op"    # Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v1, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDisableTitlePosition()I

    move-result v0

    .line 97
    .local v0, "pos_Disable":I
    sget-object v1, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v1, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static setOutListItemToTop(Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;II)V
    .locals 8
    .param p0, "outparam_adapter"    # Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 114
    const/4 v0, -0x1

    .line 115
    .local v0, "direction":I
    move v3, p1

    .line 116
    .local v3, "loop_start":I
    move v2, p2

    .line 118
    .local v2, "loop_end":I
    if-ge p1, p2, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 122
    :cond_0
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wstt/gt/OutPara;

    .line 124
    .local v4, "ov_target":Lcom/tencent/wstt/gt/OutPara;
    move v1, v3

    .local v1, "i":I
    :goto_0
    if-ne v1, v2, :cond_2

    .line 128
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, p2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    if-eqz p0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->notifyDataSetChanged()V

    .line 133
    :cond_1
    return-void

    .line 125
    :cond_2
    sget-object v6, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    add-int v7, v1, v0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wstt/gt/OutPara;

    invoke-interface {v6, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    add-int/2addr v1, v0

    goto :goto_0
.end method
