.class Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process6x;
.super Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;
.source "ProcessUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/api/utils/ProcessUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Process6x"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllRunningAppProcessInfo()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v0, "appProcessList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    const/4 v11, 0x0

    .line 687
    .local v11, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 688
    .local v4, "execBuilder":Ljava/lang/ProcessBuilder;
    :try_start_0
    new-instance v5, Ljava/lang/ProcessBuilder;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "sh"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "-c"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ps"

    aput-object v16, v14, v15

    invoke-direct {v5, v14}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    .end local v4    # "execBuilder":Ljava/lang/ProcessBuilder;
    .local v5, "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v14, 0x1

    :try_start_1
    invoke-virtual {v5, v14}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 690
    const/4 v3, 0x0

    .line 691
    .local v3, "exec":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 692
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 693
    .local v6, "is":Ljava/io/InputStream;
    new-instance v12, Ljava/io/BufferedReader;

    .line 694
    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 693
    invoke-direct {v12, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .local v12, "reader":Ljava/io/BufferedReader;
    :try_start_2
    const-string v7, ""

    .line 697
    .local v7, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    if-nez v7, :cond_1

    .line 720
    invoke-static {v12}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    move-object v11, v12

    .line 723
    .end local v3    # "exec":Ljava/lang/Process;
    .end local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :goto_1
    return-object v0

    .line 698
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "exec":Ljava/lang/Process;
    .restart local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "\\s+"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "array":[Ljava/lang/String;
    array-length v14, v1

    const/16 v15, 0x9

    if-lt v14, v15, :cond_0

    .line 701
    const/16 v14, 0x8

    aget-object v14, v1, v14

    const-string v15, "su"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const/16 v14, 0x8

    aget-object v14, v1, v14

    const-string v15, "sh"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 702
    const/16 v14, 0x8

    aget-object v14, v1, v14

    const-string v15, "sush"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const/16 v14, 0x8

    aget-object v14, v1, v14

    const-string v15, "ps"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 706
    const/4 v14, 0x0

    aget-object v14, v1, v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit16 v13, v14, 0x2710

    .line 707
    .local v13, "uid":I
    const/4 v14, 0x1

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 708
    .local v9, "pid":I
    const/4 v14, 0x2

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 710
    .local v10, "ppid":I
    new-instance v8, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    const/16 v14, 0x8

    aget-object v14, v1, v14

    invoke-direct {v8, v9, v14, v10, v13}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;-><init>(ILjava/lang/String;II)V

    .line 711
    .local v8, "pi":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    # getter for: Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->procInfoCache:Ljava/util/Map;
    invoke-static/range {p0 .. p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;->access$0(Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;)Ljava/util/Map;

    move-result-object v14

    const/16 v15, 0x8

    aget-object v15, v1, v15

    invoke-interface {v14, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 715
    .end local v1    # "array":[Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "pi":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    .end local v9    # "pid":I
    .end local v10    # "ppid":I
    .end local v13    # "uid":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .end local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v4    # "execBuilder":Ljava/lang/ProcessBuilder;
    move-object v11, v12

    .line 716
    .end local v3    # "exec":Ljava/lang/Process;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 720
    invoke-static {v11}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    goto :goto_1

    .line 719
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "execBuilder":Ljava/lang/ProcessBuilder;
    :catchall_0
    move-exception v14

    .line 720
    :goto_3
    invoke-static {v11}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeReader(Ljava/io/Reader;)V

    .line 721
    throw v14

    .line 719
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "exec":Ljava/lang/Process;
    .restart local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 715
    .end local v3    # "exec":Ljava/lang/Process;
    .end local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v4    # "execBuilder":Ljava/lang/ProcessBuilder;
    :catch_1
    move-exception v2

    goto :goto_2

    .end local v4    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    :catch_2
    move-exception v2

    move-object v4, v5

    .end local v5    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v4    # "execBuilder":Ljava/lang/ProcessBuilder;
    goto :goto_2
.end method
