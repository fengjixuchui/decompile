.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;
.super Landroid/os/Handler;
.source "GTParamOutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    .line 453
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 455
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 457
    :pswitch_0
    invoke-static {}, Lcom/tencent/wstt/gt/internal/GTMemoryDaemonHelper;->startGWOrProfValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->isOneItemSelected()Z
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    sput-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    .line 463
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->initGwOnOff()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$1(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    goto :goto_0

    .line 467
    :pswitch_1
    sput-boolean v5, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    .line 468
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->initGwOnOff()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$1(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    goto :goto_0

    .line 471
    :pswitch_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->isOneItemSelected()Z
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    sput-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_change:Z

    .line 473
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    const v4, 0x7f090097

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 474
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 476
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    const v3, 0x7f09006c

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 477
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    const v3, 0x7f090071

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1$1;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1$1;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 484
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    const v3, 0x7f090070

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1$2;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1$2;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 498
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 499
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 503
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_3
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->dismissAlam()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$2(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    .line 504
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->isOneItemSelected()Z
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    sput-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_change:Z

    .line 506
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTGWInternal;->getLastSaveFolder()Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "lastSaveLog":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath1:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$3(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;

    move-result-object v2

    sget-object v3, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath2:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$4(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;

    move-result-object v2

    sget-object v3, Lcom/tencent/wstt/gt/api/utils/Env;->CUR_APP_VER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath3:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$5(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->gwhis_save:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$6(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 516
    .end local v1    # "lastSaveLog":Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->dismissProDialog()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$7(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    .line 517
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    const v4, 0x7f090098

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "center"

    invoke-static {v2, v3, v4}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 521
    :pswitch_5
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->removeMessages(I)V

    .line 522
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->doResume()V
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$8(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    goto/16 :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
