.class Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;
.super Ljava/util/TimerTask;
.source "GTBatteryEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadPowerTimerTask"
.end annotation


# instance fields
.field f:Ljava/io/File;

.field f2:Ljava/io/File;

.field isHuawei:Z

.field isLGg3:Z

.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 358
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    .line 357
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 351
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/battery/uevent"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->f:Ljava/io/File;

    .line 353
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/Battery/uevent"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->f2:Ljava/io/File;

    .line 354
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->isHuawei:Z

    .line 355
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->isLGg3:Z

    .line 359
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->f2:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->f2:Ljava/io/File;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->f:Ljava/io/File;

    .line 363
    iput-boolean v3, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->isHuawei:Z

    .line 366
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getHardware()Ljava/lang/String;

    move-result-object v0

    const-string v1, "g3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iput-boolean v3, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->isLGg3:Z

    .line 371
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 376
    const/4 v4, 0x0

    .line 378
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->f:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 379
    .local v10, "fr":Ljava/io/FileReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v5, "br":Ljava/io/BufferedReader;
    :try_start_1
    const-string v13, ""

    .line 381
    .local v13, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    if-nez v13, :cond_1

    .line 485
    invoke-static {v5}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    move-object v4, v5

    .line 487
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v10    # "fr":Ljava/io/FileReader;
    .end local v13    # "line":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :goto_0
    return-void

    .line 383
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    .restart local v13    # "line":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 384
    .local v9, "found":I
    :try_start_2
    const-string v18, "POWER_SUPPLY_VOLTAGE_NOW="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$0(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->U:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$1(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .line 389
    .local v16, "volt":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v18

    const-string v19, "Volt"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "mV"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/tencent/wstt/gt/manager/Client;->setOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v18

    const-string v19, "Volt"

    invoke-virtual/range {v18 .. v19}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v14

    .line 392
    .local v14, "op":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v14, :cond_2

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->U:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$1(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-static {v14, v0, v1, v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V

    .line 397
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 399
    .end local v14    # "op":Lcom/tencent/wstt/gt/OutPara;
    .end local v16    # "volt":J
    :cond_3
    const-string v18, "POWER_SUPPLY_CURRENT_NOW="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$3(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->I:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$4(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 404
    .local v6, "current":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->isHuawei:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 406
    neg-long v6, v6

    .line 416
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v18

    const-string v19, "Current"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "mA"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/tencent/wstt/gt/manager/Client;->setOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v18

    const-string v19, "Current"

    invoke-virtual/range {v18 .. v19}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v14

    .line 419
    .restart local v14    # "op":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v14, :cond_4

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->I:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$4(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v14, v0, v6, v7}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V

    .line 424
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 426
    .end local v6    # "current":J
    .end local v14    # "op":Lcom/tencent/wstt/gt/OutPara;
    :cond_5
    const-string v18, "POWER_SUPPLY_CAPACITY="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->POW:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$5(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v12

    .line 429
    .local v12, "lastBattery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$6(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;Ljava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->POW:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$5(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->startBattry:J
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$7(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)J

    move-result-wide v18

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_6

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v22, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->startBattry:J
    invoke-static/range {v22 .. v22}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$7(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)J

    move-result-wide v22

    sub-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "s"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$8(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;Ljava/lang/String;)V

    .line 435
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v19, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->POW:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$5(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "% | -1% time:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v19, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->lastBatteryChangeTime:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$9(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 436
    .local v15, "tempValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v18

    const-string v19, "Power"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/tencent/wstt/gt/manager/Client;->setOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v18, "Battery"

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/tencent/wstt/gt/api/base/GTLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v18

    const-string v19, "Power"

    invoke-virtual/range {v18 .. v19}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v14

    .line 440
    .restart local v14    # "op":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v14, :cond_6

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->POW:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$5(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-static {v14, v15, v0, v1}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V

    .line 446
    .end local v14    # "op":Lcom/tencent/wstt/gt/OutPara;
    .end local v15    # "tempValue":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$10(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;J)V

    .line 449
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v18

    const-string v19, "Power"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v21, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->POW:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$5(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "% | -1% time:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v21, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->lastBatteryChangeTime:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$9(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/tencent/wstt/gt/manager/Client;->setOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    add-int/lit8 v9, v9, 0x1

    .line 452
    .end local v12    # "lastBattery":Ljava/lang/String;
    :cond_8
    const-string v18, "POWER_SUPPLY_TEMP="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$11(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->TEMP:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$12(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 456
    .local v11, "iTemp":I
    div-int/lit8 v11, v11, 0xa

    .line 457
    const/16 v18, -0x111

    move/from16 v0, v18

    if-le v11, v0, :cond_9

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "\u2103"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$11(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;Ljava/lang/String;)V

    .line 462
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v18

    const-string v19, "Temperature"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v20, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->TEMP:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$12(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/tencent/wstt/gt/manager/Client;->setOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->globalClient:Lcom/tencent/wstt/gt/manager/Client;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v18

    const-string v19, "Temperature"

    invoke-virtual/range {v18 .. v19}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v14

    .line 465
    .restart local v14    # "op":Lcom/tencent/wstt/gt/OutPara;
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->INT_TEMP:I
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$13(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)I

    move-result v18

    move/from16 v0, v18

    if-eq v11, v0, :cond_a

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->TEMP:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$12(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v18

    int-to-long v0, v11

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v14, v0, v1, v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V

    .line 468
    const-string v18, "Battery"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v19, v0

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->TEMP:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$12(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tencent/wstt/gt/api/base/GTLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->access$14(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 472
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 474
    .end local v11    # "iTemp":I
    .end local v14    # "op":Lcom/tencent/wstt/gt/OutPara;
    :cond_b
    const/16 v18, 0x4

    move/from16 v0, v18

    if-lt v9, v0, :cond_0

    .line 485
    invoke-static {v5}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    move-object v4, v5

    .line 476
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 408
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "current":J
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->isLGg3:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 410
    const/16 v18, 0x1

    shr-long v6, v6, v18

    .line 411
    goto/16 :goto_1

    .line 414
    :cond_d
    const-wide/16 v18, 0x3e8

    div-long v6, v6, v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 480
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "current":J
    .end local v9    # "found":I
    .end local v10    # "fr":Ljava/io/FileReader;
    .end local v13    # "line":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    .line 481
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine$ReadPowerTimerTask;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->doStop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 485
    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto/16 :goto_0

    .line 484
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 485
    :goto_3
    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 486
    throw v18

    .line 484
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v18

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 480
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method
