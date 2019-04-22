.class public Lcom/tencent/wstt/gt/plugin/gps/GTGPSUtils;
.super Ljava/lang/Object;
.source "GTGPSUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareAsDouble(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 107
    .local v0, "v1":F
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 108
    .local v1, "v2":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 109
    const/4 v2, 0x1

    .line 113
    :goto_0
    return v2

    .line 110
    :cond_0
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 111
    const/4 v2, -0x1

    goto :goto_0

    .line 113
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static compareGPS(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 26
    .param p0, "gpsfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v20, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v19, "percentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSUtils;->getGPSData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 135
    .local v10, "data":[Ljava/lang/String;
    if-nez v10, :cond_1

    .line 136
    const/16 v19, 0x0

    .line 165
    .end local v19    # "percentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v19

    .line 137
    .restart local v19    # "percentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    array-length v0, v10

    move/from16 v23, v0

    const/4 v2, 0x0

    move/from16 v22, v2

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    .line 148
    invoke-static/range {v20 .. v20}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSUtils;->sortAsDouble(Ljava/util/ArrayList;)V

    .line 150
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 151
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v13, v2

    .line 152
    .local v13, "n50":I
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe5c28f5c28f5c3L    # 0.68

    mul-double/2addr v2, v4

    double-to-int v14, v2

    .line 153
    .local v14, "n68":I
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fee666666666666L    # 0.95

    mul-double/2addr v2, v4

    double-to-int v15, v2

    .line 154
    .local v15, "n95":I
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v2, v14, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v13    # "n50":I
    .end local v14    # "n68":I
    .end local v15    # "n95":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 159
    .local v16, "newfile":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v11, "f":Ljava/io/File;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v11, v2}, Lcom/tencent/wstt/gt/log/LogUtils;->writeFilterLog(Ljava/util/List;Ljava/io/File;Z)V

    .line 161
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/16 v2, 0xa

    if-ge v12, v2, :cond_0

    .line 162
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    int-to-double v0, v12

    move-wide/from16 v22, v0

    const-wide v24, 0x3fa999999999999aL    # 0.05

    mul-double v22, v22, v24

    add-double v4, v4, v22

    mul-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v17, v0

    .line 163
    .local v17, "num":I
    add-int/lit8 v2, v17, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 137
    .end local v11    # "f":Ljava/io/File;
    .end local v12    # "i":I
    .end local v16    # "newfile":Ljava/lang/String;
    .end local v17    # "num":I
    :cond_3
    aget-object v21, v10, v22

    .line 139
    .local v21, "str":Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 140
    .local v18, "parts":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    .line 137
    :goto_2
    add-int/lit8 v2, v22, 0x1

    move/from16 v22, v2

    goto/16 :goto_0

    .line 143
    :cond_4
    const/4 v2, 0x2

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v8, v2

    .line 144
    .local v8, "lon":D
    const/4 v2, 0x3

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v6, v2

    .line 145
    .local v6, "lat":D
    const/4 v2, 0x1

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const/4 v4, 0x0

    aget-object v4, v18, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static/range {v2 .. v9}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSUtils;->getDistance(DDDD)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static getDistance(DDDD)F
    .locals 10
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D

    .prologue
    .line 100
    const/16 v0, 0xa

    new-array v8, v0, [F

    .local v8, "results":[F
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 101
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 102
    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method

.method private static getGPSData(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "gpsfile"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 74
    const/4 v6, 0x0

    .line 76
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, p0

    .line 78
    .local v3, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 79
    .local v4, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 83
    .local v5, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-nez v9, :cond_1

    .line 95
    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    move-object v0, v8

    .line 93
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 84
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 95
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_2
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    move-object v0, v8

    .line 93
    goto :goto_1

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 90
    .local v0, "coordinates":[Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    move-object v6, v7

    .line 91
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 94
    .end local v0    # "coordinates":[Ljava/lang/String;
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 95
    :goto_3
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 96
    throw v8

    .line 94
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 92
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static getGPSFileList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "arrFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    sget-object v6, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_GPS_FOLDER:Ljava/io/File;

    new-instance v7, Lcom/tencent/wstt/gt/plugin/gps/GTGPSUtils$1;

    invoke-direct {v7}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSUtils$1;-><init>()V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 57
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_1

    .line 59
    array-length v1, v4

    .line 60
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v1, :cond_0

    .line 70
    .end local v1    # "count":I
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "i":I
    :goto_1
    return-object v0

    .line 61
    .restart local v1    # "count":I
    .restart local v4    # "files":[Ljava/io/File;
    .restart local v5    # "i":I
    :cond_0
    aget-object v3, v4, v5

    .line 62
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "count":I
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "i":I
    :cond_1
    const-string v6, "empty"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 67
    .end local v4    # "files":[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static sortAsDouble(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "mylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 118
    .local v3, "min":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 119
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 129
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "min":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 121
    .restart local v3    # "min":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSUtils;->compareAsDouble(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 123
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "min":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 121
    .restart local v3    # "min":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
