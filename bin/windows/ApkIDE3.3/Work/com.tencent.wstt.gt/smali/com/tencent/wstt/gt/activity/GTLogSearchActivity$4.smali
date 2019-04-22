.class Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;
.super Ljava/lang/Object;
.source "GTLogSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->msgWatched:Z
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$3(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->et_Msg:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->msg_watcher:Landroid/text/TextWatcher;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$7(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$5(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Z)V

    .line 194
    :cond_0
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    invoke-direct {v0, v1, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Landroid/content/Context;)V

    .line 195
    .local v0, "adapter":Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->et_Msg:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->filterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->filterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->filterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->img_empty:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    :cond_1
    return-void
.end method
