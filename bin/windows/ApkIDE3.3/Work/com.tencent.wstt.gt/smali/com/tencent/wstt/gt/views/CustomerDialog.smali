.class public abstract Lcom/tencent/wstt/gt/views/CustomerDialog;
.super Landroid/app/Dialog;
.source "CustomerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/views/CustomerDialog$ButtonClickDelegate;
    }
.end annotation


# instance fields
.field protected centerView:Landroid/view/View;

.field private contentView:Landroid/view/View;

.field protected context:Landroid/content/Context;

.field private mBottomArea:Landroid/view/View;

.field private mButtonClickDelegate:Lcom/tencent/wstt/gt/views/CustomerDialog$ButtonClickDelegate;

.field private mCheckBoxAgreement:Landroid/widget/CheckBox;

.field protected titleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const v0, 0x7f0a0002

    invoke-direct {p0, p1, v0}, Lcom/tencent/wstt/gt/views/CustomerDialog;-><init>(Landroid/content/Context;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 81
    iput-object p1, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->context:Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Lcom/tencent/wstt/gt/views/CustomerDialog;->initCustomerView()V

    .line 83
    invoke-virtual {p0, p0}, Lcom/tencent/wstt/gt/views/CustomerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/views/CustomerDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/views/CustomerDialog;->performButtonOnClick(Landroid/view/View;)V

    return-void
.end method

.method private initButtonListener()V
    .locals 4

    .prologue
    .line 129
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->contentView:Landroid/view/View;

    .line 130
    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 129
    check-cast v1, Landroid/widget/Button;

    .line 131
    .local v1, "positiveButton":Landroid/widget/Button;
    new-instance v2, Lcom/tencent/wstt/gt/views/CustomerDialog$1;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/views/CustomerDialog$1;-><init>(Lcom/tencent/wstt/gt/views/CustomerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->contentView:Landroid/view/View;

    .line 140
    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    check-cast v0, Landroid/widget/Button;

    .line 141
    .local v0, "negativeButton":Landroid/widget/Button;
    new-instance v2, Lcom/tencent/wstt/gt/views/CustomerDialog$2;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/views/CustomerDialog$2;-><init>(Lcom/tencent/wstt/gt/views/CustomerDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method private initCustomerView()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f030000

    .line 108
    const/4 v2, 0x0

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->contentView:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->contentView:Landroid/view/View;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->titleView:Landroid/view/View;

    .line 111
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/CustomerDialog;->initContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->centerView:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->contentView:Landroid/view/View;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->centerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    invoke-direct {p0}, Lcom/tencent/wstt/gt/views/CustomerDialog;->initButtonListener()V

    .line 118
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->contentView:Landroid/view/View;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mBottomArea:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mBottomArea:Landroid/view/View;

    .line 120
    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 119
    iput-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mCheckBoxAgreement:Landroid/widget/CheckBox;

    .line 122
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/views/CustomerDialog;->setContentView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method private performButtonOnClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mButtonClickDelegate:Lcom/tencent/wstt/gt/views/CustomerDialog$ButtonClickDelegate;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mButtonClickDelegate:Lcom/tencent/wstt/gt/views/CustomerDialog$ButtonClickDelegate;

    invoke-interface {v0, p1}, Lcom/tencent/wstt/gt/views/CustomerDialog$ButtonClickDelegate;->onClick(Landroid/view/View;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/CustomerDialog;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public getNegativeButton()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->contentView:Landroid/view/View;

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->contentView:Landroid/view/View;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideBottomArea()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mBottomArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mBottomArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_0
    return-void
.end method

.method public hideNegativeButton()V
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mBottomArea:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mBottomArea:Landroid/view/View;

    .line 243
    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 242
    check-cast v0, Landroid/widget/Button;

    .line 244
    .local v0, "btn":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 245
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    .end local v0    # "btn":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public hideTitleView()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->titleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->titleView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_0
    return-void
.end method

.method protected abstract initContentView()Landroid/view/View;
.end method

.method public isCheckBoxAgreementChecked()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mCheckBoxAgreement:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mCheckBoxAgreement:Landroid/widget/CheckBox;

    .line 267
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/CustomerDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    .line 89
    .local v0, "negativeButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 92
    :cond_0
    return-void
.end method

.method public setButtonClickDelegate(Lcom/tencent/wstt/gt/views/CustomerDialog$ButtonClickDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/tencent/wstt/gt/views/CustomerDialog$ButtonClickDelegate;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mButtonClickDelegate:Lcom/tencent/wstt/gt/views/CustomerDialog$ButtonClickDelegate;

    .line 101
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/views/CustomerDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/views/CustomerDialog;->setTitle(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->titleView:Landroid/view/View;

    .line 195
    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 194
    check-cast v0, Landroid/widget/TextView;

    .line 196
    .local v0, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method public showAgreementCheckBox()V
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mBottomArea:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/CustomerDialog;->mBottomArea:Landroid/view/View;

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 257
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
