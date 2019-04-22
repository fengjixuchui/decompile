.class Lcom/tencent/wstt/gt/activity/GTPerfFragment$6;
.super Ljava/lang/Object;
.source "GTPerfFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTPerfFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->getLastSaveTimeLog()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "lastSaveLog":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string v1, ".csv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->et_savePath:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$8(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dlg_save:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$9(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 196
    return-void
.end method
