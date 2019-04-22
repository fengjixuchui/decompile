.class Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;
.super Ljava/lang/Object;
.source "GTOpSinglePerfActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 465
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    const v2, 0x7f09006f

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 472
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 473
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    const v2, 0x7f090071

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 474
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$1;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$1;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)V

    .line 473
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 481
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    const v2, 0x7f090070

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 482
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2$2;-><init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$2;)V

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 507
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
