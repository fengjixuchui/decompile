.class public Lcom/tencent/wstt/gt/activity/GTMainActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseFragmentActivity;
.source "GTMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_FLOAT_VIEW:I = 0x66

.field private static final REQUEST_NEED_PERMISSION:I = 0x65

.field public static dlgIsShow:Z

.field private static instance:Lcom/tencent/wstt/gt/activity/GTMainActivity;

.field public static isActived:Z

.field private static isFloatViewAllowed:Z

.field public static notification:Landroid/app/Notification;


# instance fields
.field private autFragment:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

.field private autImage:Landroid/widget/ImageView;

.field private autLayout:Landroid/view/View;

.field private autText:Landroid/widget/TextView;

.field private curTabId:I

.field private logFragment:Lcom/tencent/wstt/gt/activity/GTLogFragment;

.field private logImage:Landroid/widget/ImageView;

.field private logLayout:Landroid/view/View;

.field private logText:Landroid/widget/TextView;

.field private paramFragment:Lcom/tencent/wstt/gt/activity/GTParamTopFragment;

.field private paramImage:Landroid/widget/ImageView;

.field private paramLayout:Landroid/view/View;

.field private paramText:Landroid/widget/TextView;

.field private perfFragment:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

.field private perfImage:Landroid/widget/ImageView;

.field private perfLayout:Landroid/view/View;

.field private perfText:Landroid/widget/TextView;

.field private pluginFragment:Lcom/tencent/wstt/gt/activity/GTPluginFragment;

.field private pluginImage:Landroid/widget/ImageView;

.field private pluginLayout:Landroid/view/View;

.field private pluginText:Landroid/widget/TextView;

.field private proDialog:Landroid/app/ProgressDialog;

.field wtloginListener:Loicq/wlogin_sdk/request/WtloginListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ac_float_allowed_flag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->isFloatViewAllowed:Z

    .line 117
    sput-boolean v2, Lcom/tencent/wstt/gt/activity/GTMainActivity;->isActived:Z

    .line 119
    sput-boolean v2, Lcom/tencent/wstt/gt/activity/GTMainActivity;->dlgIsShow:Z

    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseFragmentActivity;-><init>()V

    .line 561
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTMainActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTMainActivity$1;-><init>(Lcom/tencent/wstt/gt/activity/GTMainActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->wtloginListener:Loicq/wlogin_sdk/request/WtloginListener;

    .line 130
    sput-object p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->instance:Lcom/tencent/wstt/gt/activity/GTMainActivity;

    .line 131
    return-void
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/activity/GTMainActivity;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->dismissProDialog()V

    return-void
.end method

.method private clearSelection()V
    .locals 4

    .prologue
    const v3, 0x7f020065

    .line 403
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 404
    .local v0, "defaultColor":I
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 407
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    return-void
.end method

.method private dismissProDialog()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->proDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->proDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->proDialog:Landroid/app/ProgressDialog;

    .line 82
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/activity/GTMainActivity;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->instance:Lcom/tencent/wstt/gt/activity/GTMainActivity;

    return-object v0
.end method

.method private hideFragments(Landroid/support/v4/app/FragmentTransaction;)V
    .locals 2
    .param p1, "transaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autFragment:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autFragment:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramFragment:Lcom/tencent/wstt/gt/activity/GTParamTopFragment;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramFragment:Lcom/tencent/wstt/gt/activity/GTParamTopFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->onShow(Z)V

    .line 428
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramFragment:Lcom/tencent/wstt/gt/activity/GTParamTopFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfFragment:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfFragment:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logFragment:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    if-eqz v0, :cond_3

    .line 434
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logFragment:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginFragment:Lcom/tencent/wstt/gt/activity/GTPluginFragment;

    if-eqz v0, :cond_4

    .line 437
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginFragment:Lcom/tencent/wstt/gt/activity/GTPluginFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 439
    :cond_4
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 258
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autLayout:Landroid/view/View;

    .line 259
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramLayout:Landroid/view/View;

    .line 260
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfLayout:Landroid/view/View;

    .line 261
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logLayout:Landroid/view/View;

    .line 262
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginLayout:Landroid/view/View;

    .line 264
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autImage:Landroid/widget/ImageView;

    .line 265
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramImage:Landroid/widget/ImageView;

    .line 266
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfImage:Landroid/widget/ImageView;

    .line 267
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logImage:Landroid/widget/ImageView;

    .line 268
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginImage:Landroid/widget/ImageView;

    .line 270
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autText:Landroid/widget/TextView;

    .line 271
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramText:Landroid/widget/TextView;

    .line 272
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfText:Landroid/widget/TextView;

    .line 273
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logText:Landroid/widget/TextView;

    .line 274
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginText:Landroid/widget/TextView;

    .line 276
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    return-void
.end method

.method private removeFragments()V
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 229
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 231
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const-string v3, "a"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 232
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 235
    :cond_0
    const-string v3, "b"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 239
    :cond_1
    const-string v3, "c"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 243
    :cond_2
    const-string v3, "d"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_3

    .line 245
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 247
    :cond_3
    const-string v3, "e"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_4

    .line 249
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 251
    :cond_4
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 252
    return-void
.end method

.method private requestAlertWindowPermission()V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 202
    const/16 v1, 0x66

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized setTabSelection(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->clearSelection()V

    .line 321
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 322
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 324
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-direct {p0, v1}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->hideFragments(Landroid/support/v4/app/FragmentTransaction;)V

    .line 326
    packed-switch p1, :pswitch_data_0

    .line 375
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginImage:Landroid/widget/ImageView;

    const v3, 0x7f020066

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginFragment:Lcom/tencent/wstt/gt/activity/GTPluginFragment;

    if-nez v2, :cond_4

    .line 378
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTPluginFragment;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/activity/GTPluginFragment;-><init>()V

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginFragment:Lcom/tencent/wstt/gt/activity/GTPluginFragment;

    .line 379
    const v2, 0x7f080016

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginFragment:Lcom/tencent/wstt/gt/activity/GTPluginFragment;

    const-string v4, "e"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 396
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    .line 329
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autImage:Landroid/widget/ImageView;

    const v3, 0x7f020066

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autFragment:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    if-nez v2, :cond_0

    .line 332
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;-><init>()V

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autFragment:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    .line 333
    const v2, 0x7f080016

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autFragment:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    const-string v4, "a"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 319
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 335
    .restart local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .restart local v1    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->autFragment:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramImage:Landroid/widget/ImageView;

    const v3, 0x7f020066

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramFragment:Lcom/tencent/wstt/gt/activity/GTParamTopFragment;

    if-nez v2, :cond_1

    .line 343
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;-><init>()V

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramFragment:Lcom/tencent/wstt/gt/activity/GTParamTopFragment;

    .line 344
    const v2, 0x7f080016

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramFragment:Lcom/tencent/wstt/gt/activity/GTParamTopFragment;

    const-string v4, "b"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramFragment:Lcom/tencent/wstt/gt/activity/GTParamTopFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 347
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->paramFragment:Lcom/tencent/wstt/gt/activity/GTParamTopFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->onShow(Z)V

    goto :goto_0

    .line 352
    :pswitch_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfImage:Landroid/widget/ImageView;

    const v3, 0x7f020066

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfFragment:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    if-nez v2, :cond_2

    .line 355
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;-><init>()V

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfFragment:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    .line 356
    const v2, 0x7f080016

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfFragment:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    const-string v4, "c"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_0

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->perfFragment:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_0

    .line 363
    :pswitch_3
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logImage:Landroid/widget/ImageView;

    const v3, 0x7f020066

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logFragment:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    if-nez v2, :cond_3

    .line 366
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTLogFragment;

    invoke-direct {v2}, Lcom/tencent/wstt/gt/activity/GTLogFragment;-><init>()V

    iput-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logFragment:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 367
    const v2, 0x7f080016

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logFragment:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    const-string v4, "d"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_0

    .line 369
    :cond_3
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->logFragment:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_0

    .line 381
    :cond_4
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->pluginFragment:Lcom/tencent/wstt/gt/activity/GTPluginFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showProDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 71
    invoke-static {p0, p1, p2, v0, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->proDialog:Landroid/app/ProgressDialog;

    .line 72
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x1

    .line 509
    sparse-switch p1, :sswitch_data_0

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 512
    :sswitch_0
    if-eqz p3, :cond_0

    .line 515
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getHelper()Loicq/wlogin_sdk/request/WtloginHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->wtloginListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/request/WtloginHelper;->SetListener(Loicq/wlogin_sdk/request/WtloginListener;)V

    .line 517
    invoke-static {p3}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getSigInfo(Landroid/content/Intent;)Loicq/wlogin_sdk/request/WUserSigInfo;

    move-result-object v3

    .line 518
    .local v3, "sigInfo":Loicq/wlogin_sdk/request/WUserSigInfo;
    if-nez v3, :cond_1

    .line 519
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090103

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    .end local v3    # "sigInfo":Loicq/wlogin_sdk/request/WUserSigInfo;
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 524
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "sigInfo":Loicq/wlogin_sdk/request/WUserSigInfo;
    :cond_1
    :try_start_1
    iget-object v4, v3, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->setUin(Ljava/lang/String;)V

    .line 527
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getStWithPasswd(Loicq/wlogin_sdk/request/WUserSigInfo;)V

    .line 529
    const v4, 0x7f09011e

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 530
    const v5, 0x7f09011f

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 529
    invoke-direct {p0, v4, v5}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->showProDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 537
    .end local v3    # "sigInfo":Loicq/wlogin_sdk/request/WUserSigInfo;
    :sswitch_1
    sput-boolean v6, Lcom/tencent/wstt/gt/activity/GTMainActivity;->isFloatViewAllowed:Z

    .line 538
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "ac_float_allowed_flag"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 541
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "ac_switch_type_flag"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 543
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 545
    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 547
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 548
    .local v2, "mintent":Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 509
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 287
    :sswitch_0
    iput v1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->curTabId:I

    .line 288
    invoke-direct {p0, v1}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->setTabSelection(I)V

    goto :goto_0

    .line 291
    :sswitch_1
    iput v2, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->curTabId:I

    .line 292
    invoke-direct {p0, v2}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->setTabSelection(I)V

    goto :goto_0

    .line 295
    :sswitch_2
    iput v3, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->curTabId:I

    .line 296
    invoke-direct {p0, v3}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->setTabSelection(I)V

    goto :goto_0

    .line 299
    :sswitch_3
    iput v4, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->curTabId:I

    .line 300
    invoke-direct {p0, v4}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->setTabSelection(I)V

    goto :goto_0

    .line 303
    :sswitch_4
    iput v5, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->curTabId:I

    .line 304
    invoke-direct {p0, v5}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->setTabSelection(I)V

    goto :goto_0

    .line 285
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080017 -> :sswitch_0
        0x7f08001a -> :sswitch_1
        0x7f08001d -> :sswitch_2
        0x7f080020 -> :sswitch_3
        0x7f080023 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->setContentView(I)V

    .line 138
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->initViews()V

    .line 141
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->removeFragments()V

    .line 144
    if-eqz p1, :cond_1

    .line 146
    const-string v3, "curTabId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->setTabSelection(I)V

    .line 152
    :goto_0
    sput-boolean v1, Lcom/tencent/wstt/gt/activity/GTMainActivity;->isActived:Z

    .line 155
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 154
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 157
    .local v0, "hasPermission":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 158
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 157
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 160
    :goto_2
    if-eqz v0, :cond_4

    .line 161
    const-string v3, "android.permission.READ_PHONE_STATE"

    .line 160
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    .line 163
    :goto_3
    if-eqz v0, :cond_5

    .line 164
    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 163
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 166
    :goto_4
    if-nez v0, :cond_0

    .line 169
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v2

    .line 170
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    .line 171
    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v3, v1

    .line 172
    const/16 v1, 0x65

    .line 167
    invoke-static {p0, v3, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 174
    :cond_0
    return-void

    .line 150
    .end local v0    # "hasPermission":Z
    :cond_1
    invoke-direct {p0, v2}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->setTabSelection(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 154
    goto :goto_1

    .restart local v0    # "hasPermission":Z
    :cond_3
    move v0, v2

    .line 157
    goto :goto_2

    :cond_4
    move v0, v2

    .line 160
    goto :goto_3

    :cond_5
    move v0, v2

    .line 163
    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 455
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 456
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/wstt/gt/activity/GTBaseFragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/wstt/gt/activity/GTBaseFragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseFragmentActivity;->onDestroy()V

    .line 214
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->isActived:Z

    .line 215
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 443
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 444
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/wstt/gt/activity/GTMainActivity;->dlgIsShow:Z

    .line 446
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->moveTaskToBack(Z)Z

    .line 449
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/wstt/gt/activity/GTBaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x10000000

    .line 461
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 462
    .local v3, "item_id":I
    const/4 v2, 0x0

    .line 464
    .local v2, "intent":Landroid/content/Intent;
    packed-switch v3, :pswitch_data_0

    .line 503
    :goto_0
    return v4

    .line 466
    :pswitch_0
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->exitGT()V

    goto :goto_0

    .line 469
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-class v5, Lcom/tencent/wstt/gt/activity/GTLogSwitchActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 471
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 474
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-class v5, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 479
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-class v5, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 484
    :pswitch_4
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 485
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 486
    .local v0, "canQlogin":Z
    :goto_1
    if-nez v0, :cond_1

    .line 487
    const v5, 0x7f09011b

    invoke-static {p0, v5}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    goto :goto_0

    .end local v0    # "canQlogin":Z
    :cond_0
    move v0, v4

    .line 485
    goto :goto_1

    .line 491
    .restart local v0    # "canQlogin":Z
    :cond_1
    const/16 v5, 0x100

    :try_start_0
    invoke-virtual {p0, v2, v5}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    const v5, 0x7f09011c

    invoke-static {p0, v5}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 497
    .end local v0    # "canQlogin":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-class v5, Lcom/tencent/wstt/gt/activity/GTAboutActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 499
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x7f08015a
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/wstt/gt/activity/GTBaseFragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 179
    packed-switch p1, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 181
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 184
    sget-boolean v0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->isFloatViewAllowed:Z

    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->requestAlertWindowPermission()V

    .line 189
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/Env;->init()V

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    const-string v1, "Permission not enough. Please consider granting it this permission."

    .line 191
    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    const-string v0, "curTabId"

    iget v1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->curTabId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 222
    return-void
.end method
