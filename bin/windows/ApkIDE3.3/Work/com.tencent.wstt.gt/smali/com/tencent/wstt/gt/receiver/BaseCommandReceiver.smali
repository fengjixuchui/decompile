.class public Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseCommandReceiver.java"


# static fields
.field public static final ACTION_END_TEST:Ljava/lang/String; = "com.tencent.wstt.gt.baseCommand.endTest"

.field public static final ACTION_EXIT_GT:Ljava/lang/String; = "com.tencent.wstt.gt.baseCommand.exitGT"

.field public static final ACTION_SAMPLE:Ljava/lang/String; = "com.tencent.wstt.gt.baseCommand.sampleData"

.field public static final ACTION_START_TEST:Ljava/lang/String; = "com.tencent.wstt.gt.baseCommand.startTest"

.field public static final INTENT_KEY_PID:Ljava/lang/String; = "procId"

.field public static final INTENT_KEY_PNAME:Ljava/lang/String; = "pkgName"

.field public static final INTENT_KEY_PVERNAME:Ljava/lang/String; = "verName"

.field public static final INTENT_KEY_SAVE_DESC:Ljava/lang/String; = "desc"

.field public static final INTENT_KEY_SAVE_FOLDER:Ljava/lang/String; = "saveFolderName"

.field public static final TAG:Ljava/lang/String; = "BaseCommandReceiver"

.field private static pid:I

.field private static pkgName:Ljava/lang/String;

.field private static verName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const/4 v0, -0x1

    sput v0, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    .line 63
    sput-object v1, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    .line 64
    sput-object v1, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->verName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 200
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 74
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v10, "com.tencent.wstt.gt.baseCommand.startTest"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 76
    const-string v10, "pkgName"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    .line 77
    const-string v10, "verName"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->verName:Ljava/lang/String;

    .line 78
    const-string v10, "procId"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    .line 79
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget-object v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->verName:Ljava/lang/String;

    sget v12, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->startProcTest(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v10, "com.tencent.wstt.gt.baseCommand.sampleData"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 84
    const-string v10, "pss"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 85
    .local v7, "startMem":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_3

    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 87
    const/4 v10, 0x1

    if-ne v7, v10, :cond_9

    .line 89
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    const-string v12, "pss"

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->startSample(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    :cond_3
    :goto_1
    const-string v10, "pri"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 99
    .local v9, "startPri":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 101
    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 103
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    const-string v12, "pri"

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->startSample(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    :cond_4
    :goto_2
    const-string v10, "cpu"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 113
    .local v4, "startCpu":I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_5

    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 115
    const/4 v10, 0x1

    if-ne v4, v10, :cond_b

    .line 117
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    const-string v12, "cpu"

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->startSample(Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    :cond_5
    :goto_3
    const-string v10, "jif"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 127
    .local v6, "startJif":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_6

    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 129
    const/4 v10, 0x1

    if-ne v6, v10, :cond_c

    .line 131
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    const-string v12, "jif"

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->startSample(Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    :cond_6
    :goto_4
    const-string v10, "net"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 141
    .local v8, "startNet":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_7

    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 143
    const/4 v10, 0x1

    if-ne v8, v10, :cond_d

    .line 145
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    const-string v12, "net"

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->startSample(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    :cond_7
    :goto_5
    const-string v10, "fps"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 155
    .local v5, "startFps":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_8

    .line 157
    const/4 v10, 0x1

    if-ne v5, v10, :cond_e

    .line 159
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    const-string v12, "fps"

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->startSample(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    :cond_8
    :goto_6
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getAUTHandler()Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getOpHandler()Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getOpEditHandler()Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 91
    .end local v4    # "startCpu":I
    .end local v5    # "startFps":I
    .end local v6    # "startJif":I
    .end local v8    # "startNet":I
    .end local v9    # "startPri":I
    :cond_9
    if-nez v7, :cond_3

    .line 93
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    const-string v12, "pss"

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->stopSample(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 105
    .restart local v9    # "startPri":I
    :cond_a
    if-nez v9, :cond_4

    .line 107
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    const-string v12, "pri"

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->stopSample(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 119
    .restart local v4    # "startCpu":I
    :cond_b
    if-nez v4, :cond_5

    .line 121
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    const-string v12, "cpu"

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->stopSample(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 133
    .restart local v6    # "startJif":I
    :cond_c
    if-nez v6, :cond_6

    .line 135
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    const-string v12, "jif"

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->stopSample(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 147
    .restart local v8    # "startNet":I
    :cond_d
    if-nez v8, :cond_7

    .line 149
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    const-string v12, "net"

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->stopSample(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5

    .line 161
    .restart local v5    # "startFps":I
    :cond_e
    if-nez v5, :cond_8

    .line 163
    sget-object v10, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pkgName:Ljava/lang/String;

    sget v11, Lcom/tencent/wstt/gt/receiver/BaseCommandReceiver;->pid:I

    const-string v12, "fps"

    invoke-static {v10, v11, v12}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->stopSample(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_6

    .line 172
    .end local v4    # "startCpu":I
    .end local v5    # "startFps":I
    .end local v6    # "startJif":I
    .end local v7    # "startMem":I
    .end local v8    # "startNet":I
    .end local v9    # "startPri":I
    :cond_f
    const-string v10, "com.tencent.wstt.gt.baseCommand.endTest"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 174
    const-string v10, "saveFolderName"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "folderName":Ljava/lang/String;
    const-string v10, "desc"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "desc":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-static {v3, v1, v10}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->endGlobalTest(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 179
    .end local v1    # "desc":Ljava/lang/String;
    .end local v3    # "folderName":Ljava/lang/String;
    :cond_10
    const-string v10, "com.tencent.wstt.gt.baseCommand.exitGT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 188
    :try_start_2
    invoke-static {}, Lcom/tencent/wstt/gt/autotest/GTAutoTestInternal;->exitGT()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 190
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method
