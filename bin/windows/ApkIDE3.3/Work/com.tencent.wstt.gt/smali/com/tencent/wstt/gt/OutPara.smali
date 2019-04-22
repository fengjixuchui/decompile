.class public Lcom/tencent/wstt/gt/OutPara;
.super Lcom/tencent/wstt/gt/AidlEntry;
.source "OutPara.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alert:Z

.field private alias:Ljava/lang/String;

.field private cacheHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private client:Ljava/lang/String;

.field private displayProperty:I

.field private freezValue:Ljava/lang/String;

.field public hasMonitorOnce:Z

.field private isGlobal:Z

.field private isRegistering:Z

.field private key:Ljava/lang/String;

.field private monitor:Z

.field private time:J

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/tencent/wstt/gt/OutPara$1;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/OutPara$1;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/OutPara;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 194
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/tencent/wstt/gt/AidlEntry;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/wstt/gt/OutPara;->time:J

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/OutPara;->alert:Z

    .line 81
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/OutPara;->setFunctionId(I)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->cacheHistory:Ljava/util/List;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/tencent/wstt/gt/AidlEntry;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/wstt/gt/OutPara;->time:J

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/OutPara;->alert:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/OutPara;->setFunctionId(I)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->key:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->alias:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->value:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->freezValue:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wstt/gt/OutPara;->displayProperty:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->cacheHistory:Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->cacheHistory:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/OutPara;->time:J

    .line 95
    return-void
.end method


# virtual methods
.method public addHistory(Ljava/lang/String;)V
    .locals 1
    .param p1, "h"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->cacheHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->client:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayProperty()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/tencent/wstt/gt/OutPara;->displayProperty:I

    return v0
.end method

.method public getFreezValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->freezValue:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isAlert()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/OutPara;->alert:Z

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/OutPara;->isGlobal:Z

    return v0
.end method

.method public isMonitor()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/OutPara;->monitor:Z

    return v0
.end method

.method public isRegistering()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/OutPara;->isRegistering:Z

    return v0
.end method

.method public setAlert(Z)V
    .locals 0
    .param p1, "alert"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/OutPara;->alert:Z

    .line 70
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tencent/wstt/gt/OutPara;->alias:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setClient(Ljava/lang/String;)V
    .locals 0
    .param p1, "client"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tencent/wstt/gt/OutPara;->client:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setDisplayProperty(I)V
    .locals 0
    .param p1, "displayProperty"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/tencent/wstt/gt/OutPara;->displayProperty:I

    .line 128
    return-void
.end method

.method public setFreezValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "freezValue"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tencent/wstt/gt/OutPara;->freezValue:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setGlobal(Z)V
    .locals 0
    .param p1, "isGlobal"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/OutPara;->isGlobal:Z

    .line 136
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tencent/wstt/gt/OutPara;->key:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setMonitor(Z)V
    .locals 0
    .param p1, "monitor"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/OutPara;->monitor:Z

    .line 78
    return-void
.end method

.method public setRegistering(Z)V
    .locals 0
    .param p1, "isRegistering"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/OutPara;->isRegistering:Z

    .line 132
    return-void
.end method

.method public setValue(JLjava/lang/String;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 114
    if-nez p3, :cond_0

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->value:Ljava/lang/String;

    .line 119
    :goto_0
    iput-wide p1, p0, Lcom/tencent/wstt/gt/OutPara;->time:J

    .line 120
    return-void

    .line 117
    :cond_0
    iput-object p3, p0, Lcom/tencent/wstt/gt/OutPara;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->value:Ljava/lang/String;

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/tencent/wstt/gt/OutPara;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/tencent/wstt/gt/AidlEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 178
    iget-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget v0, p0, Lcom/tencent/wstt/gt/OutPara;->displayProperty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Lcom/tencent/wstt/gt/OutPara;->cacheHistory:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 183
    iget-wide v0, p0, Lcom/tencent/wstt/gt/OutPara;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    return-void
.end method
