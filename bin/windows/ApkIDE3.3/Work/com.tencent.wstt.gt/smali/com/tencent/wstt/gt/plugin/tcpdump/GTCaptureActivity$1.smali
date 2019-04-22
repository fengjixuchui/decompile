.class Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$1;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$1;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$1;->this$0:Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->finish()V

    .line 100
    return-void
.end method
