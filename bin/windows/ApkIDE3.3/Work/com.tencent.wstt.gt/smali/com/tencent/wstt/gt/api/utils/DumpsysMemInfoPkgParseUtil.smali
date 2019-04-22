.class public Lcom/tencent/wstt/gt/api/utils/DumpsysMemInfoPkgParseUtil;
.super Ljava/lang/Object;
.source "DumpsysMemInfoPkgParseUtil.java"


# static fields
.field private static final DUMPSYS_MEM_CMD:Ljava/lang/String; = "dumpsys meminfo"

.field private static final HEAP_ALLOC_INDEX:I = 0x5

.field private static final ITEM_COUNT:I = 0x7

.field private static final KEY_WORD1:Ljava/lang/String; = "Native"

.field private static final KEY_WORD1_2X:Ljava/lang/String; = "allocated:"

.field private static final KEY_WORD2:Ljava/lang/String; = "Dalvik"

.field private static final KEY_WORD2_2X:Ljava/lang/String; = "(Pss):"

.field private static final KEY_WORD3:Ljava/lang/String; = "TOTAL"

.field private static final KEY_WORD3_2X:Ljava/lang/String; = "(priv dirty):"

.field private static final PRIV_INDEX:I = 0x3

.field private static final PSS_INDEX:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMemValues2X(Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 11
    .param p0, "cmdResult"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x2

    .line 128
    const/16 v4, 0x9

    new-array v2, v4, [Ljava/lang/Integer;

    .line 129
    .local v2, "result":[Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    if-nez p0, :cond_1

    .line 179
    :cond_0
    return-object v2

    .line 136
    :cond_1
    const-string v4, "\r\n"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "rows":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 144
    aget-object v4, v3, v1

    const-string v5, "allocated:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_3

    .line 146
    aget-object v4, v3, v1

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "columns":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lt v4, v7, :cond_2

    .line 149
    const/4 v4, 0x6

    aget-object v5, v0, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 150
    const/4 v4, 0x7

    aget-object v5, v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 151
    const/16 v4, 0x8

    aget-object v5, v0, v10

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 142
    .end local v0    # "columns":[Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_3
    aget-object v4, v3, v1

    const-string v5, "(Pss):"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_4

    .line 157
    aget-object v4, v3, v1

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    .restart local v0    # "columns":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lt v4, v7, :cond_2

    .line 160
    const/4 v4, 0x3

    aget-object v5, v0, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 161
    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v10

    .line 162
    aget-object v4, v0, v10

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    goto :goto_1

    .line 166
    .end local v0    # "columns":[Ljava/lang/String;
    :cond_4
    aget-object v4, v3, v1

    const-string v5, "(priv dirty):"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_2

    .line 168
    aget-object v4, v3, v1

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 169
    .restart local v0    # "columns":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    const/4 v5, 0x6

    if-lt v4, v5, :cond_2

    .line 171
    const/4 v4, 0x0

    aget-object v5, v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 172
    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    .line 173
    aget-object v4, v0, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    goto/16 :goto_1
.end method

.method private static getMemValues4X(Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 11
    .param p0, "cmdResult"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 68
    const/16 v4, 0x9

    new-array v2, v4, [Ljava/lang/Integer;

    .line 69
    .local v2, "result":[Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    if-nez p0, :cond_1

    .line 122
    :cond_0
    return-object v2

    .line 76
    :cond_1
    const-string v4, "\r\n"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "rows":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 84
    aget-object v4, v3, v1

    const-string v5, "Native"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v10, :cond_3

    .line 86
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 87
    aget-object v4, v3, v1

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "columns":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-ne v4, v9, :cond_2

    .line 90
    const/4 v4, 0x0

    aget-object v5, v0, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 91
    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    .line 92
    const/4 v4, 0x6

    aget-object v5, v0, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 82
    .end local v0    # "columns":[Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_3
    aget-object v4, v3, v1

    const-string v5, "Dalvik"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v10, :cond_4

    .line 98
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 99
    aget-object v4, v3, v1

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0    # "columns":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-ne v4, v9, :cond_2

    .line 102
    aget-object v4, v0, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    .line 103
    const/4 v4, 0x4

    aget-object v5, v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 104
    aget-object v4, v0, v8

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    goto :goto_1

    .line 108
    .end local v0    # "columns":[Ljava/lang/String;
    :cond_4
    aget-object v4, v3, v1

    const-string v5, "TOTAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v10, :cond_2

    .line 110
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 111
    aget-object v4, v3, v1

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0    # "columns":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-ne v4, v9, :cond_2

    .line 114
    const/4 v4, 0x2

    aget-object v5, v0, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 115
    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    .line 116
    const/16 v4, 0x8

    aget-object v5, v0, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    goto/16 :goto_1
.end method

.method public static run(Ljava/lang/String;I)[Ljava/lang/Integer;
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "androidVersion"    # I

    .prologue
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dumpsys meminfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "cmdstr":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/wstt/gt/api/utils/CMDExecute;->runCMD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "result":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 58
    invoke-static {v1}, Lcom/tencent/wstt/gt/api/utils/DumpsysMemInfoPkgParseUtil;->getMemValues4X(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v2

    .line 62
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1}, Lcom/tencent/wstt/gt/api/utils/DumpsysMemInfoPkgParseUtil;->getMemValues2X(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method
