.class public Lcom/tencent/wstt/gt/utils/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertNotNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 47
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static final bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bArray"    # [B

    .prologue
    .line 67
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 69
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 70
    :cond_0
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "sTemp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 72
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    const-string v0, "iso-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static hexStringToByte(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 57
    .local v2, "len":I
    new-array v4, v2, [B

    .line 58
    .local v4, "result":[B
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 59
    .local v0, "achar":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 63
    return-object v4

    .line 60
    :cond_0
    mul-int/lit8 v3, v1, 0x2

    .line 61
    .local v3, "pos":I
    aget-char v5, v0, v3

    invoke-static {v5}, Lcom/tencent/wstt/gt/utils/StringUtil;->toByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v0, v6

    invoke-static {v6}, Lcom/tencent/wstt/gt/utils/StringUtil;->toByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 40
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isLetter(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v2, "[^?!@#$%\\^&*(),<>;:]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 118
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 119
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 93
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v3

    .line 97
    :cond_1
    const/4 v2, 0x0

    .line 98
    .local v2, "numStartPos":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2

    .line 100
    const/4 v2, 0x1

    .line 103
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    if-ge v1, v2, :cond_4

    .line 108
    const/4 v3, 0x1

    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 105
    .local v0, "chr":I
    const/16 v4, 0x30

    if-lt v0, v4, :cond_5

    const/16 v4, 0x39

    if-le v0, v4, :cond_3

    :cond_5
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_3

    goto :goto_0
.end method

.method private static toByte(C)B
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 51
    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    int-to-byte v0, v1

    .line 52
    .local v0, "b":B
    return v0
.end method
