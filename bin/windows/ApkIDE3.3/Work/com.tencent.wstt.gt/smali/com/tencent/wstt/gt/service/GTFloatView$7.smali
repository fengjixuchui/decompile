.class Lcom/tencent/wstt/gt/service/GTFloatView$7;
.super Landroid/os/Handler;
.source "GTFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/service/GTFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTFloatView;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 937
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x5

    const/16 v7, 0x33

    const v6, 0x7f020036

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 939
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 941
    :pswitch_0
    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->op1_fold:Z
    invoke-static {}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$32()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 942
    invoke-static {v5}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$33(Z)V

    .line 943
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v3

    .line 944
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 943
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$35(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    .line 945
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 946
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 948
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 947
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v0, v2

    .line 949
    .local v0, "width_text":I
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 950
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 952
    .local v1, "width_textView":I
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 955
    if-ge v1, v0, :cond_1

    .line 957
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$36(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 958
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 959
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$36(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 960
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_unfold_height:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$37(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 961
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 962
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 963
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 964
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_unfold_height:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$37(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 966
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 967
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 968
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$36(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 989
    .end local v0    # "width_text":I
    .end local v1    # "width_textView":I
    :goto_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->checkOthersOPState(I)V
    invoke-static {v2, v4}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$40(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    goto/16 :goto_0

    .line 970
    .restart local v0    # "width_text":I
    .restart local v1    # "width_textView":I
    :cond_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$36(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 973
    .end local v0    # "width_text":I
    .end local v1    # "width_textView":I
    :cond_2
    invoke-static {v4}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$33(Z)V

    .line 975
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$36(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 976
    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 977
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$36(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_fold_height:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$38(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 978
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 979
    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 980
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 981
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_fold_height:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$38(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 982
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v3

    .line 983
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 982
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$39(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    .line 985
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 986
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$36(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 992
    :pswitch_1
    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->op2_fold:Z
    invoke-static {}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$41()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 993
    invoke-static {v5}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$42(Z)V

    .line 994
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v3

    .line 995
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 994
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$44(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    .line 996
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 997
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 999
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 998
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v0, v2

    .line 1000
    .restart local v0    # "width_text":I
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1001
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 1003
    .restart local v1    # "width_textView":I
    if-ge v1, v0, :cond_3

    .line 1005
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$45(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1006
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1007
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$45(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1008
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_unfold_height:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$46(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 1009
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1010
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1011
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1012
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_unfold_height:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$46(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 1017
    :cond_3
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1018
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1019
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$45(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1037
    .end local v0    # "width_text":I
    .end local v1    # "width_textView":I
    :goto_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    const/4 v3, 0x2

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->checkOthersOPState(I)V
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$40(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    goto/16 :goto_0

    .line 1022
    :cond_4
    invoke-static {v4}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$42(Z)V

    .line 1023
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v3

    .line 1024
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 1023
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$47(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    .line 1026
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$45(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1027
    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1028
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$45(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_fold_height:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$48(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 1029
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1030
    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1031
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1032
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_fold_height:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$48(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 1034
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1035
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$45(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 1040
    :pswitch_2
    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->op3_fold:Z
    invoke-static {}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$49()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1041
    invoke-static {v5}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$50(Z)V

    .line 1042
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v3

    .line 1043
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 1042
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$52(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    .line 1044
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1045
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 1047
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1046
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v0, v2

    .line 1048
    .restart local v0    # "width_text":I
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1049
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 1050
    .restart local v1    # "width_textView":I
    if-ge v1, v0, :cond_5

    .line 1052
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$53(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1053
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1054
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$53(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1055
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_unfold_height:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$54(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 1056
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1057
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1058
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1059
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_unfold_height:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$54(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 1064
    :cond_5
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1065
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1066
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$53(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1088
    .end local v0    # "width_text":I
    .end local v1    # "width_textView":I
    :goto_3
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    const/4 v3, 0x3

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->checkOthersOPState(I)V
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$40(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    goto/16 :goto_0

    .line 1073
    :cond_6
    invoke-static {v4}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$50(Z)V

    .line 1074
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v3

    .line 1075
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 1074
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$55(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    .line 1077
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$53(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1078
    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1079
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$53(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_fold_height:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$56(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 1080
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1081
    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1082
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    .line 1083
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_fold_height:I
    invoke-static {v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$56(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 1085
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1086
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView$7;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$53(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    .line 939
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
