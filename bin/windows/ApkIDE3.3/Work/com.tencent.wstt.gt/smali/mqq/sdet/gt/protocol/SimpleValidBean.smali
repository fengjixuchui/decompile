.class public Lmqq/sdet/gt/protocol/SimpleValidBean;
.super Ljava/lang/Object;
.source "SimpleValidBean.java"


# instance fields
.field private errorMsg:Ljava/lang/String;

.field private retCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmqq/sdet/gt/protocol/SimpleValidBean;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lmqq/sdet/gt/protocol/SimpleValidBean;->retCode:I

    return v0
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lmqq/sdet/gt/protocol/SimpleValidBean;->errorMsg:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setRetCode(I)V
    .locals 0
    .param p1, "retCode"    # I

    .prologue
    .line 34
    iput p1, p0, Lmqq/sdet/gt/protocol/SimpleValidBean;->retCode:I

    .line 35
    return-void
.end method
