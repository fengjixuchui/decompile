.class public Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;
.super Landroid/support/v4/app/ListFragment;
.source "GTParamInEditFragment.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# static fields
.field public static list_ip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handler:Landroid/os/Handler;

.field private inList:Lcom/mobeta/android/dslv/DragSortListView;

.field private layout_inparamlayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment$1;-><init>(Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->handler:Landroid/os/Handler;

    .line 63
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/tencent/wstt/gt/GTApp;->setIpEditHandler(Landroid/os/Handler;)V

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->doResume()V

    return-void
.end method

.method private doResume()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 100
    .local v0, "inparam_adapter":Lcom/tencent/wstt/gt/activity/GTParamInEditListAdapter;
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    return-void
.end method

.method public static getInListDisableTitlePosition()I
    .locals 4

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 114
    :goto_1
    return v1

    .line 108
    :cond_0
    sget-object v2, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_DISABLE_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    move v1, v0

    .line 111
    goto :goto_1

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInListDividePosition()I
    .locals 4

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 128
    :goto_1
    return v1

    .line 122
    :cond_0
    sget-object v2, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    move v1, v0

    .line 125
    goto :goto_1

    .line 120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public drop(II)V
    .locals 11
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    .line 143
    sget-object v7, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "condition_key1":Ljava/lang/String;
    const-string v1, ""

    .line 145
    .local v1, "condition_key2":Ljava/lang/String;
    sget-object v7, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 147
    sget-object v7, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_0
    sget-object v7, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_1

    .line 151
    sget-object v7, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_1
    sget-object v7, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_INIT_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 155
    sget-object v7, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 157
    :cond_2
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->inList:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v7}, Lcom/mobeta/android/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 205
    :goto_0
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getIpHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    return-void

    .line 159
    :cond_3
    sget-object v7, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-le p1, p2, :cond_4

    if-le p1, v9, :cond_4

    if-gt p2, v9, :cond_4

    .line 161
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->inList:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v7}, Lcom/mobeta/android/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 166
    :cond_4
    const/4 v2, -0x1

    .line 167
    .local v2, "direction":I
    move v6, p1

    .line 168
    .local v6, "loop_start":I
    move v5, p2

    .line 170
    .local v5, "loop_end":I
    if-nez p2, :cond_5

    .line 172
    const/4 p2, 0x1

    .line 176
    :cond_5
    if-ge p1, p2, :cond_6

    .line 178
    const/4 v2, 0x1

    .line 181
    :cond_6
    sget-object v7, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wstt/gt/InPara;

    .line 183
    .local v4, "iv_target":Lcom/tencent/wstt/gt/InPara;
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-ne v3, v5, :cond_7

    .line 188
    sget-object v7, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    invoke-interface {v7, p2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->getInListDisableTitlePosition()I

    move-result v7

    if-le p2, v7, :cond_8

    .line 192
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/tencent/wstt/gt/InPara;->setDisplayProperty(I)V

    .line 202
    :goto_2
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->inList:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v7}, Lcom/mobeta/android/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 185
    :cond_7
    sget-object v8, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    sget-object v7, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    add-int v9, v3, v2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/wstt/gt/InPara;

    invoke-interface {v8, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    add-int/2addr v3, v2

    goto :goto_1

    .line 194
    :cond_8
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->getInListDividePosition()I

    move-result v7

    if-ge p2, v7, :cond_9

    .line 196
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/tencent/wstt/gt/InPara;->setDisplayProperty(I)V

    goto :goto_2

    .line 200
    :cond_9
    invoke-virtual {v4, v10}, Lcom/tencent/wstt/gt/InPara;->setDisplayProperty(I)V

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->inList:Lcom/mobeta/android/dslv/DragSortListView;

    .line 85
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->inList:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 86
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->inList:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->setHasOptionsMenu(Z)V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const v0, 0x7f03001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->layout_inparamlayout:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->layout_inparamlayout:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 134
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 93
    sget-object v0, Lcom/tencent/wstt/gt/manager/IpUIManager;->list_ip:Ljava/util/List;

    sput-object v0, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->list_ip:Ljava/util/List;

    .line 94
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->doResume()V

    .line 95
    return-void
.end method

.method public onShow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 139
    return-void
.end method
