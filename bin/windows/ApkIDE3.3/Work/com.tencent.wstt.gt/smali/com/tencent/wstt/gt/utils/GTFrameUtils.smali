.class public Lcom/tencent/wstt/gt/utils/GTFrameUtils;
.super Ljava/lang/Object;
.source "GTFrameUtils.java"


# static fields
.field public static hasSu:Z

.field private static pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput v0, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->pid:I

    .line 40
    sput-boolean v0, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->hasSu:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHasSu()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->hasSu:Z

    return v0
.end method

.method public static setHasSu(Z)V
    .locals 0
    .param p0, "hasSu"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->hasSu:Z

    .line 48
    return-void
.end method

.method public static setPid()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 51
    invoke-static {v14}, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->setHasSu(Z)V

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "execBuilder":Ljava/lang/ProcessBuilder;
    :try_start_0
    sget v11, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->pid:I

    if-nez v11, :cond_2

    .line 55
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "su"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "-c"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "ps"

    aput-object v13, v11, v12

    invoke-direct {v3, v11}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v2    # "execBuilder":Ljava/lang/ProcessBuilder;
    .local v3, "execBuilder":Ljava/lang/ProcessBuilder;
    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v3, v11}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "exec":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 62
    .local v4, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedReader;

    .line 63
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 62
    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    .local v8, "reader":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 66
    .local v5, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    if-nez v5, :cond_4

    :cond_1
    move-object v2, v3

    .line 81
    .end local v1    # "exec":Ljava/lang/Process;
    .end local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "execBuilder":Ljava/lang/ProcessBuilder;
    :cond_2
    :goto_0
    :try_start_2
    sget v11, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->pid:I

    if-nez v11, :cond_3

    .line 82
    const-string v11, "system_server"

    invoke-static {v11}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->getProcessPID(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 83
    const-string v11, "system_server"

    invoke-static {v11}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->getProcessPID(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->pid:I

    .line 89
    :cond_3
    :goto_1
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->setHasSu(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    :goto_2
    const-string v11, "pid: "

    sget v12, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->pid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 67
    .end local v2    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v1    # "exec":Ljava/lang/Process;
    .restart local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_3
    const-string v11, "surfaceflinger"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 68
    const-string v9, "\\s[0-9][0-9]*\\s"

    .line 69
    .local v9, "regEx":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 70
    .local v7, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 71
    .local v6, "mat":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 72
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, "temp":Ljava/lang/String;
    const-string v11, "\\s"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 74
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->pid:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 76
    .end local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v2    # "execBuilder":Ljava/lang/ProcessBuilder;
    goto :goto_0

    .line 85
    .end local v1    # "exec":Ljava/lang/Process;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "mat":Ljava/util/regex/Matcher;
    .end local v7    # "pat":Ljava/util/regex/Pattern;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "regEx":Ljava/lang/String;
    .end local v10    # "temp":Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string v11, "system"

    invoke-static {v11}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->getProcessPID(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->pid:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "Root is demanded"

    invoke-static {v11, v12}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    invoke-static {v14}, Lcom/tencent/wstt/gt/utils/GTFrameUtils;->setHasSu(Z)V

    goto :goto_2

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "execBuilder":Ljava/lang/ProcessBuilder;
    .restart local v2    # "execBuilder":Ljava/lang/ProcessBuilder;
    goto :goto_3
.end method
