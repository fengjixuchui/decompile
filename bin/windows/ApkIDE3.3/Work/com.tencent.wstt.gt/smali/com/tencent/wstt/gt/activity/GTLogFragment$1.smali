.class Lcom/tencent/wstt/gt/activity/GTLogFragment$1;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v2, 0x8

    .line 134
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "sCurSelectedMsg":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setCurFilterMsg(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->filterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->img_empty:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$1(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_clear:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$2(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->onLogChanged()V

    .line 149
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->btn_msg_clear:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$2(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 154
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 159
    return-void
.end method
