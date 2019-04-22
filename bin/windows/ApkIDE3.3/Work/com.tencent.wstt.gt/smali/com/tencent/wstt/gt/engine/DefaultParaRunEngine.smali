.class public Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;
.super Ljava/lang/Object;
.source "DefaultParaRunEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$CheckSuRunnable;,
        Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$EngineRunnable;
    }
.end annotation


# instance fields
.field private client:Lcom/tencent/wstt/gt/manager/Client;

.field private enable_default_ops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;"
        }
    .end annotation
.end field

.field fpsTimer40:Ljava/util/Timer;

.field private fps_gather:Z

.field private gt_default_op_alias:[Ljava/lang/String;

.field private gt_default_op_keys:[Ljava/lang/String;

.field private hasCheckSu:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "MEM"

    aput-object v6, v5, v7

    const-string v6, "NET"

    aput-object v6, v5, v8

    const-string v6, "CPU"

    aput-object v6, v5, v9

    const-string v6, "Signal"

    aput-object v6, v5, v10

    const-string v6, "FPS"

    aput-object v6, v5, v11

    iput-object v5, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->gt_default_op_keys:[Ljava/lang/String;

    .line 49
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "MEM"

    aput-object v6, v5, v7

    const-string v6, "NET"

    aput-object v6, v5, v8

    const-string v6, "CPU"

    aput-object v6, v5, v9

    const-string v6, "SIG"

    aput-object v6, v5, v10

    const-string v6, "FPS"

    aput-object v6, v5, v11

    iput-object v5, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->gt_default_op_alias:[Ljava/lang/String;

    .line 56
    iput-boolean v7, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->fps_gather:Z

    .line 57
    iput-boolean v7, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->hasCheckSu:Z

    .line 60
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->enable_default_ops:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/tencent/wstt/gt/manager/SingleInstanceClientFactory;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/SingleInstanceClientFactory;-><init>()V

    .line 63
    .local v0, "cf":Lcom/tencent/wstt/gt/manager/ClientFactory;
    iget-object v5, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->gt_default_op_keys:[Ljava/lang/String;

    array-length v4, v5

    .line 64
    .local v4, "size":I
    new-array v2, v4, [Lcom/tencent/wstt/gt/OutPara;

    .line 65
    .local v2, "ops":[Lcom/tencent/wstt/gt/OutPara;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 72
    const-string v5, "_DEFAULT__"

    const-string v6, "_DEFAULT__"

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v2, v7}, Lcom/tencent/wstt/gt/manager/ClientFactory;->orderClient(Ljava/lang/String;I[Lcom/tencent/wstt/gt/OutPara;[Lcom/tencent/wstt/gt/InPara;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->client:Lcom/tencent/wstt/gt/manager/Client;

    .line 74
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->initDefaultOutputParamList()V

    .line 75
    return-void

    .line 66
    :cond_0
    new-instance v3, Lcom/tencent/wstt/gt/OutPara;

    invoke-direct {v3}, Lcom/tencent/wstt/gt/OutPara;-><init>()V

    .line 67
    .local v3, "para":Lcom/tencent/wstt/gt/OutPara;
    iget-object v5, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->gt_default_op_keys:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Lcom/tencent/wstt/gt/OutPara;->setKey(Ljava/lang/String;)V

    .line 68
    iget-object v5, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->gt_default_op_alias:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Lcom/tencent/wstt/gt/OutPara;->setAlias(Ljava/lang/String;)V

    .line 69
    aput-object v3, v2, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;)Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->getCurEnableDefaultOutParas()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->enable_default_ops:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;Lcom/tencent/wstt/gt/OutPara;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->refreshDefaultOutParasValue(Lcom/tencent/wstt/gt/OutPara;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->hasCheckSu:Z

    return-void
.end method

.method private getCurEnableDefaultOutParas()Ljava/util/List;
    .locals 5
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
    .line 107
    iget-object v2, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->client:Lcom/tencent/wstt/gt/manager/Client;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/manager/Client;->getAllOutParas()Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    iget-object v2, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->enable_default_ops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    iget-object v2, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->enable_default_ops:Ljava/util/List;

    return-object v2

    .line 109
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/OutPara;

    .line 110
    .local v0, "op":Lcom/tencent/wstt/gt/OutPara;
    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 111
    iget-object v3, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->enable_default_ops:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private refreshDefaultOutParasValue(Lcom/tencent/wstt/gt/OutPara;)Ljava/lang/String;
    .locals 26
    .param p1, "para"    # Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 118
    if-nez p1, :cond_1

    .line 119
    const-string v13, ""

    .line 191
    :cond_0
    :goto_0
    return-object v13

    .line 122
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "key":Ljava/lang/String;
    const-string v13, ""

    .line 124
    .local v13, "value":Ljava/lang/String;
    const/16 v21, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->gt_default_op_keys:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 126
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/MemUtils;->getMemInfo()[J

    move-result-object v10

    .line 127
    .local v10, "memInfo":[J
    invoke-static {v10}, Lcom/tencent/wstt/gt/api/utils/MemUtils;->trans2FreeAndTotalMem([J)Ljava/lang/String;

    move-result-object v13

    .line 129
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v11, v0, [J

    .line 130
    .local v11, "memInfo4UI":[J
    const/16 v21, 0x0

    const/16 v22, 0x1

    aget-wide v22, v10, v22

    const/16 v24, 0x2

    aget-wide v24, v10, v24

    add-long v22, v22, v24

    const/16 v24, 0x3

    aget-wide v24, v10, v24

    add-long v22, v22, v24

    aput-wide v22, v11, v21

    .line 131
    const/16 v21, 0x1

    const/16 v22, 0x0

    aget-wide v22, v10, v22

    aput-wide v22, v11, v21

    .line 132
    const/16 v21, 0x0

    aget-wide v22, v11, v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-static {v0, v13, v1, v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V

    goto :goto_0

    .line 133
    .end local v10    # "memInfo":[J
    .end local v11    # "memInfo4UI":[J
    :cond_2
    const/16 v21, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->gt_default_op_keys:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 136
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getT_add_wifi()D

    move-result-wide v22

    .line 137
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getT_add_3G()D

    move-result-wide v24

    .line 136
    add-double v22, v22, v24

    .line 138
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getT_add_2G()D

    move-result-wide v24

    .line 136
    add-double v8, v22, v24

    .line 139
    .local v8, "lastT":D
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getR_add_wifi()D

    move-result-wide v22

    .line 140
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getR_add_3G()D

    move-result-wide v24

    .line 139
    add-double v22, v22, v24

    .line 141
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getR_add_2G()D

    move-result-wide v24

    .line 139
    add-double v6, v22, v24

    .line 143
    .local v6, "lastR":D
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetValue()Ljava/lang/String;

    move-result-object v13

    .line 145
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getT_add_wifi()D

    move-result-wide v22

    .line 146
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getT_add_3G()D

    move-result-wide v24

    .line 145
    add-double v22, v22, v24

    .line 147
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getT_add_2G()D

    move-result-wide v24

    .line 145
    add-double v16, v22, v24

    .line 148
    .local v16, "nowT":D
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getR_add_wifi()D

    move-result-wide v22

    .line 149
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getR_add_3G()D

    move-result-wide v24

    .line 148
    add-double v22, v22, v24

    .line 150
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getR_add_2G()D

    move-result-wide v24

    .line 148
    add-double v14, v22, v24

    .line 152
    .local v14, "nowR":D
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getNetValue()Ljava/lang/String;

    move-result-object v13

    .line 154
    cmpl-double v21, v16, v8

    if-nez v21, :cond_3

    cmpl-double v21, v14, v6

    if-eqz v21, :cond_0

    .line 155
    :cond_3
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v24, v0

    aput-wide v24, v21, v22

    const/16 v22, 0x1

    double-to-long v0, v14

    move-wide/from16 v24, v0

    aput-wide v24, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v13, v1}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 157
    .end local v6    # "lastR":D
    .end local v8    # "lastT":D
    .end local v14    # "nowR":D
    .end local v16    # "nowT":D
    :cond_4
    const/16 v21, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->gt_default_op_keys:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 159
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->getCpuUsage()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "%"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 163
    const/16 v21, 0x0

    .line 164
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    .line 163
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .line 164
    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    .line 163
    mul-double v22, v22, v24

    .line 162
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    .line 164
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->longValue()J

    move-result-wide v18

    .line 165
    .local v18, "tempValue":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v13, v1, v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 166
    .end local v18    # "tempValue":J
    :cond_5
    const/16 v21, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->gt_default_op_keys:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 168
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->getWifiStrength()I

    move-result v20

    .line 169
    .local v20, "wifiData":I
    const/16 v21, -0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 170
    const/16 v20, -0xc8

    .line 172
    :cond_6
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->getDBM()I

    move-result v12

    .line 173
    .local v12, "netData":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "dbm["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/SignalUtils;->getNetType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]|"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 174
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "dbm[WIFI]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 173
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 176
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v4, v0, [J

    const/16 v21, 0x0

    int-to-long v0, v12

    move-wide/from16 v22, v0

    aput-wide v22, v4, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v4, v21

    .line 177
    .local v4, "datas":[J
    move-object/from16 v0, p1

    invoke-static {v0, v13, v4}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 178
    .end local v4    # "datas":[J
    .end local v12    # "netData":I
    .end local v20    # "wifiData":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->gt_default_op_keys:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 179
    const/16 v21, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->fps_gather:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->runFps()V

    .line 183
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0
.end method

.method private declared-synchronized runFps()V
    .locals 6

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/tencent/wstt/gt/api/utils/Env;->API:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->fps_gather:Z

    .line 199
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->hasCheckSu:Z

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$CheckSuRunnable;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$CheckSuRunnable;-><init>(Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;)V

    const-string v2, "CheckSu"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->thread:Ljava/lang/Thread;

    .line 201
    iget-object v0, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 202
    iget-object v0, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 206
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->fpsTimer40:Ljava/util/Timer;

    .line 207
    iget-object v0, p0, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;->fpsTimer40:Ljava/util/Timer;

    new-instance v1, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/api/utils/FpsTimerTask;-><init>()V

    const-wide/16 v2, 0x0

    sget v4, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond_FPS:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$EngineRunnable;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine$EngineRunnable;-><init>(Lcom/tencent/wstt/gt/engine/DefaultParaRunEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method
