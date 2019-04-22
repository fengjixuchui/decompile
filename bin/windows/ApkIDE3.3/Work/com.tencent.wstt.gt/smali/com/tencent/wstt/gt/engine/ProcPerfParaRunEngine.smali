.class public Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;
.super Ljava/lang/Object;
.source "ProcPerfParaRunEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine$EngineRunnable;
    }
.end annotation


# static fields
.field private static instance:Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;


# instance fields
.field private EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;"
        }
    .end annotation
.end field

.field private enable_procPerf_ops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;"
        }
    .end annotation
.end field

.field private engineRun:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->instance:Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->enable_procPerf_ops:Ljava/util/List;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->EMPTY_LIST:Ljava/util/List;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->engineRun:Z

    return v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;)Ljava/util/List;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->getCurEnableProcPerfParas()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->enable_procPerf_ops:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;Lcom/tencent/wstt/gt/OutPara;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->getProcPerfParasValue(Lcom/tencent/wstt/gt/OutPara;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurEnableProcPerfParas()Ljava/util/List;
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
    .line 109
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/manager/ClientManager;->getAUTClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 110
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    if-nez v0, :cond_0

    .line 112
    iget-object v3, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->EMPTY_LIST:Ljava/util/List;

    .line 121
    :goto_0
    return-object v3

    .line 114
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/manager/ClientManager;->getAUTClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/manager/Client;->getAllOutParas()Ljava/util/List;

    move-result-object v2

    .line 115
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    iget-object v3, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->enable_procPerf_ops:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    iget-object v3, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->enable_procPerf_ops:Ljava/util/List;

    goto :goto_0

    .line 116
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    .line 117
    .local v1, "op":Lcom/tencent/wstt/gt/OutPara;
    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 118
    iget-object v4, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->enable_procPerf_ops:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->instance:Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;

    return-object v0
.end method

.method private getProcPerfParasValue(Lcom/tencent/wstt/gt/OutPara;)Ljava/lang/String;
    .locals 36
    .param p1, "op"    # Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 125
    const-string v30, ""

    .line 127
    .local v30, "value":Ljava/lang/String;
    :try_start_0
    sget-object v32, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v24, v0

    .line 128
    .local v24, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v24

    if-lt v5, v0, :cond_0

    .end local v5    # "i":I
    .end local v24    # "size":I
    :goto_1
    move-object/from16 v31, v30

    .line 270
    .end local v30    # "value":Ljava/lang/String;
    .local v31, "value":Ljava/lang/String;
    :goto_2
    return-object v31

    .line 130
    .end local v31    # "value":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v24    # "size":I
    .restart local v30    # "value":Ljava/lang/String;
    :cond_0
    sget-object v32, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    aget-object v32, v32, v5

    invoke-static/range {v32 .. v32}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->isProcessAlive(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_1

    .line 131
    const-string v30, ""

    .line 132
    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v32

    .line 135
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Pcp"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 136
    sget-object v34, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    aget-object v34, v34, v5

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 135
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 134
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    .line 136
    if-eqz v32, :cond_2

    .line 137
    sget-object v32, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->cpuInfoMap:Ljava/util/Map;

    .line 138
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Pcp"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 139
    sget-object v34, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    aget-object v34, v34, v5

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 138
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/tencent/wstt/gt/api/utils/CpuUtils;

    .line 141
    sget-object v33, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    aget-object v33, v33, v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 140
    invoke-virtual/range {v32 .. v33}, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->getProcessCpuUsage(I)Ljava/lang/String;

    move-result-object v30

    .line 143
    const/16 v32, 0x0

    .line 144
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    .line 143
    move-object/from16 v0, v30

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    .line 144
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    .line 143
    mul-double v32, v32, v34

    .line 142
    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    .line 145
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Double;->longValue()J

    move-result-wide v26

    .line 147
    .local v26, "tempValue":J
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V

    move-object/from16 v31, v30

    .line 148
    .end local v30    # "value":Ljava/lang/String;
    .restart local v31    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 150
    .end local v26    # "tempValue":J
    .end local v31    # "value":Ljava/lang/String;
    .restart local v30    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v32

    .line 151
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Pjif"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 152
    sget-object v34, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    aget-object v34, v34, v5

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 151
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 150
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    .line 152
    if-eqz v32, :cond_6

    .line 154
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "Pcp"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 155
    sget-object v33, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    aget-object v33, v33, v5

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 154
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 156
    .local v25, "tempCpuKey":Ljava/lang/String;
    const/4 v4, 0x0

    .line 157
    .local v4, "hasCpuObservered":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->enable_procPerf_ops:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_5

    .line 166
    :goto_3
    if-nez v4, :cond_4

    .line 168
    sget-object v32, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->cpuInfoMap:Ljava/util/Map;

    .line 169
    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/tencent/wstt/gt/api/utils/CpuUtils;

    .line 170
    sget-object v33, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    aget-object v33, v33, v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 169
    invoke-virtual/range {v32 .. v33}, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->getProcessCpuUsage(I)Ljava/lang/String;

    .line 173
    :cond_4
    sget-object v32, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->cpuInfoMap:Ljava/util/Map;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/tencent/wstt/gt/api/utils/CpuUtils;

    invoke-virtual/range {v32 .. v32}, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->getJif()J

    move-result-wide v26

    .line 174
    .restart local v26    # "tempValue":J
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    .line 175
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;J)V

    move-object/from16 v31, v30

    .line 176
    .end local v30    # "value":Ljava/lang/String;
    .restart local v31    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 157
    .end local v26    # "tempValue":J
    .end local v31    # "value":Ljava/lang/String;
    .restart local v30    # "value":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/tencent/wstt/gt/OutPara;

    .line 159
    .local v20, "opTemp":Lcom/tencent/wstt/gt/OutPara;
    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 161
    const/4 v4, 0x1

    .line 162
    goto :goto_3

    .line 177
    .end local v4    # "hasCpuObservered":Z
    .end local v20    # "opTemp":Lcom/tencent/wstt/gt/OutPara;
    .end local v25    # "tempCpuKey":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v32

    const-string v33, "Pnet"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 178
    sget-object v32, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    .line 179
    .local v22, "pName":Ljava/lang/String;
    sget-object v32, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netInfoMap:Ljava/util/Map;

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tencent/wstt/gt/api/utils/NetUtils;

    .line 182
    .local v15, "netUtils":Lcom/tencent/wstt/gt/api/utils/NetUtils;
    invoke-virtual {v15}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getP_t_add()D

    move-result-wide v8

    .line 183
    .local v8, "lastT":D
    invoke-virtual {v15}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getP_r_add()D

    move-result-wide v6

    .line 185
    .local v6, "lastR":D
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getProcessNetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 187
    invoke-virtual {v15}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getP_t_add()D

    move-result-wide v18

    .line 188
    .local v18, "nowT":D
    invoke-virtual {v15}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->getP_r_add()D

    move-result-wide v16

    .line 191
    .local v16, "nowR":D
    cmpl-double v32, v18, v8

    if-nez v32, :cond_7

    cmpl-double v32, v16, v6

    if-eqz v32, :cond_8

    :cond_7
    const-wide/16 v32, 0x0

    cmpl-double v32, v18, v32

    if-ltz v32, :cond_8

    const-wide/16 v32, 0x0

    cmpl-double v32, v16, v32

    if-ltz v32, :cond_8

    .line 192
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v34, v0

    aput-wide v34, v32, v33

    const/16 v33, 0x1

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v34, v0

    aput-wide v34, v32, v33

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;[J)V

    :cond_8
    move-object/from16 v31, v30

    .line 195
    .end local v30    # "value":Ljava/lang/String;
    .restart local v31    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 198
    .end local v6    # "lastR":D
    .end local v8    # "lastT":D
    .end local v15    # "netUtils":Lcom/tencent/wstt/gt/api/utils/NetUtils;
    .end local v16    # "nowR":D
    .end local v18    # "nowT":D
    .end local v22    # "pName":Ljava/lang/String;
    .end local v31    # "value":Ljava/lang/String;
    .restart local v30    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v32

    .line 199
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Ps"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 200
    sget-object v34, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    aget-object v34, v34, v5

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 199
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 198
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 200
    if-eqz v32, :cond_e

    .line 201
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v32

    .line 202
    sget-object v33, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    aget-object v33, v33, v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 201
    invoke-static/range {v32 .. v33}, Lcom/tencent/wstt/gt/api/utils/MemUtils;->getPSS(Landroid/content/Context;I)[J

    move-result-object v10

    .line 203
    .local v10, "long_value":[J
    const/16 v32, 0x0

    aget-wide v28, v10, v32

    .line 204
    .local v28, "tmp":J
    const/16 v32, 0x0

    const/16 v33, 0x2

    aget-wide v34, v10, v33

    aput-wide v34, v10, v32

    .line 205
    const/16 v32, 0x2

    aput-wide v28, v10, v32

    .line 206
    const/16 v21, 0x0

    .local v21, "p":I
    :goto_4
    array-length v0, v10

    move/from16 v32, v0

    move/from16 v0, v21

    move/from16 v1, v32

    if-lt v0, v1, :cond_a

    .line 220
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1, v10}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;[J)V

    move-object/from16 v31, v30

    .line 221
    .end local v30    # "value":Ljava/lang/String;
    .restart local v31    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 207
    .end local v31    # "value":Ljava/lang/String;
    .restart local v30    # "value":Ljava/lang/String;
    :cond_a
    const/16 v32, 0x2

    move/from16 v0, v21

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 208
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, " | Native:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 209
    new-instance v33, Ljava/lang/StringBuilder;

    aget-wide v34, v10, v21

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "KB"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 208
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 206
    :cond_b
    :goto_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 210
    :cond_c
    const/16 v32, 0x1

    move/from16 v0, v21

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 211
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, " | Dalvik:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 212
    new-instance v33, Ljava/lang/StringBuilder;

    aget-wide v34, v10, v21

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "KB"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 211
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 214
    goto :goto_5

    :cond_d
    if-nez v21, :cond_b

    .line 215
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "Total:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 216
    new-instance v33, Ljava/lang/StringBuilder;

    aget-wide v34, v10, v21

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "KB"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 215
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto :goto_5

    .line 222
    .end local v10    # "long_value":[J
    .end local v21    # "p":I
    .end local v28    # "tmp":J
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v32

    .line 223
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Pr"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 224
    sget-object v34, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    aget-object v34, v34, v5

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 223
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 222
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 224
    if-eqz v32, :cond_13

    .line 225
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v32

    .line 226
    sget-object v33, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    aget-object v33, v33, v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 225
    invoke-static/range {v32 .. v33}, Lcom/tencent/wstt/gt/api/utils/MemUtils;->getPrivDirty(Landroid/content/Context;I)[J

    move-result-object v11

    .line 228
    .local v11, "long_value1":[J
    const/16 v32, 0x0

    aget-wide v28, v11, v32

    .line 229
    .restart local v28    # "tmp":J
    const/16 v32, 0x0

    const/16 v33, 0x2

    aget-wide v34, v11, v33

    aput-wide v34, v11, v32

    .line 230
    const/16 v32, 0x2

    aput-wide v28, v11, v32

    .line 231
    const/16 v23, 0x0

    .local v23, "pos":I
    :goto_6
    array-length v0, v11

    move/from16 v32, v0

    move/from16 v0, v23

    move/from16 v1, v32

    if-lt v0, v1, :cond_f

    .line 245
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1, v11}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;[J)V

    move-object/from16 v31, v30

    .line 246
    .end local v30    # "value":Ljava/lang/String;
    .restart local v31    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 233
    .end local v31    # "value":Ljava/lang/String;
    .restart local v30    # "value":Ljava/lang/String;
    :cond_f
    const/16 v32, 0x2

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 234
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, " | Native:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 235
    aget-wide v34, v11, v23

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 234
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 231
    :cond_10
    :goto_7
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 236
    :cond_11
    const/16 v32, 0x1

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    .line 237
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, " | Dalvik:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 238
    aget-wide v34, v11, v23

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 237
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 240
    goto :goto_7

    :cond_12
    if-nez v23, :cond_10

    .line 241
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "Total:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 242
    aget-wide v34, v11, v23

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 241
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto :goto_7

    .line 247
    .end local v11    # "long_value1":[J
    .end local v23    # "pos":I
    .end local v28    # "tmp":J
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v32

    .line 248
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "hp"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 249
    sget-object v34, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    aget-object v34, v34, v5

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 248
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 247
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 249
    if-eqz v32, :cond_14

    .line 250
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/MemUtils;->getHeapDalvik()[J

    move-result-object v13

    .line 251
    .local v13, "longhp_value":[J
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/MemUtils;->getHeapNative()[J

    move-result-object v14

    .line 252
    .local v14, "longhp_value2":[J
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v12, v0, [J

    .line 254
    .local v12, "long_value3":[J
    const/16 v32, 0x0

    const/16 v33, 0x1

    aget-wide v34, v14, v33

    aput-wide v34, v12, v32

    .line 255
    const/16 v32, 0x1

    const/16 v33, 0x1

    aget-wide v34, v13, v33

    aput-wide v34, v12, v32

    .line 256
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "Native:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 257
    new-instance v33, Ljava/lang/StringBuilder;

    const/16 v34, 0x1

    aget-wide v34, v14, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 258
    const/16 v34, 0x0

    aget-wide v34, v14, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 257
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 256
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 259
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, " | Dalvik:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 260
    new-instance v33, Ljava/lang/StringBuilder;

    const/16 v34, 0x1

    aget-wide v34, v13, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 261
    const/16 v34, 0x0

    aget-wide v34, v13, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 260
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 259
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 263
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1, v12}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->addHistory(Lcom/tencent/wstt/gt/OutPara;Ljava/lang/String;[J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v31, v30

    .line 264
    .end local v30    # "value":Ljava/lang/String;
    .restart local v31    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 128
    .end local v12    # "long_value3":[J
    .end local v13    # "longhp_value":[J
    .end local v14    # "longhp_value2":[J
    .end local v31    # "value":Ljava/lang/String;
    .restart local v30    # "value":Ljava/lang/String;
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 267
    .end local v5    # "i":I
    .end local v24    # "size":I
    :catch_0
    move-exception v32

    goto/16 :goto_1
.end method


# virtual methods
.method public declared-synchronized end()V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->engineRun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStarted()Z
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->engineRun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->engineRun:Z

    if-nez v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine$EngineRunnable;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine$EngineRunnable;-><init>(Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/wstt/gt/engine/ProcPerfParaRunEngine;->engineRun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
