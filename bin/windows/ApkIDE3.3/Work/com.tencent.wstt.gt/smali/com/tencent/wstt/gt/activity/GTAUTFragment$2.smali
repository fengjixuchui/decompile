.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;
.super Ljava/lang/Object;
.source "GTAUTFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;)Lcom/tencent/wstt/gt/activity/GTAUTFragment;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x10000000

    .line 357
    sget-boolean v4, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-nez v4, :cond_4

    .line 358
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 359
    const-class v5, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    .line 358
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .local v2, "intent":Landroid/content/Intent;
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->pkn_old:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 361
    const/4 v3, 0x1

    .line 362
    .local v3, "previous":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$2()[Z

    move-result-object v4

    array-length v4, v4

    if-lt v1, v4, :cond_1

    .line 368
    :cond_0
    if-eqz v3, :cond_2

    .line 369
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 370
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 369
    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 371
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    const v5, 0x7f090087

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 372
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    const v5, 0x7f090086

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 373
    const v4, 0x7f090071

    .line 374
    new-instance v5, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2$1;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2$1;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;)V

    .line 373
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    const v5, 0x7f090070

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 383
    new-instance v5, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2$2;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2$2;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;)V

    .line 382
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 399
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 421
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "previous":Z
    :goto_1
    return-void

    .line 363
    .restart local v1    # "i":I
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "previous":Z
    :cond_1
    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->hasAppHistory(I)Z
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$3(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_2
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 403
    const-class v5, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    .line 402
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-virtual {v4, v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 410
    .end local v1    # "i":I
    .end local v3    # "previous":Z
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 411
    const-class v5, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    .line 410
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 414
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-virtual {v4, v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 418
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 419
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    const v6, 0x7f090088

    invoke-virtual {v5, v6}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "center"

    .line 418
    invoke-static {v4, v5, v6}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
