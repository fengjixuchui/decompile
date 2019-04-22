.class Lcom/tencent/wstt/gt/utils/GTUtils$1;
.super Ljava/lang/Object;
.source "GTUtils.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/utils/GTUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 16
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    sget-object v2, Lcom/tencent/wstt/gt/api/utils/Env;->CRASH_LOG_FOLDER:Ljava/io/File;

    .line 168
    .local v2, "crashFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_1

    .line 170
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 173
    :cond_1
    sget-object v3, Lcom/tencent/wstt/gt/api/utils/Env;->GT_CRASH_LOG:Ljava/io/File;

    .line 174
    .local v3, "crashLog":Ljava/io/File;
    const-wide/32 v10, 0xa00000

    .line 175
    .local v10, "limit":J
    const/4 v7, 0x0

    .line 176
    .local v7, "fw":Ljava/io/PrintStream;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 177
    .local v4, "d":Ljava/util/Date;
    const/4 v13, 0x1

    .line 178
    const/4 v14, 0x1

    .line 177
    invoke-static {v13, v14}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    .line 179
    .local v5, "df":Ljava/text/DateFormat;
    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 181
    .local v12, "time":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    cmp-long v13, v14, v10

    if-ltz v13, :cond_2

    .line 183
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 185
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    .line 188
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_3
    :goto_0
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v13, 0x1

    invoke-direct {v9, v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 195
    .local v9, "out":Ljava/io/OutputStream;
    new-instance v8, Ljava/io/PrintStream;

    invoke-direct {v8, v9}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v7    # "fw":Ljava/io/PrintStream;
    .local v8, "fw":Ljava/io/PrintStream;
    move-object v7, v8

    .line 199
    .end local v8    # "fw":Ljava/io/PrintStream;
    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v7    # "fw":Ljava/io/PrintStream;
    :goto_1
    if-eqz v7, :cond_4

    .line 201
    invoke-virtual {v7, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 203
    const-string v13, "\r\n"

    invoke-virtual {v7, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v7}, Ljava/io/PrintStream;->flush()V

    .line 205
    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 207
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 208
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->exitGT()V

    .line 209
    return-void

    .line 189
    :catch_0
    move-exception v6

    .line 190
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 197
    .local v6, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
