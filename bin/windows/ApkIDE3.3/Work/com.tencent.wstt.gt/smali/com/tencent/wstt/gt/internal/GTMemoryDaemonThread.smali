.class public Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;
.super Lcom/tencent/wstt/gt/internal/GTDaemonThread;
.source "GTMemoryDaemonThread.java"


# static fields
.field public static final key:Ljava/lang/String; = "MEM_DAEMON"

.field public static final secondInterval:I = 0x2bf20

.field public static final secondLevelLimit:I = 0x6ddd0

.field public static final singleLimit:I = 0x249f0

.field public static final thirdInterval:I = 0x493e0

.field public static final thirdLevelLimit:I = 0x61a80

.field public static final topInterval:I = 0xea60

.field public static final topLevelLimit:I = 0x7a120


# instance fields
.field handler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

.field private isCrossSecondLevel:Z

.field private isCrossThirdLevel:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/tencent/wstt/gt/internal/GTDaemonThread;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->isCrossSecondLevel:Z

    .line 61
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->isCrossThirdLevel:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->handler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->setName(Ljava/lang/String;)V

    .line 69
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->curInterval:J

    .line 70
    sget-object v0, Lcom/tencent/wstt/gt/GTApp;->daemonHandler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    iput-object v0, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->handler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    .line 71
    return-void
.end method

.method private validSecendLimit(I)Z
    .locals 6
    .param p1, "curSize"    # I

    .prologue
    const v4, 0x6ddd0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 147
    if-lt p1, v4, :cond_1

    const v3, 0x7a120

    if-ge p1, v3, :cond_1

    iget-boolean v3, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->isCrossSecondLevel:Z

    if-nez v3, :cond_1

    .line 148
    sget-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/tencent/wstt/gt/api/base/GTTime;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    :cond_0
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->isCrossSecondLevel:Z

    .line 153
    iget-object v3, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->handler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 154
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->handler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    invoke-virtual {v2, v0}, Lcom/tencent/wstt/gt/internal/DaemonHandler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->curInterval:J

    .line 169
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return v1

    .line 160
    :cond_1
    if-ge p1, v4, :cond_3

    .line 161
    const v3, 0x61a80

    if-lt p1, v3, :cond_3

    .line 162
    sget-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/tencent/wstt/gt/api/base/GTTime;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    :cond_2
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->isCrossSecondLevel:Z

    .line 166
    const-wide/32 v4, 0x2bf20

    iput-wide v4, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->curInterval:J

    :cond_3
    move v1, v2

    .line 169
    goto :goto_0
.end method

.method private validSingleLimit(ILcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V
    .locals 5
    .param p1, "curSize"    # I
    .param p2, "tte"    # Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .prologue
    .line 199
    const v3, 0x249f0

    if-lt p1, v3, :cond_0

    sget-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-eqz v3, :cond_0

    .line 202
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v3

    invoke-virtual {p2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getExkey()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(I)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 203
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {p2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v2

    .line 204
    .local v2, "op":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->isMonitor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    .line 209
    iget-object v3, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->handler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 210
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    iget-object v3, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->handler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    invoke-virtual {v3, v1}, Lcom/tencent/wstt/gt/internal/DaemonHandler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    .end local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "op":Lcom/tencent/wstt/gt/OutPara;
    :cond_0
    return-void
.end method

.method private validThirdLimit(I)Z
    .locals 6
    .param p1, "curSize"    # I

    .prologue
    const v4, 0x61a80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    if-lt p1, v4, :cond_1

    const v3, 0x6ddd0

    if-ge p1, v3, :cond_1

    iget-boolean v3, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->isCrossThirdLevel:Z

    if-nez v3, :cond_1

    .line 175
    sget-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/tencent/wstt/gt/api/base/GTTime;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    :cond_0
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->isCrossThirdLevel:Z

    .line 180
    iget-object v2, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->handler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 181
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->handler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    invoke-virtual {v2, v0}, Lcom/tencent/wstt/gt/internal/DaemonHandler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    const-wide/32 v2, 0x2bf20

    iput-wide v2, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->curInterval:J

    .line 194
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return v1

    .line 187
    :cond_1
    if-ge p1, v4, :cond_3

    .line 188
    sget-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/tencent/wstt/gt/api/base/GTTime;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    :cond_2
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->isCrossThirdLevel:Z

    .line 192
    const-wide/32 v4, 0x493e0

    iput-wide v4, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->curInterval:J

    :cond_3
    move v1, v2

    .line 194
    goto :goto_0
.end method

.method private validTopLimit(I)Z
    .locals 4
    .param p1, "curSize"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 129
    const v3, 0x7a120

    if-lt p1, v3, :cond_1

    sget-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/tencent/wstt/gt/api/base/GTTime;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getOpHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    invoke-static {}, Lcom/tencent/wstt/gt/api/base/GTTime;->disable()V

    .line 136
    iget-object v2, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->handler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 137
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->handler:Lcom/tencent/wstt/gt/internal/DaemonHandler;

    invoke-virtual {v2, v0}, Lcom/tencent/wstt/gt/internal/DaemonHandler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method doTask()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 75
    const/4 v4, 0x0

    .line 77
    .local v4, "total":I
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getAllProfilerData()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    .line 78
    .local v1, "opPerfDatas":[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    array-length v8, v1

    move v6, v7

    :goto_0
    if-lt v6, v8, :cond_1

    .line 96
    invoke-direct {p0, v4}, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->validTopLimit(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 125
    :cond_0
    :goto_1
    return-void

    .line 78
    :cond_1
    aget-object v5, v1, v6

    .line 80
    .local v5, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    const/4 v2, 0x0

    .line 81
    .local v2, "single":I
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 83
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    .line 85
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v9

    array-length v9, v9

    mul-int/2addr v9, v2

    add-int/2addr v4, v9

    .line 93
    :goto_2
    invoke-direct {p0, v2, v5}, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->validSingleLimit(ILcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 78
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    .line 90
    add-int/2addr v4, v2

    goto :goto_2

    .line 101
    .end local v2    # "single":I
    .end local v5    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_3
    invoke-static {}, Lcom/tencent/wstt/gt/api/base/GTTime;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 103
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->getAllGroup()Ljava/util/List;

    move-result-object v3

    .line 104
    .local v3, "timeGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 114
    .end local v3    # "timeGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;>;"
    :cond_5
    invoke-direct {p0, v4}, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->validTopLimit(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    invoke-direct {p0, v4}, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->validSecendLimit(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    invoke-direct {p0, v4}, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonThread;->validThirdLimit(I)Z

    goto :goto_1

    .line 104
    .restart local v3    # "timeGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;

    .line 106
    .local v0, "gte":Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/GroupTimeEntry;->entrys()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 108
    .restart local v5    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    .line 109
    .restart local v2    # "single":I
    add-int/2addr v4, v2

    goto :goto_3
.end method
