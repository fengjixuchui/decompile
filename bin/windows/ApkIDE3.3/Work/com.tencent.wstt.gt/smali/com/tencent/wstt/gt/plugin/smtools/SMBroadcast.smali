.class public Lcom/tencent/wstt/gt/plugin/smtools/SMBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "SMBroadcast.java"


# static fields
.field public static final ACTION_CHECK:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.sm.check"

.field public static final ACTION_END_TEST:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.sm.endTest"

.field public static final ACTION_MODIFY:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.sm.modify"

.field public static final ACTION_RESTART:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.sm.restart"

.field public static final ACTION_RESUME:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.sm.resume"

.field public static final ACTION_START_TEST:Ljava/lang/String; = "com.tencent.wstt.gt.plugin.sm.startTest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v12, "com.tencent.wstt.gt.plugin.sm.check"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 55
    const-string v3, "getprop debug.choreographer.skipwarning"

    .line 56
    .local v3, "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/ProcessBuilder;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "sh"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "-c"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v3, v12, v13

    invoke-direct {v5, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 57
    .local v5, "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 59
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v9

    .line 60
    .local v9, "p":Ljava/lang/Process;
    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 61
    .local v6, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 62
    .local v7, "isr":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 64
    .local v2, "br":Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 65
    const-string v12, "1"

    invoke-virtual {v8, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_2

    goto :goto_0

    .line 69
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "p":Ljava/lang/Process;
    :catch_0
    move-exception v4

    .line 70
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    :cond_3
    const-string v12, "com.tencent.wstt.gt.plugin.sm.modify"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 73
    const-string v3, "setprop debug.choreographer.skipwarning 1"

    .line 74
    .restart local v3    # "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/ProcessBuilder;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "su"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "-c"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v3, v12, v13

    invoke-direct {v5, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 75
    .restart local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 77
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 78
    :catch_1
    move-exception v4

    .line 79
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    :cond_4
    const-string v12, "com.tencent.wstt.gt.plugin.sm.resume"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 82
    const-string v3, "setprop debug.choreographer.skipwarning 30"

    .line 83
    .restart local v3    # "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/ProcessBuilder;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "su"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "-c"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v3, v12, v13

    invoke-direct {v5, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 84
    .restart local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 86
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 87
    :catch_2
    move-exception v4

    .line 88
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 90
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    :cond_5
    const-string v12, "com.tencent.wstt.gt.plugin.sm.restart"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 91
    const-string v3, "setprop ctl.restart surfaceflinger; setprop ctl.restart zygote"

    .line 92
    .restart local v3    # "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/ProcessBuilder;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "su"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "-c"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v3, v12, v13

    invoke-direct {v5, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 93
    .restart local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 95
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 96
    :catch_3
    move-exception v4

    .line 97
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 99
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    :cond_6
    const-string v12, "com.tencent.wstt.gt.plugin.sm.startTest"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 100
    const-string v12, "procName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, "procName":Ljava/lang/String;
    const/4 v10, -0x1

    .line 102
    .local v10, "pid":I
    if-eqz v11, :cond_7

    .line 104
    invoke-static {v11}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->getProcessPID(Ljava/lang/String;)I

    move-result v10

    .line 106
    :cond_7
    const/4 v12, -0x1

    if-eq v12, v10, :cond_0

    if-eqz v11, :cond_0

    .line 110
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13, v11}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->startBackgroundService(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    .end local v10    # "pid":I
    .end local v11    # "procName":Ljava/lang/String;
    :cond_8
    const-string v12, "com.tencent.wstt.gt.plugin.sm.endTest"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 112
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->stopBackgroundServiceIfRunning(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
