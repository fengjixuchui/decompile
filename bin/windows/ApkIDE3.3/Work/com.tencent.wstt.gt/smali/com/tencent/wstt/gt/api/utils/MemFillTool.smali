.class public Lcom/tencent/wstt/gt/api/utils/MemFillTool;
.super Ljava/lang/Object;
.source "MemFillTool.java"


# static fields
.field public static instance:Lcom/tencent/wstt/gt/api/utils/MemFillTool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/MemFillTool;->instance:Lcom/tencent/wstt/gt/api/utils/MemFillTool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/api/utils/MemFillTool;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/MemFillTool;->instance:Lcom/tencent/wstt/gt/api/utils/MemFillTool;

    if-nez v0, :cond_0

    .line 36
    const-string v0, "mem_fill_tool"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/tencent/wstt/gt/api/utils/MemFillTool;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/api/utils/MemFillTool;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/MemFillTool;->instance:Lcom/tencent/wstt/gt/api/utils/MemFillTool;

    .line 39
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/MemFillTool;->instance:Lcom/tencent/wstt/gt/api/utils/MemFillTool;

    return-object v0
.end method


# virtual methods
.method public native fillMem(I)I
.end method

.method public native freeMem()I
.end method
