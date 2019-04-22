.class public Lcom/tencent/wstt/gt/log/NormalLogAdapter;
.super Landroid/widget/BaseAdapter;
.source "NormalLogAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected dataSetLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private filter:Landroid/widget/Filter;

.field private flag_auto_refresh:Z

.field private flag_filter_condition_changed:Z

.field private queryLevel:I

.field private queryMsg:Ljava/lang/String;

.field private queryTag:Ljava/lang/String;

.field private tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/wstt/gt/log/RemoveRangeArrayList",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/LogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    iput v1, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryLevel:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryTag:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryMsg:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->flag_filter_condition_changed:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->flag_auto_refresh:Z

    .line 72
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->dataSetLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 78
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->context:Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getNormalLogList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->dataSet:Ljava/util/List;

    .line 80
    return-void
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/log/NormalLogAdapter;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->flag_filter_condition_changed:Z

    return-void
.end method

.method static synthetic access$10(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->flag_filter_condition_changed:Z

    return v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryLevel:I

    return v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/log/NormalLogAdapter;Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    return-void
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/log/NormalLogAdapter;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->dataSet:Ljava/util/List;

    return-void
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->dataSet:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->flag_auto_refresh:Z

    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->tempDataSet:Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/RemoveRangeArrayList;->clear()V

    .line 111
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/LogEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->getItem(I)Lcom/tencent/wstt/gt/ui/model/LogEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method public getUIEntryList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/ui/model/LogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->dataSet:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 150
    if-nez p2, :cond_0

    .line 151
    iget-object v9, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 152
    const v10, 0x7f030016

    const/4 v11, 0x0

    .line 151
    move-object/from16 v0, p3

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 160
    .local v8, "tv":Landroid/widget/TextView;
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->getItem(I)Lcom/tencent/wstt/gt/ui/model/LogEntry;

    move-result-object v9

    iget-object v7, v9, Lcom/tencent/wstt/gt/ui/model/LogEntry;->msg:Ljava/lang/String;

    .line 162
    .local v7, "target":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 163
    .local v6, "tagStart":I
    const-string v9, "("

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 164
    .local v5, "tagEnd":I
    add-int/lit8 v3, v5, 0x1

    .line 165
    .local v3, "pidStart":I
    const-string v9, ")"

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 167
    .local v2, "pidEnd":I
    if-ge v6, v5, :cond_1

    if-ge v3, v2, :cond_1

    .line 169
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 170
    .local v4, "ss":Landroid/text/SpannableString;
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const/16 v10, 0xff

    const/16 v11, 0x9f

    const/16 v12, 0x9f

    const/16 v13, 0x9e

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 171
    const/4 v10, 0x0

    const/16 v11, 0x13

    const/16 v12, 0x21

    .line 170
    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 172
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const/16 v10, 0xff

    const/16 v11, 0xcb

    const/16 v12, 0x74

    const/16 v13, 0x18

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 173
    const/16 v10, 0x14

    const/16 v11, 0x15

    const/16 v12, 0x21

    .line 172
    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 174
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const/16 v10, 0xff

    const/16 v11, 0xcb

    const/16 v12, 0x74

    const/16 v13, 0x18

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 175
    const/16 v10, 0x21

    .line 174
    invoke-virtual {v4, v9, v6, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 176
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const/16 v10, 0xff

    const/16 v11, 0xcb

    const/16 v12, 0x74

    const/16 v13, 0x18

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 177
    const/16 v10, 0x21

    .line 176
    invoke-virtual {v4, v9, v3, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 179
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v2    # "pidEnd":I
    .end local v3    # "pidStart":I
    .end local v4    # "ss":Landroid/text/SpannableString;
    .end local v5    # "tagEnd":I
    .end local v6    # "tagStart":I
    .end local v7    # "target":Ljava/lang/String;
    :goto_1
    return-object v8

    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_0
    move-object/from16 v8, p2

    .line 154
    check-cast v8, Landroid/widget/TextView;

    .line 155
    .restart local v8    # "tv":Landroid/widget/TextView;
    const v9, -0xff0100

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 184
    .restart local v2    # "pidEnd":I
    .restart local v3    # "pidStart":I
    .restart local v5    # "tagEnd":I
    .restart local v6    # "tagStart":I
    .restart local v7    # "target":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 186
    .end local v2    # "pidEnd":I
    .end local v3    # "pidStart":I
    .end local v5    # "tagEnd":I
    .end local v6    # "tagStart":I
    .end local v7    # "target":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "can\'t parse log text!"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const/high16 v9, -0x10000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public query(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "queryLevel"    # I
    .param p2, "queryTag"    # Ljava/lang/String;
    .param p3, "queryMsg"    # Ljava/lang/String;

    .prologue
    .line 91
    iput p1, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryLevel:I

    .line 92
    iput-object p2, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryTag:Ljava/lang/String;

    .line 93
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->queryMsg:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public setAutoRefresh(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->flag_auto_refresh:Z

    .line 352
    return-void
.end method

.method public setFilter()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/log/NormalLogAdapter$LogFilter;-><init>(Lcom/tencent/wstt/gt/log/NormalLogAdapter;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->filter:Landroid/widget/Filter;

    .line 116
    return-void
.end method
