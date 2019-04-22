.class public Lcom/tencent/wstt/gt/ui/model/ValueBuff;
.super Lcom/tencent/wstt/gt/ui/model/LogBuff;
.source "ValueBuff.java"


# static fields
.field public static final capacity:I = 0x1000


# instance fields
.field private controller:Lcom/tencent/wstt/gt/log/LogController;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuffer;Lcom/tencent/wstt/gt/log/LogController;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/StringBuffer;
    .param p2, "controller"    # Lcom/tencent/wstt/gt/log/LogController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tencent/wstt/gt/ui/model/LogBuff;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/tencent/wstt/gt/ui/model/ValueBuff;->controller:Lcom/tencent/wstt/gt/log/LogController;

    .line 35
    iput-object p1, p0, Lcom/tencent/wstt/gt/ui/model/ValueBuff;->value:Ljava/lang/StringBuffer;

    .line 36
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/ValueBuff;->controller:Lcom/tencent/wstt/gt/log/LogController;

    iget-object v1, p0, Lcom/tencent/wstt/gt/ui/model/ValueBuff;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/log/LogController;->add2Save(Ljava/lang/StringBuffer;)V

    .line 41
    return-void
.end method
