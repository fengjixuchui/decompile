.class public Lcom/tencent/wstt/gt/PerfStringEntry;
.super Lcom/tencent/wstt/gt/AidlEntry;
.source "PerfStringEntry.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/wstt/gt/PerfStringEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field data:Ljava/lang/String;

.field logTime:J

.field queryEntry:Lcom/tencent/wstt/gt/QueryPerfEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/tencent/wstt/gt/PerfStringEntry$1;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/PerfStringEntry$1;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/PerfStringEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tencent/wstt/gt/AidlEntry;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tencent/wstt/gt/AidlEntry;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/PerfStringEntry;->setFunctionId(I)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->logTime:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->data:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/QueryPerfEntry;

    iput-object v0, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->queryEntry:Lcom/tencent/wstt/gt/QueryPerfEntry;

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getLogTime()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->logTime:J

    return-wide v0
.end method

.method public getQueryEntry()Lcom/tencent/wstt/gt/QueryPerfEntry;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->queryEntry:Lcom/tencent/wstt/gt/QueryPerfEntry;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/AidlEntry;->readFromParcel(Landroid/os/Parcel;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->logTime:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->data:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/QueryPerfEntry;

    iput-object v0, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->queryEntry:Lcom/tencent/wstt/gt/QueryPerfEntry;

    .line 93
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->data:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setLogTime(J)V
    .locals 1
    .param p1, "logTime"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->logTime:J

    .line 59
    return-void
.end method

.method public setQueryEntry(Lcom/tencent/wstt/gt/QueryPerfEntry;)V
    .locals 0
    .param p1, "queryEntry"    # Lcom/tencent/wstt/gt/QueryPerfEntry;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->queryEntry:Lcom/tencent/wstt/gt/QueryPerfEntry;

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/tencent/wstt/gt/AidlEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    iget-wide v0, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->logTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-object v0, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/tencent/wstt/gt/PerfStringEntry;->queryEntry:Lcom/tencent/wstt/gt/QueryPerfEntry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    return-void
.end method
