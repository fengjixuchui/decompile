.class public Lcom/tencent/wstt/gt/PerfDigitalEntry;
.super Lcom/tencent/wstt/gt/AidlEntry;
.source "PerfDigitalEntry.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/wstt/gt/PerfDigitalEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field datas:[J

.field logTime:J

.field queryEntry:Lcom/tencent/wstt/gt/QueryPerfEntry;

.field validLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/tencent/wstt/gt/PerfDigitalEntry$1;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/PerfDigitalEntry$1;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0}, Lcom/tencent/wstt/gt/AidlEntry;-><init>()V

    .line 47
    iput v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->validLen:I

    .line 48
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->datas:[J

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tencent/wstt/gt/AidlEntry;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/PerfDigitalEntry;->setFunctionId(I)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->logTime:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->validLen:I

    .line 55
    iget v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->validLen:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->datas:[J

    .line 56
    iget-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->datas:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/QueryPerfEntry;

    iput-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->queryEntry:Lcom/tencent/wstt/gt/QueryPerfEntry;

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getData()J
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->datas:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getDatas()[J
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->datas:[J

    return-object v0
.end method

.method public getLogTime()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->logTime:J

    return-wide v0
.end method

.method public getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->queryEntry:Lcom/tencent/wstt/gt/QueryPerfEntry;

    return-object v0
.end method

.method public getValidLen()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->validLen:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/AidlEntry;->readFromParcel(Landroid/os/Parcel;)V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->logTime:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->validLen:I

    .line 112
    iget v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->validLen:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->datas:[J

    .line 113
    iget-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->datas:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/QueryPerfEntry;

    iput-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->queryEntry:Lcom/tencent/wstt/gt/QueryPerfEntry;

    .line 115
    return-void
.end method

.method public setData(J)V
    .locals 3
    .param p1, "data"    # J

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->datas:[J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 77
    return-void
.end method

.method public setDatas([J)V
    .locals 1
    .param p1, "datas"    # [J

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->datas:[J

    .line 83
    array-length v0, p1

    iput v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->validLen:I

    .line 84
    return-void
.end method

.method public setLogTime(J)V
    .locals 1
    .param p1, "logTime"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->logTime:J

    .line 65
    return-void
.end method

.method public setQueryEntry(Lcom/tencent/wstt/gt/QueryPerfEntry;)V
    .locals 0
    .param p1, "queryEntry"    # Lcom/tencent/wstt/gt/QueryPerfEntry;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->queryEntry:Lcom/tencent/wstt/gt/QueryPerfEntry;

    .line 90
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/tencent/wstt/gt/AidlEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    iget-wide v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->logTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->validLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->datas:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 102
    iget-object v0, p0, Lcom/tencent/wstt/gt/PerfDigitalEntry;->queryEntry:Lcom/tencent/wstt/gt/QueryPerfEntry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    return-void
.end method
