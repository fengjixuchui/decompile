.class public Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "GTShowPackageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/wstt/gt/utils/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p3, "inputDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/wstt/gt/utils/AppInfo;>;"
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$AppAdapter;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$AppAdapter;->context:Landroid/content/Context;

    .line 148
    # getter for: Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->dataList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 152
    return-void

    .line 150
    :cond_0
    # getter for: Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->dataList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/utils/AppInfo;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$AppAdapter;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->dataList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$AppAdapter;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->dataList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 166
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 172
    move-object v3, p2

    .line 173
    .local v3, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$AppAdapter;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->dataList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/utils/AppInfo;

    .line 174
    .local v2, "appUnit":Lcom/tencent/wstt/gt/utils/AppInfo;
    if-nez v3, :cond_0

    .line 175
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$AppAdapter;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 176
    .local v4, "vi":Landroid/view/LayoutInflater;
    const v5, 0x7f030030

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 178
    .end local v4    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    const v5, 0x7f08011c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    .local v1, "appName":Landroid/widget/TextView;
    const v5, 0x7f08011b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    .local v0, "appIcon":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 181
    iget-object v5, v2, Lcom/tencent/wstt/gt/utils/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_1
    if-eqz v0, :cond_2

    .line 183
    iget-object v5, v2, Lcom/tencent/wstt/gt/utils/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_2
    return-object v3
.end method
