.class Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;
.super Landroid/widget/Filter;
.source "GTLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    .line 638
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 642
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 643
    .local v2, "results":Landroid/widget/Filter$FilterResults;
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->tempShowDownMsgList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$6(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Ljava/util/LinkedList;

    move-result-object v4

    if-nez v4, :cond_0

    .line 644
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v4

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$7(Lcom/tencent/wstt/gt/activity/GTLogFragment;Ljava/util/LinkedList;)V

    .line 646
    :cond_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->tempShowDownMsgList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$6(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 649
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterMsgHistory()Ljava/util/LinkedList;

    move-result-object v1

    .line 651
    .local v1, "msgHistory":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 652
    :cond_1
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->tempShowDownMsgList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$6(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 663
    :cond_2
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->tempShowDownMsgList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$6(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Ljava/util/LinkedList;

    move-result-object v4

    iput-object v4, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 664
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->tempShowDownMsgList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$6(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iput v4, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 665
    return-object v2

    .line 654
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 655
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 656
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 657
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 658
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->tempShowDownMsgList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$6(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 672
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterShowDownMsgList()Ljava/util/LinkedList;

    move-result-object v0

    .line 674
    .local v0, "curShowDownMsgList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v1, :cond_1

    .line 675
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 676
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->tempShowDownMsgList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$6(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 677
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->notifyDataSetChanged()V

    .line 678
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->msgWatched:Z
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$8(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 680
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$1(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 684
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogFragment;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$1(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 685
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 686
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment$MsgAdaptor;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
