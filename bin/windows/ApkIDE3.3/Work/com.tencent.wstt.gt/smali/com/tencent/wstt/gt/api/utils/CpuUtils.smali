.class public Lcom/tencent/wstt/gt/api/utils/CpuUtils;
.super Ljava/lang/Object;
.source "CpuUtils.java"


# static fields
.field public static cpuInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wstt/gt/api/utils/CpuUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static initCpu:Z

.field private static o_cpu:D

.field private static o_idle:D


# instance fields
.field private aCpu:D

.field private o_aCpu:D

.field private o_pCpu:D

.field private pCpu:D

.field private p_jif:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->cpuInfoMap:Ljava/util/Map;

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->initCpu:Z

    .line 46
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_cpu:D

    .line 47
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_idle:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->p_jif:D

    .line 50
    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->pCpu:D

    .line 51
    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->aCpu:D

    .line 52
    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_pCpu:D

    .line 53
    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_aCpu:D

    .line 290
    invoke-direct {p0}, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->initCpuData()V

    .line 291
    return-void
.end method

.method public static getCpuUsage()D
    .locals 20

    .prologue
    .line 70
    const-wide/16 v10, 0x0

    .line 71
    .local v10, "usage":D
    sget-boolean v9, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->initCpu:Z

    if-eqz v9, :cond_0

    .line 72
    const/4 v9, 0x0

    sput-boolean v9, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->initCpu:Z

    .line 73
    const/4 v6, 0x0

    .line 75
    .local v6, "reader":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v9, "/proc/stat"

    .line 76
    const-string v12, "r"

    .line 75
    invoke-direct {v7, v9, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .local v7, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "load":Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "toks":[Ljava/lang/String;
    const/4 v9, 0x5

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    sput-wide v12, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_idle:D

    .line 81
    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 82
    const/4 v9, 0x3

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 81
    add-double/2addr v12, v14

    .line 83
    const/4 v9, 0x4

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 81
    add-double/2addr v12, v14

    .line 84
    const/4 v9, 0x6

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 81
    add-double/2addr v12, v14

    .line 85
    const/16 v9, 0x8

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 81
    add-double/2addr v12, v14

    .line 86
    const/4 v9, 0x7

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 81
    add-double/2addr v12, v14

    sput-wide v12, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_cpu:D
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 93
    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    move-object v6, v7

    .line 136
    .end local v5    # "load":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .end local v8    # "toks":[Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    :goto_0
    return-wide v10

    .line 88
    :catch_0
    move-exception v4

    .line 89
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    goto :goto_0

    .line 92
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 93
    :goto_2
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    .line 94
    throw v9

    .line 96
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    :cond_0
    const/4 v6, 0x0

    .line 98
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    :try_start_3
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v9, "/proc/stat"

    const-string v12, "r"

    invoke-direct {v7, v9, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 101
    .restart local v5    # "load":Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 102
    .restart local v8    # "toks":[Ljava/lang/String;
    const/4 v9, 0x5

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 103
    .local v2, "c_idle":D
    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 104
    const/4 v9, 0x3

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 103
    add-double/2addr v12, v14

    .line 105
    const/4 v9, 0x4

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 103
    add-double/2addr v12, v14

    .line 106
    const/4 v9, 0x6

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 103
    add-double/2addr v12, v14

    .line 107
    const/16 v9, 0x8

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 103
    add-double/2addr v12, v14

    .line 108
    const/4 v9, 0x7

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 103
    add-double v0, v12, v14

    .line 109
    .local v0, "c_cpu":D
    const-wide/16 v12, 0x0

    add-double v14, v0, v2

    sget-wide v16, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_cpu:D

    sget-wide v18, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_idle:D

    add-double v16, v16, v18

    sub-double v14, v14, v16

    cmpl-double v9, v12, v14

    if-eqz v9, :cond_1

    .line 112
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    sget-wide v14, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_cpu:D

    sub-double v14, v0, v14

    mul-double/2addr v12, v14

    .line 113
    add-double v14, v0, v2

    sget-wide v16, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_cpu:D

    sget-wide v18, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_idle:D

    add-double v16, v16, v18

    sub-double v14, v14, v16

    const/4 v9, 0x2

    .line 112
    invoke-static {v12, v13, v14, v15, v9}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v10

    .line 115
    const-wide/16 v12, 0x0

    cmpg-double v9, v10, v12

    if-gez v9, :cond_2

    .line 116
    const-wide/16 v10, 0x0

    .line 128
    :cond_1
    :goto_3
    sput-wide v0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_cpu:D

    .line 129
    sput-wide v2, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_idle:D
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 133
    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 118
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :cond_2
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_1

    .line 120
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    goto :goto_3

    .line 130
    .end local v0    # "c_cpu":D
    .end local v2    # "c_idle":D
    .end local v5    # "load":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .end local v8    # "toks":[Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v4

    .line 131
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 133
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    goto/16 :goto_0

    .line 132
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 133
    :goto_5
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    .line 134
    throw v9

    .line 132
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 130
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v4

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 92
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    .line 88
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v4

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    goto/16 :goto_1
.end method

.method public static getCpuUsage0()D
    .locals 28

    .prologue
    .line 141
    :try_start_0
    new-instance v17, Ljava/io/RandomAccessFile;

    const-string v19, "/proc/stat"

    const-string v22, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v17, "reader":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 143
    .local v16, "load":Ljava/lang/String;
    const-string v19, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 144
    .local v18, "toks":[Ljava/lang/String;
    const/16 v19, 0x5

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 145
    .local v12, "idle1":D
    const/16 v19, 0x2

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    .line 146
    const/16 v19, 0x3

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 145
    add-double v22, v22, v24

    .line 146
    const/16 v19, 0x4

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 145
    add-double v22, v22, v24

    .line 147
    const/16 v19, 0x6

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 145
    add-double v22, v22, v24

    .line 147
    const/16 v19, 0x8

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 145
    add-double v22, v22, v24

    .line 148
    const/16 v19, 0x7

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v24

    .line 145
    add-double v6, v22, v24

    .line 151
    .local v6, "cpu1":D
    const-wide/16 v22, 0x168

    :try_start_1
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :goto_0
    const-wide/16 v22, 0x0

    :try_start_2
    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 156
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 157
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V

    .line 158
    const-string v19, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 159
    const/16 v19, 0x5

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 160
    .local v14, "idle2":D
    const/16 v19, 0x2

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    .line 161
    const/16 v19, 0x3

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 160
    add-double v22, v22, v24

    .line 161
    const/16 v19, 0x4

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 160
    add-double v22, v22, v24

    .line 162
    const/16 v19, 0x6

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 160
    add-double v22, v22, v24

    .line 162
    const/16 v19, 0x8

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 160
    add-double v22, v22, v24

    .line 163
    const/16 v19, 0x7

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 160
    add-double v8, v22, v24

    .line 164
    .local v8, "cpu2":D
    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    sub-double v24, v8, v6

    mul-double v22, v22, v24

    .line 165
    add-double v24, v8, v14

    add-double v26, v6, v12

    sub-double v24, v24, v26

    const/16 v19, 0x2

    .line 164
    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v20

    .line 175
    .end local v6    # "cpu1":D
    .end local v8    # "cpu2":D
    .end local v12    # "idle1":D
    .end local v14    # "idle2":D
    .end local v16    # "load":Ljava/lang/String;
    .end local v18    # "toks":[Ljava/lang/String;
    :goto_1
    return-wide v20

    .line 152
    .restart local v6    # "cpu1":D
    .restart local v12    # "idle1":D
    .restart local v16    # "load":Ljava/lang/String;
    .restart local v18    # "toks":[Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 153
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 172
    .end local v6    # "cpu1":D
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "idle1":D
    .end local v16    # "load":Ljava/lang/String;
    .end local v18    # "toks":[Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 173
    .local v11, "ex":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    const-wide/16 v20, 0x0

    goto :goto_1
.end method

.method public static getCpuUsage1()D
    .locals 42

    .prologue
    .line 180
    :try_start_0
    new-instance v20, Ljava/io/RandomAccessFile;

    const-string v38, "/proc/stat"

    const-string v39, "r"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v20, "reader":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "load":Ljava/lang/String;
    const-string v38, " "

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 184
    .local v21, "toks":[Ljava/lang/String;
    const/16 v38, 0x2

    aget-object v38, v21, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v32

    .line 185
    .local v32, "user1":D
    const/16 v38, 0x4

    aget-object v38, v21, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 186
    .local v24, "system1":D
    const/16 v38, 0x7

    aget-object v38, v21, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 187
    .local v14, "irq1":D
    const/16 v38, 0x5

    aget-object v38, v21, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v8

    .line 189
    .local v8, "idle1":D
    const-wide/16 v38, 0x168

    :try_start_1
    invoke-static/range {v38 .. v39}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 193
    :goto_0
    const-wide/16 v38, 0x0

    :try_start_2
    move-object/from16 v0, v20

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 194
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 195
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->close()V

    .line 196
    const-string v38, " "

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 197
    const/16 v38, 0x2

    aget-object v38, v21, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v34

    .line 198
    .local v34, "user2":D
    const/16 v38, 0x4

    aget-object v38, v21, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    .line 199
    .local v26, "system2":D
    const/16 v38, 0x7

    aget-object v38, v21, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 200
    .local v16, "irq2":D
    const/16 v38, 0x5

    aget-object v38, v21, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 202
    .local v10, "idle2":D
    sub-double v36, v34, v32

    .line 203
    .local v36, "user_pass":D
    sub-double v28, v26, v24

    .line 204
    .local v28, "system_pass":D
    sub-double v18, v16, v14

    .line 205
    .local v18, "irq_pass":D
    sub-double v12, v10, v8

    .line 206
    .local v12, "idle_pass":D
    add-double v38, v36, v28

    add-double v38, v38, v18

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    mul-double v38, v38, v40

    .line 207
    add-double v40, v36, v18

    add-double v40, v40, v28

    add-double v40, v40, v12

    .line 206
    div-double v30, v38, v40

    .line 208
    .local v30, "usage":D
    new-instance v4, Ljava/math/BigDecimal;

    move-wide/from16 v0, v30

    invoke-direct {v4, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 209
    .local v4, "b":Ljava/math/BigDecimal;
    const/16 v38, 0x2

    const/16 v39, 0x4

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v22

    .line 217
    .end local v4    # "b":Ljava/math/BigDecimal;
    .end local v7    # "load":Ljava/lang/String;
    .end local v8    # "idle1":D
    .end local v10    # "idle2":D
    .end local v12    # "idle_pass":D
    .end local v14    # "irq1":D
    .end local v16    # "irq2":D
    .end local v18    # "irq_pass":D
    .end local v21    # "toks":[Ljava/lang/String;
    .end local v24    # "system1":D
    .end local v26    # "system2":D
    .end local v28    # "system_pass":D
    .end local v30    # "usage":D
    .end local v32    # "user1":D
    .end local v34    # "user2":D
    .end local v36    # "user_pass":D
    :goto_1
    return-wide v22

    .line 190
    .restart local v7    # "load":Ljava/lang/String;
    .restart local v8    # "idle1":D
    .restart local v14    # "irq1":D
    .restart local v21    # "toks":[Ljava/lang/String;
    .restart local v24    # "system1":D
    .restart local v32    # "user1":D
    :catch_0
    move-exception v5

    .line 191
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 211
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "load":Ljava/lang/String;
    .end local v8    # "idle1":D
    .end local v14    # "irq1":D
    .end local v21    # "toks":[Ljava/lang/String;
    .end local v24    # "system1":D
    .end local v32    # "user1":D
    :catch_1
    move-exception v5

    .line 212
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 217
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const-wide/16 v22, 0x0

    goto :goto_1

    .line 213
    :catch_2
    move-exception v6

    .line 214
    .local v6, "e1":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getCpuUsageByCmd()V
    .locals 10

    .prologue
    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 344
    .local v3, "line":Ljava/lang/String;
    const-string v1, "dumpsys cpuinfo"

    .line 346
    .local v1, "cmd":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 347
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "sh"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "-c"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    .line 346
    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 348
    .local v4, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 349
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 348
    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 350
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_1

    .line 360
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "process":Ljava/lang/Process;
    :goto_1
    return-void

    .line 352
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "process":Ljava/lang/Process;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 353
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 356
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 364
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 361
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private initCpuData()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 294
    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_pCpu:D

    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->pCpu:D

    .line 295
    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_aCpu:D

    iput-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->aCpu:D

    .line 297
    return-void
.end method


# virtual methods
.method public getCpuAction()[Ljava/lang/String;
    .locals 11

    .prologue
    .line 259
    const-string v1, "/proc/stat"

    .line 260
    .local v1, "cpuPath":Ljava/lang/String;
    const-string v0, ""

    .line 261
    .local v0, "cpu":Ljava/lang/String;
    const/4 v10, 0x7

    new-array v8, v10, [Ljava/lang/String;

    .line 263
    .local v8, "result":[Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    move-object v9, v8

    .line 286
    .end local v8    # "result":[Ljava/lang/String;
    .local v9, "result":[Ljava/lang/String;
    :goto_0
    return-object v9

    .line 269
    .end local v9    # "result":[Ljava/lang/String;
    .restart local v8    # "result":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 270
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 273
    .local v6, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    const/16 v10, 0x2000

    invoke-direct {v7, v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 275
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .local v7, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_2

    .line 277
    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v8

    move-object v6, v7

    .end local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 285
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :goto_1
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    move-object v9, v8

    .line 286
    .end local v8    # "result":[Ljava/lang/String;
    .restart local v9    # "result":[Ljava/lang/String;
    goto :goto_0

    .line 280
    .end local v9    # "result":[Ljava/lang/String;
    .restart local v8    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 282
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 283
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 282
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    move-object v6, v7

    .end local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 280
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_2
    move-object v6, v7

    .end local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public getJif()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->p_jif:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public getProcessCpuAction(I)[Ljava/lang/String;
    .locals 12
    .param p1, "pid"    # I

    .prologue
    .line 222
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/proc/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/stat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "cpuPath":Ljava/lang/String;
    const-string v0, ""

    .line 224
    .local v0, "cpu":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v9, v10, [Ljava/lang/String;

    .line 226
    .local v9, "result":[Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v10

    if-nez v10, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v9

    .line 238
    :cond_1
    const/4 v5, 0x0

    .line 239
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v7, 0x0

    .line 242
    .local v7, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    const/16 v10, 0x2000

    invoke-direct {v8, v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    .end local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    .local v8, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_2

    .line 246
    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "cpuSplit":[Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x1

    aget-object v11, v2, v11

    aput-object v11, v9, v10

    .line 248
    const/4 v10, 0x1

    const/16 v11, 0xd

    aget-object v11, v2, v11

    aput-object v11, v9, v10

    .line 249
    const/4 v10, 0x2

    const/16 v11, 0xe

    aget-object v11, v2, v11

    aput-object v11, v9, v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v8

    .end local v8    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 254
    .end local v2    # "cpuSplit":[Ljava/lang/String;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :goto_1
    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto :goto_0

    .line 251
    :catch_0
    move-exception v3

    .line 252
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 251
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v8    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    move-object v7, v8

    .end local v8    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v8    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_2
    move-object v7, v8

    .end local v8    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public getProcessCpuUsage(I)Ljava/lang/String;
    .locals 12
    .param p1, "pid"    # I

    .prologue
    .line 301
    const-string v1, ""

    .line 302
    .local v1, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 303
    .local v2, "result1":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 304
    .local v3, "result2":[Ljava/lang/String;
    if-ltz p1, :cond_3

    .line 306
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->getProcessCpuAction(I)[Ljava/lang/String;

    move-result-object v2

    .line 307
    if-eqz v2, :cond_0

    .line 308
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 309
    const/4 v8, 0x2

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 308
    iput-wide v6, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->pCpu:D

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->getCpuAction()[Ljava/lang/String;

    move-result-object v3

    .line 312
    if-eqz v3, :cond_1

    .line 313
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->aCpu:D

    .line 314
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    array-length v6, v3

    if-lt v0, v6, :cond_4

    .line 319
    .end local v0    # "i":I
    :cond_1
    const-wide/16 v4, 0x0

    .line 320
    .local v4, "usage":D
    iget-wide v6, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->aCpu:D

    iget-wide v8, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_aCpu:D

    sub-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_2

    .line 321
    iget-wide v6, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->pCpu:D

    iget-wide v8, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_pCpu:D

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    .line 322
    iget-wide v8, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->aCpu:D

    iget-wide v10, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_aCpu:D

    sub-double/2addr v8, v10

    const/4 v10, 0x2

    .line 321
    invoke-static {v6, v7, v8, v9, v10}, Lcom/tencent/wstt/gt/utils/DoubleUtils;->div(DDI)D

    move-result-wide v4

    .line 323
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_5

    .line 324
    const-wide/16 v4, 0x0

    .line 332
    :cond_2
    :goto_1
    iget-wide v6, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->pCpu:D

    iput-wide v6, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_pCpu:D

    .line 333
    iget-wide v6, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->aCpu:D

    iput-wide v6, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->o_aCpu:D

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .end local v4    # "usage":D
    :cond_3
    iget-wide v6, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->pCpu:D

    iput-wide v6, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->p_jif:D

    .line 337
    return-object v1

    .line 316
    .restart local v0    # "i":I
    :cond_4
    iget-wide v6, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->aCpu:D

    aget-object v8, v3, v0

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->aCpu:D

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v0    # "i":I
    .restart local v4    # "usage":D
    :cond_5
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    .line 328
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    goto :goto_1
.end method
