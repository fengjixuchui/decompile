.class public Lcom/tencent/wstt/gt/utils/GTUtils;
.super Ljava/lang/Object;
.source "GTUtils.java"


# static fields
.field private static dateFormatter:Ljava/text/SimpleDateFormat;

.field public static gTUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static gpsDataFormatter:Ljava/text/SimpleDateFormat;

.field private static hasSDCardNotExistWarned:Z

.field private static saveDateFormatter:Ljava/text/SimpleDateFormat;

.field private static saveDateMsFormatter:Ljava/text/SimpleDateFormat;

.field private static saveFormatter:Ljava/text/SimpleDateFormat;

.field private static simpleDateTimeFormat:Ljava/text/SimpleDateFormat;

.field private static simpleTimeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 56
    sput-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->simpleTimeFormat:Ljava/text/SimpleDateFormat;

    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 69
    sput-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->simpleDateTimeFormat:Ljava/text/SimpleDateFormat;

    .line 83
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 82
    sput-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->gpsDataFormatter:Ljava/text/SimpleDateFormat;

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 99
    sput-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->saveFormatter:Ljava/text/SimpleDateFormat;

    .line 113
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 112
    sput-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->saveDateMsFormatter:Ljava/text/SimpleDateFormat;

    .line 126
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 125
    sput-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->saveDateFormatter:Ljava/text/SimpleDateFormat;

    .line 139
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 138
    sput-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 163
    new-instance v0, Lcom/tencent/wstt/gt/utils/GTUtils$1;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/utils/GTUtils$1;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->gTUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 227
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/utils/GTUtils;->hasSDCardNotExistWarned:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copySoToDest(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    return-void
.end method

.method public static copyTcpdump(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "filePath":Ljava/lang/String;
    const-string v6, "tcpdump"

    .line 267
    .local v6, "fileName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "TCPDUMPFN":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 272
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "dir exists!"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 278
    :goto_0
    sget v12, Lcom/tencent/wstt/gt/api/utils/Env;->API:I

    const/16 v13, 0x16

    if-le v12, v13, :cond_1

    const v10, 0x7f040002

    .line 279
    .local v10, "resId":I
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    .line 281
    .local v9, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 283
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/16 v12, 0x2000

    new-array v1, v12, [B

    .line 284
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 285
    .local v3, "count":I
    :goto_2
    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_2

    .line 288
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 289
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "dir":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "resId":I
    :goto_3
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "chmod 777 "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    .line 298
    .local v11, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v11, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 302
    .end local v2    # "command":Ljava/lang/String;
    .end local v11    # "runtime":Ljava/lang/Runtime;
    :goto_4
    return-void

    .line 274
    .restart local v4    # "dir":Ljava/io/File;
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 291
    .end local v4    # "dir":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 292
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 278
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "dir":Ljava/io/File;
    :cond_1
    const v10, 0x7f040001

    goto :goto_1

    .line 286
    .restart local v1    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "resId":I
    :cond_2
    const/4 v12, 0x0

    :try_start_3
    invoke-virtual {v8, v1, v12, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 299
    .end local v1    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "dir":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "resId":I
    :catch_1
    move-exception v5

    .line 300
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static copyalarm(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 306
    .local v7, "filePath":Ljava/lang/String;
    const-string v6, "greattit.mp3"

    .line 307
    .local v6, "fileName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "BUSYBOXFN":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 312
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "dir exists!"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 316
    :goto_0
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f040000

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    .line 319
    .local v9, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 321
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/16 v11, 0x2000

    new-array v1, v11, [B

    .line 322
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 323
    .local v3, "count":I
    :goto_1
    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_2

    .line 326
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 327
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v1    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "dir":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_2
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "chmod 777 "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    .line 336
    .local v10, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v10, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 340
    .end local v2    # "command":Ljava/lang/String;
    .end local v10    # "runtime":Ljava/lang/Runtime;
    :goto_3
    return-void

    .line 314
    .restart local v4    # "dir":Ljava/io/File;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 329
    .end local v4    # "dir":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 330
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 324
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_2
    const/4 v11, 0x0

    :try_start_3
    invoke-virtual {v8, v1, v11, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 337
    .end local v1    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "dir":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 338
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 143
    .local v0, "date":Ljava/util/Date;
    sget-object v1, Lcom/tencent/wstt/gt/utils/GTUtils;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # J

    .prologue
    .line 147
    sget-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGpsSaveTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 87
    .local v0, "date":Ljava/util/Date;
    sget-object v1, Lcom/tencent/wstt/gt/utils/GTUtils;->gpsDataFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getGpsSaveTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # J

    .prologue
    .line 91
    sget-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->gpsDataFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGpsSaveTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 95
    sget-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->gpsDataFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSaveDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 130
    .local v0, "date":Ljava/util/Date;
    sget-object v1, Lcom/tencent/wstt/gt/utils/GTUtils;->saveDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSaveDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # J

    .prologue
    .line 134
    sget-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->saveDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSaveDateMs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 117
    .local v0, "date":Ljava/util/Date;
    sget-object v1, Lcom/tencent/wstt/gt/utils/GTUtils;->saveDateMsFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSaveDateMs(J)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # J

    .prologue
    .line 121
    sget-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->saveDateMsFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSaveTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 104
    .local v0, "date":Ljava/util/Date;
    sget-object v1, Lcom/tencent/wstt/gt/utils/GTUtils;->saveFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSaveTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # J

    .prologue
    .line 108
    sget-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->saveFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemDateTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 74
    .local v0, "date":Ljava/util/Date;
    sget-object v1, Lcom/tencent/wstt/gt/utils/GTUtils;->simpleDateTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSystemDateTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 78
    sget-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->simpleDateTimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 61
    .local v0, "date":Ljava/util/Date;
    sget-object v1, Lcom/tencent/wstt/gt/utils/GTUtils;->simpleTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSystemTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 65
    sget-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->simpleTimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isSDCardExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 215
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    sget-boolean v1, Lcom/tencent/wstt/gt/utils/GTUtils;->hasSDCardNotExistWarned:Z

    if-nez v1, :cond_0

    .line 220
    const-string v1, "\u4fdd\u5b58\u5185\u5bb9\u8bf7\u5148\u63d2\u5165sdcard!!!"

    invoke-static {v1}, Lcom/tencent/wstt/gt/utils/GTUtils;->openToast(Ljava/lang/String;)V

    .line 221
    sput-boolean v0, Lcom/tencent/wstt/gt/utils/GTUtils;->hasSDCardNotExistWarned:Z

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 225
    :cond_1
    return v0
.end method

.method private static openToast(Ljava/lang/String;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 240
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 241
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GTUtils.openToast"

    const-string v3, "Toast when GT App not inited."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setGTUncaughtExceptionHandler()V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/tencent/wstt/gt/utils/GTUtils;->gTUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 157
    return-void
.end method
