.class public Lcom/tencent/wstt/gt/log/logcat/LogLine;
.super Ljava/lang/Object;
.source "LogLine.java"


# static fields
.field public static final LOGCAT_DATE_FORMAT:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field private static final TIMESTAMP_LENGTH:I = 0x13

.field private static logPattern:Ljava/util/regex/Pattern;


# instance fields
.field private expanded:Z

.field private highlighted:Z

.field private logLevel:I

.field private logOutput:Ljava/lang/String;

.field private processId:I

.field private tag:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "(\\w)/([^(]+)\\(\\s*(\\d+)(?:\\*\\s*\\d+)?\\): "

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->logPattern:Ljava/util/regex/Pattern;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->processId:I

    .line 34
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->expanded:Z

    .line 35
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->highlighted:Z

    .line 10
    return-void
.end method

.method public static convertCharToLogLevel(C)I
    .locals 1
    .param p0, "logLevelChar"    # C

    .prologue
    .line 145
    sparse-switch p0, :sswitch_data_0

    .line 157
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 147
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 149
    :sswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 151
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 153
    :sswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 155
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x45 -> :sswitch_1
        0x49 -> :sswitch_2
        0x56 -> :sswitch_3
        0x57 -> :sswitch_4
    .end sparse-switch
.end method

.method public static convertLogLevelToChar(I)C
    .locals 1
    .param p0, "logLevel"    # I

    .prologue
    .line 162
    packed-switch p0, :pswitch_data_0

    .line 174
    const/16 v0, 0x20

    :goto_0
    return v0

    .line 164
    :pswitch_0
    const/16 v0, 0x44

    goto :goto_0

    .line 166
    :pswitch_1
    const/16 v0, 0x45

    goto :goto_0

    .line 168
    :pswitch_2
    const/16 v0, 0x49

    goto :goto_0

    .line 170
    :pswitch_3
    const/16 v0, 0x56

    goto :goto_0

    .line 172
    :pswitch_4
    const/16 v0, 0x57

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static newLogLine(Ljava/lang/String;Z)Lcom/tencent/wstt/gt/log/logcat/LogLine;
    .locals 8
    .param p0, "originalLine"    # Ljava/lang/String;
    .param p1, "expanded"    # Z

    .prologue
    const/4 v7, 0x0

    .line 109
    new-instance v1, Lcom/tencent/wstt/gt/log/logcat/LogLine;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/log/logcat/LogLine;-><init>()V

    .line 110
    .local v1, "logLine":Lcom/tencent/wstt/gt/log/logcat/LogLine;
    invoke-virtual {v1, p1}, Lcom/tencent/wstt/gt/log/logcat/LogLine;->setExpanded(Z)V

    .line 112
    const/4 v3, 0x0

    .line 116
    .local v3, "startIdx":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 119
    const/16 v5, 0x12

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "timestamp":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/tencent/wstt/gt/log/logcat/LogLine;->setTimestamp(Ljava/lang/String;)V

    .line 121
    const/16 v3, 0x13

    .line 124
    .end local v4    # "timestamp":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/tencent/wstt/gt/log/logcat/LogLine;->logPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 126
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 129
    .local v0, "logLevelChar":C
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/logcat/LogLine;->convertCharToLogLevel(C)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/tencent/wstt/gt/log/logcat/LogLine;->setLogLevel(I)V

    .line 130
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/tencent/wstt/gt/log/logcat/LogLine;->setTag(Ljava/lang/String;)V

    .line 131
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/tencent/wstt/gt/log/logcat/LogLine;->setProcessId(I)V

    .line 133
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/tencent/wstt/gt/log/logcat/LogLine;->setLogOutput(Ljava/lang/String;)V

    .line 140
    .end local v0    # "logLevelChar":C
    :goto_0
    return-object v1

    .line 136
    :cond_1
    invoke-virtual {v1, p0}, Lcom/tencent/wstt/gt/log/logcat/LogLine;->setLogOutput(Ljava/lang/String;)V

    .line 137
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/tencent/wstt/gt/log/logcat/LogLine;->setLogLevel(I)V

    goto :goto_0
.end method


# virtual methods
.method public getLogLevel()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->logLevel:I

    return v0
.end method

.method public getLogOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->logOutput:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalLine()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 39
    iget v1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->logLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 40
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->logOutput:Ljava/lang/String;

    .line 57
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->timestamp:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    :cond_1
    iget v1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->logLevel:I

    invoke-static {v1}, Lcom/tencent/wstt/gt/log/logcat/LogLine;->convertLogLevelToChar(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    iget v2, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->processId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->logOutput:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getProcessId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->processId:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->expanded:Z

    return v0
.end method

.method public isHighlighted()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->highlighted:Z

    return v0
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->expanded:Z

    .line 97
    return-void
.end method

.method public setHighlighted(Z)V
    .locals 0
    .param p1, "highlighted"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->highlighted:Z

    .line 105
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .param p1, "logLevel"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->logLevel:I

    .line 65
    return-void
.end method

.method public setLogOutput(Ljava/lang/String;)V
    .locals 0
    .param p1, "logOutput"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->logOutput:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setProcessId(I)V
    .locals 0
    .param p1, "processId"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->processId:I

    .line 84
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->tag:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/logcat/LogLine;->timestamp:Ljava/lang/String;

    .line 91
    return-void
.end method
