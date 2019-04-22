.class Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$5;
.super Ljava/lang/Object;
.source "GTInputParamSetActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->initAutoCompleteTV(Ljava/util/ArrayList;Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

.field private final synthetic val$auto:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$5;->val$auto:Landroid/widget/AutoCompleteTextView;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 130
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 126
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$5;->val$auto:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->btn_c:Landroid/widget/Button;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$7(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->btn_c:Landroid/widget/Button;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$7(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
