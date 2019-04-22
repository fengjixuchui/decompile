.class Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;
.super Ljava/lang/Object;
.source "GTInputParamSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    const/4 v7, 0x1

    sput-boolean v7, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->fromfinish:Z

    .line 160
    iget-object v8, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    const v9, 0x7f080081

    invoke-virtual {v7, v9}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    invoke-static {v8, v7}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;Landroid/widget/AutoCompleteTextView;)V

    .line 161
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->autoTV:Landroid/widget/AutoCompleteTextView;
    invoke-static {v7}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "newValue":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 163
    :cond_0
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    const-string v8, "\u5165\u53c2\u4e0d\u80fd\u8bbe\u7f6e\u4e3a\u7a7a"

    # invokes: Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->openToast(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->values:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$3(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 168
    .local v4, "locationAtValues":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v6, "new_values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, -0x1

    if-eq v7, v4, :cond_2

    .line 170
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->values:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$3(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 172
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 179
    :goto_1
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->ip_client:Ljava/lang/String;
    invoke-static {v8}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$4(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tencent/wstt/gt/manager/ClientManager;->getClient(Ljava/lang/String;)Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 180
    .local v0, "client":Lcom/tencent/wstt/gt/manager/Client;
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->ip_name:Ljava/lang/String;
    invoke-static {v7}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$5(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/tencent/wstt/gt/manager/Client;->getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;

    move-result-object v2

    .line 181
    .local v2, "inPara":Lcom/tencent/wstt/gt/InPara;
    invoke-virtual {v2, v6}, Lcom/tencent/wstt/gt/InPara;->setValues(Ljava/util/List;)V

    .line 183
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    iget-object v8, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->autoTV:Landroid/widget/AutoCompleteTextView;
    invoke-static {v8}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v8

    # invokes: Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->initAutoCompleteTV(Ljava/util/ArrayList;Landroid/widget/AutoCompleteTextView;)V
    invoke-static {v7, v6, v8}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;Ljava/util/ArrayList;Landroid/widget/AutoCompleteTextView;)V

    .line 185
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 186
    .local v3, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 188
    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_2
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->finish()V

    goto :goto_0

    .line 175
    .end local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    .end local v2    # "inPara":Lcom/tencent/wstt/gt/InPara;
    .end local v3    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->values:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$3(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 189
    .restart local v0    # "client":Lcom/tencent/wstt/gt/manager/Client;
    .restart local v2    # "inPara":Lcom/tencent/wstt/gt/InPara;
    .restart local v3    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
