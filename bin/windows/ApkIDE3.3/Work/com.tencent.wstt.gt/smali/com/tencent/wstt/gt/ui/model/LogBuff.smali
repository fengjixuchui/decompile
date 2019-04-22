.class public abstract Lcom/tencent/wstt/gt/ui/model/LogBuff;
.super Ljava/lang/Object;
.source "LogBuff.java"


# instance fields
.field protected value:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public getValue()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/wstt/gt/ui/model/LogBuff;->value:Ljava/lang/StringBuffer;

    return-object v0
.end method
