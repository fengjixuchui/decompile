.class public Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/api/utils/ProcessUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessInfo"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public pid:I

.field public ppid:I

.field public uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ppid"    # I
    .param p4, "uid"    # I

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    .line 195
    iput-object p2, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    .line 196
    iput p3, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->ppid:I

    .line 197
    iput p4, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->uid:I

    .line 198
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 215
    if-ne p0, p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    instance-of v2, p1, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 221
    check-cast v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    .line 222
    .local v0, "another":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    iget v2, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    iget v3, v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    if-ne v2, v3, :cond_2

    .line 223
    iget v2, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->ppid:I

    iget v3, v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->ppid:I

    if-ne v2, v3, :cond_2

    .line 224
    iget-object v2, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 226
    iget-object v2, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    .end local v0    # "another":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 203
    const/16 v0, 0x11

    .line 204
    .local v0, "result":I
    iget-object v1, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 206
    :cond_0
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    iget v3, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->pid:I

    ushr-int/lit8 v3, v3, 0x20

    xor-int/2addr v2, v3

    add-int v0, v1, v2

    .line 207
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->ppid:I

    iget v3, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->ppid:I

    ushr-int/lit8 v3, v3, 0x20

    xor-int/2addr v2, v3

    add-int v0, v1, v2

    .line 208
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->uid:I

    iget v3, p0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->uid:I

    ushr-int/lit8 v3, v3, 0x20

    xor-int/2addr v2, v3

    add-int v0, v1, v2

    .line 209
    return v0
.end method
