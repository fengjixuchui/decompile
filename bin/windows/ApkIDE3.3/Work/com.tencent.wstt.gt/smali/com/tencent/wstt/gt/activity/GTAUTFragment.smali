.class public Lcom/tencent/wstt/gt/activity/GTAUTFragment;
.super Landroid/support/v4/app/Fragment;
.source "GTAUTFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;
    }
.end annotation


# static fields
.field private static cb_alias:[Ljava/lang/String;

.field private static cb_key:[Ljava/lang/String;

.field private static cb_status:[Z

.field private static isAutoGetMem:Z

.field private static pkn_old:Ljava/lang/String;


# instance fields
.field private cb_boxs:[Landroid/widget/CheckBox;

.field private cb_check:Landroid/view/View$OnClickListener;

.field private cb_cpu:Landroid/widget/CheckBox;

.field private cb_jiffies:Landroid/widget/CheckBox;

.field private cb_net:Landroid/widget/CheckBox;

.field private cb_pd:Landroid/widget/CheckBox;

.field private cb_pss:Landroid/widget/CheckBox;

.field private defaultDrawable:I

.field private dlg_save:Landroid/app/AlertDialog;

.field private et_savePath:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private launchapp:Landroid/view/View$OnClickListener;

.field private memOff:Landroid/widget/TextView;

.field private memOn:Landroid/widget/TextView;

.field private memSwitch:Landroid/view/View;

.field private proDialog:Landroid/app/ProgressDialog;

.field private select:Landroid/view/View$OnClickListener;

.field private selectDrawable:I

.field private thread:Ljava/lang/Thread;

.field private tv_AppName:Landroid/widget/TextView;

.field private tv_Appstatus:Landroid/widget/TextView;

.field private tv_PkName:Landroid/widget/TextView;

.field private tv_refresh:Landroid/widget/TextView;

.field private tv_select:Landroid/widget/TextView;

.field private tv_selectedApp:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->pkn_old:Ljava/lang/String;

    .line 97
    new-array v0, v4, [Z

    sput-object v0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z

    .line 98
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "PCP"

    aput-object v1, v0, v5

    const-string v1, "PJF"

    aput-object v1, v0, v3

    const-string v1, "PNET"

    aput-object v1, v0, v6

    .line 99
    const-string v1, "PSS"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Pri"

    aput-object v2, v0, v1

    .line 98
    sput-object v0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_alias:[Ljava/lang/String;

    .line 100
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Pcp"

    aput-object v1, v0, v5

    const-string v1, "Pjif"

    aput-object v1, v0, v3

    const-string v1, "Pnet"

    aput-object v1, v0, v6

    .line 101
    const-string v1, "Ps"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Pr"

    aput-object v2, v0, v1

    .line 100
    sput-object v0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_key:[Ljava/lang/String;

    .line 107
    sput-boolean v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->isAutoGetMem:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_AppName:Landroid/widget/TextView;

    .line 78
    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_selectedApp:Landroid/widget/TextView;

    .line 79
    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_Appstatus:Landroid/widget/TextView;

    .line 80
    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_select:Landroid/widget/TextView;

    .line 81
    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;

    .line 82
    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_PkName:Landroid/widget/TextView;

    .line 112
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$1;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->handler:Landroid/os/Handler;

    .line 354
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->select:Landroid/view/View$OnClickListener;

    .line 424
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->launchapp:Landroid/view/View$OnClickListener;

    .line 696
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$4;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$4;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_check:Landroid/view/View$OnClickListener;

    .line 121
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/tencent/wstt/gt/GTApp;->setAUTHandler(Landroid/os/Handler;)V

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->doResume()V

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->pkn_old:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/activity/GTAUTFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->proDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->et_savePath:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_PkName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->isAutoGetMem:Z

    return v0
.end method

.method static synthetic access$15(Z)V
    .locals 0

    .prologue
    .line 107
    sput-boolean p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->isAutoGetMem:Z

    return-void
.end method

.method static synthetic access$16(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->defaultDrawable:I

    return v0
.end method

.method static synthetic access$18(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOff:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->selectDrawable:I

    return v0
.end method

.method static synthetic access$2()[Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z

    return-object v0
.end method

.method static synthetic access$20(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->dlg_save:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$21(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)[Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_boxs:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$22(Lcom/tencent/wstt/gt/activity/GTAUTFragment;I)V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->unregisterOutpara(I)V

    return-void
.end method

.method static synthetic access$3(I)Z
    .locals 1

    .prologue
    .line 446
    invoke-static {p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->hasAppHistory(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4()V
    .locals 0

    .prologue
    .line 477
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->checkRegist()V

    return-void
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/activity/GTAUTFragment;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->thread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$7(I)V
    .locals 0

    .prologue
    .line 638
    invoke-static {p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/activity/GTAUTFragment;I)V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->hashistory(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->proDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static checkRegist()V
    .locals 6

    .prologue
    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "count":I
    const/4 v3, 0x0

    sput-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    .line 480
    :cond_0
    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 494
    :goto_0
    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->appstatus:Ljava/lang/String;

    const-string v4, "running"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 495
    const/4 v2, 0x0

    .local v2, "num":I
    :goto_1
    sget-object v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 501
    .end local v2    # "num":I
    :cond_1
    return-void

    .line 481
    :cond_2
    invoke-static {}, Lcom/tencent/wstt/gt/manager/AUTManager;->findProcess()V

    .line 482
    add-int/lit8 v0, v0, 0x1

    .line 484
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_2
    const/16 v3, 0x14

    if-le v0, v3, :cond_0

    .line 489
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090080

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->appstatus:Ljava/lang/String;

    goto :goto_0

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 496
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "num":I
    :cond_3
    sget-object v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_4

    .line 497
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(I)V

    .line 495
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private doResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 293
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_Appstatus:Landroid/widget/TextView;

    sget-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->appstatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;

    const v4, 0x7f020069

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 296
    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->appic:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->syncProcessRunPkgState()V

    .line 298
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_selectedApp:Landroid/widget/TextView;

    sget-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->appic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_PkName:Landroid/widget/TextView;

    sget-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_AppName:Landroid/widget/TextView;

    sget-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->apn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_PkName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    :cond_0
    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->appstatus:Ljava/lang/String;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    invoke-direct {p0, v5}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->setAllCheckbox(I)V

    .line 321
    :goto_0
    sget-object v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->pkn_old:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->pkn_old:Ljava/lang/String;

    sget-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameIdMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 323
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z

    array-length v3, v3

    if-lt v2, v3, :cond_4

    .line 326
    const/4 v2, 0x0

    :goto_2
    sget-object v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z

    array-length v3, v3

    if-lt v2, v3, :cond_5

    .line 329
    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->proNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 330
    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->proPidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 332
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v3

    const-string v4, "_AUT__"

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/manager/ClientManager;->removeClient(Ljava/lang/String;)V

    .line 334
    new-instance v0, Lcom/tencent/wstt/gt/manager/SingleInstanceClientFactory;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/manager/SingleInstanceClientFactory;-><init>()V

    .line 336
    .local v0, "cf":Lcom/tencent/wstt/gt/manager/ClientFactory;
    const-string v3, "_AUT__"

    const-string v4, "_AUT__"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 335
    invoke-virtual {v0, v3, v4, v7, v7}, Lcom/tencent/wstt/gt/manager/ClientFactory;->orderClient(Ljava/lang/String;I[Lcom/tencent/wstt/gt/OutPara;[Lcom/tencent/wstt/gt/InPara;)Lcom/tencent/wstt/gt/manager/Client;

    .line 340
    .end local v0    # "cf":Lcom/tencent/wstt/gt/manager/ClientFactory;
    .end local v2    # "i":I
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/manager/AUTManager;->findProcess()V

    .line 341
    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    sput-object v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->pkn_old:Ljava/lang/String;

    .line 344
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_3
    sget-object v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z

    array-length v3, v3

    if-lt v1, v3, :cond_6

    .line 347
    return-void

    .line 307
    .end local v1    # "count":I
    :cond_2
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_Appstatus:Landroid/widget/TextView;

    sget-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->appstatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_Appstatus:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 309
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_Appstatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->launchapp:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    sget-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-eqz v3, :cond_3

    .line 312
    invoke-direct {p0, v5}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->setAllCheckbox(I)V

    goto :goto_0

    .line 314
    :cond_3
    invoke-direct {p0, v6}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->setAllCheckbox(I)V

    goto :goto_0

    .line 324
    .restart local v2    # "i":I
    :cond_4
    sget-object v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z

    aput-boolean v5, v3, v2

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 327
    :cond_5
    invoke-direct {p0, v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->unregisterOutpara(I)V

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 345
    .end local v2    # "i":I
    .restart local v1    # "count":I
    :cond_6
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_boxs:[Landroid/widget/CheckBox;

    aget-object v3, v3, v1

    sget-object v4, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private static hasAppHistory(I)Z
    .locals 7
    .param p0, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 447
    if-ltz p0, :cond_0

    sget-object v5, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_alias:[Ljava/lang/String;

    array-length v5, v5

    if-lt p0, v5, :cond_2

    :cond_0
    move v0, v6

    .line 474
    :cond_1
    :goto_0
    return v0

    .line 451
    :cond_2
    sget-object v5, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_alias:[Ljava/lang/String;

    aget-object v2, v5, p0

    .line 453
    .local v2, "outparaname":Ljava/lang/String;
    const/4 v0, 0x1

    .line 454
    .local v0, "hasdata":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v3, "tempL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/tencent/wstt/gt/manager/AUTManager;->registOpTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tempL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 456
    .restart local v3    # "tempL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_6

    .line 457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 459
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getProfilerData(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    .line 460
    .local v4, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-nez v4, :cond_4

    .line 461
    const/4 v0, 0x0

    .line 457
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 463
    :cond_4
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 464
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v5

    if-gtz v5, :cond_5

    .line 465
    const/4 v0, 0x0

    .line 466
    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v5

    if-gtz v5, :cond_3

    .line 467
    const/4 v0, 0x0

    goto :goto_2

    .line 472
    .end local v1    # "i":I
    .end local v4    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hashistory(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v8, 0x0

    .line 753
    sget-object v6, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_alias:[Ljava/lang/String;

    aget-object v3, v6, p1

    .line 754
    .local v3, "outparaname":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 755
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    .line 756
    .local v1, "hasdata":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v4, "tempL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/tencent/wstt/gt/manager/AUTManager;->registOpTable:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tempL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 758
    .restart local v4    # "tempL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 759
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 774
    if-nez v1, :cond_5

    .line 775
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->unregisterOutpara(I)V

    .line 805
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 761
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getProfilerData(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v5

    .line 762
    .local v5, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-nez v5, :cond_3

    .line 763
    const/4 v1, 0x0

    .line 759
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 765
    :cond_3
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 766
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v6

    if-lez v6, :cond_4

    .line 767
    const/4 v1, 0x1

    .line 768
    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v6

    if-gtz v6, :cond_2

    .line 769
    const/4 v1, 0x0

    goto :goto_2

    .line 777
    .end local v5    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_5
    const v6, 0x7f090087

    invoke-virtual {p0, v6}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 778
    const v6, 0x7f090086

    invoke-virtual {p0, v6}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 779
    const v6, 0x7f090071

    invoke-virtual {p0, v6}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 780
    new-instance v7, Lcom/tencent/wstt/gt/activity/GTAUTFragment$9;

    invoke-direct {v7, p0, p1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$9;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;I)V

    .line 779
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 789
    const v6, 0x7f090070

    invoke-virtual {p0, v6}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 790
    new-instance v7, Lcom/tencent/wstt/gt/activity/GTAUTFragment$10;

    invoke-direct {v7, p0, p1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$10;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;I)V

    .line 789
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 801
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 802
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public static registerOutpara(II)Ljava/util/List;
    .locals 23
    .param p0, "type"    # I
    .param p1, "designatedPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v15, "result":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/OutPara;>;"
    const/16 v20, 0x1

    sput-boolean v20, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_change:Z

    .line 536
    sget-object v20, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z

    const/16 v21, 0x1

    aput-boolean v21, v20, p0

    .line 537
    sget-object v20, Lcom/tencent/wstt/gt/manager/AUTManager;->appstatus:Ljava/lang/String;

    const-string v21, "running"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 635
    :cond_0
    return-object v15

    .line 541
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v14, "registOutList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v20, Lcom/tencent/wstt/gt/manager/AUTManager;->registOpTable:Ljava/util/Hashtable;

    sget-object v21, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_alias:[Ljava/lang/String;

    aget-object v21, v21, p0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v20, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    if-eqz v20, :cond_0

    .line 545
    sget-object v19, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    .line 546
    .local v19, "tempPids":[Ljava/lang/String;
    if-ltz p1, :cond_2

    .line 548
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 549
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v20, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_3

    .line 559
    .end local v8    # "i":I
    :cond_2
    :goto_1
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_0

    .line 563
    const/16 v20, 0x2

    move/from16 v0, p0

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 565
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_key:[Ljava/lang/String;

    aget-object v21, v21, p0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 566
    .local v13, "preOpName":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v21, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 567
    .local v9, "key":Ljava/lang/String;
    sget-object v20, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_alias:[Ljava/lang/String;

    aget-object v3, v20, p0

    .line 576
    .local v3, "alias":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/wstt/gt/manager/ClientManager;->getAUTClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v4

    .line 577
    .local v4, "autClient":Lcom/tencent/wstt/gt/manager/Client;
    invoke-virtual {v4, v9, v3}, Lcom/tencent/wstt/gt/manager/Client;->registerOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v9, v0}, Lcom/tencent/wstt/gt/manager/Client;->setOutparaMonitor(Ljava/lang/String;Z)V

    .line 579
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {v4, v9}, Lcom/tencent/wstt/gt/manager/Client;->getOutPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/OutPara;

    move-result-object v12

    .line 581
    .local v12, "op":Lcom/tencent/wstt/gt/OutPara;
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    packed-switch p0, :pswitch_data_0

    .line 559
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 551
    .end local v3    # "alias":Ljava/lang/String;
    .end local v4    # "autClient":Lcom/tencent/wstt/gt/manager/Client;
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "op":Lcom/tencent/wstt/gt/OutPara;
    .end local v13    # "preOpName":Ljava/lang/String;
    :cond_3
    sget-object v20, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    aget-object v20, v20, v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 553
    const/16 v20, 0x0

    sget-object v21, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    aget-object v21, v21, v8

    aput-object v21, v19, v20

    goto :goto_1

    .line 549
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 571
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_key:[Ljava/lang/String;

    aget-object v21, v21, p0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 572
    .restart local v13    # "preOpName":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v21, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    aget-object v21, v21, v8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 573
    .restart local v9    # "key":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_alias:[Ljava/lang/String;

    aget-object v21, v21, p0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "alias":Ljava/lang/String;
    goto/16 :goto_3

    .line 587
    .restart local v4    # "autClient":Lcom/tencent/wstt/gt/manager/Client;
    .restart local v12    # "op":Lcom/tencent/wstt/gt/OutPara;
    :pswitch_0
    const/16 v20, 0xd

    .line 588
    const-string v21, "Process CPU occupy"

    const-string v22, "%"

    .line 586
    move/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v12, v0, v1, v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    .line 590
    sget-object v20, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->cpuInfoMap:Ljava/util/Map;

    new-instance v21, Lcom/tencent/wstt/gt/api/utils/CpuUtils;

    invoke-direct/range {v21 .. v21}, Lcom/tencent/wstt/gt/api/utils/CpuUtils;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 594
    :pswitch_1
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_key:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    aget-object v21, v21, v8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 596
    .local v10, "keyCpu":Ljava/lang/String;
    sget-object v20, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->cpuInfoMap:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_6

    .line 599
    sget-object v20, Lcom/tencent/wstt/gt/api/utils/CpuUtils;->cpuInfoMap:Ljava/util/Map;

    new-instance v21, Lcom/tencent/wstt/gt/api/utils/CpuUtils;

    invoke-direct/range {v21 .. v21}, Lcom/tencent/wstt/gt/api/utils/CpuUtils;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_6
    const/16 v20, 0xc

    .line 604
    const-string v21, ""

    const-string v22, ""

    .line 602
    move/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v12, v0, v1, v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 607
    .end local v10    # "keyCpu":Ljava/lang/String;
    :pswitch_2
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v20, 0x0

    const-string v21, "transmitted"

    aput-object v21, v16, v20

    const/16 v20, 0x1

    const-string v21, "received"

    aput-object v21, v16, v20

    .line 608
    .local v16, "subKeys":[Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    .line 612
    .local v5, "funIds":[I
    const-string v20, ""

    const-string v21, "KB"

    .line 611
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v12, v0, v5, v1, v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v11, Lcom/tencent/wstt/gt/api/utils/NetUtils;

    sget-object v20, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Lcom/tencent/wstt/gt/api/utils/NetUtils;-><init>(Ljava/lang/String;)V

    .line 614
    .local v11, "mNetUtils":Lcom/tencent/wstt/gt/api/utils/NetUtils;
    sget-object v20, Lcom/tencent/wstt/gt/api/utils/NetUtils;->netInfoMap:Ljava/util/Map;

    sget-object v21, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 617
    .end local v5    # "funIds":[I
    .end local v11    # "mNetUtils":Lcom/tencent/wstt/gt/api/utils/NetUtils;
    .end local v16    # "subKeys":[Ljava/lang/String;
    :pswitch_3
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const-string v21, "total"

    aput-object v21, v18, v20

    const/16 v20, 0x1

    const-string v21, "dalvik"

    aput-object v21, v18, v20

    const/16 v20, 0x2

    const-string v21, "native"

    aput-object v21, v18, v20

    .line 618
    .local v18, "subKeys_pss":[Ljava/lang/String;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v7, v0, [I

    fill-array-data v7, :array_1

    .line 622
    .local v7, "funIds_pss":[I
    const-string v20, ""

    const-string v21, "MB"

    .line 621
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v12, v0, v7, v1, v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 625
    .end local v7    # "funIds_pss":[I
    .end local v18    # "subKeys_pss":[Ljava/lang/String;
    :pswitch_4
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const-string v21, "total"

    aput-object v21, v17, v20

    const/16 v20, 0x1

    const-string v21, "dalvik"

    aput-object v21, v17, v20

    const/16 v20, 0x2

    const-string v21, "native"

    aput-object v21, v17, v20

    .line 626
    .local v17, "subKeys_pd":[Ljava/lang/String;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v6, v0, [I

    fill-array-data v6, :array_2

    .line 630
    .local v6, "funIds_pd":[I
    const-string v20, ""

    const-string v21, "MB"

    .line 629
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v12, v0, v6, v1, v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->startProfier(Lcom/tencent/wstt/gt/OutPara;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 608
    :array_0
    .array-data 4
        0xe
        0xe
    .end array-data

    .line 618
    :array_1
    .array-data 4
        0xf
        0xf
        0xf
    .end array-data

    .line 626
    :array_2
    .array-data 4
        0xf
        0xf
        0xf
    .end array-data
.end method

.method private static registerOutpara(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 639
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->registerOutpara(II)Ljava/util/List;

    .line 640
    return-void
.end method

.method private setAllCheckbox(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 644
    packed-switch p1, :pswitch_data_0

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 646
    :pswitch_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_boxs:[Landroid/widget/CheckBox;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-lt v2, v5, :cond_1

    .line 650
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 646
    :cond_1
    aget-object v0, v4, v2

    .line 648
    .local v0, "cb":Landroid/widget/CheckBox;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 646
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 653
    .end local v0    # "cb":Landroid/widget/CheckBox;
    :pswitch_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_boxs:[Landroid/widget/CheckBox;

    array-length v4, v2

    :goto_2
    if-lt v3, v4, :cond_3

    .line 657
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 653
    :cond_3
    aget-object v0, v2, v3

    .line 655
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 653
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 660
    .end local v0    # "cb":Landroid/widget/CheckBox;
    :pswitch_2
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_boxs:[Landroid/widget/CheckBox;

    array-length v5, v4

    move v2, v3

    :goto_3
    if-lt v2, v5, :cond_5

    .line 664
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    sget-object v2, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 665
    invoke-direct {p0, v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->unregisterOutpara(I)V

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 660
    .end local v1    # "i":I
    :cond_5
    aget-object v0, v4, v2

    .line 662
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 660
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private syncProcessRunPkgState()V
    .locals 3

    .prologue
    .line 505
    sget-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 506
    sget-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->hasProcessRunPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    const-string v0, "running"

    sput-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->appstatus:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_Appstatus:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 510
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->appstatus:Ljava/lang/String;

    .line 516
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_Appstatus:Landroid/widget/TextView;

    .line 517
    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 518
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_Appstatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 519
    const/high16 v2, 0x7f060000

    .line 518
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 520
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private unregisterOutpara(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 673
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_change:Z

    .line 674
    sget-object v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_status:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, p1

    .line 676
    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 677
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->pIds:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 692
    sget-object v3, Lcom/tencent/wstt/gt/manager/AUTManager;->registOpTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_alias:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 679
    .restart local v1    # "i":I
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_key:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, "preOpName":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/tencent/wstt/gt/manager/ClientManager;->getInstance()Lcom/tencent/wstt/gt/manager/ClientManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/manager/ClientManager;->getAUTClient()Lcom/tencent/wstt/gt/manager/Client;

    move-result-object v0

    .line 689
    .local v0, "autClient":Lcom/tencent/wstt/gt/manager/Client;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/wstt/gt/manager/AUTManager;->pNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/wstt/gt/manager/Client;->unregisterOutPara(Ljava/lang/String;)V

    .line 677
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "autClient":Lcom/tencent/wstt/gt/manager/Client;
    .end local v2    # "preOpName":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_key:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "preOpName":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->setHasOptionsMenu(Z)V

    .line 129
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 351
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 352
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 134
    const v2, 0x7f030029

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "autLayout":Landroid/view/View;
    const v2, 0x7f08010d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_Appstatus:Landroid/widget/TextView;

    .line 138
    const v2, 0x7f080106

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_select:Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_select:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->select:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v2, 0x7f080109

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_PkName:Landroid/widget/TextView;

    .line 141
    const v2, 0x7f080107

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_selectedApp:Landroid/widget/TextView;

    .line 142
    const v2, 0x7f080108

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_AppName:Landroid/widget/TextView;

    .line 143
    const v2, 0x7f08010c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;

    .line 145
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment$5;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$5;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    const v2, 0x7f080113

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_cpu:Landroid/widget/CheckBox;

    .line 167
    const v2, 0x7f080114

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_jiffies:Landroid/widget/CheckBox;

    .line 168
    const v2, 0x7f080115

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_net:Landroid/widget/CheckBox;

    .line 169
    const v2, 0x7f080111

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_pss:Landroid/widget/CheckBox;

    .line 170
    const v2, 0x7f080112

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_pd:Landroid/widget/CheckBox;

    .line 171
    const/4 v2, 0x5

    new-array v2, v2, [Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_cpu:Landroid/widget/CheckBox;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_jiffies:Landroid/widget/CheckBox;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_net:Landroid/widget/CheckBox;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_pss:Landroid/widget/CheckBox;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_pd:Landroid/widget/CheckBox;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_boxs:[Landroid/widget/CheckBox;

    .line 173
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_cpu:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_check:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_jiffies:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_check:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_net:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_check:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_pss:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_check:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_pd:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_check:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v2, 0x7f08010f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOn:Landroid/widget/TextView;

    .line 180
    const v2, 0x7f080110

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOff:Landroid/widget/TextView;

    .line 181
    const v2, 0x7f08010e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memSwitch:Landroid/view/View;

    .line 182
    const v2, 0x7f020062

    iput v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->selectDrawable:I

    .line 183
    const v2, 0x7f020061

    iput v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->defaultDrawable:I

    .line 185
    sget-boolean v2, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->isAutoGetMem:Z

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOn:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOn:Landroid/widget/TextView;

    iget v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->selectDrawable:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 188
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOff:Landroid/widget/TextView;

    const-string v3, "off"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOff:Landroid/widget/TextView;

    iget v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->defaultDrawable:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 199
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 200
    const v3, 0x7f030005

    .line 199
    invoke-virtual {v2, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 201
    .local v1, "rl_save":Landroid/widget/RelativeLayout;
    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->et_savePath:Landroid/widget/EditText;

    .line 203
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    const v3, 0x7f090063

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 205
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 206
    const v3, 0x7f090071

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    new-instance v4, Lcom/tencent/wstt/gt/activity/GTAUTFragment$6;

    invoke-direct {v4, p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$6;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V

    .line 206
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 216
    const v3, 0x7f090070

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/wstt/gt/activity/GTAUTFragment$7;

    invoke-direct {v4, p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$7;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 203
    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->dlg_save:Landroid/app/AlertDialog;

    .line 228
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memSwitch:Landroid/view/View;

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;-><init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 274
    return-object v0

    .line 193
    .end local v1    # "rl_save":Landroid/widget/RelativeLayout;
    :cond_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOn:Landroid/widget/TextView;

    const-string v3, "on"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOn:Landroid/widget/TextView;

    iget v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->selectDrawable:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 195
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOff:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOff:Landroid/widget/TextView;

    iget v3, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->defaultDrawable:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "newHiddenState"    # Z

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->doResume()V

    .line 283
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 287
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 288
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->doResume()V

    .line 289
    return-void
.end method
