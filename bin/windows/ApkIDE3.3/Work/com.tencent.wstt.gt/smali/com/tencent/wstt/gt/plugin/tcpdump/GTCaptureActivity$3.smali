.class Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$3;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    const-string v0, ""

    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$9(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_param:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$7(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/EditText;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->access$8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method
