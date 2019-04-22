.class Lcom/tencent/wstt/gt/utils/RootUtil$1;
.super Ljava/lang/Object;
.source "RootUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/utils/RootUtil;->getAllRelatedPids(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$suProcess:Ljava/lang/Process;


# direct methods
.method constructor <init>(Ljava/lang/Process;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/utils/RootUtil$1;->val$suProcess:Ljava/lang/Process;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "outputStream":Ljava/io/PrintStream;
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    .line 136
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 137
    iget-object v3, p0, Lcom/tencent/wstt/gt/utils/RootUtil$1;->val$suProcess:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x2000

    .line 136
    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 135
    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v0    # "outputStream":Ljava/io/PrintStream;
    .local v1, "outputStream":Ljava/io/PrintStream;
    :try_start_1
    const-string v2, "ps"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    const-string v2, "exit"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 147
    :cond_0
    return-void

    .line 141
    .end local v1    # "outputStream":Ljava/io/PrintStream;
    .restart local v0    # "outputStream":Ljava/io/PrintStream;
    :catchall_0
    move-exception v2

    .line 142
    :goto_0
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 145
    :cond_1
    throw v2

    .line 141
    .end local v0    # "outputStream":Ljava/io/PrintStream;
    .restart local v1    # "outputStream":Ljava/io/PrintStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "outputStream":Ljava/io/PrintStream;
    .restart local v0    # "outputStream":Ljava/io/PrintStream;
    goto :goto_0
.end method
