.class public abstract Lcom/tencent/wstt/gt/AidlEntry;
.super Ljava/lang/Object;
.source "AidlEntry.java"

# interfaces
.implements Lcom/tencent/wstt/gt/AidlTask;


# static fields
.field public static final DISPLAY_AC:I = 0x1

.field public static final DISPLAY_DISABLE:I = 0x2

.field public static final DISPLAY_NORMAL:I = 0x0

.field public static final DISPLAY_TITLE:I = 0x3


# instance fields
.field functionId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getFunctionId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/tencent/wstt/gt/AidlEntry;->functionId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wstt/gt/AidlEntry;->functionId:I

    .line 57
    return-void
.end method

.method public setFunctionId(I)V
    .locals 0
    .param p1, "functionId"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/tencent/wstt/gt/AidlEntry;->functionId:I

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget v0, p0, Lcom/tencent/wstt/gt/AidlEntry;->functionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method
