.class Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor$1;
.super Landroid/widget/Filter;
.source "GTLogSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;

    .line 465
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 469
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 470
    .local v3, "results":Landroid/widget/Filter$FilterResults;
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurShowDownMsgList()Ljava/util/LinkedList;

    move-result-object v0

    .line 471
    .local v0, "curShowDownMsgList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurSearchMsgHistory()Ljava/util/LinkedList;

    move-result-object v2

    .line 473
    .local v2, "msgHistory":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 474
    if-eqz p1, :cond_1

    .line 475
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 476
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 484
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 485
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v5

    iput v5, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 486
    return-object v3

    .line 477
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 478
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 492
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->notifyDataSetChanged()V

    .line 494
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->msgWatched:Z
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$3(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->filterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->img_empty:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->filterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->img_empty:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor$1;->this$1:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
