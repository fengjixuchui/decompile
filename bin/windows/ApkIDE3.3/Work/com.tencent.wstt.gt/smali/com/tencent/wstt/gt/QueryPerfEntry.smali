.class public Lcom/tencent/wstt/gt/QueryPerfEntry;
.super Ljava/lang/Object;
.source "QueryPerfEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/wstt/gt/QueryPerfEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public exkey:I

.field public group:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public tid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/tencent/wstt/gt/QueryPerfEntry$1;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/QueryPerfEntry$1;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/QueryPerfEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->group:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tag:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tid:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->exkey:I

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "tid"    # J
    .param p5, "exKey"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->group:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tag:Ljava/lang/String;

    .line 39
    iput-wide p3, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tid:J

    .line 40
    iput p5, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->exkey:I

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p0, p1, :cond_0

    .line 68
    :goto_0
    return v1

    .line 57
    :cond_0
    instance-of v3, p1, Lcom/tencent/wstt/gt/QueryPerfEntry;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/tencent/wstt/gt/QueryPerfEntry;

    .line 61
    .local v0, "anotherEntry":Lcom/tencent/wstt/gt/QueryPerfEntry;
    iget-wide v4, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tid:J

    iget-wide v6, v0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tid:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tag:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->group:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/wstt/gt/QueryPerfEntry;->group:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    iget v3, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->exkey:I

    iget v4, v0, Lcom/tencent/wstt/gt/QueryPerfEntry;->exkey:I

    if-ne v3, v4, :cond_1

    .line 66
    .local v1, "tempResult":Z
    :goto_1
    goto :goto_0

    .end local v1    # "tempResult":Z
    :cond_1
    move v1, v2

    .line 60
    goto :goto_1

    .end local v0    # "anotherEntry":Lcom/tencent/wstt/gt/QueryPerfEntry;
    :cond_2
    move v1, v2

    .line 68
    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 74
    const/16 v0, 0x11

    .line 75
    .local v0, "result":I
    iget-object v1, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->group:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 76
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 77
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tid:J

    iget-wide v4, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tid:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 78
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->exkey:I

    add-int v0, v1, v2

    .line 79
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->group:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tag:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tid:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->exkey:I

    .line 103
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-wide v0, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->tid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget v0, p0, Lcom/tencent/wstt/gt/QueryPerfEntry;->exkey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void
.end method
