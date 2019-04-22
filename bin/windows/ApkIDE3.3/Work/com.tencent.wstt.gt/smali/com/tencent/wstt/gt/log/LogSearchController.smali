.class public Lcom/tencent/wstt/gt/log/LogSearchController;
.super Ljava/lang/Object;
.source "LogSearchController.java"


# instance fields
.field private curShowDownMsgList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private interrupted:Z

.field private lastEntrys:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

.field private lastMatchedEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/MatchedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private lastMatchedSeq:I

.field private lastSearchMsg:Ljava/lang/String;

.field private msgHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sCurSelectedMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->msgHistory:Ljava/util/LinkedList;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->curShowDownMsgList:Ljava/util/LinkedList;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->sCurSelectedMsg:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedEntryList:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedSeq:I

    .line 115
    return-void
.end method

.method public getCurShowDownMsgList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->curShowDownMsgList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getLastEntrys()[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastEntrys:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    return-object v0
.end method

.method public getLastMatched()Lcom/tencent/wstt/gt/ui/model/MatchedEntry;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedEntryList:Ljava/util/List;

    iget v1, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedSeq:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;

    return-object v0
.end method

.method public getLastMatchedEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/MatchedEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedEntryList:Ljava/util/List;

    return-object v0
.end method

.method public getLastMatchedSeq()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedSeq:I

    return v0
.end method

.method public getLastSearchMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastSearchMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgHistory()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->msgHistory:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getsCurSelectedMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->sCurSelectedMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setCurShowDownMsgList(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "curShowDownMsgList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->curShowDownMsgList:Ljava/util/LinkedList;

    .line 149
    return-void
.end method

.method public setLastEntrys([Lcom/tencent/wstt/gt/ui/model/LogEntry;)V
    .locals 9
    .param p1, "lastEntrys"    # [Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastEntrys:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .line 71
    iget-object v7, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastSearchMsg:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    .line 74
    .local v0, "buffLength":I
    iget-object v7, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedEntryList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 75
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p1

    if-lt v2, v7, :cond_1

    .line 101
    :cond_0
    iget-object v7, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedEntryList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 103
    iget-object v7, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedEntryList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedSeq:I

    .line 109
    :goto_1
    return-void

    .line 77
    :cond_1
    iget-boolean v7, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->interrupted:Z

    if-nez v7, :cond_0

    .line 82
    aget-object v3, p1, v2

    .line 83
    .local v3, "log":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    iget-object v7, v3, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "temp":Ljava/lang/String;
    const/4 v5, -0x1

    .line 85
    .local v5, "start":I
    const/4 v1, -0x1

    .line 89
    .local v1, "end":I
    :cond_2
    iget-object v7, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastSearchMsg:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 90
    if-ltz v5, :cond_3

    .line 92
    add-int v1, v5, v0

    .line 93
    new-instance v4, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;

    invoke-direct {v4, v2, v5, v1}, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;-><init>(III)V

    .line 94
    .local v4, "matched":Lcom/tencent/wstt/gt/ui/model/MatchedEntry;
    iget-object v7, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedEntryList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v4    # "matched":Lcom/tencent/wstt/gt/ui/model/MatchedEntry;
    :cond_3
    if-gez v5, :cond_2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "end":I
    .end local v3    # "log":Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .end local v5    # "start":I
    .end local v6    # "temp":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    iput v7, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedSeq:I

    goto :goto_1
.end method

.method public setLastMatchedEntryList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/MatchedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "lastMatchedEntryList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/MatchedEntry;>;"
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedEntryList:Ljava/util/List;

    .line 67
    return-void
.end method

.method public setLastMatchedSeq(I)V
    .locals 0
    .param p1, "lastMatchedSeq"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastMatchedSeq:I

    .line 130
    return-void
.end method

.method public setLastSearchMsg(Ljava/lang/String;)V
    .locals 1
    .param p1, "lastSearchMsg"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->lastSearchMsg:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setMsgHistory(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "msgHistory":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->msgHistory:Ljava/util/LinkedList;

    .line 141
    return-void
.end method

.method public setsCurSelectedMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "sCurSelectedMsg"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/LogSearchController;->sCurSelectedMsg:Ljava/lang/String;

    .line 157
    return-void
.end method
