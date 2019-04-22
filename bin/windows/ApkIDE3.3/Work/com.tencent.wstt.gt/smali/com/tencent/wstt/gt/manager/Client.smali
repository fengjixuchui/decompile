.class public abstract Lcom/tencent/wstt/gt/manager/Client;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field protected inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

.field protected key:Ljava/lang/String;

.field protected outParaManager:Lcom/tencent/wstt/gt/manager/IOutParaManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tencent/wstt/gt/manager/Client;->key:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0}, Lcom/tencent/wstt/gt/manager/IInParaManager;->clear()V

    .line 70
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->outParaManager:Lcom/tencent/wstt/gt/manager/IOutParaManager;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->clear()V

    .line 71
    return-void
.end method

.method public getAllInParas()Ljava/util/List;
    .locals 1
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
    .line 328
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0}, Lcom/tencent/wstt/gt/manager/IInParaManager;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllOutParas()Ljava/util/List;
    .locals 1
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
    .line 104
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->outParaManager:Lcom/tencent/wstt/gt/manager/IOutParaManager;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInPara(Ljava/lang/String;B)B
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # B

    .prologue
    .line 367
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1, p2}, Lcom/tencent/wstt/gt/manager/IInParaManager;->getInPara(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public getInPara(Ljava/lang/String;D)D
    .locals 2
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # D

    .prologue
    .line 359
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/wstt/gt/manager/IInParaManager;->getInPara(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInPara(Ljava/lang/String;F)F
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # F

    .prologue
    .line 355
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1, p2}, Lcom/tencent/wstt/gt/manager/IInParaManager;->getInPara(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInPara(Ljava/lang/String;I)I
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1, p2}, Lcom/tencent/wstt/gt/manager/IInParaManager;->getInPara(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInPara(Ljava/lang/String;J)J
    .locals 2
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # J

    .prologue
    .line 371
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/wstt/gt/manager/IInParaManager;->getInPara(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInPara(I)Lcom/tencent/wstt/gt/InPara;
    .locals 1
    .param p1, "positon"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1}, Lcom/tencent/wstt/gt/manager/IInParaManager;->getInPara(I)Lcom/tencent/wstt/gt/InPara;

    move-result-object v0

    return-object v0
.end method

.method public getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1}, Lcom/tencent/wstt/gt/manager/IInParaManager;->getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;

    move-result-object v0

    return-object v0
.end method

.method public getInPara(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1, p2}, Lcom/tencent/wstt/gt/manager/IInParaManager;->getInPara(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInPara(Ljava/lang/String;S)S
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # S

    .prologue
    .line 363
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1, p2}, Lcom/tencent/wstt/gt/manager/IInParaManager;->getInPara(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getInPara(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # Z

    .prologue
    .line 347
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1, p2}, Lcom/tencent/wstt/gt/manager/IInParaManager;->getInPara(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->outParaManager:Lcom/tencent/wstt/gt/manager/IOutParaManager;

    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    return-object v0
.end method

.method public abstract initInParas([Lcom/tencent/wstt/gt/InPara;)Lcom/tencent/wstt/gt/manager/IInParaManager;
.end method

.method public abstract initOutParas([Lcom/tencent/wstt/gt/OutPara;)Lcom/tencent/wstt/gt/manager/IOutParaManager;
.end method

.method public isInParaEmpty()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0}, Lcom/tencent/wstt/gt/manager/IInParaManager;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isOutParaEmpty()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->outParaManager:Lcom/tencent/wstt/gt/manager/IOutParaManager;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public register(Lcom/tencent/wstt/gt/InPara;)V
    .locals 1
    .param p1, "para"    # Lcom/tencent/wstt/gt/InPara;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1}, Lcom/tencent/wstt/gt/manager/IInParaManager;->register(Lcom/tencent/wstt/gt/InPara;)V

    .line 314
    return-void
.end method

.method public register(Lcom/tencent/wstt/gt/OutPara;)V
    .locals 1
    .param p1, "para"    # Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->outParaManager:Lcom/tencent/wstt/gt/manager/IOutParaManager;

    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->register(Lcom/tencent/wstt/gt/OutPara;)V

    .line 77
    return-void
.end method

.method public varargs registerInPara(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "optionalValues"    # [Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/wstt/gt/manager/IInParaManager;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public registerOutPara(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->outParaManager:Lcom/tencent/wstt/gt/manager/IOutParaManager;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method setInParaManager(Lcom/tencent/wstt/gt/manager/IInParaManager;)V
    .locals 0
    .param p1, "inParaManager"    # Lcom/tencent/wstt/gt/manager/IInParaManager;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    .line 47
    return-void
.end method

.method public setOutPara(Ljava/lang/String;C)V
    .locals 3
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 245
    .local v0, "outPara":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 246
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    .line 248
    :cond_0
    return-void
.end method

.method public setOutPara(Ljava/lang/String;D)V
    .locals 4
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 262
    .local v0, "outPara":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 263
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method

.method public setOutPara(Ljava/lang/String;F)V
    .locals 3
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 279
    .local v0, "outPara":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 280
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method

.method public setOutPara(Ljava/lang/String;I)V
    .locals 4
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 154
    .local v0, "outPara":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 155
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V

    .line 161
    :cond_0
    return-void
.end method

.method public setOutPara(Ljava/lang/String;J)V
    .locals 4
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 185
    .local v0, "outPara":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 186
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V

    .line 191
    :cond_0
    return-void
.end method

.method public setOutPara(Ljava/lang/String;JI)V
    .locals 6
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "value"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 165
    .local v0, "outPara":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 166
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/tencent/wstt/gt/OutPara;->setValue(JLjava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    int-to-long v4, p4

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;JJ)V

    .line 171
    :cond_0
    return-void
.end method

.method public setOutPara(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "value"    # J

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 195
    .local v0, "outPara":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 196
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/tencent/wstt/gt/OutPara;->setValue(JLjava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;JJ)V

    .line 201
    :cond_0
    return-void
.end method

.method public setOutPara(Ljava/lang/String;JS)V
    .locals 6
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "value"    # S

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 225
    .local v0, "outPara":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 226
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/tencent/wstt/gt/OutPara;->setValue(JLjava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    int-to-long v4, p4

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;JJ)V

    .line 231
    :cond_0
    return-void
.end method

.method public setOutPara(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 296
    .local v0, "outPara":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 297
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    .line 299
    :cond_0
    return-void
.end method

.method public setOutPara(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 119
    .local v0, "outPara":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 120
    invoke-virtual {v0, p2}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public setOutPara(Ljava/lang/String;S)V
    .locals 4
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 215
    .local v0, "outPara":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 216
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V

    .line 221
    :cond_0
    return-void
.end method

.method public setOutPara(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 136
    .local v0, "outPara":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 137
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method setOutParaManager(Lcom/tencent/wstt/gt/manager/IOutParaManager;)V
    .locals 0
    .param p1, "outParaManager"    # Lcom/tencent/wstt/gt/manager/IOutParaManager;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tencent/wstt/gt/manager/Client;->outParaManager:Lcom/tencent/wstt/gt/manager/IOutParaManager;

    .line 51
    return-void
.end method

.method public setOutparaMonitor(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->outParaManager:Lcom/tencent/wstt/gt/manager/IOutParaManager;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->setOutparaMonitor(Ljava/lang/String;Z)V

    .line 100
    return-void
.end method

.method public unregisterInPara(Ljava/lang/String;)V
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->inParaManager:Lcom/tencent/wstt/gt/manager/IInParaManager;

    invoke-interface {v0, p1}, Lcom/tencent/wstt/gt/manager/IInParaManager;->removeOutPara(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public unregisterOutPara(Ljava/lang/String;)V
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/Client;->outParaManager:Lcom/tencent/wstt/gt/manager/IOutParaManager;

    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/IOutParaManager;->removeOutPara(Ljava/lang/String;)V

    .line 87
    return-void
.end method
