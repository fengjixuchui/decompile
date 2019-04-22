.class public Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LogFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private checked:I

.field private checkedItems:[Z

.field private multiMode:Z

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private resId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "checked"    # I
    .param p4, "multiMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 28
    iput-object p2, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->objects:Ljava/util/List;

    .line 29
    iput p3, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->checked:I

    .line 30
    iput-boolean p4, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->multiMode:Z

    .line 31
    if-eqz p4, :cond_0

    .line 32
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->checkedItems:[Z

    .line 34
    :cond_0
    if-eqz p4, :cond_1

    const v0, 0x7f030034

    :goto_0
    iput v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->resId:I

    .line 35
    return-void

    .line 34
    :cond_1
    const v0, 0x7f03003e

    goto :goto_0
.end method


# virtual methods
.method public checkOrUncheck(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v1, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->checkedItems:[Z

    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->checkedItems:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-boolean v0, v1, p1

    .line 69
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->notifyDataSetChanged()V

    .line 70
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCheckedItems()[Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->checkedItems:[Z

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, "context":Landroid/content/Context;
    if-nez p2, :cond_0

    .line 43
    const-string v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 44
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget v7, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->resId:I

    invoke-virtual {v2, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 47
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v7, 0x1020014

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    .line 48
    .local v4, "text1":Landroid/widget/CheckedTextView;
    const v7, 0x1020015

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 50
    .local v5, "text2":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->objects:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 52
    .local v1, "filename":Ljava/lang/CharSequence;
    invoke-virtual {v4, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-boolean v7, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->multiMode:Z

    if-eqz v7, :cond_1

    .line 56
    iget-object v6, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->checkedItems:[Z

    aget-boolean v6, v6, p1

    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 61
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/wstt/gt/log/logcat/SaveLogHelper;->getLastModifiedDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 62
    .local v3, "lastModified":Ljava/util/Date;
    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/GTUtils;->getGpsSaveTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-object p2

    .line 58
    .end local v3    # "lastModified":Ljava/util/Date;
    :cond_1
    iget v7, p0, Lcom/tencent/wstt/gt/log/logcat/LogFileAdapter;->checked:I

    if-ne v7, p1, :cond_2

    const/4 v6, 0x1

    :cond_2
    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method
