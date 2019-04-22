.class public Lcom/tencent/wstt/gt/activity/GTParamInFragment;
.super Landroid/support/v4/app/ListFragment;
.source "GTParamInFragment.java"


# static fields
.field public static gw_running:Z


# instance fields
.field private handler:Landroid/os/Handler;

.field private inList:Landroid/widget/ListView;

.field private layout_inparamlayout:Landroid/view/View;

.field private tv_ip_title_toast:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->gw_running:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTParamInFragment$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTParamInFragment$1;-><init>(Lcom/tencent/wstt/gt/activity/GTParamInFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->handler:Landroid/os/Handler;

    .line 66
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/tencent/wstt/gt/GTApp;->setIpHandler(Landroid/os/Handler;)V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTParamInFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->doResume()V

    return-void
.end method

.method private doResume()V
    .locals 3

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->getInputParamsList()V

    .line 98
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 99
    .local v0, "inparam_adapter":Lcom/tencent/wstt/gt/activity/GTParamInListAdapter;
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    sget-object v1, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->inList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->inList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 106
    :cond_0
    return-void
.end method

.method public static getInListAcDividePosition()I
    .locals 4

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 133
    :goto_1
    return v1

    .line 127
    :cond_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_INIT_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    move v1, v0

    .line 130
    goto :goto_1

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInListDividePosition()I
    .locals 4

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 119
    :goto_1
    return v1

    .line 113
    :cond_0
    sget-object v2, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    move v1, v0

    .line 116
    goto :goto_1

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getInputParamsList()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 163
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->layout_inparamlayout:Landroid/view/View;

    const v5, 0x7f0800bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->tv_ip_title_toast:Landroid/widget/TextView;

    .line 164
    sget-object v4, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 165
    invoke-static {}, Lcom/tencent/wstt/gt/manager/IpUIManager;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->tv_ip_title_toast:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :cond_0
    return-void

    .line 171
    :cond_1
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->tv_ip_title_toast:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    new-instance v1, Lcom/tencent/wstt/gt/InPara;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/InPara;-><init>()V

    .line 175
    .local v1, "iv_ac":Lcom/tencent/wstt/gt/InPara;
    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_INIT_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tencent/wstt/gt/InPara;->setKey(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v7}, Lcom/tencent/wstt/gt/InPara;->setDisplayProperty(I)V

    .line 177
    sget-object v4, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {}, Lcom/tencent/wstt/gt/manager/IpUIManager;->getAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 189
    new-instance v3, Lcom/tencent/wstt/gt/InPara;

    invoke-direct {v3}, Lcom/tencent/wstt/gt/InPara;-><init>()V

    .line 190
    .local v3, "iv_normalDivid":Lcom/tencent/wstt/gt/InPara;
    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/InPara;->setKey(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v3, v7}, Lcom/tencent/wstt/gt/InPara;->setDisplayProperty(I)V

    .line 192
    sget-object v4, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {}, Lcom/tencent/wstt/gt/manager/IpUIManager;->getAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 204
    new-instance v2, Lcom/tencent/wstt/gt/InPara;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/InPara;-><init>()V

    .line 205
    .local v2, "iv_disableDivid":Lcom/tencent/wstt/gt/InPara;
    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_DISABLE_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/tencent/wstt/gt/InPara;->setKey(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2, v7}, Lcom/tencent/wstt/gt/InPara;->setDisplayProperty(I)V

    .line 207
    sget-object v4, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {}, Lcom/tencent/wstt/gt/manager/IpUIManager;->getAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 212
    .local v0, "iv":Lcom/tencent/wstt/gt/InPara;
    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getDisplayProperty()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 214
    sget-object v5, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 180
    .end local v0    # "iv":Lcom/tencent/wstt/gt/InPara;
    .end local v2    # "iv_disableDivid":Lcom/tencent/wstt/gt/InPara;
    .end local v3    # "iv_normalDivid":Lcom/tencent/wstt/gt/InPara;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 182
    .restart local v0    # "iv":Lcom/tencent/wstt/gt/InPara;
    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getDisplayProperty()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 184
    sget-object v5, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v0    # "iv":Lcom/tencent/wstt/gt/InPara;
    .restart local v3    # "iv_normalDivid":Lcom/tencent/wstt/gt/InPara;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    .line 197
    .restart local v0    # "iv":Lcom/tencent/wstt/gt/InPara;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getDisplayProperty()I

    move-result v5

    if-nez v5, :cond_3

    .line 199
    sget-object v5, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->inList:Landroid/widget/ListView;

    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->setHasOptionsMenu(Z)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const v0, 0x7f03001b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->layout_inparamlayout:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->layout_inparamlayout:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 139
    sget-object v4, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_INIT_TITLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_TITLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_DISABLE_TITLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/manager/IpUIManager;->getInListDisableTitlePosition()I

    move-result v4

    if-gt p3, v4, :cond_0

    .line 149
    sget-object v4, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/InPara;

    .line 150
    .local v2, "ip":Lcom/tencent/wstt/gt/InPara;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "ip_name"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v4, "ip_client"

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/InPara;->getClient()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v5, "ip_values"

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 155
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 92
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->doResume()V

    .line 93
    return-void
.end method

.method public onShow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 223
    return-void
.end method
