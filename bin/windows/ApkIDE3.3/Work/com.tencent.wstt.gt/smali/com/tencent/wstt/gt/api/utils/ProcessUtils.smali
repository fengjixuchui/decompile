.class public Lcom/tencent/wstt/gt/api/utils/ProcessUtils;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;,
        Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process4x;,
        Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;,
        Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process6x;,
        Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    }
.end annotation


# static fields
.field private static processUtil:Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->killprocessNormal(Ljava/lang/String;I)V

    return-void
.end method

.method public static getAllRunningAppProcessInfo()Ljava/util/List;
    .locals 1
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
    .line 137
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->processUtil:Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;

    invoke-interface {v0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;->getAllRunningAppProcessInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageByUid(I)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 77
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->processUtil:Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;

    invoke-interface {v0, p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;->getPackageByUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessPID(Ljava/lang/String;)I
    .locals 1
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->processUtil:Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;

    invoke-interface {v0, p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;->getProcessPID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProcessUID(Ljava/lang/String;)I
    .locals 1
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->processUtil:Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;

    invoke-interface {v0, p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;->getProcessUID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static hasProcessRunPkg(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->processUtil:Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;

    invoke-interface {v0, p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;->hasProcessRunPkg(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized init()V
    .locals 3

    .prologue
    .line 61
    const-class v1, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/tencent/wstt/gt/api/utils/Env;->API:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    .line 63
    new-instance v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process4x;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process4x;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->processUtil:Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    monitor-exit v1

    return-void

    .line 65
    :cond_0
    :try_start_1
    sget v0, Lcom/tencent/wstt/gt/api/utils/Env;->API:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    .line 67
    new-instance v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process5x;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->processUtil:Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 71
    :cond_1
    :try_start_2
    new-instance v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process6x;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$Process6x;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->processUtil:Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static initUidPkgCache()Z
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->processUtil:Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;

    invoke-interface {v0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;->initUidPkgCache()Z

    move-result v0

    return v0
.end method

.method public static isProcessAlive(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sPid"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->processUtil:Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;

    invoke-interface {v0, p0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;->isProcessAlive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static killprocess(Ljava/lang/String;I)V
    .locals 1
    .param p0, "proc"    # Ljava/lang/String;
    .param p1, "cmd"    # I

    .prologue
    .line 141
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->processUtil:Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;

    invoke-interface {v0, p0, p1}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$IProcess;->killprocess(Ljava/lang/String;I)V

    .line 142
    return-void
.end method

.method private static killprocessNormal(Ljava/lang/String;I)V
    .locals 17
    .param p0, "proc"    # Ljava/lang/String;
    .param p1, "killMethod"    # I

    .prologue
    .line 146
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v9, "pid_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 150
    .local v3, "execBuilder":Ljava/lang/ProcessBuilder;
    new-instance v3, Ljava/lang/ProcessBuilder;

    .end local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "sh"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "-c"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ps |grep "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-direct {v3, v13}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 152
    .restart local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, "exec":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 157
    .local v5, "is":Ljava/io/InputStream;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 159
    .local v10, "reader":Ljava/io/BufferedReader;
    const-string v6, ""

    .line 160
    .local v6, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 171
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v4, v13, :cond_2

    .line 183
    .end local v2    # "exec":Ljava/lang/Process;
    .end local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .end local v4    # "i":I
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "pid_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :goto_2
    return-void

    .line 161
    .restart local v2    # "exec":Ljava/lang/Process;
    .restart local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v9    # "pid_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :cond_1
    const-string v11, "\\s[0-9][0-9]*\\s"

    .line 162
    .local v11, "regEx":Ljava/lang/String;
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 163
    .local v8, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 164
    .local v7, "mat":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 165
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, "temp":Ljava/lang/String;
    const-string v13, "\\s"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 167
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v2    # "exec":Ljava/lang/Process;
    .end local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "mat":Ljava/util/regex/Matcher;
    .end local v8    # "pat":Ljava/util/regex/Pattern;
    .end local v9    # "pid_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "regEx":Ljava/lang/String;
    .end local v12    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "exec":Ljava/lang/Process;
    .restart local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v4    # "i":I
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v9    # "pid_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/ProcessBuilder;

    .end local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v13, 0x5

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v15, "su"

    aput-object v15, v14, v13

    const/4 v13, 0x1

    const-string v15, "-c"

    aput-object v15, v14, v13

    const/4 v13, 0x2

    const-string v15, "kill"

    aput-object v15, v14, v13

    const/4 v13, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "-"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v13

    const/4 v15, 0x4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v14, v15

    invoke-direct {v3, v14}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 173
    .restart local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v2, 0x0

    .line 174
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 176
    new-instance v3, Ljava/lang/ProcessBuilder;

    .end local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v15, "su"

    aput-object v15, v14, v13

    const/4 v13, 0x1

    const-string v15, "-c"

    aput-object v15, v14, v13

    const/4 v15, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v16, "kill -"

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-direct {v3, v14}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 177
    .restart local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v2, 0x0

    .line 178
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method
