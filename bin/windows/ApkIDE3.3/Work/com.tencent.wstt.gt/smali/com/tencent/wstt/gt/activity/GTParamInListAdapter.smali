.class public Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;
.super Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;
.source "GTParamInListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/InPara;>;"
    invoke-direct {p0, p1, p2}, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    const/4 v4, 0x0

    .line 51
    .local v4, "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->list:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wstt/gt/InPara;

    .line 52
    .local v3, "o":Lcom/tencent/wstt/gt/InPara;
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/InPara;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->getItemViewType(I)I

    move-result v5

    .line 60
    .local v5, "type":I
    packed-switch v5, :pswitch_data_0

    .line 148
    :goto_0
    return-object p2

    .line 62
    :pswitch_0
    iget-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->PROMPT_ITEM_convertView:Landroid/view/View;

    .line 63
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->list:Ljava/util/List;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 65
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->PROMPT_ITEM_title:Landroid/widget/TextView;

    sget-object v8, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_INIT_TITLE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->PROMPT_ITEM_title:Landroid/widget/TextView;

    sget-object v8, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_TITLE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->DIVIDE_ITEM_convertView:Landroid/view/View;

    .line 74
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    .line 76
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->DIVIDE_ITEM_top_border:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->DIVIDE_ITEM_top_border:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->DISABLE_ITEM_convertView:Landroid/view/View;

    .line 85
    const/4 v7, 0x2

    if-eq v7, p1, :cond_2

    const/4 v7, 0x1

    if-le p1, v7, :cond_3

    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->list:Ljava/util/List;

    add-int/lit8 v8, p1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 87
    :cond_2
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->DISABLE_ITEM_top_border:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->DISABLE_ITEM_top_border:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :pswitch_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    .line 96
    :cond_4
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03000f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;

    .end local v4    # "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;
    invoke-direct {v4}, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;-><init>()V

    .line 99
    .restart local v4    # "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;
    const v7, 0x7f08003c

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 98
    iput-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_key:Landroid/widget/TextView;

    .line 101
    const v7, 0x7f08003b

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 100
    iput-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_alias:Landroid/widget/TextView;

    .line 102
    const v7, 0x7f08007c

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_value:Landroid/widget/TextView;

    .line 104
    const v7, 0x7f08003d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 103
    iput-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_listview_bottom_border:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    :goto_1
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 113
    .local v6, "value":Ljava/lang/String;
    iget-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_key:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_alias:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_value:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_7

    .line 119
    iget-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_listview_bottom_border:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_2
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 128
    iget-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_listview_bottom_border:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :cond_5
    invoke-static {}, Lcom/tencent/wstt/gt/manager/IpUIManager;->getInListDisableTitlePosition()I

    move-result v1

    .line 133
    .local v1, "disable_titile_pos":I
    if-le p1, v1, :cond_8

    .line 135
    iget-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_key:Landroid/widget/TextView;

    const v8, -0x777778

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_alias:Landroid/widget/TextView;

    const v8, -0x777778

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_value:Landroid/widget/TextView;

    const v8, -0x777778

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 109
    .end local v1    # "disable_titile_pos":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;
    check-cast v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;

    .restart local v4    # "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;
    goto :goto_1

    .line 123
    .restart local v6    # "value":Ljava/lang/String;
    :cond_7
    iget-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_listview_bottom_border:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 141
    .restart local v1    # "disable_titile_pos":I
    :cond_8
    iget-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_key:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_alias:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v7, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_value:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
