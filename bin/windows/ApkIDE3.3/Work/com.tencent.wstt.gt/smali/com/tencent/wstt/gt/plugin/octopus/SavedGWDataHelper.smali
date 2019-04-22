.class public Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;
.super Ljava/lang/Object;
.source "SavedGWDataHelper.java"


# static fields
.field public static comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static folderFilter:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper$1;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper$1;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;->folderFilter:Ljava/io/FileFilter;

    .line 47
    new-instance v0, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper$2;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper$2;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;->comparator:Ljava/util/Comparator;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGWDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_GW_FOLDER:Ljava/io/File;

    .line 56
    .local v0, "gwDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 59
    :cond_0
    return-object v0
.end method

.method public static getGWFolders()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;->getGWDirectory()Ljava/io/File;

    move-result-object v5

    .line 66
    .local v5, "gwDir":Ljava/io/File;
    sget-object v10, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;->folderFilter:Ljava/io/FileFilter;

    invoke-virtual {v5, v10}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, "filesParentArray":[Ljava/io/File;
    if-nez v0, :cond_1

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 103
    :cond_0
    return-object v9

    .line 72
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    array-length v11, v0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v1, v0, v10

    .line 75
    .local v1, "folder1":Ljava/io/File;
    sget-object v12, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;->folderFilter:Ljava/io/FileFilter;

    invoke-virtual {v1, v12}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 77
    .local v4, "folder2s":[Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v3, "folder2List":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    sget-object v12, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;->comparator:Ljava/util/Comparator;

    invoke-static {v3, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v6, "invalidFolder2List":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 90
    invoke-interface {v3, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 92
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_5

    .line 73
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 82
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 84
    .local v2, "folder2":Ljava/io/File;
    sget-object v13, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;->folderFilter:Ljava/io/FileFilter;

    invoke-virtual {v2, v13}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    .line 85
    .local v8, "leafs":[Ljava/io/File;
    if-eqz v8, :cond_4

    array-length v13, v8

    if-nez v13, :cond_2

    .line 87
    :cond_4
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    .end local v2    # "folder2":Ljava/io/File;
    .end local v8    # "leafs":[Ljava/io/File;
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 94
    .restart local v2    # "folder2":Ljava/io/File;
    sget-object v13, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;->folderFilter:Ljava/io/FileFilter;

    invoke-virtual {v2, v13}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    .line 95
    .restart local v8    # "leafs":[Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    .local v7, "leafList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    sget-object v13, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;->comparator:Ljava/util/Comparator;

    invoke-static {v7, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v9, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method
