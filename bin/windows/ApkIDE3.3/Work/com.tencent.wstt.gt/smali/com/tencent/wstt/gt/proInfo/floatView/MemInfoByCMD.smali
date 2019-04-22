.class public Lcom/tencent/wstt/gt/proInfo/floatView/MemInfoByCMD;
.super Ljava/lang/Object;
.source "MemInfoByCMD.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMemInfo(Ljava/lang/String;)Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "result":Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    const/4 v2, 0x0

    .line 41
    .local v2, "resultString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dumpsys meminfo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfoByCMD;->runCMD(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 47
    sget v3, Lcom/tencent/wstt/gt/api/utils/Env;->API:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_0

    .line 49
    invoke-static {v2}, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfoByCMD;->parseMemInfoFrom2x(Ljava/lang/String;)Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;

    move-result-object v1

    :goto_0
    move-object v3, v1

    .line 60
    :goto_1
    return-object v3

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    sget-object v3, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->EMPTY:Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;

    goto :goto_1

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget v3, Lcom/tencent/wstt/gt/api/utils/Env;->API:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 53
    invoke-static {v2}, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfoByCMD;->parseMemInfoFrom4x(Ljava/lang/String;)Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;

    move-result-object v1

    .line 54
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v2}, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfoByCMD;->parseMemInfoFrom44(Ljava/lang/String;)Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private static parseMemInfoFrom2x(Ljava/lang/String;)Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    .locals 9
    .param p0, "resultString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 65
    const/4 v2, 0x0

    .line 67
    .local v2, "rows":[Ljava/lang/String;
    new-instance v1, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;-><init>()V

    .line 69
    .local v1, "mi":Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    if-nez p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v1

    .line 73
    :cond_1
    const-string v3, "\r\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 77
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 78
    aget-object v3, v2, v0

    const-string v4, "size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 79
    aget-object v3, v2, v0

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->nativeHeapSize:J

    .line 80
    aget-object v3, v2, v0

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikHeapSize:J

    .line 83
    :cond_2
    aget-object v3, v2, v0

    const-string v4, "allocated"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 84
    aget-object v3, v2, v0

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->nativeAllocated:J

    .line 85
    aget-object v3, v2, v0

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikAllocated:J

    .line 88
    :cond_3
    aget-object v3, v2, v0

    const-string v4, "(Pss):"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 89
    aget-object v3, v2, v0

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_total:J

    .line 92
    :cond_4
    aget-object v3, v2, v0

    const-string v4, "(priv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 93
    aget-object v3, v2, v0

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->private_dirty:J

    goto/16 :goto_0

    .line 75
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private static parseMemInfoFrom44(Ljava/lang/String;)Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    .locals 13
    .param p0, "resultString"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    .line 167
    const/4 v8, 0x0

    .line 168
    .local v8, "rows":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 169
    .local v6, "nativeIsFind":Z
    const/4 v0, 0x0

    .line 170
    .local v0, "dalvikIsFind":Z
    const/4 v7, 0x0

    .line 171
    .local v7, "ohterDevIsFind":Z
    const/4 v3, 0x0

    .line 172
    .local v3, "graphicsIsFind":Z
    const/4 v2, 0x0

    .line 173
    .local v2, "glIsFind":Z
    const/4 v9, 0x0

    .line 175
    .local v9, "unknownIsFind":Z
    new-instance v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;

    invoke-direct {v5}, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;-><init>()V

    .line 179
    .local v5, "mi":Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    :try_start_0
    const-string v10, "\r\n"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 181
    const/4 v4, 0x7

    .local v4, "i":I
    :goto_0
    array-length v10, v8

    if-lt v4, v10, :cond_0

    .line 232
    .end local v4    # "i":I
    :goto_1
    return-object v5

    .line 183
    .restart local v4    # "i":I
    :cond_0
    aget-object v10, v8, v4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v4

    .line 185
    if-nez v6, :cond_2

    aget-object v10, v8, v4

    const-string v11, "Native"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_2

    .line 186
    const/4 v6, 0x1

    .line 187
    aget-object v10, v8, v4

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Native:J

    .line 188
    aget-object v10, v8, v4

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->nativeHeapSize:J

    .line 189
    aget-object v10, v8, v4

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x7

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->nativeAllocated:J

    .line 181
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    :cond_2
    if-nez v0, :cond_3

    aget-object v10, v8, v4

    const-string v11, "Dalvik"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_3

    .line 193
    const/4 v0, 0x1

    .line 194
    aget-object v10, v8, v4

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Dalvik:J

    .line 195
    aget-object v10, v8, v4

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikHeapSize:J

    .line 196
    aget-object v10, v8, v4

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x7

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikAllocated:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 227
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "i":I
    :cond_3
    if-nez v7, :cond_4

    :try_start_1
    aget-object v10, v8, v4

    const-string v11, "Other dev"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_4

    .line 200
    const/4 v7, 0x1

    .line 201
    aget-object v10, v8, v4

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_OtherDev:J

    .line 202
    add-int/lit8 v4, v4, 0x5

    .line 203
    goto :goto_2

    .line 205
    :cond_4
    if-nez v3, :cond_5

    aget-object v10, v8, v4

    const-string v11, "Graphics"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_5

    .line 206
    const/4 v3, 0x1

    .line 207
    aget-object v10, v8, v4

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_graphics:J

    goto/16 :goto_2

    .line 210
    :cond_5
    if-nez v2, :cond_6

    aget-object v10, v8, v4

    const-string v11, "GL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_6

    .line 211
    const/4 v2, 0x1

    .line 212
    aget-object v10, v8, v4

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_gl:J

    goto/16 :goto_2

    .line 215
    :cond_6
    if-nez v9, :cond_7

    aget-object v10, v8, v4

    const-string v11, "Unknown"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_7

    .line 216
    const/4 v9, 0x1

    .line 217
    aget-object v10, v8, v4

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_UnKnown:J

    goto/16 :goto_2

    .line 220
    :cond_7
    aget-object v10, v8, v4

    const-string v11, "TOTAL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_1

    .line 221
    aget-object v10, v8, v4

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_total:J

    .line 222
    aget-object v10, v8, v4

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->private_dirty:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static parseMemInfoFrom4x(Ljava/lang/String;)Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    .locals 13
    .param p0, "resultString"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    .line 103
    const/4 v7, 0x0

    .line 104
    .local v7, "rows":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 105
    .local v5, "nativeIsFind":Z
    const/4 v1, 0x0

    .line 106
    .local v1, "dalvikIsFind":Z
    const/4 v0, 0x0

    .line 107
    .local v0, "ashemIsFind":Z
    const/4 v6, 0x0

    .line 108
    .local v6, "ohterDevIsFind":Z
    const/4 v8, 0x0

    .line 110
    .local v8, "unknownIsFind":Z
    new-instance v4, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;

    invoke-direct {v4}, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;-><init>()V

    .line 113
    .local v4, "mi":Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    :try_start_0
    const-string v9, "\r\n"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 115
    const/4 v3, 0x7

    .local v3, "i":I
    :goto_0
    array-length v9, v7

    if-lt v3, v9, :cond_0

    .line 162
    .end local v3    # "i":I
    :goto_1
    return-object v4

    .line 117
    .restart local v3    # "i":I
    :cond_0
    aget-object v9, v7, v3

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    .line 119
    if-nez v5, :cond_2

    aget-object v9, v7, v3

    const-string v10, "Native"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_2

    .line 120
    const/4 v5, 0x1

    .line 121
    aget-object v9, v7, v3

    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Native:J

    .line 122
    aget-object v9, v7, v3

    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->nativeHeapSize:J

    .line 123
    aget-object v9, v7, v3

    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->nativeAllocated:J

    .line 115
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_2
    if-nez v1, :cond_3

    aget-object v9, v7, v3

    const-string v10, "Dalvik"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_3

    .line 127
    const/4 v1, 0x1

    .line 128
    aget-object v9, v7, v3

    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Dalvik:J

    .line 129
    aget-object v9, v7, v3

    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikHeapSize:J

    .line 130
    aget-object v9, v7, v3

    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikAllocated:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 157
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 133
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    :cond_3
    if-nez v0, :cond_4

    :try_start_1
    aget-object v9, v7, v3

    const-string v10, "Ashmem"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_4

    .line 134
    const/4 v0, 0x1

    .line 135
    aget-object v9, v7, v3

    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Ashmem:J

    goto :goto_2

    .line 139
    :cond_4
    if-nez v6, :cond_5

    aget-object v9, v7, v3

    const-string v10, "Other dev"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_5

    .line 140
    const/4 v6, 0x1

    .line 141
    aget-object v9, v7, v3

    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_OtherDev:J

    .line 142
    add-int/lit8 v3, v3, 0x6

    .line 143
    goto/16 :goto_2

    .line 145
    :cond_5
    if-nez v8, :cond_6

    aget-object v9, v7, v3

    const-string v10, "Unknown"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_6

    .line 146
    const/4 v8, 0x1

    .line 147
    aget-object v9, v7, v3

    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_UnKnown:J

    goto/16 :goto_2

    .line 150
    :cond_6
    aget-object v9, v7, v3

    const-string v10, "TOTAL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_1

    .line 151
    aget-object v9, v7, v3

    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_total:J

    .line 152
    aget-object v9, v7, v3

    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->private_dirty:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static runCMD(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "cmdString"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v4, 0x0

    .line 238
    .local v4, "execBuilder":Ljava/lang/ProcessBuilder;
    new-instance v4, Ljava/lang/ProcessBuilder;

    .end local v4    # "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "su"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "-c"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p0, v8, v9

    invoke-direct {v4, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 241
    .restart local v4    # "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v3, 0x0

    .line 243
    .local v3, "exec":Ljava/lang/Process;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 247
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 249
    .local v5, "is":Ljava/io/InputStream;
    const-string v7, ""

    .line 250
    .local v7, "result":Ljava/lang/String;
    const-string v6, ""

    .line 253
    .local v6, "line":Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 254
    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 253
    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 255
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    if-nez v6, :cond_0

    .line 263
    .end local v0    # "br":Ljava/io/BufferedReader;
    :goto_2
    return-object v7

    .line 244
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 256
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 257
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    goto :goto_1

    .line 260
    .end local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 261
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
