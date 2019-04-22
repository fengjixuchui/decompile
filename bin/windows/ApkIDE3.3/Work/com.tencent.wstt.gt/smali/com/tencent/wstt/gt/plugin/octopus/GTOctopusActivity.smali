.class public Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTOctopusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
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

.field private static productPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private isNewProj:Ljava/lang/Boolean;

.field private newProjBundle:Landroid/os/Bundle;

.field private proDialog:Landroid/app/ProgressDialog;

.field private productAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private spProductName:Landroid/widget/Spinner;

.field private strIntent:Ljava/lang/String;

.field private strNewProjName:Ljava/lang/String;

.field wtloginListener:Loicq/wlogin_sdk/request/WtloginListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productPairs:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->newProjBundle:Landroid/os/Bundle;

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->isNewProj:Ljava/lang/Boolean;

    .line 101
    new-instance v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$1;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->wtloginListener:Loicq/wlogin_sdk/request/WtloginListener;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->dismissProDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->comfirmUpdateSize(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->spProductName:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->showProDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productPairs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->comfirmToProductRegistPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->strIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->isNewProj:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->strNewProjName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->waitForApplyAppId(Ljava/lang/String;)V

    return-void
.end method

.method private comfirmToProductRegistPage(Ljava/lang/String;)V
    .locals 7
    .param p1, "lskey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 583
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 584
    const v4, 0x7f03003a

    const/4 v5, 0x0

    .line 583
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 585
    .local v2, "rl_save":Landroid/view/View;
    const v3, 0x7f08014f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 587
    .local v1, "et_project_editor":Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 588
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090113

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 589
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 590
    const v4, 0x7f090071

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 591
    new-instance v5, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$8;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$8;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)V

    .line 590
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 600
    const v4, 0x7f090117

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 601
    new-instance v5, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;

    invoke-direct {v5, p0, v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$9;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Landroid/widget/EditText;)V

    .line 600
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 632
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 633
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 634
    return-void
.end method

.method private comfirmUpdateSize(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "skey"    # Ljava/lang/String;
    .param p3, "pskey"    # Ljava/lang/String;
    .param p4, "lskey"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 316
    .local v11, "paths":[Ljava/lang/String;
    if-eqz v11, :cond_0

    array-length v0, v11

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    array-length v0, v11

    add-int/lit8 v0, v0, -0x3

    aget-object v4, v11, v0

    .line 322
    .local v4, "path1":Ljava/lang/String;
    array-length v0, v11

    add-int/lit8 v0, v0, -0x2

    aget-object v5, v11, v0

    .line 323
    .local v5, "path2":Ljava/lang/String;
    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    aget-object v6, v11, v0

    .line 325
    .local v6, "path3":Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->spProductName:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    .line 326
    .local v10, "oProductPair":Ljava/lang/Object;
    if-nez v10, :cond_2

    .line 328
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900fd

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 331
    :cond_2
    instance-of v0, v10, Landroid/util/Pair;

    if-nez v0, :cond_3

    .line 333
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900fd

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    move-object v3, v10

    .line 336
    check-cast v3, Landroid/util/Pair;

    .line 339
    .local v3, "productPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const v0, 0x7f090122

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    const v1, 0x7f090123

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-direct {p0, v0, v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->showProDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/io/File;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v1, "choicedCsvFilesThread"

    .line 342
    invoke-direct {v12, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private dataPersisted()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method private dismissProDialog()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->proDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->proDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->proDialog:Landroid/app/ProgressDialog;

    .line 152
    :cond_0
    return-void
.end method

.method private showProDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 141
    invoke-static {p0, p1, p2, v0, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->proDialog:Landroid/app/ProgressDialog;

    .line 142
    return-void
.end method

.method private showUploadDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "skey"    # Ljava/lang/String;
    .param p2, "pskey"    # Ljava/lang/String;
    .param p3, "lskey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 267
    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->isSDCardExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 272
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;->getGWFolders()Ljava/util/List;

    move-result-object v1

    .line 271
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v2, "folders":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    const v1, 0x7f0900ba

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 280
    :cond_1
    new-instance v0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;

    .line 281
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;->getGWDirectory()Ljava/io/File;

    move-result-object v3

    move-object v1, p0

    .line 280
    invoke-direct/range {v0 .. v5}, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/io/File;IZ)V

    .line 283
    .local v0, "dropdownAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/io/File;>;"
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0900fc

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 286
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 289
    new-instance v5, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;

    move-object v6, p0

    move-object v7, v2

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 308
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private waitForApplyAppId(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 642
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;)V

    .line 684
    const-string v2, "ApplyAppIdThread"

    .line 642
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 685
    return-void
.end method


# virtual methods
.method public loginSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 539
    new-instance v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)V

    .line 574
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->start()V

    .line 575
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v9, 0x7f090125

    const v8, 0x7f090124

    .line 477
    const-string v5, ""

    .line 478
    .local v5, "userAccount":Ljava/lang/String;
    const/4 v2, 0x0

    .line 479
    .local v2, "errMsg":Loicq/wlogin_sdk/tools/ErrMsg;
    const/4 v6, 0x0

    .line 480
    .local v6, "userSigInfo":Loicq/wlogin_sdk/request/WUserSigInfo;
    sparse-switch p1, :sswitch_data_0

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 482
    :sswitch_0
    if-eqz p3, :cond_0

    .line 484
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 485
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 487
    const-string v7, "ACCOUNT"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 488
    const-string v7, "ERRMSG"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "errMsg":Loicq/wlogin_sdk/tools/ErrMsg;
    check-cast v2, Loicq/wlogin_sdk/tools/ErrMsg;

    .line 489
    .restart local v2    # "errMsg":Loicq/wlogin_sdk/tools/ErrMsg;
    const-string v7, "USERSIG"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6    # "userSigInfo":Loicq/wlogin_sdk/request/WUserSigInfo;
    check-cast v6, Loicq/wlogin_sdk/request/WUserSigInfo;

    .line 491
    .restart local v6    # "userSigInfo":Loicq/wlogin_sdk/request/WUserSigInfo;
    if-nez p2, :cond_1

    .line 493
    invoke-virtual {p0, v8}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 494
    invoke-virtual {p0, v9}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 493
    invoke-direct {p0, v7, v8}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->showProDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->loginSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_1
    const/16 v7, 0x29

    if-eq p2, v7, :cond_2

    const/16 v7, 0x74

    if-ne p2, v7, :cond_3

    .line 497
    :cond_2
    const/high16 v7, 0x400000

    invoke-static {v6, v7}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    .line 498
    .local v4, "ticket":Loicq/wlogin_sdk/request/Ticket;
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->finish()V

    .line 499
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "lhsig="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    invoke-static {v9}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " errMsg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    .end local v4    # "ticket":Loicq/wlogin_sdk/request/Ticket;
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->finish()V

    .line 502
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "errMsg="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_1
    if-eqz p3, :cond_0

    .line 512
    :try_start_0
    invoke-static {p3}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getSigInfo(Landroid/content/Intent;)Loicq/wlogin_sdk/request/WUserSigInfo;

    move-result-object v3

    .line 513
    .local v3, "sigInfo":Loicq/wlogin_sdk/request/WUserSigInfo;
    if-nez v3, :cond_4

    .line 514
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 515
    const v8, 0x7f090103

    .line 514
    invoke-static {v7, v8}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 528
    .end local v3    # "sigInfo":Loicq/wlogin_sdk/request/WUserSigInfo;
    :catch_0
    move-exception v1

    .line 529
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 519
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "sigInfo":Loicq/wlogin_sdk/request/WUserSigInfo;
    :cond_4
    :try_start_1
    iget-object v7, v3, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->setUin(Ljava/lang/String;)V

    .line 522
    const v7, 0x7f090124

    invoke-virtual {p0, v7}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 523
    const v8, 0x7f090125

    invoke-virtual {p0, v8}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 522
    invoke-direct {p0, v7, v8}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->showProDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getStWithPasswd(Loicq/wlogin_sdk/request/WUserSigInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 480
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x100 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 233
    :sswitch_0
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->isNewProj:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getSKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "sk":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getPsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "psk":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getLsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "lsk":Ljava/lang/String;
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->dataPersisted()V

    .line 239
    invoke-direct {p0, v3, v2, v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->showUploadDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v1    # "lsk":Ljava/lang/String;
    .end local v2    # "psk":Ljava/lang/String;
    .end local v3    # "sk":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->isNewProj:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getSKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .restart local v3    # "sk":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getPsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .restart local v2    # "psk":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getLsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .restart local v1    # "lsk":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->strNewProjName:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0, v3, v2, v1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->comfirmUpdateSize(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "lsk":Ljava/lang/String;
    .end local v2    # "psk":Ljava/lang/String;
    .end local v3    # "sk":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090120

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 253
    :sswitch_1
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->finish()V

    goto :goto_0

    .line 231
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080146 -> :sswitch_1
        0x7f08014b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 156
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 160
    .local v5, "newProjIntent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "New_Proj"

    if-ne v7, v8, :cond_0

    .line 161
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->isNewProj:Ljava/lang/Boolean;

    .line 162
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->newProjBundle:Landroid/os/Bundle;

    .line 163
    iget-object v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->newProjBundle:Landroid/os/Bundle;

    const-string v8, "name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->strNewProjName:Ljava/lang/String;

    .line 164
    iget-object v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->newProjBundle:Landroid/os/Bundle;

    const-string v8, "intent"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->strIntent:Ljava/lang/String;

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 168
    const/4 v8, 0x3

    .line 167
    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 169
    const v7, 0x7f030039

    invoke-virtual {p0, v7}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->setContentView(I)V

    .line 171
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getHelper()Loicq/wlogin_sdk/request/WtloginHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->wtloginListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v7, v8}, Loicq/wlogin_sdk/request/WtloginHelper;->SetListener(Loicq/wlogin_sdk/request/WtloginListener;)V

    .line 173
    const v7, 0x7f080146

    invoke-virtual {p0, v7}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    .local v0, "back":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v7, 0x7f08014b

    invoke-virtual {p0, v7}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 176
    .local v6, "uploadBtn":Landroid/widget/Button;
    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v7, 0x7f08014a

    invoke-virtual {p0, v7}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->spProductName:Landroid/widget/Spinner;

    .line 180
    sget-object v7, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productPairs:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 182
    sget-object v7, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productPairs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 184
    :cond_1
    new-instance v7, Landroid/widget/ArrayAdapter;

    .line 185
    const v8, 0x1090008

    sget-object v9, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productPairs:Ljava/util/ArrayList;

    invoke-direct {v7, p0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 184
    iput-object v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productAdapter:Landroid/widget/ArrayAdapter;

    .line 186
    iget-object v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productAdapter:Landroid/widget/ArrayAdapter;

    const v8, 0x1090009

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 187
    iget-object v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->spProductName:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 189
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->addListener(Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;)V

    .line 196
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getLsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "lsk":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 199
    :cond_2
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 201
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 202
    .local v1, "canQlogin":Z
    :goto_0
    if-nez v1, :cond_4

    .line 203
    const v7, 0x7f09011b

    invoke-static {p0, v7}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    .line 204
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->finish()V

    .line 220
    .end local v1    # "canQlogin":Z
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 201
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 209
    .restart local v1    # "canQlogin":Z
    :cond_4
    const/16 v7, 0x100

    :try_start_0
    invoke-virtual {p0, v3, v7}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/lang/Exception;
    const v7, 0x7f09011c

    invoke-static {p0, v7}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 217
    .end local v1    # "canQlogin":Z
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    const v7, 0x7f09011e

    invoke-virtual {p0, v7}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 218
    const v8, 0x7f09011f

    invoke-virtual {p0, v8}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 217
    invoke-direct {p0, v7, v8}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->showProDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->loginSuccess(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onDestroy()V

    .line 225
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->removeListener(Lcom/tencent/wstt/gt/plugin/octopus/OctopusPluginListener;)V

    .line 226
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getHelper()Loicq/wlogin_sdk/request/WtloginHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->SetListener(Loicq/wlogin_sdk/request/WtloginListener;)V

    .line 227
    return-void
.end method

.method public onStartUpload(Ljava/lang/String;)V
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 441
    new-instance v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$4;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method public onUploadFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorStr"    # Ljava/lang/String;

    .prologue
    .line 464
    new-instance v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$6;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 473
    return-void
.end method

.method public onUploadSucess()V
    .locals 1

    .prologue
    .line 451
    new-instance v0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$5;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$5;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method
