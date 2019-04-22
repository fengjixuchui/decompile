.class Lcom/tencent/wstt/gt/manager/OpWarningManager$1;
.super Ljava/lang/Object;
.source "OpWarningManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/manager/OpWarningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/manager/OpWarningManager;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/manager/OpWarningManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/manager/OpWarningManager$1;->this$0:Lcom/tencent/wstt/gt/manager/OpWarningManager;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 78
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/wstt/gt/manager/OpWarningManager$1;->this$0:Lcom/tencent/wstt/gt/manager/OpWarningManager;

    # getter for: Lcom/tencent/wstt/gt/manager/OpWarningManager;->started:Z
    invoke-static {v1}, Lcom/tencent/wstt/gt/manager/OpWarningManager;->access$0(Lcom/tencent/wstt/gt/manager/OpWarningManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    :goto_1
    return-void

    .line 80
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/wstt/gt/manager/OpWarningManager$1;->this$0:Lcom/tencent/wstt/gt/manager/OpWarningManager;

    # getter for: Lcom/tencent/wstt/gt/manager/OpWarningManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v1}, Lcom/tencent/wstt/gt/manager/OpWarningManager;->access$1(Lcom/tencent/wstt/gt/manager/OpWarningManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/wstt/gt/ui/model/WarningEntry;

    .line 81
    .local v13, "e":Lcom/tencent/wstt/gt/ui/model/WarningEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/wstt/gt/manager/OpWarningManager$1;->this$0:Lcom/tencent/wstt/gt/manager/OpWarningManager;

    # getter for: Lcom/tencent/wstt/gt/manager/OpWarningManager;->started:Z
    invoke-static {v1}, Lcom/tencent/wstt/gt/manager/OpWarningManager;->access$0(Lcom/tencent/wstt/gt/manager/OpWarningManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/wstt/gt/manager/OpWarningManager$1;->this$0:Lcom/tencent/wstt/gt/manager/OpWarningManager;

    # getter for: Lcom/tencent/wstt/gt/manager/OpWarningManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v1}, Lcom/tencent/wstt/gt/manager/OpWarningManager;->access$1(Lcom/tencent/wstt/gt/manager/OpWarningManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 111
    .end local v13    # "e":Lcom/tencent/wstt/gt/ui/model/WarningEntry;
    :catch_0
    move-exception v13

    .line 112
    .local v13, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 86
    .local v13, "e":Lcom/tencent/wstt/gt/ui/model/WarningEntry;
    :cond_1
    :try_start_1
    iget-object v0, v13, Lcom/tencent/wstt/gt/ui/model/WarningEntry;->src:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-object/from16 v16, v0

    .line 87
    .local v16, "src":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getParent()Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getParent()Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v1

    instance-of v1, v1, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    if-nez v1, :cond_4

    .line 91
    :cond_2
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getExkey()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(I)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v12

    .line 92
    .local v12, "client":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 93
    .local v15, "ov_name":Ljava/lang/String;
    const-string v17, "Release"

    .line 94
    .local v17, "version_type":Ljava/lang/String;
    const/4 v1, 0x1

    sget-byte v2, Lcom/tencent/wstt/gt/GTConfig;->VERSION_TYPE:B

    if-ne v1, v2, :cond_3

    .line 95
    const-string v17, "Develop"

    .line 98
    :cond_3
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 99
    const v3, 0x7f02003b

    const-string v4, "GT"

    const/4 v5, 0x0

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Version: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 101
    sget-object v7, Lcom/tencent/wstt/gt/GTConfig;->VERSION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 100
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " exceeds the threshold"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    const-class v8, Lcom/tencent/wstt/gt/activity/GTMainActivity;

    .line 103
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 104
    const/4 v11, 0x2

    .line 98
    invoke-static/range {v1 .. v11}, Lcom/tencent/wstt/gt/utils/NotificationHelper;->genNotification(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;ZZI)Landroid/app/Notification;

    move-result-object v1

    .line 97
    sput-object v1, Lcom/tencent/wstt/gt/activity/GTMainActivity;->notification:Landroid/app/Notification;

    .line 106
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    .line 107
    sget-object v3, Lcom/tencent/wstt/gt/activity/GTMainActivity;->notification:Landroid/app/Notification;

    .line 106
    invoke-static {v1, v2, v3}, Lcom/tencent/wstt/gt/utils/NotificationHelper;->notify(Landroid/content/Context;ILandroid/app/Notification;)V

    .line 108
    invoke-virtual {v12, v15}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v14

    .line 109
    .local v14, "ov":Lcom/tencent/wstt/gt/OutPara;
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lcom/tencent/wstt/gt/OutPara;->setAlert(Z)V

    .line 110
    sget-object v1, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/wstt/gt/service/GTServiceController;->show_alert:Z

    goto/16 :goto_0

    .line 89
    .end local v12    # "client":Lcom/tencent/wstt/gt/manager/Client;
    .end local v14    # "ov":Lcom/tencent/wstt/gt/OutPara;
    .end local v15    # "ov_name":Ljava/lang/String;
    .end local v17    # "version_type":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getParent()Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v16

    .end local v16    # "src":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    check-cast v16, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v16    # "src":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    goto/16 :goto_2
.end method
