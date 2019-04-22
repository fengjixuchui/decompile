.class Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;
.super Ljava/lang/Object;
.source "GTOpSMActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

.field private final synthetic val$ll_warnArea:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->val$ll_warnArea:Landroid/widget/LinearLayout;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->setEnable(Z)V

    .line 209
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->img_bottom_arrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$18(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 210
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->val$ll_warnArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvWaringArea:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$19(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    const v2, 0x7f0900ab

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getThresholdEntry()Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/ui/model/ThresholdEntry;->setEnable(Z)V

    .line 214
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->img_bottom_arrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$18(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 215
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->val$ll_warnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->tvWaringArea:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$19(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    const v2, 0x7f0900aa

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
