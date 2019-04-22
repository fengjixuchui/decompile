.class public Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;
.super Lcom/tencent/wstt/gt/views/CustomerDialog;
.source "CustomerConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;

.field private mContentView:Landroid/view/View;

.field private mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/views/CustomerDialog;-><init>(Landroid/content/Context;)V

    .line 51
    iput p2, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->mLayoutId:I

    .line 54
    invoke-direct {p0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->initButtonListener()V

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;)Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->listener:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;

    return-object v0
.end method

.method private initButtonListener()V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v1

    .line 62
    .local v1, "positiveButton":Landroid/widget/Button;
    new-instance v2, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$1;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$1;-><init>(Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    .line 74
    .local v0, "negativeButton":Landroid/widget/Button;
    new-instance v2, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$2;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$2;-><init>(Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected initContentView()Landroid/view/View;
    .locals 3

    .prologue
    .line 162
    iget v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->mLayoutId:I

    if-nez v0, :cond_0

    .line 163
    const v0, 0x7f030031

    iput v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->mLayoutId:I

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->mContentView:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public setListener(Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;)V
    .locals 0
    .param p1, "l"    # Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->listener:Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;

    .line 93
    return-void
.end method

.method public setNegativeButton(I)V
    .locals 1
    .param p1, "textResId"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->setNegativeButton(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    .line 147
    .local v0, "negativeButton":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public setPositiveButton(I)V
    .locals 1
    .param p1, "textResId"    # I

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->setPositiveButton(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v0

    .line 128
    .local v0, "positiveButton":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public setViewContent(ILandroid/text/Spanned;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "content"    # Landroid/text/Spanned;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setViewVisibility(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
