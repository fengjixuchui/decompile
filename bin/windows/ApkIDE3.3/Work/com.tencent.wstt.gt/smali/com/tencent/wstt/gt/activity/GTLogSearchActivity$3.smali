.class Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;
.super Ljava/lang/Object;
.source "GTLogSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 157
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->img_empty:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->filterListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 160
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/Adapter;

    invoke-interface {v4, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    .local v3, "sCurSelectedMsg":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurShowDownMsgList()Ljava/util/LinkedList;

    move-result-object v0

    .line 162
    .local v0, "curShowDownMsgList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurSearchMsgHistory()Ljava/util/LinkedList;

    move-result-object v1

    .line 164
    .local v1, "msgHistory":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setCurSearchMsg(Ljava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    invoke-static {v4, v6}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$5(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Z)V

    .line 166
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->et_Msg:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->msg_watcher:Landroid/text/TextWatcher;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$7(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/text/TextWatcher;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 171
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->et_Msg:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->btn_msg_clear:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 173
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->cancelFilterMsgInput(Landroid/view/View;)V
    invoke-static {v4, p1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$4(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Landroid/view/View;)V

    .line 176
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->filterListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->getFilter()Landroid/widget/Filter;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->doSearch(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$8(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Ljava/lang/String;)V

    .line 179
    return-void
.end method
