.class public abstract Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "GTParamListBaseAdapter.java"


# static fields
.field protected static final TYPE_DISABLE_ITEM:I = 0x2

.field protected static final TYPE_DIVIDE_ITEM:I = 0x1

.field protected static final TYPE_PROMPT_ITEM:I = 0x0

.field protected static final TYPE_SWITCH_ITEM:I = 0x3

.field protected static final VIEW_TYPE_COUNT:I = 0x4


# instance fields
.field protected DISABLE_ITEM_convertView:Landroid/view/View;

.field protected DISABLE_ITEM_title:Landroid/widget/TextView;

.field protected DISABLE_ITEM_top_border:Landroid/widget/TextView;

.field protected DIVIDE_ITEM_convertView:Landroid/view/View;

.field protected DIVIDE_ITEM_title:Landroid/widget/TextView;

.field protected DIVIDE_ITEM_top_border:Landroid/widget/TextView;

.field protected PROMPT_ITEM_convertView:Landroid/view/View;

.field protected PROMPT_ITEM_title:Landroid/widget/TextView;

.field protected context:Landroid/content/Context;

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/tencent/wstt/gt/AidlEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/tencent/wstt/gt/AidlEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/tencent/wstt/gt/AidlEntry;>;"
    const v5, 0x7f080037

    const v4, 0x7f030012

    const/4 v3, 0x0

    const v2, 0x7f080083

    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    if-nez p1, :cond_0

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object p1

    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->context:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->list:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030011

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->PROMPT_ITEM_convertView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->DIVIDE_ITEM_convertView:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->DISABLE_ITEM_convertView:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->PROMPT_ITEM_convertView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->PROMPT_ITEM_title:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->PROMPT_ITEM_title:Landroid/widget/TextView;

    sget-object v1, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_INIT_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->DIVIDE_ITEM_convertView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->DIVIDE_ITEM_title:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->DIVIDE_ITEM_title:Landroid/widget/TextView;

    sget-object v1, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->DIVIDE_ITEM_convertView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->DIVIDE_ITEM_top_border:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->DISABLE_ITEM_convertView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->DISABLE_ITEM_title:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->DISABLE_ITEM_title:Landroid/widget/TextView;

    sget-object v1, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_DISABLE_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->DISABLE_ITEM_convertView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->DISABLE_ITEM_top_border:Landroid/widget/TextView;

    .line 86
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 108
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/AidlEntry;

    .line 109
    .local v1, "o":Lcom/tencent/wstt/gt/AidlEntry;
    const-string v0, ""

    .line 110
    .local v0, "key":Ljava/lang/String;
    instance-of v3, v1, Lcom/tencent/wstt/gt/OutPara;

    if-eqz v3, :cond_1

    .line 112
    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    .end local v1    # "o":Lcom/tencent/wstt/gt/AidlEntry;
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    const/4 v2, 0x3

    .line 120
    .local v2, "result":I
    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_INIT_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    :cond_0
    const/4 v2, 0x0

    .line 129
    :goto_1
    return v2

    .line 116
    .end local v2    # "result":I
    .restart local v1    # "o":Lcom/tencent/wstt/gt/AidlEntry;
    :cond_1
    check-cast v1, Lcom/tencent/wstt/gt/InPara;

    .end local v1    # "o":Lcom/tencent/wstt/gt/AidlEntry;
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    .restart local v2    # "result":I
    :cond_2
    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    const/4 v2, 0x1

    .line 124
    goto :goto_1

    :cond_3
    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_DISABLE_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    const/4 v2, 0x2

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    const/4 v2, 0x3

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x4

    return v0
.end method
