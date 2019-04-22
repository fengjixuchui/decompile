.class Lcom/tencent/wstt/gt/activity/GTLogFragment$8;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 312
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

    .line 317
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$1(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 320
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->tagAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$13(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 321
    if-nez p3, :cond_0

    .line 322
    const-string v4, ""

    invoke-static {v4}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setCurFilterTag(Ljava/lang/String;)V

    .line 327
    :goto_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_tag:Landroid/widget/Button;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$14(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/Button;

    move-result-object v5

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->tagAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$13(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_1
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->onLogChanged()V

    .line 353
    return-void

    .line 325
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    .line 324
    check-cast v4, Landroid/widget/Adapter;

    .line 325
    invoke-interface {v4, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 324
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setCurFilterTag(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    instance-of v4, v4, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    if-eqz v4, :cond_2

    .line 329
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/Adapter;

    .line 330
    invoke-interface {v4, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 329
    check-cast v3, Ljava/lang/String;

    .line 332
    .local v3, "sCurSelectedMsg":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterShowDownMsgList()Ljava/util/LinkedList;

    move-result-object v0

    .line 334
    .local v0, "curShowDownMsgList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterMsgHistory()Ljava/util/LinkedList;

    move-result-object v1

    .line 336
    .local v1, "msgHistory":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setCurFilterMsg(Ljava/lang/String;)V

    .line 337
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    invoke-static {v4, v6}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$15(Lcom/tencent/wstt/gt/activity/GTLogFragment;Z)V

    .line 338
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->msg_watcher:Landroid/text/TextWatcher;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$17(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/text/TextWatcher;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 339
    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 341
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 342
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 344
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_clear:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$2(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 346
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTLogFragment;->cancelFilterMsgInput(Landroid/view/View;)V
    invoke-static {v4, p1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$10(Lcom/tencent/wstt/gt/activity/GTLogFragment;Landroid/view/View;)V

    goto :goto_1

    .line 348
    .end local v0    # "curShowDownMsgList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v1    # "msgHistory":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "sCurSelectedMsg":Ljava/lang/String;
    :cond_2
    invoke-static {p3}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setCurFilterLevel(I)V

    .line 349
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_level:Landroid/widget/Button;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$18(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/Button;

    move-result-object v5

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->levelAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$19(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
