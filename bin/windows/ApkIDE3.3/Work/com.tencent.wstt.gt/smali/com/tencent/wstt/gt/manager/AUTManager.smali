.class public Lcom/tencent/wstt/gt/manager/AUTManager;
.super Ljava/lang/Object;
.source "AUTManager.java"


# static fields
.field public static final SEQ_CPU:I = 0x0

.field public static final SEQ_JIF:I = 0x1

.field public static final SEQ_NET:I = 0x2

.field public static final SEQ_PD:I = 0x4

.field public static final SEQ_PSS:I = 0x3

.field public static apn:Ljava/lang/String;

.field public static appic:Landroid/graphics/drawable/Drawable;

.field public static appstatus:Ljava/lang/String;

.field public static pIds:[Ljava/lang/String;

.field public static pNames:[Ljava/lang/String;

.field public static pkn:Ljava/lang/String;

.field public static proNameIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static proNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static proPidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static registOpTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    .line 52
    sput-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->apn:Ljava/lang/String;

    .line 53
    sput-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->appic:Landroid/graphics/drawable/Drawable;

    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->registOpTable:Ljava/util/Hashtable;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    .line 64
    const-string v0, "--"

    sput-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->appstatus:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findProcess()V
    .locals 2

    .prologue
    .line 81
    sget v0, Lcom/tencent/wstt/gt/api/utils/Env;->API:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 83
    invoke-static {}, Lcom/tencent/wstt/gt/manager/AUTManager;->findProcess4x()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/manager/AUTManager;->findProcess5x()V

    goto :goto_0
.end method

.method public static findProcess4x()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 167
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 168
    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 167
    check-cast v2, Landroid/app/ActivityManager;

    .line 170
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 172
    .local v3, "mRunningProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 192
    sget-object v8, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 193
    sput-object v12, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    .line 194
    sput-object v12, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    .line 204
    :cond_1
    return-void

    .line 172
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 173
    .local v0, "amProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 175
    .local v5, "pkgNameList":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_0
    array-length v9, v5

    if-ge v7, v9, :cond_0

    .line 176
    aget-object v4, v5, v7

    .line 177
    .local v4, "pkgName":Ljava/lang/String;
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 180
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 181
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    iget v10, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 182
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    iget v10, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    iget-object v10, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 184
    iget v11, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 183
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_3
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    iget-object v10, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 187
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    iget-object v10, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "amProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgNameList":[Ljava/lang/String;
    .end local v7    # "x":I
    :cond_5
    sget-object v8, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    sput-object v8, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    .line 197
    sget-object v8, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    sput-object v8, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    .line 198
    const/4 v8, 0x0

    new-array v6, v8, [Ljava/lang/String;

    .line 199
    .local v6, "temp":[Ljava/lang/String;
    sget-object v8, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    sput-object v8, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v8, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 201
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    sget-object v8, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v9, v1

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static findProcess5x()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 92
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->initUidPkgCache()Z

    move-result v2

    .line 93
    .local v2, "isRoot":Z
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->getAllRunningAppProcessInfo()Ljava/util/List;

    move-result-object v3

    .line 95
    .local v3, "mRunningProcess":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 151
    :cond_1
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_7

    .line 152
    sput-object v13, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    .line 153
    sput-object v13, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    .line 163
    :cond_2
    return-void

    .line 95
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    .line 96
    .local v5, "pi":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 101
    if-eqz v2, :cond_5

    .line 103
    iget v8, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->uid:I

    .line 104
    .local v8, "uid":I
    invoke-static {v8}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->getPackageByUid(I)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_0

    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 107
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    iget-object v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 108
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    iget-object v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    iget v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    iget-object v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    iget v12, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_4
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    iget-object v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 116
    .local v4, "oldPid":Ljava/lang/String;
    iget v10, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 119
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 120
    .local v1, "index":I
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 121
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    iget v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 122
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    iget-object v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    iget v12, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 128
    .end local v1    # "index":I
    .end local v4    # "oldPid":Ljava/lang/String;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v8    # "uid":I
    :cond_5
    iget-object v10, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    sget-object v11, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 131
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    iget-object v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 132
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    iget-object v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    iget v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    iget-object v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    iget v12, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 139
    :cond_6
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    iget-object v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    .restart local v4    # "oldPid":Ljava/lang/String;
    iget v10, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 143
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 144
    .restart local v1    # "index":I
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 145
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    iget v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 146
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    iget-object v11, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    iget v12, v5, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 155
    .end local v1    # "index":I
    .end local v4    # "oldPid":Ljava/lang/String;
    .end local v5    # "pi":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    :cond_7
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    sput-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    .line 156
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    sput-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    .line 157
    const/4 v9, 0x0

    new-array v7, v9, [Ljava/lang/String;

    .line 158
    .local v7, "temp":[Ljava/lang/String;
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    sput-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-ge v0, v9, :cond_2

    .line 160
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    sget-object v9, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    sget-object v11, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static openApp(Ljava/lang/String;)V
    .locals 13
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 207
    const/4 v6, 0x0

    .line 209
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 215
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    .local v7, "resolveIntent":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 219
    .local v5, "pManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v7, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 222
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 223
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_0

    .line 224
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 225
    .local v9, "startappName":Ljava/lang/String;
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 227
    .local v1, "className":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v9, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 233
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 235
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pManager":Landroid/content/pm/PackageManager;
    .end local v7    # "resolveIntent":Landroid/content/Intent;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "startappName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v3

    .line 211
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized removeProcess(I)V
    .locals 5
    .param p0, "pid"    # I

    .prologue
    .line 71
    const-class v3, Lcom/tencent/wstt/gt/manager/AUTManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 72
    .local v0, "pos":I
    sget-object v2, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    sget-object v2, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    .line 75
    .local v1, "temp":[Ljava/lang/String;
    sget-object v2, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sput-object v2, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    .line 76
    sget-object v2, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sput-object v2, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit v3

    return-void

    .line 71
    .end local v0    # "pos":I
    .end local v1    # "temp":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
