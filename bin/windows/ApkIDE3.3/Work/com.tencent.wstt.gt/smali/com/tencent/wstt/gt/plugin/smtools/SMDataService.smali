.class public Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;
.super Landroid/app/IntentService;
.source "SMDataService.java"


# instance fields
.field private count:Ljava/util/concurrent/atomic/AtomicInteger;

.field private dataCountThread:Ljava/lang/Thread;

.field private pause:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-string v0, "SMDataService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->pause:Z

    .line 44
    new-instance v0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService$1;

    const-string v1, "SMDataCountThread"

    invoke-direct {v0, p0, v1}, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService$1;-><init>(Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->dataCountThread:Ljava/lang/Thread;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->pause:Z

    return v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 132
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 133
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->dataCountThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->pause:Z

    .line 141
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const-string v15, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, "pkgName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "SM:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "key":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/tencent/wstt/gt/manager/ClientManager;->getGlobalClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v3

    .line 70
    .local v3, "globalClient":Lcom/tencent/wstt/gt/manager/Client;
    const-string v15, "SM"

    invoke-virtual {v3, v5, v15}, Lcom/tencent/wstt/gt/manager/Client;->registerOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v15, 0x1

    invoke-virtual {v3, v5, v15}, Lcom/tencent/wstt/gt/manager/Client;->setOutparaMonitor(Ljava/lang/String;Z)V

    .line 72
    invoke-virtual {v3, v5}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v15

    .line 73
    const/16 v16, 0xc

    const-string v17, ""

    const-string v18, ""

    .line 72
    invoke-static/range {v15 .. v18}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getOpHandler()Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getOpEditHandler()Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->pause:Z

    if-eqz v15, :cond_0

    .line 127
    return-void

    .line 88
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/wstt/gt/plugin/smtools/SMDataService;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v14

    .line 90
    .local v14, "x":I
    const/16 v15, 0x3c

    if-le v14, v15, :cond_3

    .line 91
    div-int/lit8 v7, v14, 0x3c

    .line 92
    .local v7, "n":I
    rem-int/lit8 v13, v14, 0x3c

    .line 93
    .local v13, "v":I
    invoke-static {v5}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getProfilerData(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v12

    .line 94
    .local v12, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v12}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v6

    .line 96
    .local v6, "len":I
    move v8, v7

    .line 101
    .local v8, "p":I
    if-le v7, v6, :cond_1

    .line 103
    const/16 v15, 0x3c

    invoke-virtual {v3, v5, v15}, Lcom/tencent/wstt/gt/manager/Client;->setOutPara(Ljava/lang/String;I)V

    .line 122
    .end local v6    # "len":I
    .end local v7    # "n":I
    .end local v8    # "p":I
    .end local v12    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .end local v13    # "v":I
    :goto_1
    const-wide/16 v16, 0x3e8

    :try_start_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "len":I
    .restart local v7    # "n":I
    .restart local v8    # "p":I
    .restart local v12    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .restart local v13    # "v":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v8, :cond_2

    .line 112
    invoke-virtual {v3, v5, v13}, Lcom/tencent/wstt/gt/manager/Client;->setOutPara(Ljava/lang/String;I)V

    goto :goto_1

    .line 109
    :cond_2
    add-int/lit8 v15, v6, -0x1

    sub-int/2addr v15, v4

    invoke-virtual {v12, v15}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecord(I)Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    move-result-object v11

    .line 110
    .local v11, "te":Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v11, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->reduce:J

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 116
    .end local v4    # "i":I
    .end local v6    # "len":I
    .end local v7    # "n":I
    .end local v8    # "p":I
    .end local v11    # "te":Lcom/tencent/wstt/gt/ui/model/TimeEntry;
    .end local v12    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    .end local v13    # "v":I
    :cond_3
    rsub-int/lit8 v10, v14, 0x3c

    .line 117
    .local v10, "sm":I
    invoke-virtual {v3, v5, v10}, Lcom/tencent/wstt/gt/manager/Client;->setOutPara(Ljava/lang/String;I)V

    goto :goto_1
.end method
