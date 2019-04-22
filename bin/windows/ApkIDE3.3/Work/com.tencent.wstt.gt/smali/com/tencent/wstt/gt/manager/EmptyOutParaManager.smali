.class public Lcom/tencent/wstt/gt/manager/EmptyOutParaManager;
.super Lcom/tencent/wstt/gt/manager/IOutParaManager;
.source "EmptyOutParaManager.java"


# static fields
.field private static INSTANCE:Lcom/tencent/wstt/gt/manager/EmptyOutParaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/tencent/wstt/gt/manager/EmptyOutParaManager;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/EmptyOutParaManager;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/manager/EmptyOutParaManager;->INSTANCE:Lcom/tencent/wstt/gt/manager/EmptyOutParaManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/tencent/wstt/gt/manager/EmptyClient;->getInstance()Lcom/tencent/wstt/gt/manager/EmptyClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/manager/IOutParaManager;-><init>(Lcom/tencent/wstt/gt/manager/Client;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/manager/EmptyOutParaManager;->outParaMap:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/manager/EmptyOutParaManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/tencent/wstt/gt/manager/EmptyOutParaManager;->INSTANCE:Lcom/tencent/wstt/gt/manager/EmptyOutParaManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isOutParaExsit(Lcom/tencent/wstt/gt/OutPara;)Z
    .locals 1
    .param p1, "para"    # Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public register(Lcom/tencent/wstt/gt/OutPara;)V
    .locals 0
    .param p1, "para"    # Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 48
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "typeProperty"    # I

    .prologue
    .line 52
    return-void
.end method

.method public removeOutPara(Ljava/lang/String;)V
    .locals 0
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public setOutparaMonitor(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 68
    return-void
.end method
