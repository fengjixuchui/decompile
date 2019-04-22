.class Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$6;
.super Ljava/lang/Object;
.source "GTCaptureActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 161
    if-eqz p2, :cond_2

    .line 162
    invoke-static {p2}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$10(Z)V

    .line 163
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_param_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$5(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->fl_param:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$6(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_param:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$7(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "cur_param":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_param:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$7(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "-p -s 0 -vv -w"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .end local v0    # "cur_param":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    invoke-static {p2}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$10(Z)V

    .line 173
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_param_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$5(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->fl_param:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$6(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
