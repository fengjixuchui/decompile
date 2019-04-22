.class public Lcom/tencent/wstt/gt/ui/model/EndLogBuff;
.super Lcom/tencent/wstt/gt/ui/model/LogBuff;
.source "EndLogBuff.java"


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
    .line 33
    invoke-direct {p0}, Lcom/tencent/wstt/gt/ui/model/LogBuff;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/ui/model/EndLogBuff;->value:Ljava/lang/StringBuffer;

    .line 35
    iput-object p2, p0, Lcom/tencent/wstt/gt/ui/model/EndLogBuff;->controller:Lcom/tencent/wstt/gt/log/LogController;

    .line 36
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/EndLogBuff;->controller:Lcom/tencent/wstt/gt/log/LogController;

    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/EndLogBuff;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/log/LogController;->removeTempLog(Ljava/lang/String;)V

    .line 41
    return-void
.end method
