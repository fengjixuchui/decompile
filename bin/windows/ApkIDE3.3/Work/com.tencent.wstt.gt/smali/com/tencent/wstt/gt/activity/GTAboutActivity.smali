.class public Lcom/tencent/wstt/gt/activity/GTAboutActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x10000000

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 78
    :goto_0
    :pswitch_0
    return-void

    .line 60
    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTAboutActivity;->finish()V

    goto :goto_0

    .line 63
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .line 64
    const-class v2, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;

    .line 63
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intentHp":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    const-string v2, "uri"

    const-string v3, "http://gt.qq.com/"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/GTAboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    .end local v0    # "intentHp":Landroid/content/Intent;
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    .line 71
    const-class v2, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;

    .line 70
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v1, "intentPolicy":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    const-string v2, "uri"

    const-string v3, "http://gt.qq.com/wp-content/EULA_EN.html"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/GTAboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x7f08000e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTAboutActivity;->setContentView(I)V

    .line 41
    const v4, 0x7f08000e

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    .local v1, "tv_about_back":Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v4, 0x7f080012

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, "tv_homepage":Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v4, 0x7f080011

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    .local v0, "tv_about":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GT "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/wstt/gt/GTConfig;->VERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(Android)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v4, 0x7f080013

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/activity/GTAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 51
    .local v3, "tv_terms":Landroid/widget/TextView;
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method
