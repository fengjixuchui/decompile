.class public Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;
.super Landroid/app/Dialog;
.source "GTOutParaPerfDialog.java"


# instance fields
.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tv_opDescription:Landroid/widget/TextView;

.field private tv_opName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->title:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->name:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->description:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f030019

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->setContentView(I)V

    .line 54
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    const v1, 0x7f0800b9

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->tv_opName:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0800ba

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->tv_opDescription:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->tv_opName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->tv_opDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v1, 0x7f0800bb

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    .local v0, "btn_ok":Landroid/widget/Button;
    new-instance v1, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog$1;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog$1;-><init>(Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
