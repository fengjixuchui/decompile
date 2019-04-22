.class public Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTMemFillActivity.java"

# interfaces
.implements Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;


# static fields
.field private static fillNum:I


# instance fields
.field private et_Num:Landroid/widget/EditText;

.field private proDialog:Landroid/app/ProgressDialog;

.field private tv_switch:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0xc8

    sput v0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->fillNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->et_Num:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 42
    sput p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->fillNum:I

    return-void
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->fillNum:I

    return v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->tv_switch:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->proDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->proDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f030037

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->setContentView(I)V

    .line 51
    const v1, 0x7f080147

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->et_Num:Landroid/widget/EditText;

    .line 52
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->et_Num:Landroid/widget/EditText;

    sget v2, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->fillNum:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->et_Num:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 55
    const v1, 0x7f080149

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->tv_switch:Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->tv_switch:Landroid/widget/TextView;

    new-instance v2, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$1;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$1;-><init>(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f080146

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, "tv_back":Landroid/widget/TextView;
    new-instance v1, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$2;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$2;-><init>(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->addListener(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;)V

    .line 84
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onDestroy()V

    .line 104
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->removeListener(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillListener;)V

    .line 105
    return-void
.end method

.method public onFillEnd()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$4;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$4;-><init>(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public onFillFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorstr"    # Ljava/lang/String;

    .prologue
    .line 134
    return-void
.end method

.method public onFillStart()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$3;-><init>(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public onFree()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$5;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$5;-><init>(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->et_Num:Landroid/widget/EditText;

    sget v1, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->fillNum:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->isFilled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->tv_switch:Landroid/widget/TextView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 94
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->tv_switch:Landroid/widget/TextView;

    const v1, 0x7f0900df

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->tv_switch:Landroid/widget/TextView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 97
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->tv_switch:Landroid/widget/TextView;

    const v1, 0x7f0900de

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
