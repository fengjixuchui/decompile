.class public Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GWFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/io/File;",
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
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private resId:I

.field private root:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/io/File;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "root"    # Ljava/io/File;
    .param p4, "checked"    # I
    .param p5, "multiMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;->objects:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;->root:Ljava/io/File;

    .line 55
    iput p4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;->checked:I

    .line 56
    iput-boolean p5, p0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;->multiMode:Z

    .line 57
    if-eqz p5, :cond_0

    .line 58
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;->checkedItems:[Z

    .line 60
    :cond_0
    if-eqz p5, :cond_1

    const v0, 0x7f030034

    :goto_0
    iput v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;->resId:I

    .line 61
    return-void

    .line 60
    :cond_1
    const v0, 0x7f03003e

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 66
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "context":Landroid/content/Context;
    if-nez p2, :cond_0

    .line 69
    const-string v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 70
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;->resId:I

    invoke-virtual {v2, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v7, 0x1020014

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    .line 74
    .local v4, "text1":Landroid/widget/CheckedTextView;
    const v7, 0x1020015

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 76
    .local v5, "text2":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;->objects:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 77
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;->root:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    const v7, -0xffff01

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 91
    :goto_0
    iget-boolean v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;->multiMode:Z

    if-eqz v7, :cond_2

    .line 92
    iget-object v6, p0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;->checkedItems:[Z

    aget-boolean v6, v6, p1

    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 97
    :goto_1
    const/4 v3, 0x0

    .line 98
    .local v3, "lastModified":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 99
    new-instance v3, Ljava/util/Date;

    .end local v3    # "lastModified":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 103
    .restart local v3    # "lastModified":Ljava/util/Date;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/wstt/gt/utils/GTUtils;->getGpsSaveTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-object p2

    .line 86
    .end local v3    # "lastModified":Ljava/util/Date;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    const v7, -0x777778

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 94
    :cond_2
    iget v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GWFolderAdapter;->checked:I

    if-ne v7, p1, :cond_3

    const/4 v6, 0x1

    :cond_3
    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 101
    .restart local v3    # "lastModified":Ljava/util/Date;
    :cond_4
    new-instance v3, Ljava/util/Date;

    .end local v3    # "lastModified":Ljava/util/Date;
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .restart local v3    # "lastModified":Ljava/util/Date;
    goto :goto_2
.end method
