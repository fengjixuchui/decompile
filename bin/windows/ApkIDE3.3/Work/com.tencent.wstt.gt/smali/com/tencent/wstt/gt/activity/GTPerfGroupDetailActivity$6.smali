.class Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$6;
.super Ljava/lang/Object;
.source "GTPerfGroupDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->et_savePath:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->access$7(Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTPerfGroupDetailActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 155
    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/log/GTTimeInternal;->saveTimeLogDetail(Ljava/lang/String;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    .line 157
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 158
    return-void
.end method
