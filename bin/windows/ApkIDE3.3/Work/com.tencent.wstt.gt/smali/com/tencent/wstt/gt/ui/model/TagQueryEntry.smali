.class public Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;
.super Ljava/lang/Object;
.source "TagQueryEntry.java"


# instance fields
.field public exkeys:[I

.field public tag:Ljava/lang/String;

.field public tid:J


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;J[I)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tid"    # J
    .param p4, "exKey"    # [I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->tag:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->tid:J

    .line 35
    iput-object p4, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    move v2, v3

    .line 76
    :cond_0
    :goto_0
    return v2

    .line 45
    :cond_1
    instance-of v5, p1, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;

    if-eqz v5, :cond_b

    move-object v0, p1

    .line 47
    check-cast v0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;

    .line 48
    .local v0, "anotherEntry":Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;
    iget-wide v6, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->tid:J

    iget-wide v8, v0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->tid:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->tag:Ljava/lang/String;

    iget-object v6, v0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 49
    .local v2, "tempResult":Z
    :goto_1
    if-nez v2, :cond_3

    move v2, v4

    .line 51
    goto :goto_0

    .end local v2    # "tempResult":Z
    :cond_2
    move v2, v4

    .line 48
    goto :goto_1

    .line 53
    .restart local v2    # "tempResult":Z
    :cond_3
    iget-object v5, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    if-eqz v5, :cond_0

    .line 57
    :cond_4
    iget-object v5, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    if-nez v5, :cond_5

    iget-object v5, v0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    if-nez v5, :cond_6

    .line 58
    :cond_5
    iget-object v5, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    if-nez v5, :cond_7

    :cond_6
    move v2, v4

    .line 60
    goto :goto_0

    .line 63
    :cond_7
    iget-object v5, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    array-length v5, v5

    iget-object v6, v0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    array-length v6, v6

    if-eq v5, v6, :cond_8

    move v2, v4

    .line 65
    goto :goto_0

    .line 67
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    array-length v5, v5

    if-lt v1, v5, :cond_9

    move v2, v3

    .line 74
    goto :goto_0

    .line 69
    :cond_9
    iget-object v5, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    aget v5, v5, v1

    iget-object v6, v0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    aget v6, v6, v1

    if-eq v5, v6, :cond_a

    move v2, v4

    .line 71
    goto :goto_0

    .line 67
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "anotherEntry":Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;
    .end local v1    # "i":I
    .end local v2    # "tempResult":Z
    :cond_b
    move v2, v4

    .line 76
    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 82
    const/16 v1, 0x11

    .line 83
    .local v1, "result":I
    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit16 v1, v2, 0x275

    .line 84
    mul-int/lit8 v2, v1, 0x25

    iget-wide v4, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->tid:J

    iget-wide v6, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->tid:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 85
    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    array-length v2, v2

    if-lez v2, :cond_0

    .line 87
    iget-object v3, p0, Lcom/tencent/wstt/gt/ui/model/TagQueryEntry;->exkeys:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 92
    :cond_0
    return v1

    .line 87
    :cond_1
    aget v0, v3, v2

    .line 89
    .local v0, "k":I
    mul-int/lit8 v5, v1, 0x25

    add-int v1, v5, v0

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
