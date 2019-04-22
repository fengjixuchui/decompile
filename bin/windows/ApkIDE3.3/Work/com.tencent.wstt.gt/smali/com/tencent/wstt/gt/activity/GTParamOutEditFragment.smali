.class public Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;
.super Landroid/support/v4/app/ListFragment;
.source "GTParamOutEditFragment.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# instance fields
.field private handler:Landroid/os/Handler;

.field outList:Lcom/mobeta/android/dslv/DragSortListView;

.field private outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment$1;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->handler:Landroid/os/Handler;

    .line 60
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/tencent/wstt/gt/GTApp;->setOpEditHandler(Landroid/os/Handler;)V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->doResume()V

    return-void
.end method

.method private doResume()V
    .locals 3

    .prologue
    .line 95
    .line 96
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 95
    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;

    .line 97
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v7, 0x4

    .line 103
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/OutPara;->getDisplayProperty()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 104
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;->notifyDataSetChanged()V

    .line 137
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    if-le p1, p2, :cond_1

    if-le p1, v7, :cond_1

    if-gt p2, v7, :cond_1

    .line 107
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, -0x1

    .line 110
    .local v0, "direction":I
    move v3, p1

    .line 111
    .local v3, "loop_start":I
    move v2, p2

    .line 113
    .local v2, "loop_end":I
    if-nez p2, :cond_2

    .line 114
    const/4 p2, 0x1

    .line 117
    :cond_2
    if-ge p1, p2, :cond_3

    .line 118
    const/4 v0, 0x1

    .line 121
    :cond_3
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wstt/gt/OutPara;

    .line 123
    .local v4, "ov_target":Lcom/tencent/wstt/gt/OutPara;
    move v1, v3

    .local v1, "i":I
    :goto_1
    if-ne v1, v2, :cond_4

    .line 127
    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v5, p2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDisableTitlePosition()I

    move-result v5

    if-le p2, v5, :cond_5

    .line 129
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/OutPara;->setDisplayProperty(I)V

    .line 135
    :goto_2
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutEditListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 124
    :cond_4
    sget-object v6, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    sget-object v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    add-int v7, v1, v0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wstt/gt/OutPara;

    invoke-interface {v6, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/2addr v1, v0

    goto :goto_1

    .line 130
    :cond_5
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getOutListDividePosition()I

    move-result v5

    if-ge p2, v5, :cond_6

    .line 131
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/OutPara;->setDisplayProperty(I)V

    goto :goto_2

    .line 133
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/OutPara;->setDisplayProperty(I)V

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->outList:Lcom/mobeta/android/dslv/DragSortListView;

    .line 84
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->outList:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->setHasOptionsMenu(Z)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    const v1, 0x7f03001e

    .line 73
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "layout":Landroid/view/View;
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 142
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->doResume()V

    .line 91
    return-void
.end method

.method public onShow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 147
    return-void
.end method
