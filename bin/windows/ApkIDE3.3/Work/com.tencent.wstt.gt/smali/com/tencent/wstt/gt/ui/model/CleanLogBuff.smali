.class public Lcom/tencent/wstt/gt/ui/model/CleanLogBuff;
.super Lcom/tencent/wstt/gt/ui/model/LogBuff;
.source "CleanLogBuff.java"


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
    .line 34
    invoke-direct {p0}, Lcom/tencent/wstt/gt/ui/model/LogBuff;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/CleanLogBuff;->value:Ljava/lang/StringBuffer;

    .line 36
    iput-object p2, p0, Lcom/tencent/wstt/gt/ui/model/CleanLogBuff;->controller:Lcom/tencent/wstt/gt/log/LogController;

    .line 37
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/CleanLogBuff;->controller:Lcom/tencent/wstt/gt/log/LogController;

    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/CleanLogBuff;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/log/LogController;->cleanTempLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/tencent/wstt/gt/log/CleanTempLogException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lcom/tencent/wstt/gt/log/CleanTempLogException;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/CleanTempLogException;->printStackTrace()V

    goto :goto_0
.end method
