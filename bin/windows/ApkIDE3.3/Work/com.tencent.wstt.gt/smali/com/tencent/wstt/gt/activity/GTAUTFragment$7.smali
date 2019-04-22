.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$7;
.super Ljava/lang/Object;
.source "GTAUTFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 221
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->et_savePath:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$12(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_PkName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$13(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".csv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/log/LogUtils;->writeTagMemData(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v1, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->memInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 224
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 225
    return-void
.end method
