.class Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$6;
.super Ljava/lang/Object;
.source "GTLogSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->et_Msg:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->clearLastSearchMarks()V

    .line 249
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    iget-object v0, v0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->tv_count:Landroid/widget/TextView;

    const-string v1, "0 / 0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->arrayAdapter:Lcom/tencent/wstt/gt/log/SearchLogAdapter;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$9(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Lcom/tencent/wstt/gt/log/SearchLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/SearchLogAdapter;->notifyDataSetChanged()V

    .line 251
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->btn_msg_clear:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 252
    return-void
.end method
