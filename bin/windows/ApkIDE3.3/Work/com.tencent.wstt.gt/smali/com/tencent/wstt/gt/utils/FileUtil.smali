.class public Lcom/tencent/wstt/gt/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static CSV_AND_DESC_FILTER:Ljava/io/FilenameFilter; = null

.field public static CSV_FILTER:Ljava/io/FilenameFilter; = null

.field public static DESC_FILTER:Ljava/io/FilenameFilter; = null

.field private static final TAG:Ljava/lang/String; = "--FileUtil--"

.field public static final separator:Ljava/lang/String; = "/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/tencent/wstt/gt/utils/FileUtil$1;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/utils/FileUtil$1;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/utils/FileUtil;->CSV_FILTER:Ljava/io/FilenameFilter;

    .line 64
    new-instance v0, Lcom/tencent/wstt/gt/utils/FileUtil$2;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/utils/FileUtil$2;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/utils/FileUtil;->DESC_FILTER:Ljava/io/FilenameFilter;

    .line 75
    new-instance v0, Lcom/tencent/wstt/gt/utils/FileUtil$3;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/utils/FileUtil$3;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/utils/FileUtil;->CSV_AND_DESC_FILTER:Ljava/io/FilenameFilter;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeFileChannel(Ljava/nio/channels/FileChannel;)V
    .locals 1
    .param p0, "chl"    # Ljava/nio/channels/FileChannel;

    .prologue
    .line 307
    if-eqz p0, :cond_0

    .line 309
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 277
    if-eqz p0, :cond_0

    .line 279
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 292
    if-eqz p0, :cond_0

    .line 294
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeRandomAccessFile(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p0, "f"    # Ljava/io/RandomAccessFile;

    .prologue
    .line 323
    if-eqz p0, :cond_0

    .line 325
    :try_start_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeReader(Ljava/io/Reader;)V
    .locals 1
    .param p0, "br"    # Ljava/io/Reader;

    .prologue
    .line 232
    if-eqz p0, :cond_0

    .line 234
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeWriter(Ljava/io/Writer;)V
    .locals 1
    .param p0, "wr"    # Ljava/io/Writer;

    .prologue
    .line 247
    if-eqz p0, :cond_0

    .line 249
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static colseLocalSocket(Landroid/net/LocalSocket;)V
    .locals 1
    .param p0, "s"    # Landroid/net/LocalSocket;

    .prologue
    .line 355
    if-eqz p0, :cond_0

    .line 357
    :try_start_0
    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static colseSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "s"    # Ljava/net/Socket;

    .prologue
    .line 339
    if-eqz p0, :cond_0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static convertValidFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "defPosfix"    # Ljava/lang/String;

    .prologue
    .line 127
    move-object v0, p0

    .line 128
    .local v0, "filePath":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\\"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    :cond_0
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, "la":I
    if-gez v1, :cond_2

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .end local v1    # "la":I
    :cond_1
    :goto_0
    return-object v0

    .line 133
    .restart local v1    # "la":I
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "temp":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    goto :goto_0

    .line 141
    .end local v1    # "la":I
    .end local v2    # "temp":Ljava/lang/String;
    :cond_4
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p0, "s"    # Ljava/io/File;
    .param p1, "t"    # Ljava/io/File;

    .prologue
    .line 399
    const/4 v7, 0x0

    .line 400
    .local v7, "fi":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 401
    .local v9, "fo":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 402
    .local v1, "in":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 405
    .local v6, "out":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 410
    :cond_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .local v8, "fi":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 412
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .local v10, "fo":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 413
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 415
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 419
    invoke-static {v10}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 420
    invoke-static {v8}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 421
    invoke-static {v1}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeFileChannel(Ljava/nio/channels/FileChannel;)V

    .line 422
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeFileChannel(Ljava/nio/channels/FileChannel;)V

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 424
    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 419
    invoke-static {v9}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 420
    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 421
    invoke-static {v1}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeFileChannel(Ljava/nio/channels/FileChannel;)V

    .line 422
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeFileChannel(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 418
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 419
    :goto_2
    invoke-static {v9}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 420
    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 421
    invoke-static {v1}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeFileChannel(Ljava/nio/channels/FileChannel;)V

    .line 422
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeFileChannel(Ljava/nio/channels/FileChannel;)V

    .line 423
    throw v2

    .line 418
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_2

    .line 416
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static copyInputToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 430
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/16 v7, 0x2800

    :try_start_0
    new-array v3, v7, [B

    .line 431
    .local v3, "buffer":[B
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 433
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    :try_start_2
    array-length v8, v3

    invoke-virtual {v2, v3, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    .line 434
    .local v0, "a":I
    :goto_0
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 442
    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 443
    invoke-static {v2}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 444
    invoke-static {p0}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 446
    .end local v0    # "a":I
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "buffer":[B
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :goto_1
    return-void

    .line 435
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "a":I
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "buffer":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v6, v3, v7, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 436
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 437
    const/4 v7, 0x0

    array-length v8, v3

    invoke-virtual {v2, v3, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    goto :goto_0

    .line 439
    .end local v0    # "a":I
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "buffer":[B
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 440
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 442
    invoke-static {v5}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 443
    invoke-static {v1}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 444
    invoke-static {p0}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_1

    .line 441
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 442
    :goto_3
    invoke-static {v5}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 443
    invoke-static {v1}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 444
    invoke-static {p0}, Lcom/tencent/wstt/gt/utils/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 445
    throw v7

    .line 441
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "buffer":[B
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 439
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method public static createDir(Ljava/io/File;)V
    .locals 2
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 213
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/Env;->isSDCardExist()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createDir(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/Env;->isSDCardExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const/4 v1, 0x0

    .line 208
    :goto_0
    return v1

    .line 204
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0

    .line 208
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static delExistFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 190
    :cond_0
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 377
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 386
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 390
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 382
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 383
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/tencent/wstt/gt/utils/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_2
    const-string v2, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff01n"

    invoke-static {v2}, Lcom/tencent/wstt/gt/utils/FileUtil;->openToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static flushWriter(Ljava/io/Writer;)V
    .locals 1
    .param p0, "wr"    # Ljava/io/Writer;

    .prologue
    .line 262
    if-eqz p0, :cond_0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, "la":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "subPath":Ljava/lang/String;
    return-object v1
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 4
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 152
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 160
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return v2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isFileValid(Ljava/io/File;)Z
    .locals 2
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 164
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 173
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFileValid(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->isFileValid(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static isPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPathStringValid(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 88
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    const-string v1, ">"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    :cond_2
    const-string v1, "--FileUtil--"

    const-string v2, "filename can not contains:*:?\"<>|"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static openToast(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 370
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 372
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 373
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 374
    return-void
.end method
