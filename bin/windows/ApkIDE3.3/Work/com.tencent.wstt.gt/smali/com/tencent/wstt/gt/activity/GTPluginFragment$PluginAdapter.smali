.class Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GTPluginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTPluginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PluginAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tencent/wstt/gt/plugin/PluginItem;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTPluginFragment;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/activity/GTPluginFragment;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;->this$0:Lcom/tencent/wstt/gt/activity/GTPluginFragment;

    .line 80
    const v0, 0x7f030028

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPlugins()[Lcom/tencent/wstt/gt/plugin/PluginItem;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 81
    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;->context:Landroid/content/Context;

    .line 82
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/plugin/PluginItem;

    .line 93
    .local v1, "item":Lcom/tencent/wstt/gt/plugin/PluginItem;
    if-nez p2, :cond_0

    .line 94
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 95
    const v6, 0x7f030028

    const/4 v7, 0x0

    .line 94
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 100
    .local v2, "rl":Landroid/widget/RelativeLayout;
    :goto_0
    const v5, 0x7f080102

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 101
    .local v0, "img_logo":Landroid/widget/ImageView;
    const v5, 0x7f080104

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 102
    .local v3, "tv_description":Landroid/widget/TextView;
    const v5, 0x7f080103

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 104
    .local v4, "tv_title":Landroid/widget/TextView;
    iget v5, v1, Lcom/tencent/wstt/gt/plugin/PluginItem;->logo_id:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v5, v1, Lcom/tencent/wstt/gt/plugin/PluginItem;->alias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v5, v1, Lcom/tencent/wstt/gt/plugin/PluginItem;->description:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v5, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter$1;

    invoke-direct {v5, p0, v1}, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter$1;-><init>(Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;Lcom/tencent/wstt/gt/plugin/PluginItem;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-object v2

    .end local v0    # "img_logo":Landroid/widget/ImageView;
    .end local v2    # "rl":Landroid/widget/RelativeLayout;
    .end local v3    # "tv_description":Landroid/widget/TextView;
    .end local v4    # "tv_title":Landroid/widget/TextView;
    :cond_0
    move-object v2, p2

    .line 97
    check-cast v2, Landroid/widget/RelativeLayout;

    .restart local v2    # "rl":Landroid/widget/RelativeLayout;
    goto :goto_0
.end method
