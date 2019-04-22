.class public Lcom/tencent/wstt/gt/manager/DefaultInParaManager;
.super Ljava/lang/Object;
.source "DefaultInParaManager.java"

# interfaces
.implements Lcom/tencent/wstt/gt/manager/IInParaManager;


# instance fields
.field protected client:Lcom/tencent/wstt/gt/manager/Client;

.field protected inParaMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;"
        }
    .end annotation
.end field

.field protected sortedInParaList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;"
        }
    .end annotation
.end field

.field protected sortedInParas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/manager/Client;)V
    .locals 1
    .param p1, "client"    # Lcom/tencent/wstt/gt/manager/Client;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParas:Landroid/util/SparseArray;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParaList:Ljava/util/LinkedList;

    .line 47
    iput-object p1, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->client:Lcom/tencent/wstt/gt/manager/Client;

    .line 48
    return-void
.end method

.method private checkInParaAvilable(Lcom/tencent/wstt/gt/InPara;)Z
    .locals 3
    .param p1, "inPara"    # Lcom/tencent/wstt/gt/InPara;

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    .line 125
    .local v1, "result":Z
    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 129
    :cond_0
    return v1
.end method

.method private contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static determineInParaType(Ljava/lang/String;I)Z
    .locals 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    const/16 v11, 0x39

    const/16 v10, 0x30

    .line 324
    const/4 v8, 0x1

    .line 326
    .local v8, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 394
    :cond_0
    :goto_0
    return v8

    .line 328
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 329
    .local v1, "cs":[C
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v9, v1

    if-ge v7, v9, :cond_0

    .line 330
    aget-char v0, v1, v7

    .line 331
    .local v0, "ascii":I
    if-lt v0, v10, :cond_1

    if-le v0, v11, :cond_2

    .line 332
    :cond_1
    const/4 v8, 0x0

    .line 333
    goto :goto_0

    .line 329
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 338
    .end local v0    # "ascii":I
    .end local v1    # "cs":[C
    .end local v7    # "i":I
    :pswitch_1
    const-string v9, "true"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "false"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 339
    const/4 v8, 0x0

    .line 341
    goto :goto_0

    .line 343
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 344
    .local v5, "cs_long":[C
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    array-length v9, v5

    if-ge v7, v9, :cond_0

    .line 345
    aget-char v0, v5, v7

    .line 346
    .restart local v0    # "ascii":I
    if-lt v0, v10, :cond_3

    if-le v0, v11, :cond_4

    .line 347
    :cond_3
    const/4 v8, 0x0

    .line 348
    goto :goto_0

    .line 344
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 353
    .end local v0    # "ascii":I
    .end local v5    # "cs_long":[C
    .end local v7    # "i":I
    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 354
    .local v3, "cs_double":[C
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    array-length v9, v3

    if-ge v7, v9, :cond_0

    .line 355
    aget-char v0, v3, v7

    .line 356
    .restart local v0    # "ascii":I
    if-lt v0, v10, :cond_5

    if-le v0, v11, :cond_6

    .line 357
    :cond_5
    const/4 v8, 0x0

    .line 358
    goto :goto_0

    .line 354
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 363
    .end local v0    # "ascii":I
    .end local v3    # "cs_double":[C
    .end local v7    # "i":I
    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 364
    .local v4, "cs_float":[C
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    array-length v9, v4

    if-ge v7, v9, :cond_0

    .line 365
    aget-char v0, v4, v7

    .line 366
    .restart local v0    # "ascii":I
    if-lt v0, v10, :cond_7

    if-le v0, v11, :cond_8

    .line 367
    :cond_7
    const/4 v8, 0x0

    .line 368
    goto :goto_0

    .line 364
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 373
    .end local v0    # "ascii":I
    .end local v4    # "cs_float":[C
    .end local v7    # "i":I
    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 374
    .local v6, "cs_short":[C
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    array-length v9, v6

    if-ge v7, v9, :cond_0

    .line 375
    aget-char v0, v6, v7

    .line 376
    .restart local v0    # "ascii":I
    if-lt v0, v10, :cond_9

    if-le v0, v11, :cond_a

    .line 377
    :cond_9
    const/4 v8, 0x0

    .line 378
    goto :goto_0

    .line 374
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 383
    .end local v0    # "ascii":I
    .end local v6    # "cs_short":[C
    .end local v7    # "i":I
    :pswitch_6
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 384
    .local v2, "cs_byte":[C
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6
    array-length v9, v2

    if-ge v7, v9, :cond_0

    .line 385
    aget-char v0, v2, v7

    .line 386
    .restart local v0    # "ascii":I
    if-lt v0, v10, :cond_b

    if-le v0, v11, :cond_c

    .line 387
    :cond_b
    const/4 v8, 0x0

    .line 388
    goto/16 :goto_0

    .line 384
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static matchInParaType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "result":Z
    const-string v1, "int"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->determineInParaType(Ljava/lang/String;I)Z

    move-result v0

    .line 302
    :cond_0
    const-string v1, "boolean"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->determineInParaType(Ljava/lang/String;I)Z

    move-result v0

    .line 305
    :cond_1
    const-string v1, "long"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->determineInParaType(Ljava/lang/String;I)Z

    move-result v0

    .line 308
    :cond_2
    const-string v1, "double"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->determineInParaType(Ljava/lang/String;I)Z

    move-result v0

    .line 311
    :cond_3
    const-string v1, "float"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 312
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->determineInParaType(Ljava/lang/String;I)Z

    move-result v0

    .line 314
    :cond_4
    const-string v1, "short"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 315
    const/4 v1, 0x5

    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->determineInParaType(Ljava/lang/String;I)Z

    move-result v0

    .line 317
    :cond_5
    const-string v1, "byte"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 318
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->determineInParaType(Ljava/lang/String;I)Z

    move-result v0

    .line 320
    :cond_6
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 140
    iget-object v3, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->getAll()Ljava/util/List;

    move-result-object v1

    .line 142
    .local v1, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/InPara;>;"
    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 143
    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParas:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 144
    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParaList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    monitor-exit v3

    .line 151
    return-void

    .line 146
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 148
    .local v0, "para":Lcom/tencent/wstt/gt/InPara;
    sget-object v4, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    .end local v0    # "para":Lcom/tencent/wstt/gt/InPara;
    .end local v1    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/InPara;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/InPara;>;"
    iget-object v1, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParaList:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    return-object v0
.end method

.method public getInPara(Ljava/lang/String;B)B
    .locals 5
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # B

    .prologue
    .line 269
    iget-object v4, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 270
    .local v0, "iv":Lcom/tencent/wstt/gt/InPara;
    move v3, p2

    .line 271
    .local v3, "value":B
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v2

    .line 273
    .local v2, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    .local v1, "val":Ljava/lang/String;
    const-string v4, "byte"

    invoke-static {v1, v4}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->matchInParaType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    .line 279
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return v3
.end method

.method public getInPara(Ljava/lang/String;D)D
    .locals 6
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # D

    .prologue
    .line 239
    iget-object v3, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 240
    .local v0, "iv":Lcom/tencent/wstt/gt/InPara;
    move-wide v4, p2

    .line 241
    .local v4, "value":D
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v2

    .line 243
    .local v2, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    .local v1, "val":Ljava/lang/String;
    const-string v3, "double"

    invoke-static {v1, v3}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->matchInParaType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 249
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-wide v4
.end method

.method public getInPara(Ljava/lang/String;F)F
    .locals 5
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # F

    .prologue
    .line 224
    iget-object v4, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 225
    .local v0, "iv":Lcom/tencent/wstt/gt/InPara;
    move v3, p2

    .line 226
    .local v3, "value":F
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v2

    .line 228
    .local v2, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, "val":Ljava/lang/String;
    const-string v4, "float"

    invoke-static {v1, v4}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->matchInParaType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 234
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return v3
.end method

.method public getInPara(Ljava/lang/String;I)I
    .locals 5
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # I

    .prologue
    .line 209
    iget-object v4, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 210
    .local v0, "iv":Lcom/tencent/wstt/gt/InPara;
    move v3, p2

    .line 211
    .local v3, "value":I
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v2

    .line 213
    .local v2, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, "val":Ljava/lang/String;
    const-string v4, "int"

    invoke-static {v1, v4}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->matchInParaType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 219
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return v3
.end method

.method public getInPara(Ljava/lang/String;J)J
    .locals 6
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # J

    .prologue
    .line 284
    iget-object v3, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 285
    .local v0, "iv":Lcom/tencent/wstt/gt/InPara;
    move-wide v4, p2

    .line 286
    .local v4, "value":J
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v2

    .line 288
    .local v2, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    .local v1, "val":Ljava/lang/String;
    const-string v3, "long"

    invoke-static {v1, v3}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->matchInParaType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 294
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-wide v4
.end method

.method public getInPara(I)Lcom/tencent/wstt/gt/InPara;
    .locals 1
    .param p1, "positon"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    return-object v0
.end method

.method public getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    return-object v0
.end method

.method public getInPara(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v3, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 183
    .local v0, "iv":Lcom/tencent/wstt/gt/InPara;
    move-object v2, p2

    .line 184
    .local v2, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v1

    .line 186
    .local v1, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "value":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 189
    .end local v1    # "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getInPara(Ljava/lang/String;S)S
    .locals 5
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # S

    .prologue
    .line 254
    iget-object v4, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 255
    .local v0, "iv":Lcom/tencent/wstt/gt/InPara;
    move v3, p2

    .line 256
    .local v3, "value":S
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v2

    .line 258
    .local v2, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    .local v1, "val":Ljava/lang/String;
    const-string v4, "short"

    invoke-static {v1, v4}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->matchInParaType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    .line 264
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return v3
.end method

.method public getInPara(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # Z

    .prologue
    .line 194
    iget-object v4, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 195
    .local v0, "iv":Lcom/tencent/wstt/gt/InPara;
    move v3, p2

    .line 196
    .local v3, "value":Z
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v2

    .line 198
    .local v2, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, "val":Ljava/lang/String;
    const-string v4, "boolean"

    invoke-static {v1, v4}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->matchInParaType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 204
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return v3
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 156
    iget-object v1, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public register(Lcom/tencent/wstt/gt/InPara;)V
    .locals 3
    .param p1, "para"    # Lcom/tencent/wstt/gt/InPara;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 91
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->client:Lcom/tencent/wstt/gt/manager/Client;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/manager/Client;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/wstt/gt/InPara;->setClient(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParas:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParas:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParaList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {p1}, Lcom/tencent/wstt/gt/manager/IpUIManager;->addItemToAC(Lcom/tencent/wstt/gt/InPara;)V

    .line 90
    :cond_0
    monitor-exit v1

    .line 102
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "optionalValues"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x4

    if-le v3, v5, :cond_0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 57
    :cond_0
    new-instance v1, Lcom/tencent/wstt/gt/InPara;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/InPara;-><init>()V

    .line 58
    .local v1, "para":Lcom/tencent/wstt/gt/InPara;
    invoke-virtual {v1, p1}, Lcom/tencent/wstt/gt/InPara;->setKey(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, p2}, Lcom/tencent/wstt/gt/InPara;->setAlias(Ljava/lang/String;)V

    .line 60
    iget-object v3, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->client:Lcom/tencent/wstt/gt/manager/Client;

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/manager/Client;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/wstt/gt/InPara;->setClient(Ljava/lang/String;)V

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v2, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    array-length v5, p4

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_2

    .line 66
    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/InPara;->setValues(Ljava/util/List;)V

    .line 67
    invoke-virtual {v1, v4}, Lcom/tencent/wstt/gt/InPara;->setDisplayProperty(I)V

    .line 69
    iget-object v4, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    monitor-enter v4

    .line 70
    :try_start_0
    invoke-direct {p0, v1}, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->checkInParaAvilable(Lcom/tencent/wstt/gt/InPara;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    iget-object v3, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v3, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParas:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParas:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    iget-object v3, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParaList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    return-void

    .line 63
    :cond_2
    aget-object v0, p4, v3

    .line 64
    .local v0, "ov":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "ov":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public removeOutPara(Ljava/lang/String;)V
    .locals 5
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v3, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->inParaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 108
    .local v0, "para":Lcom/tencent/wstt/gt/InPara;
    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParas:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 109
    .local v1, "position":I
    if-lez v1, :cond_0

    .line 111
    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParas:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParas:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 112
    iget-object v2, p0, Lcom/tencent/wstt/gt/manager/DefaultInParaManager;->sortedInParaList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    sget-object v2, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    monitor-exit v3

    .line 119
    return-void

    .line 106
    .end local v0    # "para":Lcom/tencent/wstt/gt/InPara;
    .end local v1    # "position":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
