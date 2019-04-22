.class Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$3;
.super Ljava/lang/Object;
.source "GTPerfGroupDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->getLastSaveTimeDetail()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "lastSaveLog":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, ".csv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->et_savePath:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->access$7(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$3;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dlg_save:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->access$8(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 116
    return-void
.end method
