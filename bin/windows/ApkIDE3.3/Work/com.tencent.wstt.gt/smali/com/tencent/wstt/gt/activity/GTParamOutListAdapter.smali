.class public Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;
.super Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;
.source "GTParamOutListAdapter.java"


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
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    invoke-direct {p0, p1, p2}, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    const/4 v5, 0x0

    .line 61
    .local v5, "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->list:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wstt/gt/OutPara;

    .line 62
    .local v4, "ov":Lcom/tencent/wstt/gt/OutPara;
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/OutPara;->getFreezValue()Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "value":Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getProfilerData(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v6

    .line 67
    .local v6, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    const/4 v2, 0x0

    .line 68
    .local v2, "his_count":I
    if-eqz v6, :cond_0

    .line 69
    invoke-virtual {v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 70
    invoke-virtual {v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->getItemViewType(I)I

    move-result v7

    .line 81
    .local v7, "type":I
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDisableTitlePosition()I

    move-result v1

    .line 82
    .local v1, "disable_pos":I
    packed-switch v7, :pswitch_data_0

    .line 199
    :goto_1
    packed-switch v7, :pswitch_data_1

    .line 258
    :goto_2
    return-object p2

    .line 72
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "disable_pos":I
    .end local v7    # "type":I
    :cond_1
    invoke-virtual {v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v2

    goto :goto_0

    .line 84
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v1    # "disable_pos":I
    .restart local v7    # "type":I
    :pswitch_0
    iget-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->PROMPT_ITEM_convertView:Landroid/view/View;

    .line 85
    goto :goto_1

    .line 87
    :pswitch_1
    iget-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->DIVIDE_ITEM_convertView:Landroid/view/View;

    .line 88
    goto :goto_1

    .line 90
    :pswitch_2
    iget-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->DISABLE_ITEM_convertView:Landroid/view/View;

    .line 91
    goto :goto_1

    .line 93
    :pswitch_3
    if-nez p2, :cond_2

    .line 94
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03001a

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 95
    new-instance v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;

    .end local v5    # "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;
    invoke-direct {v5}, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;-><init>()V

    .line 97
    .restart local v5    # "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;
    const v9, 0x7f08003c

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 96
    iput-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_key:Landroid/widget/TextView;

    .line 99
    const v9, 0x7f08003b

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 98
    iput-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_alias:Landroid/widget/TextView;

    .line 101
    const v9, 0x7f08007c

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 100
    iput-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_value:Landroid/widget/TextView;

    .line 103
    const v9, 0x7f08003d

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 102
    iput-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_listview_bottom_border:Landroid/widget/TextView;

    .line 106
    const v9, 0x7f0800bc

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 105
    iput-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_his_data:Landroid/widget/TextView;

    .line 108
    const v9, 0x7f0800be

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 107
    iput-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_listrowbg:Landroid/widget/TextView;

    .line 110
    const v9, 0x7f0800bd

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 109
    iput-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->cb:Landroid/widget/CheckBox;

    .line 117
    :goto_3
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/OutPara;->isAlert()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 118
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_listrowbg:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 119
    const/high16 v11, 0x7f060000

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 118
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 120
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_listrowbg:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0x50

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 127
    :goto_4
    sget-boolean v9, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-eqz v9, :cond_4

    .line 128
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->cb:Landroid/widget/CheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 129
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->cb:Landroid/widget/CheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 134
    :goto_5
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->cb:Landroid/widget/CheckBox;

    new-instance v10, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;

    invoke-direct {v10, p0, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;Lcom/tencent/wstt/gt/OutPara;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    if-le p1, v1, :cond_5

    .line 183
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_key:Landroid/widget/TextView;

    const v10, -0x777778

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_alias:Landroid/widget/TextView;

    const v10, -0x777778

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_value:Landroid/widget/TextView;

    const v10, -0x777778

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/OutPara;->isMonitor()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->cb:Landroid/widget/CheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 189
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->cb:Landroid/widget/CheckBox;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 194
    :goto_6
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 114
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;
    check-cast v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;

    .restart local v5    # "switch_drag":Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;
    goto :goto_3

    .line 122
    :cond_3
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_listrowbg:Landroid/widget/TextView;

    .line 123
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_4

    .line 131
    :cond_4
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->cb:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 132
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->cb:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setClickable(Z)V

    goto :goto_5

    .line 191
    :cond_5
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->cb:Landroid/widget/CheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_6

    .line 201
    :pswitch_4
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->list:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v9}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 202
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->PROMPT_ITEM_title:Landroid/widget/TextView;

    sget-object v10, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_INIT_TITLE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 204
    :cond_6
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->PROMPT_ITEM_title:Landroid/widget/TextView;

    sget-object v10, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_TITLE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 208
    :pswitch_5
    const/4 v9, 0x1

    if-le p1, v9, :cond_7

    .line 209
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->DIVIDE_ITEM_top_border:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 211
    :cond_7
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->DIVIDE_ITEM_top_border:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 215
    :pswitch_6
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_key:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_alias:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_value:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    if-gtz v2, :cond_8

    .line 219
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_his_data:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    :goto_7
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne p1, v9, :cond_a

    .line 229
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_listview_bottom_border:Landroid/widget/TextView;

    .line 230
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :goto_8
    if-le p1, v1, :cond_b

    .line 236
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_key:Landroid/widget/TextView;

    const v10, -0x777778

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_alias:Landroid/widget/TextView;

    const v10, -0x777778

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_value:Landroid/widget/TextView;

    const v10, -0x777778

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    :goto_9
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/OutPara;->isMonitor()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 220
    :cond_8
    const/16 v9, 0x64

    if-ge v2, v9, :cond_9

    .line 222
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_his_data:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_his_data:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 225
    :cond_9
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_his_data:Landroid/widget/TextView;

    const-string v10, "99+"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_his_data:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 232
    :cond_a
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_listview_bottom_border:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 240
    :cond_b
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_key:Landroid/widget/TextView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_alias:Landroid/widget/TextView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v9, v5, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->tv_value:Landroid/widget/TextView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 249
    :pswitch_7
    const/4 v9, 0x2

    if-eq v9, p1, :cond_c

    .line 250
    const/4 v9, 0x1

    if-le p1, v9, :cond_d

    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->list:Ljava/util/List;

    add-int/lit8 v10, p1, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v9}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 251
    :cond_c
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->DISABLE_ITEM_top_border:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 253
    :cond_d
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->DISABLE_ITEM_top_border:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 199
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/tencent/wstt/gt/manager/OpUIManager;->refresh_op_drag_conflict_flag:Z

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTParamListBaseAdapter;->notifyDataSetChanged()V

    .line 55
    :cond_0
    return-void
.end method
