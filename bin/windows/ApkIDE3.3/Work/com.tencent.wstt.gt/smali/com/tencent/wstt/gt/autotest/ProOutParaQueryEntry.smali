.class public Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;
.super Ljava/lang/Object;
.source "ProOutParaQueryEntry.java"


# instance fields
.field public key:Ljava/lang/String;

.field public pid:I

.field public pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->pkgName:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->pid:I

    .line 37
    iput-object p3, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->key:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 43
    if-ne p0, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    instance-of v2, p1, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;

    .line 52
    .local v0, "anotherOne":Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;
    iget v2, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->pid:I

    iget v3, v0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->pid:I

    if-ne v2, v3, :cond_4

    .line 53
    iget-object v2, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->pkgName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->pkgName:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->pkgName:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    :cond_3
    iget-object v2, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->key:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->key:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    .end local v0    # "anotherOne":Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 64
    const/16 v0, 0x11

    .line 65
    .local v0, "result":I
    iget-object v1, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->pkgName:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x275

    .line 66
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->key:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 67
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->pid:I

    iget v3, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->pid:I

    ushr-int/lit8 v3, v3, 0x20

    xor-int/2addr v2, v3

    add-int v0, v1, v2

    .line 69
    return v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->pkgName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/autotest/ProOutParaQueryEntry;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method
