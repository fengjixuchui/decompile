.class public Lcom/tencent/wstt/gt/manager/EmptyClient;
.super Lcom/tencent/wstt/gt/manager/Client;
.source "EmptyClient.java"


# static fields
.field private static INSTANCE:Lcom/tencent/wstt/gt/manager/EmptyClient;

.field private static IN_PARA_ADAPTER:Lcom/tencent/wstt/gt/manager/IInParaManager;

.field private static OUT_PARA_ADAPTER:Lcom/tencent/wstt/gt/manager/IOutParaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/tencent/wstt/gt/manager/EmptyClient;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/EmptyClient;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/manager/EmptyClient;->INSTANCE:Lcom/tencent/wstt/gt/manager/EmptyClient;

    .line 32
    invoke-static {}, Lcom/tencent/wstt/gt/manager/EmptyInParaManager;->getInstance()Lcom/tencent/wstt/gt/manager/EmptyInParaManager;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/manager/EmptyClient;->IN_PARA_ADAPTER:Lcom/tencent/wstt/gt/manager/IInParaManager;

    .line 33
    invoke-static {}, Lcom/tencent/wstt/gt/manager/EmptyOutParaManager;->getInstance()Lcom/tencent/wstt/gt/manager/EmptyOutParaManager;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/manager/EmptyClient;->OUT_PARA_ADAPTER:Lcom/tencent/wstt/gt/manager/IOutParaManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "_EMPTY__"

    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/manager/Client;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/manager/EmptyClient;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tencent/wstt/gt/manager/EmptyClient;->INSTANCE:Lcom/tencent/wstt/gt/manager/EmptyClient;

    return-object v0
.end method


# virtual methods
.method public initInParas([Lcom/tencent/wstt/gt/InPara;)Lcom/tencent/wstt/gt/manager/IInParaManager;
    .locals 1
    .param p1, "inParas"    # [Lcom/tencent/wstt/gt/InPara;

    .prologue
    .line 46
    sget-object v0, Lcom/tencent/wstt/gt/manager/EmptyClient;->IN_PARA_ADAPTER:Lcom/tencent/wstt/gt/manager/IInParaManager;

    return-object v0
.end method

.method public initOutParas([Lcom/tencent/wstt/gt/OutPara;)Lcom/tencent/wstt/gt/manager/IOutParaManager;
    .locals 1
    .param p1, "outParas"    # [Lcom/tencent/wstt/gt/OutPara;

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/wstt/gt/manager/EmptyClient;->OUT_PARA_ADAPTER:Lcom/tencent/wstt/gt/manager/IOutParaManager;

    return-object v0
.end method
