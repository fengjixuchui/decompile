.class public Lcom/tencent/wstt/gt/manager/EmptyInParaManager;
.super Ljava/lang/Object;
.source "EmptyInParaManager.java"

# interfaces
.implements Lcom/tencent/wstt/gt/manager/IInParaManager;


# static fields
.field private static INSTANCE:Lcom/tencent/wstt/gt/manager/EmptyInParaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/tencent/wstt/gt/manager/EmptyInParaManager;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/EmptyInParaManager;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/manager/EmptyInParaManager;->INSTANCE:Lcom/tencent/wstt/gt/manager/EmptyInParaManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/manager/EmptyInParaManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/tencent/wstt/gt/manager/EmptyInParaManager;->INSTANCE:Lcom/tencent/wstt/gt/manager/EmptyInParaManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInPara(Ljava/lang/String;B)B
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # B

    .prologue
    .line 118
    const/4 v0, -0x1

    return v0
.end method

.method public getInPara(Ljava/lang/String;D)D
    .locals 2
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # D

    .prologue
    .line 108
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getInPara(Ljava/lang/String;F)F
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # F

    .prologue
    .line 103
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getInPara(Ljava/lang/String;I)I
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # I

    .prologue
    .line 98
    const/4 v0, -0x1

    return v0
.end method

.method public getInPara(Ljava/lang/String;J)J
    .locals 2
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # J

    .prologue
    .line 123
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getInPara(I)Lcom/tencent/wstt/gt/InPara;
    .locals 1
    .param p1, "positon"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInPara(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInPara(Ljava/lang/String;S)S
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # S

    .prologue
    .line 113
    const/4 v0, -0x1

    return v0
.end method

.method public getInPara(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "origVal"    # Z

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public register(Lcom/tencent/wstt/gt/InPara;)V
    .locals 0
    .param p1, "para"    # Lcom/tencent/wstt/gt/InPara;

    .prologue
    .line 54
    return-void
.end method

.method public varargs register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "paraName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "optionalValues"    # [Ljava/lang/String;

    .prologue
    .line 49
    return-void
.end method

.method public removeOutPara(Ljava/lang/String;)V
    .locals 0
    .param p1, "paraName"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method
