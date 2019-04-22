.class public Lcom/tencent/wstt/gt/log/logcat/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concatenate([I[I)[I
    .locals 4
    .param p0, "first"    # [I
    .param p1, "second"    # [I

    .prologue
    .line 70
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v1, v2, [I

    .line 71
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 74
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 77
    return-object v1

    .line 72
    :cond_0
    aget v2, p0, v0

    aput v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    array-length v2, p0

    add-int/2addr v2, v0

    aget v3, p1, v0

    aput v3, v1, v2

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static concatenate([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0, "first"    # [Ljava/lang/Object;
    .param p1, "second"    # [Ljava/lang/Object;

    .prologue
    .line 59
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v1, v2, [Ljava/lang/Object;

    .line 60
    .local v1, "result":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 63
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 66
    return-object v1

    .line 61
    :cond_0
    aget-object v2, p0, v0

    aput-object v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    array-length v2, p0

    add-int/2addr v2, v0

    aget-object v3, p1, v0

    aput-object v3, v1, v2

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static concatenate([Z[Z)[Z
    .locals 4
    .param p0, "first"    # [Z
    .param p1, "second"    # [Z

    .prologue
    .line 81
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v1, v2, [Z

    .line 82
    .local v1, "result":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 85
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 88
    return-object v1

    .line 83
    :cond_0
    aget-boolean v2, p0, v0

    aput-boolean v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    array-length v2, p0

    add-int/2addr v2, v0

    aget-boolean v3, p1, v0

    aput-boolean v3, v1, v2

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "arr"    # [I
    .param p1, "value"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 97
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 93
    :cond_0
    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    .line 94
    const/4 v1, 0x1

    goto :goto_1

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static copyOf([II)[I
    .locals 3
    .param p0, "original"    # [I
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 40
    new-array v0, p1, [I

    .line 41
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tencent/wstt/gt/log/logcat/ArrayUtil;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p2, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    const/4 v2, 0x0

    .line 52
    const-class v1, [Ljava/lang/Object;

    if-ne p2, v1, :cond_0

    new-array v0, p1, [Ljava/lang/Object;

    .line 54
    .local v0, "copy":[Ljava/lang/Object;
    :goto_0
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    return-object v0

    .line 53
    .end local v0    # "copy":[Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method

.method public static copyOf([ZI)[Z
    .locals 3
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 34
    new-array v0, p1, [Z

    .line 35
    .local v0, "copy":[Z
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    return-object v0
.end method

.method public static copyOfRange([III)[I
    .locals 4
    .param p0, "original"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 20
    if-gt p1, p2, :cond_1

    .line 21
    array-length v3, p0

    if-lt v3, p1, :cond_0

    if-ltz p1, :cond_0

    .line 22
    sub-int v2, p2, p1

    .line 23
    .local v2, "length":I
    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 24
    .local v1, "copyLength":I
    new-array v0, v2, [I

    .line 25
    .local v0, "copy":[I
    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    return-object v0

    .line 28
    .end local v0    # "copy":[I
    .end local v1    # "copyLength":I
    .end local v2    # "length":I
    :cond_0
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 30
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 14
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 10
    .restart local v0    # "i":I
    :cond_1
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toArray(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 103
    .local v1, "result":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 106
    return-object v1

    .line 104
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
