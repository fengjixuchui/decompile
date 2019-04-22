.class public Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
.super Landroid/support/v4/app/ListFragment;
.source "GTParamOutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;


# static fields
.field static final FILE_ARRAY:Ljava/lang/String; = "file_array"

.field static final LS_KEY:Ljava/lang/String; = "qq_lsk"

.field static final PATH1:Ljava/lang/String; = "upload_product_version"

.field static final PATH2:Ljava/lang/String; = "upload_feature"

.field static final PATH3:Ljava/lang/String; = "upload_path3"

.field static final PRODUCT_ID:Ljava/lang/String; = "upload_product_id"

.field static final PRODUCT_NAME:Ljava/lang/String; = "upload_product_name"

.field static final P_S_KEY:Ljava/lang/String; = "qq_psk"

.field static final SRC:Ljava/lang/String; = "srcFolder"

.field static final S_KEY:Ljava/lang/String; = "qq_sk"

.field static final UIN:Ljava/lang/String; = "qq_uin"

.field public static cb_all_status:Z

.field private static refreshHandler:Landroid/os/Handler;


# instance fields
.field private btn_gw_off:Landroid/widget/Button;

.field private btn_gw_on:Landroid/widget/Button;

.field private cb_saveEditor2Cloud:Landroid/widget/CheckBox;

.field private cleardata:Landroid/widget/ImageButton;

.field private et_savePath1:Landroid/widget/EditText;

.field private et_savePath2:Landroid/widget/EditText;

.field private et_savePath3:Landroid/widget/EditText;

.field private et_saveTestDesc:Landroid/widget/EditText;

.field private gwhis_save:Landroid/app/AlertDialog;

.field private intResHttpAss:I

.field private invalid_alarm:Landroid/widget/TextView;

.field private listProjectName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listProjectNameSize:I

.field private listProjectPair:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private opHandler:Landroid/os/Handler;

.field private opRefreshRunnable:Ljava/lang/Runnable;

.field private outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;

.field pairSelSave2Cloud:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private proDialog:Landroid/app/ProgressDialog;

.field private save:Landroid/widget/ImageButton;

.field saveDataHandler:Ljava/lang/Runnable;

.field private strListProjectName:[Ljava/lang/String;

.field private strLsKey:Ljava/lang/String;

.field private strPsk:Ljava/lang/String;

.field private strSKey:Ljava/lang/String;

.field private strSave2CloudFilePath:Ljava/lang/String;

.field private strUin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->cb_all_status:Z

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->refreshHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectName:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectPair:Ljava/util/List;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->pairSelSave2Cloud:Landroid/util/Pair;

    .line 453
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->opHandler:Landroid/os/Handler;

    .line 530
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$2;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->opRefreshRunnable:Ljava/lang/Runnable;

    .line 576
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$3;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->saveDataHandler:Ljava/lang/Runnable;

    .line 147
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->opHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/tencent/wstt/gt/GTApp;->setOpHandler(Landroid/os/Handler;)V

    .line 148
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Z
    .locals 1

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->isOneItemSelected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->initGwOnOff()V

    return-void
.end method

.method static synthetic access$10()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->refreshHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->opRefreshRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_saveTestDesc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->opHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Landroid/content/DialogInterface;Z)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0, p1, p2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->canCloseDialog(Landroid/content/DialogInterface;Z)V

    return-void
.end method

.method static synthetic access$15(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectPair:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectName:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;I)V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->showAlam(I)V

    return-void
.end method

.method static synthetic access$18(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->cb_saveEditor2Cloud:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$19(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strUin:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->dismissAlam()V

    return-void
.end method

.method static synthetic access$20(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strUin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strLsKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strPsk:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$23(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strSKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$24(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strLsKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->intResHttpAss:I

    return-void
.end method

.method static synthetic access$26(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->intResHttpAss:I

    return v0
.end method

.method static synthetic access$27(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strSave2CloudFilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$28(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strSave2CloudFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$29(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->proDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$30(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectNameSize:I

    return-void
.end method

.method static synthetic access$31(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectNameSize:I

    return v0
.end method

.method static synthetic access$32(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strListProjectName:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$33(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strListProjectName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strSKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$35(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strPsk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 594
    invoke-direct/range {p0 .. p5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->save2CloudOnDialog(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$37(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->save2Local()V

    return-void
.end method

.method static synthetic access$38(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->showProDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$39(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->waitForApplyAppId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath3:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->gwhis_save:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->dismissProDialog()V

    return-void
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->doResume()V

    return-void
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;

    return-object v0
.end method

.method private canCloseDialog(Landroid/content/DialogInterface;Z)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "close"    # Z

    .prologue
    .line 394
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mShowing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 395
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 396
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private comfirmToProductRegistPage(Ljava/lang/String;)V
    .locals 7
    .param p1, "lskey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 690
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 691
    const v4, 0x7f03003a

    const/4 v5, 0x0

    .line 690
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 692
    .local v2, "rl_save":Landroid/view/View;
    const v3, 0x7f08014f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 694
    .local v1, "et_project_editor":Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 695
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090113

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 696
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 697
    const v4, 0x7f090071

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 698
    new-instance v5, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$8;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$8;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    .line 697
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 707
    const v4, 0x7f090117

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 708
    new-instance v5, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$9;

    invoke-direct {v5, p0, v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$9;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Landroid/widget/EditText;)V

    .line 707
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 726
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 727
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 728
    return-void
.end method

.method private dismissAlam()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->invalid_alarm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->invalid_alarm:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->invalid_alarm:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    :cond_0
    return-void
.end method

.method private dismissProDialog()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->proDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->proDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->proDialog:Landroid/app/ProgressDialog;

    .line 140
    :cond_0
    return-void
.end method

.method private doResume()V
    .locals 3

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->initGwOnOff()V

    .line 170
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->refreshUIOpList()V

    .line 172
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;

    .line 175
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->outparam_adapter:Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->notifyDataSetChanged()V

    .line 177
    return-void
.end method

.method private initGwOnOff()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->btn_gw_off:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->btn_gw_on:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->save:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->cleardata:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    sget-boolean v0, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->btn_gw_off:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->btn_gw_on:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->save:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->cleardata:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->btn_gw_off:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->btn_gw_on:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->save:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->cleardata:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private isOneItemSelected()Z
    .locals 4

    .prologue
    .line 444
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getAllEnableProfilerData()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v0

    .line 445
    .local v0, "te":[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 446
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090096

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "center"

    invoke-static {v1, v2, v3}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const/4 v1, 0x0

    .line 449
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private save2CloudOnDialog(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 12
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "skey"    # Ljava/lang/String;
    .param p3, "pskey"    # Ljava/lang/String;
    .param p4, "lskey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p5, "pairSelSave2Cloud":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 597
    .local v10, "paths":[Ljava/lang/String;
    if-eqz v10, :cond_0

    array-length v0, v10

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    array-length v0, v10

    add-int/lit8 v0, v0, -0x3

    aget-object v4, v10, v0

    .line 602
    .local v4, "path1":Ljava/lang/String;
    array-length v0, v10

    add-int/lit8 v0, v0, -0x2

    aget-object v5, v10, v0

    .line 603
    .local v5, "path2":Ljava/lang/String;
    array-length v0, v10

    add-int/lit8 v0, v0, -0x1

    aget-object v6, v10, v0

    .line 605
    .local v6, "path3":Ljava/lang/String;
    if-nez p5, :cond_2

    .line 606
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900fd

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 610
    :cond_2
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p5

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/io/File;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v1, "choicedCsvFilesThread"

    .line 610
    invoke-direct {v11, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 684
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private save2Local()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 369
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Saving.."

    const-string v3, "saving..wait...."

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->proDialog:Landroid/app/ProgressDialog;

    .line 370
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->saveDataHandler:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 371
    .local v0, "savedata":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 372
    return-void
.end method

.method private showAlam(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->invalid_alarm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->invalid_alarm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 379
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->invalid_alarm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    :cond_0
    return-void
.end method

.method private showProDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 129
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2, v1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->proDialog:Landroid/app/ProgressDialog;

    .line 130
    return-void
.end method

.method private waitForApplyAppId(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 736
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$10;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/lang/String;)V

    .line 767
    const-string v2, "ApplyAppIdThread"

    .line 736
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 768
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 422
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->opHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 441
    :goto_0
    return-void

    .line 425
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 426
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 429
    :pswitch_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 430
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 433
    :pswitch_2
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 434
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 437
    :pswitch_3
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 438
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x7f0800c1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->setHasOptionsMenu(Z)V

    .line 157
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 187
    const v3, 0x7f03001d

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 189
    .local v1, "layout":Landroid/view/View;
    const v3, 0x7f0800c3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->btn_gw_on:Landroid/widget/Button;

    .line 190
    const v3, 0x7f0800c4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->btn_gw_off:Landroid/widget/Button;

    .line 191
    const v3, 0x7f0800c2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->save:Landroid/widget/ImageButton;

    .line 192
    const v3, 0x7f0800c1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->cleardata:Landroid/widget/ImageButton;

    .line 194
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->btn_gw_on:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->btn_gw_off:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->save:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->cleardata:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 201
    .local v2, "rl_save":Landroid/view/View;
    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 202
    .local v0, "btn_cleanSavePath":Landroid/widget/ImageButton;
    new-instance v3, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$4;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$4;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v3, 0x7f08002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath1:Landroid/widget/EditText;

    .line 211
    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath2:Landroid/widget/EditText;

    .line 212
    const v3, 0x7f080029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_savePath3:Landroid/widget/EditText;

    .line 213
    const v3, 0x7f080032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->et_saveTestDesc:Landroid/widget/EditText;

    .line 214
    const v3, 0x7f080034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->invalid_alarm:Landroid/widget/TextView;

    .line 215
    const v3, 0x7f080033

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->cb_saveEditor2Cloud:Landroid/widget/CheckBox;

    .line 216
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090063

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 217
    const v4, 0x7f090071

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$5;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$5;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 223
    const v4, 0x7f090070

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 362
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 216
    iput-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->gwhis_save:Landroid/app/AlertDialog;

    .line 364
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 547
    sget-object v4, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_op:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wstt/gt/OutPara;

    .line 548
    .local v3, "ov":Lcom/tencent/wstt/gt/OutPara;
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "key":Ljava/lang/String;
    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 550
    sget-object v4, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_DISABLE_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {v3, v5}, Lcom/tencent/wstt/gt/OutPara;->setAlert(Z)V

    .line 554
    sget-object v4, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    iput-boolean v5, v4, Lcom/tencent/wstt/gt/service/GTServiceController;->show_alert:Z

    .line 555
    invoke-static {v1}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getProfilerData(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    .line 556
    .local v2, "opProfilerData":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getProfilerData(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 557
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 558
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "name"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v4, "alias"

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v4, "client"

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/OutPara;->getClient()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 563
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 566
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v4, "name"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v4, "alias"

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const-string v4, "client"

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/OutPara;->getClient()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 182
    sget-object v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->refreshHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 162
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->doResume()V

    .line 163
    sget-object v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->refreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->opRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 166
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 790
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 794
    if-nez p2, :cond_0

    .line 795
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/manager/OpUIManager;->refresh_op_drag_conflict_flag:Z

    .line 799
    :goto_0
    return-void

    .line 797
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wstt/gt/manager/OpUIManager;->refresh_op_drag_conflict_flag:Z

    goto :goto_0
.end method

.method public onShow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 802
    if-eqz p1, :cond_0

    .line 804
    sget-object v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->refreshHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 805
    sget-object v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->refreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->opRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    :goto_0
    return-void

    .line 808
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->refreshHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStartUpload(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 815
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 772
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 773
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 783
    :goto_0
    return v2

    .line 775
    :pswitch_0
    sput-boolean v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->refresh_op_drag_conflict_flag:Z

    goto :goto_0

    .line 778
    :pswitch_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/wstt/gt/manager/OpUIManager;->refresh_op_drag_conflict_flag:Z

    goto :goto_0

    .line 773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUploadFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorstr"    # Ljava/lang/String;

    .prologue
    .line 830
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->removeListener(Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;)V

    .line 831
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$12;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$12;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 837
    return-void
.end method

.method public onUploadSucess()V
    .locals 2

    .prologue
    .line 819
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->removeListener(Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;)V

    .line 820
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$11;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$11;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method
