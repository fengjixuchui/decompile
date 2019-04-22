.class Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;
.super Ljava/lang/Object;
.source "GTOpSMActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSMActivity;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 497
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 503
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    const v2, 0x7f09006f

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 504
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 505
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    const v2, 0x7f090071

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 506
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$1;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$1;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)V

    .line 505
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 513
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    const v2, 0x7f090070

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 514
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2$2;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity$2;)V

    .line 513
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
