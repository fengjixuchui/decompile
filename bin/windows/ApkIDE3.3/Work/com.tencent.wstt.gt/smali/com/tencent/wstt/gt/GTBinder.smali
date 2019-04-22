.class public Lcom/tencent/wstt/gt/GTBinder;
.super Lcom/tencent/wstt/gt/IService$Stub;
.source "GTBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/tencent/wstt/gt/IService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIsCanConnect(Ljava/lang/String;I)I
    .locals 1
    .param p1, "cur_pkgName"    # Ljava/lang/String;
    .param p2, "versionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p1, p2}, Lcom/tencent/wstt/gt/communicate/ClientConnectGT;->checkIsCanConnect(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disconnectGT(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cur_pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {p1}, Lcom/tencent/wstt/gt/communicate/ClientConnectGT;->disconnectGT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getGlobalInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v2

    const-string v3, "_GLOBAL__"

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 163
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;

    move-result-object v1

    .line 164
    .local v1, "para":Lcom/tencent/wstt/gt/InPara;
    return-object v1
.end method

.method public getGlobalOutPara(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v2

    const-string v3, "_GLOBAL__"

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 217
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v1

    .line 218
    .local v1, "para":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 222
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v2

    invoke-static {}, Lcom/tencent/wstt/gt/GTBinder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(I)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 156
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;

    move-result-object v1

    .line 157
    .local v1, "para":Lcom/tencent/wstt/gt/InPara;
    return-object v1
.end method

.method public getOutPara(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v2

    invoke-static {}, Lcom/tencent/wstt/gt/GTBinder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(I)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 206
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v1

    .line 207
    .local v1, "para":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 211
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public initConnectGT(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lcom/tencent/wstt/gt/GTBinder;->getCallingUid()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/tencent/wstt/gt/communicate/ClientConnectGT;->initConnectGT(Ljava/lang/String;II)V

    .line 170
    return-void
.end method

.method public log(JILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pid"    # J
    .param p3, "level"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v5, 0x0

    move-wide v0, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/tencent/wstt/gt/log/GTLogInternal;->log(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public registerGlobalInPara(Lcom/tencent/wstt/gt/InPara;)V
    .locals 3
    .param p1, "para"    # Lcom/tencent/wstt/gt/InPara;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    const-string v2, "_GLOBAL__"

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 150
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/Client;->register(Lcom/tencent/wstt/gt/InPara;)V

    .line 151
    return-void
.end method

.method public registerGlobalOutPara(Lcom/tencent/wstt/gt/OutPara;)V
    .locals 3
    .param p1, "para"    # Lcom/tencent/wstt/gt/OutPara;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    const-string v2, "_GLOBAL__"

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 56
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/Client;->register(Lcom/tencent/wstt/gt/OutPara;)V

    .line 57
    return-void
.end method

.method public registerInPara(Lcom/tencent/wstt/gt/InPara;)V
    .locals 3
    .param p1, "para"    # Lcom/tencent/wstt/gt/InPara;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-static {}, Lcom/tencent/wstt/gt/GTBinder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(I)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 144
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/Client;->register(Lcom/tencent/wstt/gt/InPara;)V

    .line 145
    return-void
.end method

.method public registerOutPara(Lcom/tencent/wstt/gt/OutPara;)V
    .locals 3
    .param p1, "para"    # Lcom/tencent/wstt/gt/OutPara;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-static {}, Lcom/tencent/wstt/gt/GTBinder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(I)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 50
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/Client;->register(Lcom/tencent/wstt/gt/OutPara;)V

    .line 51
    return-void
.end method

.method public setBooleanEntry(Lcom/tencent/wstt/gt/BooleanEntry;)V
    .locals 2
    .param p1, "task"    # Lcom/tencent/wstt/gt/BooleanEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/tencent/wstt/gt/BooleanEntry;->getFunctionId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 259
    :pswitch_0
    invoke-virtual {p1}, Lcom/tencent/wstt/gt/BooleanEntry;->getData()Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->setETStarted(Z)V

    goto :goto_0

    .line 262
    :pswitch_1
    sget-object v0, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/BooleanEntry;->getData()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/service/GTServiceController;->setFloatViewFront(Z)V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCommond(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    .line 269
    if-eqz p1, :cond_0

    const-string v4, "&gt_cmd_"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string v4, "&gt_cmd_"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "sReceiver":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 278
    const-string v4, "&gt_cmd_k"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 280
    .local v0, "iCmd":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 283
    :pswitch_0
    const-string v4, "sampleRate"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 284
    .local v2, "sampleRate":I
    div-int/lit8 v4, v2, 0x64

    mul-int/lit8 v2, v4, 0x64

    .line 285
    if-lt v2, v3, :cond_2

    .end local v2    # "sampleRate":I
    :goto_1
    sput v2, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond:I

    goto :goto_0

    .restart local v2    # "sampleRate":I
    :cond_2
    move v2, v3

    goto :goto_1

    .line 291
    .end local v0    # "iCmd":I
    .end local v2    # "sampleRate":I
    :cond_3
    invoke-static {v1, p1}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->dispatchPiCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public setCommondSync(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x64

    .line 297
    if-eqz p1, :cond_0

    const-string v12, "&gt_cmd_"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const-string v12, "&gt_cmd_"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "sReceiver":Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 306
    const-string v12, "&gt_cmd_k"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 307
    .local v1, "iCmd":I
    const-string v12, "pkgName"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "pkgName":Ljava/lang/String;
    const-string v12, "verName"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 309
    .local v10, "verName":Ljava/lang/String;
    const-string v12, "pid"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 310
    .local v2, "pid":I
    const-string v12, "saveFolderName"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "saveFolderName":Ljava/lang/String;
    const-string v12, "desc"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "desc":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 316
    :pswitch_0
    const-string v11, "&gt_cmd_k_v"

    sget-object v12, Lcom/tencent/wstt/gt/GTConfig;->VERSION:Ljava/lang/String;

    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :pswitch_1
    if-eqz v3, :cond_0

    .line 321
    invoke-static {v3, v10, v2}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->startProcTest(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 325
    :pswitch_2
    if-eqz v6, :cond_0

    .line 327
    const/4 v11, 0x0

    invoke-static {v3, v2, v6, v0, v11}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->endProcTest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 331
    :pswitch_3
    if-eqz v6, :cond_0

    .line 333
    const/4 v11, 0x1

    invoke-static {v3, v2, v6, v0, v11}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->endProcTest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 337
    :pswitch_4
    invoke-static {}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->clearDatas()V

    goto :goto_0

    .line 340
    :pswitch_5
    if-eqz v3, :cond_0

    .line 342
    const-string v11, "target"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 343
    .local v8, "targetStart":Ljava/lang/String;
    invoke-static {v3, v2, v8}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->startSample(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 347
    .end local v8    # "targetStart":Ljava/lang/String;
    :pswitch_6
    if-eqz v3, :cond_0

    .line 349
    const-string v11, "target"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, "targetStop":Ljava/lang/String;
    invoke-static {v3, v2, v9}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->stopSample(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 354
    .end local v9    # "targetStop":Ljava/lang/String;
    :pswitch_7
    if-eqz v3, :cond_0

    .line 356
    const-string v11, "target"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, "targetSample":Ljava/lang/String;
    invoke-static {v3, v2, v7}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->sample(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 362
    .end local v7    # "targetSample":Ljava/lang/String;
    :pswitch_8
    const-string v12, "sampleRate"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 363
    .local v5, "sampleRate":I
    div-int/lit8 v12, v5, 0x64

    mul-int/lit8 v5, v12, 0x64

    .line 364
    if-lt v5, v11, :cond_2

    .end local v5    # "sampleRate":I
    :goto_1
    sput v5, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond:I

    goto/16 :goto_0

    .restart local v5    # "sampleRate":I
    :cond_2
    move v5, v11

    goto :goto_1

    .line 371
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "iCmd":I
    .end local v2    # "pid":I
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v5    # "sampleRate":I
    .end local v6    # "saveFolderName":Ljava/lang/String;
    .end local v10    # "verName":Ljava/lang/String;
    :cond_3
    invoke-static {v4, p1}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->dispatchPiCommandSync(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setGlobalInPara(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v2

    const-string v3, "_GLOBAL__"

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 196
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;

    move-result-object v1

    .line 197
    .local v1, "iv":Lcom/tencent/wstt/gt/InPara;
    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 201
    :cond_0
    return-void
.end method

.method public setGlobalOutPara(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v5

    const-string v6, "_GLOBAL__"

    invoke-virtual {v5, v6}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 91
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v4

    .line 93
    .local v4, "para":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {v4, p2}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/OutPara;->isMonitor()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 102
    .local v2, "lValue":J
    invoke-static {v4, p2, v2, v3}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v2    # "lValue":J
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    .line 108
    invoke-static {p1}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->removeProfilerData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInPara(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v2

    invoke-static {}, Lcom/tencent/wstt/gt/GTBinder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(I)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 185
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;

    move-result-object v1

    .line 186
    .local v1, "iv":Lcom/tencent/wstt/gt/InPara;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 190
    :cond_0
    return-void
.end method

.method public setOutPara(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v5

    invoke-static {}, Lcom/tencent/wstt/gt/GTBinder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(I)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 64
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v4

    .line 66
    .local v4, "para":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v4, :cond_0

    .line 67
    invoke-virtual {v4, p2}, Lcom/tencent/wstt/gt/OutPara;->setValue(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/OutPara;->isMonitor()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 75
    .local v2, "lValue":J
    invoke-static {v4, p2, v2, v3}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v2    # "lValue":J
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    .line 81
    invoke-static {p1}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->removeProfilerData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPerfDigitalEntry(Lcom/tencent/wstt/gt/PerfDigitalEntry;)V
    .locals 1
    .param p1, "task"    # Lcom/tencent/wstt/gt/PerfDigitalEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->getFunctionId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    :pswitch_0
    return-void

    .line 230
    :pswitch_1
    invoke-static {p1}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->recordDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)V

    goto :goto_0

    .line 233
    :pswitch_2
    invoke-static {p1}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->recordDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)V

    goto :goto_0

    .line 236
    :pswitch_3
    invoke-static {p1}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->startDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)V

    goto :goto_0

    .line 239
    :pswitch_4
    invoke-static {p1}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->endDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)J

    goto :goto_0

    .line 242
    :pswitch_5
    invoke-static {p1}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->startDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)V

    goto :goto_0

    .line 245
    :pswitch_6
    invoke-static {p1}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->endDigital(Lcom/tencent/wstt/gt/PerfDigitalEntry;)J

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setPerfStringEntry(Lcom/tencent/wstt/gt/PerfStringEntry;)V
    .locals 0
    .param p1, "task"    # Lcom/tencent/wstt/gt/PerfStringEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    return-void
.end method

.method public setTimedOutPara(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-static {}, Lcom/tencent/wstt/gt/GTBinder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(I)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v6

    .line 119
    .local v6, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v6, p1}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v0

    .line 121
    .local v0, "para":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p2, p3, p4}, Lcom/tencent/wstt/gt/OutPara;->setValue(JLjava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->isMonitor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    :try_start_0
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "lValue":J
    move-object v1, p4

    move-wide v2, p2

    .line 129
    invoke-static/range {v0 .. v5}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v4    # "lValue":J
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v7

    .line 134
    .local v7, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    .line 135
    invoke-static {p1}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->removeProfilerData(Ljava/lang/String;)V

    goto :goto_0
.end method
