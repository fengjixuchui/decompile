.class public Lcom/tencent/wstt/gt/activity/GTPluginFragment;
.super Landroid/support/v4/app/Fragment;
.source "GTPluginFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;

.field private listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTPluginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;-><init>(Lcom/tencent/wstt/gt/activity/GTPluginFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment;->adapter:Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;

    .line 55
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment;->adapter:Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;->notifyDataSetChanged()V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTPluginFragment;->setHasOptionsMenu(Z)V

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const v1, 0x7f030027

    .line 62
    const/4 v2, 0x0

    .line 61
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "pluginLayout":Landroid/view/View;
    const v1, 0x7f080101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment;->listView:Landroid/widget/ListView;

    .line 65
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment;->adapter:Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    return-object v0
.end method
