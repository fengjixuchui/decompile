.class public Lcom/tencent/wstt/gt/log/SearchLogAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchLogAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dataSet:[Lcom/tencent/wstt/gt/ui/model/LogEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/tencent/wstt/gt/ui/model/LogEntry;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataSet"    # [Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/SearchLogAdapter;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/tencent/wstt/gt/log/SearchLogAdapter;->dataSet:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .line 56
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/SearchLogAdapter;->dataSet:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/SearchLogAdapter;->dataSet:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/log/SearchLogAdapter;->getItem(I)Lcom/tencent/wstt/gt/ui/model/LogEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    if-nez p2, :cond_1

    .line 83
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/log/SearchLogAdapter;->context:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 84
    const v14, 0x7f030014

    const/4 v15, 0x0

    .line 83
    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 89
    .local v1, "ll":Landroid/widget/LinearLayout;
    :goto_0
    const v13, 0x7f080092

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 90
    .local v12, "tvSeq":Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v13, 0x7f080093

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 94
    .local v11, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/log/SearchLogAdapter;->dataSet:[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    aget-object v13, v13, p1

    iget-object v8, v13, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    .line 95
    .local v8, "target":Ljava/lang/String;
    const-string v13, "/"

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v7, v13, 0x1

    .line 96
    .local v7, "tagStart":I
    const-string v13, "("

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 97
    .local v6, "tagEnd":I
    add-int/lit8 v10, v6, 0x1

    .line 98
    .local v10, "tidStart":I
    const-string v13, ")"

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 100
    .local v9, "tidEnd":I
    if-ge v7, v6, :cond_5

    if-ge v10, v9, :cond_5

    .line 102
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    .local v5, "ss":Landroid/text/SpannableString;
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    const/16 v14, 0xff

    const/16 v15, 0x9f

    const/16 v16, 0x9f

    const/16 v17, 0x9e

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 104
    const/4 v14, 0x0

    const/16 v15, 0x13

    const/16 v16, 0x21

    .line 103
    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    const/16 v14, 0xff

    const/16 v15, 0xcb

    const/16 v16, 0x74

    const/16 v17, 0x18

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 106
    const/16 v14, 0x14

    const/16 v15, 0x15

    const/16 v16, 0x21

    .line 105
    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 107
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    const/16 v14, 0xff

    const/16 v15, 0xcb

    const/16 v16, 0x74

    const/16 v17, 0x18

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 108
    const/16 v14, 0x21

    .line 107
    invoke-virtual {v5, v13, v7, v6, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 109
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    const/16 v14, 0xff

    const/16 v15, 0xcb

    const/16 v16, 0x74

    const/16 v17, 0x18

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 110
    const/16 v14, 0x21

    .line 109
    invoke-virtual {v5, v13, v10, v9, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 113
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 115
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v3

    .line 117
    .local v3, "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/MatchedEntry;>;"
    const/4 v4, 0x0

    .local v4, "matchedSeq":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-lt v4, v13, :cond_2

    .line 144
    .end local v3    # "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/MatchedEntry;>;"
    .end local v4    # "matchedSeq":I
    :cond_0
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .end local v5    # "ss":Landroid/text/SpannableString;
    :goto_2
    return-object v1

    .end local v1    # "ll":Landroid/widget/LinearLayout;
    .end local v6    # "tagEnd":I
    .end local v7    # "tagStart":I
    .end local v8    # "target":Ljava/lang/String;
    .end local v9    # "tidEnd":I
    .end local v10    # "tidStart":I
    .end local v11    # "tv":Landroid/widget/TextView;
    .end local v12    # "tvSeq":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v1, p2

    .line 86
    check-cast v1, Landroid/widget/LinearLayout;

    .restart local v1    # "ll":Landroid/widget/LinearLayout;
    goto/16 :goto_0

    .line 119
    .restart local v3    # "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/MatchedEntry;>;"
    .restart local v4    # "matchedSeq":I
    .restart local v5    # "ss":Landroid/text/SpannableString;
    .restart local v6    # "tagEnd":I
    .restart local v7    # "tagStart":I
    .restart local v8    # "target":Ljava/lang/String;
    .restart local v9    # "tidEnd":I
    .restart local v10    # "tidStart":I
    .restart local v11    # "tv":Landroid/widget/TextView;
    .restart local v12    # "tvSeq":Landroid/widget/TextView;
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;

    .line 120
    .local v2, "mached":Lcom/tencent/wstt/gt/ui/model/MatchedEntry;
    iget v13, v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->posionInDataSet:I

    move/from16 v0, p1

    if-gt v13, v0, :cond_0

    .line 124
    iget v13, v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->posionInDataSet:I

    move/from16 v0, p1

    if-ne v13, v0, :cond_3

    .line 126
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    const/16 v14, 0xff

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 127
    iget v14, v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->start:I

    iget v15, v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->end:I

    const/16 v16, 0x21

    .line 126
    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 130
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedSeq()I

    move-result v13

    if-ne v4, v13, :cond_4

    .line 132
    new-instance v13, Landroid/text/style/BackgroundColorSpan;

    const/16 v14, 0xff

    const/16 v15, 0xdd

    const/16 v16, 0xff

    const/16 v17, 0x43

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 133
    iget v14, v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->start:I

    iget v15, v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->end:I

    const/16 v16, 0x21

    .line 132
    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 117
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 137
    :cond_4
    new-instance v13, Landroid/text/style/BackgroundColorSpan;

    const/16 v14, 0xff

    const/16 v15, 0x38

    const/16 v16, 0xad

    const/16 v17, 0x29

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 138
    iget v14, v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->start:I

    iget v15, v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->end:I

    const/16 v16, 0x21

    .line 137
    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 149
    .end local v2    # "mached":Lcom/tencent/wstt/gt/ui/model/MatchedEntry;
    .end local v3    # "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/ui/model/MatchedEntry;>;"
    .end local v4    # "matchedSeq":I
    .end local v5    # "ss":Landroid/text/SpannableString;
    :cond_5
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
