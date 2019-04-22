.class Lcom/tencent/wstt/gt/activity/GTLogFragment$10;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 406
    packed-switch p2, :pswitch_data_0

    .line 432
    :goto_0
    return v3

    .line 409
    :pswitch_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    invoke-static {v4, v3}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$15(Lcom/tencent/wstt/gt/activity/GTLogFragment;Z)V

    .line 410
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->msg_watcher:Landroid/text/TextWatcher;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$17(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/text/TextWatcher;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 412
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->et_Msg:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "word":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 415
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterShowDownMsgList()Ljava/util/LinkedList;

    move-result-object v0

    .line 417
    .local v0, "curShowDownMsgList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurFilterMsgHistory()Ljava/util/LinkedList;

    move-result-object v1

    .line 419
    .local v1, "msgHistory":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 420
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 421
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 425
    .end local v0    # "curShowDownMsgList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v1    # "msgHistory":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 426
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$1(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTLogFragment;->cancelFilterMsgInput(Landroid/view/View;)V
    invoke-static {v3, p1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$10(Lcom/tencent/wstt/gt/activity/GTLogFragment;Landroid/view/View;)V

    .line 430
    const/4 v3, 0x1

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
