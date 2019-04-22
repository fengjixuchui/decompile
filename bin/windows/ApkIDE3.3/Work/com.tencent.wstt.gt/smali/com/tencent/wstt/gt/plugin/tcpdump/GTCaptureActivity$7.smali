.class Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;
.super Landroid/os/Handler;
.source "GTCaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    .line 179
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 181
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 183
    :pswitch_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->switch_tcpdump:Z

    .line 184
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_switch:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$11(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f020063

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 185
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_switch:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$11(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    const v3, 0x7f090003

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :pswitch_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->switch_tcpdump:Z

    .line 189
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_switch:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$11(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 190
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_switch:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$11(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v0, ""

    .line 194
    .local v0, "message":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/tencent/wstt/gt/api/utils/WidgetUtils;->openToast(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # invokes: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->dismissProDialog()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$12(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V

    goto :goto_0

    .line 193
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 199
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_2
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$13(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_tcpdump_progress:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$14(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->curFileSize:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$15()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 199
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 203
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_3
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$16(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_tcpdump_curFile:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$17(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;

    move-result-object v2

    .line 205
    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->curFilePath:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$18()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    .line 204
    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # invokes: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->dismissProDialog()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$12(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V

    goto/16 :goto_0

    .line 203
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 205
    :cond_3
    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->curFilePath:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$18()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 210
    :pswitch_5
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # invokes: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->showProDialog()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$19(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V

    goto/16 :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
