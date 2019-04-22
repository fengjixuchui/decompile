.class public Lcom/tencent/wstt/gt/ui/model/StartLogBuff;
.super Lcom/tencent/wstt/gt/ui/model/LogBuff;
.source "StartLogBuff.java"


# static fields
.field public static final CAPACITY:I = 0x10


# instance fields
.field private controller:Lcom/tencent/wstt/gt/log/LogController;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/wstt/gt/log/LogController;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "controller"    # Lcom/tencent/wstt/gt/log/LogController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tencent/wstt/gt/ui/model/LogBuff;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/StartLogBuff;->value:Ljava/lang/StringBuffer;

    .line 38
    iput-object p2, p0, Lcom/tencent/wstt/gt/ui/model/StartLogBuff;->controller:Lcom/tencent/wstt/gt/log/LogController;

    .line 39
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/StartLogBuff;->controller:Lcom/tencent/wstt/gt/log/LogController;

    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/StartLogBuff;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wstt/gt/log/LogController;->addTempLog(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
