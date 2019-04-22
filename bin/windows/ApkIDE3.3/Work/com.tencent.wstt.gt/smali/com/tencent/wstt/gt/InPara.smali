.class public Lcom/tencent/wstt/gt/InPara;
.super Lcom/tencent/wstt/gt/AidlEntry;
.source "InPara.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alias:Ljava/lang/String;

.field private client:Ljava/lang/String;

.field private displayProperty:I

.field private isGlobal:Z

.field private isRegistering:Z

.field private key:Ljava/lang/String;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/tencent/wstt/gt/InPara$1;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/InPara$1;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/InPara;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/tencent/wstt/gt/AidlEntry;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/InPara;->values:Ljava/util/List;

    .line 56
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/InPara;->setFunctionId(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/tencent/wstt/gt/AidlEntry;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/InPara;->values:Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/InPara;->setFunctionId(I)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/InPara;->key:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/InPara;->alias:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/tencent/wstt/gt/InPara;->values:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wstt/gt/InPara;->displayProperty:I

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/wstt/gt/InPara;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/wstt/gt/InPara;->client:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayProperty()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/tencent/wstt/gt/InPara;->displayProperty:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/wstt/gt/InPara;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/wstt/gt/InPara;->values:Ljava/util/List;

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/InPara;->isGlobal:Z

    return v0
.end method

.method public isRegistering()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/InPara;->isRegistering:Z

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tencent/wstt/gt/InPara;->alias:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setClient(Ljava/lang/String;)V
    .locals 0
    .param p1, "client"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tencent/wstt/gt/InPara;->client:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setDisplayProperty(I)V
    .locals 0
    .param p1, "displayProperty"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/tencent/wstt/gt/InPara;->displayProperty:I

    .line 81
    return-void
.end method

.method public setGlobal(Z)V
    .locals 0
    .param p1, "isGlobal"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/InPara;->isGlobal:Z

    .line 89
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/wstt/gt/InPara;->key:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setRegistering(Z)V
    .locals 0
    .param p1, "isRegistering"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/InPara;->isRegistering:Z

    .line 85
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tencent/wstt/gt/InPara;->values:Ljava/util/List;

    .line 77
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/tencent/wstt/gt/AidlEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 123
    iget-object v0, p0, Lcom/tencent/wstt/gt/InPara;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/tencent/wstt/gt/InPara;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/tencent/wstt/gt/InPara;->values:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 126
    iget v0, p0, Lcom/tencent/wstt/gt/InPara;->displayProperty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return-void
.end method
