.class public Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;
.super Ljava/lang/Object;
.source "ParamConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/manager/ParamConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolderDrag_nopic"
.end annotation


# instance fields
.field public alert:Z

.field public cb:Landroid/widget/CheckBox;

.field public checked:Z

.field public tv_alias:Landroid/widget/TextView;

.field public tv_his_data:Landroid/widget/TextView;

.field public tv_key:Landroid/widget/TextView;

.field public tv_listrowbg:Landroid/widget/TextView;

.field public tv_listview_bottom_border:Landroid/widget/TextView;

.field public tv_value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->checked:Z

    .line 71
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->alert:Z

    .line 62
    return-void
.end method


# virtual methods
.method public isAlert()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->alert:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;->checked:Z

    .line 83
    return-void
.end method
