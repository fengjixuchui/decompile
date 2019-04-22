.class Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$6;
.super Ljava/lang/Object;
.source "SMActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->stopBackgroundServiceIfRunning(Landroid/content/Context;)V

    .line 226
    :goto_0
    return-void

    .line 218
    :cond_0
    # getter for: Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->selectedItem:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->access$1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    const-string v1, "select a app first!"

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->pid:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->access$3(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)Ljava/lang/Integer;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->selectedItem:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->access$1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->startBackgroundService(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0
.end method
