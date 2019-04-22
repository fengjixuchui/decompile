.class public Lcom/tencent/wstt/gt/api/utils/SMUtils;
.super Ljava/lang/Object;
.source "SMUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmDetail(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/TimeEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "smrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/ui/model/TimeEntry;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v17, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-nez v31, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-object v17

    .line 167
    :cond_1
    const-wide v6, 0x3ff3333333333333L    # 1.2

    .line 168
    .local v6, "delta":D
    const-wide v32, 0x3fd999999999999aL    # 0.4

    .line 169
    .local v32, "w":D
    const/16 v24, 0x5

    .line 170
    .local v24, "s":I
    const/4 v3, 0x0

    .line 171
    .local v3, "count5":I
    const-wide/16 v18, 0x3c

    .line 172
    .local v18, "minsm":J
    const/4 v12, 0x0

    .line 173
    .local v12, "ktimes":I
    const/4 v5, 0x0

    .line 174
    .local v5, "high":I
    const/4 v8, 0x0

    .line 175
    .local v8, "highScore":I
    const/16 v16, 0x0

    .line 176
    .local v16, "lowScore":I
    const/4 v13, 0x0

    .line 177
    .local v13, "low":I
    const/16 v30, 0x0

    .line 178
    .local v30, "total":I
    const/4 v2, 0x0

    .line 179
    .local v2, "count":I
    const-wide/16 v22, 0x0

    .line 180
    .local v22, "resultn":D
    const-wide/16 v20, 0x0

    .line 181
    .local v20, "result":D
    const-wide/16 v14, -0x1

    .line 182
    .local v14, "lastdata":J
    const-wide/16 v28, 0x0

    .line 183
    .local v28, "sscore":D
    const-wide/16 v10, 0x0

    .line 185
    .local v10, "kscore":D
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v25, "tempDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v26, 0x0

    .line 189
    .local v26, "sm":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-lt v9, v0, :cond_7

    .line 216
    if-lez v3, :cond_2

    .line 217
    const-wide/16 v34, 0x28

    cmp-long v31, v18, v34

    if-ltz v31, :cond_c

    .line 218
    add-int/lit8 v5, v5, 0x1

    .line 223
    :goto_2
    add-int/lit8 v30, v30, 0x1

    .line 225
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_2
    div-int v31, v13, v30

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    const/4 v2, 0x0

    .line 229
    const-wide/16 v22, 0x0

    .line 230
    const-wide/16 v20, 0x0

    .line 231
    const-wide/16 v14, -0x1

    .line 232
    const-wide/16 v28, 0x0

    .line 233
    const-wide/16 v10, 0x0

    .line 235
    const/4 v9, 0x0

    :goto_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-lt v9, v0, :cond_d

    .line 266
    if-lez v2, :cond_3

    const-wide/16 v34, 0x28

    cmp-long v31, v14, v34

    if-gez v31, :cond_3

    .line 267
    add-double v20, v20, v22

    .line 268
    add-double v10, v10, v22

    .line 271
    :cond_3
    if-lez v2, :cond_4

    const-wide/16 v34, 0x28

    cmp-long v31, v14, v34

    if-ltz v31, :cond_4

    .line 272
    mul-double v34, v22, v32

    add-double v20, v20, v34

    .line 273
    add-double v28, v28, v22

    .line 276
    :cond_4
    if-lez v13, :cond_5

    .line 277
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    mul-double v34, v34, v10

    int-to-double v0, v13

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v16, v0

    .line 279
    :cond_5
    if-lez v5, :cond_6

    .line 280
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    mul-double v34, v34, v28

    int-to-double v0, v5

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v8, v0

    .line 283
    :cond_6
    mul-int/lit8 v31, v13, 0x5

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    mul-int/lit8 v31, v5, 0x5

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    mul-double v34, v34, v20

    int-to-double v0, v5

    move-wide/from16 v36, v0

    mul-double v36, v36, v32

    int-to-double v0, v13

    move-wide/from16 v38, v0

    add-double v36, v36, v38

    div-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 191
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 193
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/tencent/wstt/gt/ui/model/TimeEntry;

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/tencent/wstt/gt/ui/model/TimeEntry;->reduce:J

    move-wide/from16 v26, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_4
    cmp-long v31, v18, v26

    if-lez v31, :cond_8

    move-wide/from16 v18, v26

    .line 199
    :cond_8
    const-wide/16 v34, 0x28

    cmp-long v31, v26, v34

    if-gez v31, :cond_9

    .line 200
    add-int/lit8 v12, v12, 0x1

    .line 202
    :cond_9
    move/from16 v0, v24

    if-ne v3, v0, :cond_a

    .line 203
    const-wide/16 v34, 0x28

    cmp-long v31, v18, v34

    if-ltz v31, :cond_b

    .line 204
    add-int/lit8 v5, v5, 0x1

    .line 209
    :goto_5
    add-int/lit8 v30, v30, 0x1

    .line 210
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    const-wide/16 v18, 0x3c

    .line 212
    const/4 v3, 0x0

    .line 213
    const/4 v12, 0x0

    .line 189
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 206
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 207
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v12

    move-wide/from16 v38, v0

    div-double v36, v36, v38

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    sub-double v36, v36, v38

    move-wide/from16 v0, v36

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-long v0, v0

    move-wide/from16 v18, v0

    goto :goto_5

    .line 220
    :cond_c
    add-int/lit8 v13, v13, 0x1

    .line 221
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v12

    move-wide/from16 v38, v0

    div-double v36, v36, v38

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    sub-double v36, v36, v38

    move-wide/from16 v0, v36

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-long v0, v0

    move-wide/from16 v18, v0

    goto/16 :goto_2

    .line 236
    :cond_d
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 238
    .local v4, "data":Ljava/lang/Long;
    const-wide/16 v34, 0x0

    cmp-long v31, v14, v34

    if-gez v31, :cond_e

    .line 239
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 241
    :cond_e
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    const-wide/16 v36, 0x28

    cmp-long v31, v34, v36

    if-ltz v31, :cond_10

    .line 242
    const-wide/16 v34, 0x28

    cmp-long v31, v14, v34

    if-gez v31, :cond_f

    .line 243
    add-double v10, v10, v22

    .line 244
    add-double v20, v20, v22

    .line 245
    const/4 v2, 0x0

    .line 246
    const-wide/16 v22, 0x0

    .line 248
    :cond_f
    invoke-static {v4}, Lcom/tencent/wstt/gt/api/utils/SMUtils;->getscore(Ljava/lang/Long;)D

    move-result-wide v34

    add-double v22, v22, v34

    .line 250
    add-int/lit8 v2, v2, 0x1

    .line 262
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 235
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 252
    :cond_10
    const-wide/16 v34, 0x28

    cmp-long v31, v14, v34

    if-ltz v31, :cond_11

    .line 253
    mul-double v34, v22, v32

    add-double v20, v20, v34

    .line 254
    add-double v28, v28, v22

    .line 255
    const/4 v2, 0x0

    .line 256
    const-wide/16 v22, 0x0

    .line 258
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 259
    invoke-static {v4}, Lcom/tencent/wstt/gt/api/utils/SMUtils;->getscore(Ljava/lang/Long;)D

    move-result-wide v34

    add-double v22, v22, v34

    goto :goto_6

    .line 194
    .end local v4    # "data":Ljava/lang/Long;
    :catch_0
    move-exception v31

    goto/16 :goto_4
.end method

.method private static getscore(Ljava/lang/Long;)D
    .locals 12
    .param p0, "data"    # Ljava/lang/Long;

    .prologue
    const-wide/16 v10, 0x32

    const-wide/16 v8, 0x1e

    const-wide/16 v4, 0x14

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 293
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    .line 304
    :goto_0
    return-wide v0

    .line 297
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 298
    const-wide v0, 0x3fd3333333333333L    # 0.3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-gez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-ltz v0, :cond_2

    .line 302
    const-wide v0, 0x3fe3333333333333L    # 0.6

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v8

    long-to-double v2, v2

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    goto :goto_0

    .line 304
    :cond_2
    const-wide v0, 0x3fe999999999999aL    # 0.8

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v10

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    goto :goto_0
.end method
