.class public final Lcom/google/zxing/integration/android/IntentResult;
.super Ljava/lang/Object;
.source "IntentResult.java"


# instance fields
.field private final contents:Ljava/lang/String;

.field private final errorCorrectionLevel:Ljava/lang/String;

.field private final formatName:Ljava/lang/String;

.field private final orientation:Ljava/lang/Integer;

.field private final rawBytes:[B


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 33
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "formatName"    # Ljava/lang/String;
    .param p3, "rawBytes"    # [B
    .param p4, "orientation"    # Ljava/lang/Integer;
    .param p5, "errorCorrectionLevel"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentResult;->contents:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/google/zxing/integration/android/IntentResult;->formatName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    .line 44
    iput-object p4, p0, Lcom/google/zxing/integration/android/IntentResult;->orientation:Ljava/lang/Integer;

    .line 45
    iput-object p5, p0, Lcom/google/zxing/integration/android/IntentResult;->errorCorrectionLevel:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCorrectionLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->errorCorrectionLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->formatName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->orientation:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    .local v0, "dialogText":Ljava/lang/StringBuilder;
    const-string v2, "Format: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/integration/android/IntentResult;->formatName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    const-string v2, "Contents: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/integration/android/IntentResult;->contents:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 89
    .local v1, "rawBytesLength":I
    :goto_0
    const-string v2, "Raw bytes: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, "Orientation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/integration/android/IntentResult;->orientation:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    const-string v2, "EC level: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/integration/android/IntentResult;->errorCorrectionLevel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 88
    .end local v1    # "rawBytesLength":I
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    array-length v1, v2

    goto :goto_0
.end method
