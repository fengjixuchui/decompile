.class public Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;
.super Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;
.source "GTParamInEditListAdapter.java"


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
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    const/4 v4, 0x0

    .line 51
    .local v4, "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->getItemViewType(I)I

    move-result v5

    .line 60
    .local v5, "type":I
    packed-switch v5, :pswitch_data_0

    .line 143
    :goto_0
    return-object p2

    .line 62
    :pswitch_0
    iget-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->PROMPT_ITEM_convertView:Landroid/view/View;

    .line 63
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->list:Ljava/util/List;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v6}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->PROMPT_ITEM_title:Landroid/widget/TextView;

    sget-object v7, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_INIT_TITLE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->PROMPT_ITEM_title:Landroid/widget/TextView;

    sget-object v7, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_TITLE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->DIVIDE_ITEM_convertView:Landroid/view/View;

    .line 74
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 76
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->DIVIDE_ITEM_top_border:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->DIVIDE_ITEM_top_border:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->DISABLE_ITEM_convertView:Landroid/view/View;

    .line 85
    const/4 v6, 0x2

    if-eq v6, p1, :cond_2

    const/4 v6, 0x1

    if-le p1, v6, :cond_3

    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->list:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v6}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 87
    :cond_2
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->DISABLE_ITEM_top_border:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->DISABLE_ITEM_top_border:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :pswitch_3
    if-nez p2, :cond_5

    .line 96
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030008

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;

    .end local v4    # "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;
    invoke-direct {v4}, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;-><init>()V

    .line 99
    .restart local v4    # "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;
    const v6, 0x7f08003c

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 98
    iput-object v6, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_key:Landroid/widget/TextView;

    .line 101
    const v6, 0x7f08003b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 100
    iput-object v6, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_alias:Landroid/widget/TextView;

    .line 103
    const v6, 0x7f08003d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 102
    iput-object v6, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_listview_bottom_border:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    :goto_1
    iget-object v6, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_key:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v6, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_alias:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_6

    .line 116
    iget-object v6, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_listview_bottom_border:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_2
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 125
    iget-object v6, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_listview_bottom_border:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :cond_4
    invoke-static {}, Lcom/tencent/wstt/gt/manager/IpUIManager;->getInListDisableTitlePosition()I

    move-result v1

    .line 130
    .local v1, "disable_titile_pos":I
    if-le p1, v1, :cond_7

    .line 132
    iget-object v6, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_key:Landroid/widget/TextView;

    const v7, -0x777778

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v6, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_alias:Landroid/widget/TextView;

    const v7, -0x777778

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 108
    .end local v1    # "disable_titile_pos":I
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;
    check-cast v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;

    .restart local v4    # "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;
    goto :goto_1

    .line 120
    :cond_6
    iget-object v6, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_listview_bottom_border:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 137
    .restart local v1    # "disable_titile_pos":I
    :cond_7
    iget-object v6, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_key:Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v6, v4, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;->tv_alias:Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
