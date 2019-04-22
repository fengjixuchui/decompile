.class Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$5;
.super Ljava/lang/Object;
.source "GTLogSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 210
    packed-switch p2, :pswitch_data_0

    move v3, v4

    .line 236
    :cond_0
    :goto_0
    return v3

    .line 213
    :pswitch_0
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    invoke-static {v5, v4}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$5(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Z)V

    .line 214
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->et_Msg:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->msg_watcher:Landroid/text/TextWatcher;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$7(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/text/TextWatcher;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 216
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->et_Msg:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "word":Ljava/lang/String;
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->filterListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 219
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->img_empty:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->cancelFilterMsgInput(Landroid/view/View;)V
    invoke-static {v4, p1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$4(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Landroid/view/View;)V

    .line 222
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurShowDownMsgList()Ljava/util/LinkedList;

    move-result-object v0

    .line 226
    .local v0, "curShowDownMsgList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurSearchMsgHistory()Ljava/util/LinkedList;

    move-result-object v1

    .line 228
    .local v1, "msgHistory":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 233
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->doSearch(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$8(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
