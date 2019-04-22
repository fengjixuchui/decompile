.class Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$2;
.super Ljava/lang/Object;
.source "GTCaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 112
    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->switch_param:Z
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$4(Z)V

    .line 114
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_param_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$5(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->fl_param:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$6(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$4(Z)V

    .line 118
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_param:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$7(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/EditText;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_param_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$5(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->fl_param:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$6(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
