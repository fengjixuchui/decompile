.class public Lcom/tencent/wstt/gt/BooleanEntry;
.super Lcom/tencent/wstt/gt/AidlEntry;
.source "BooleanEntry.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/wstt/gt/BooleanEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/tencent/wstt/gt/BooleanEntry$1;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/BooleanEntry$1;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/BooleanEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tencent/wstt/gt/AidlEntry;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tencent/wstt/gt/AidlEntry;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/BooleanEntry;->setFunctionId(I)V

    .line 39
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 40
    .local v0, "datas":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 41
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/tencent/wstt/gt/BooleanEntry;->data:Z

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/BooleanEntry;->data:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/AidlEntry;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 62
    .local v0, "booleanVals":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 63
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/tencent/wstt/gt/BooleanEntry;->data:Z

    .line 64
    return-void
.end method

.method public setData(Z)V
    .locals 0
    .param p1, "data"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/BooleanEntry;->data:Z

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/tencent/wstt/gt/AidlEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 70
    .local v0, "booleanVals":[Z
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tencent/wstt/gt/BooleanEntry;->data:Z

    aput-boolean v2, v0, v1

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 72
    return-void
.end method
