.class public Lcom/tencent/wstt/gt/activity/GTParamTopFragment;
.super Landroid/support/v4/app/Fragment;
.source "GTParamTopFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnEdit:Landroid/widget/Button;

.field private btnIn:Landroid/widget/Button;

.field private btnOut:Landroid/widget/Button;

.field private curTabId:I

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private inEditFragment:Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;

.field private inFragment:Lcom/tencent/wstt/gt/activity/GTParamInFragment;

.field private isEdit:Z

.field private isInState:Z

.field private isShow:Z

.field private outEditFragment:Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;

.field private outFragment:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private clearSelection()V
    .locals 4

    .prologue
    const v3, 0x7f060005

    const v2, 0x7f020061

    .line 239
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnIn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 240
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnIn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 241
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnOut:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 242
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnOut:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 243
    return-void
.end method

.method private hideFragments(Landroid/support/v4/app/FragmentTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inFragment:Lcom/tencent/wstt/gt/activity/GTParamInFragment;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inFragment:Lcom/tencent/wstt/gt/activity/GTParamInFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outFragment:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outFragment:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inEditFragment:Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inEditFragment:Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outEditFragment:Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outEditFragment:Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 264
    :cond_3
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootLayout"    # Landroid/view/View;

    .prologue
    .line 97
    const v0, 0x7f0800c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnEdit:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnEdit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0800c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnIn:Landroid/widget/Button;

    .line 101
    const v0, 0x7f0800c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnOut:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnIn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnOut:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method private setFragSelection(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const v4, 0x7f080016

    const v3, 0x7f020062

    const/4 v2, -0x1

    .line 167
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->clearSelection()V

    .line 169
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 171
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->hideFragments(Landroid/support/v4/app/FragmentTransaction;)V

    .line 173
    packed-switch p1, :pswitch_data_0

    .line 232
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 233
    return-void

    .line 176
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnIn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 177
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnIn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 178
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inFragment:Lcom/tencent/wstt/gt/activity/GTParamInFragment;

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Lcom/tencent/wstt/gt/activity/GTParamInFragment;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/activity/GTParamInFragment;-><init>()V

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inFragment:Lcom/tencent/wstt/gt/activity/GTParamInFragment;

    .line 180
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inFragment:Lcom/tencent/wstt/gt/activity/GTParamInFragment;

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inFragment:Lcom/tencent/wstt/gt/activity/GTParamInFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnOut:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 188
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnOut:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 189
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outFragment:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    if-nez v1, :cond_1

    .line 190
    new-instance v1, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;-><init>()V

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outFragment:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    .line 191
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outFragment:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outFragment:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnIn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 199
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnIn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 200
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inEditFragment:Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;

    if-nez v1, :cond_2

    .line 201
    new-instance v1, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;-><init>()V

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inEditFragment:Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;

    .line 202
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inEditFragment:Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inEditFragment:Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 209
    :pswitch_3
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnOut:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 210
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnOut:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 211
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outEditFragment:Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;

    if-nez v1, :cond_3

    .line 212
    new-instance v1, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;-><init>()V

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outEditFragment:Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;

    .line 213
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outEditFragment:Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_0

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outEditFragment:Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isInState:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isEdit:Z

    if-nez v0, :cond_3

    .line 139
    iput v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->curTabId:I

    .line 140
    invoke-direct {p0, v1}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->setFragSelection(I)V

    .line 157
    :cond_0
    :goto_1
    return-void

    .line 111
    :pswitch_0
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isInState:Z

    if-nez v0, :cond_0

    .line 112
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isInState:Z

    goto :goto_0

    .line 115
    :pswitch_1
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isInState:Z

    if-eqz v0, :cond_0

    .line 116
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isInState:Z

    goto :goto_0

    .line 119
    :pswitch_2
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isEdit:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isEdit:Z

    .line 120
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isEdit:Z

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnEdit:Landroid/widget/Button;

    const v3, 0x7f020030

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 123
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnEdit:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnEdit:Landroid/widget/Button;

    const v3, 0x7f09008e

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 119
    goto :goto_2

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnEdit:Landroid/widget/Button;

    const v3, 0x7f020061

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 129
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnEdit:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->btnEdit:Landroid/widget/Button;

    const v3, 0x7f09008d

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isInState:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isEdit:Z

    if-nez v0, :cond_4

    .line 144
    iput v2, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->curTabId:I

    .line 145
    invoke-direct {p0, v2}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->setFragSelection(I)V

    goto :goto_1

    .line 147
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isInState:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isEdit:Z

    if-eqz v0, :cond_5

    .line 149
    iput v5, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->curTabId:I

    .line 150
    invoke-direct {p0, v5}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->setFragSelection(I)V

    goto/16 :goto_1

    .line 152
    :cond_5
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isInState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isEdit:Z

    if-eqz v0, :cond_0

    .line 154
    iput v6, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->curTabId:I

    .line 155
    invoke-direct {p0, v6}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->setFragSelection(I)V

    goto/16 :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x7f0800c6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const v1, 0x7f03001f

    .line 78
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "rootLayout":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->initViews(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 83
    if-eqz p3, :cond_0

    .line 85
    const-string v1, "curTabId"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->setFragSelection(I)V

    .line 92
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->setFragSelection(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const-string v0, "curTabId"

    iget v1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->curTabId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public onShow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isShow:Z

    if-ne v0, p1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isInState:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isEdit:Z

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inFragment:Lcom/tencent/wstt/gt/activity/GTParamInFragment;

    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/activity/GTParamInFragment;->onShow(Z)V

    .line 290
    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isShow:Z

    goto :goto_0

    .line 277
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isInState:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isEdit:Z

    if-nez v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outFragment:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->onShow(Z)V

    goto :goto_1

    .line 281
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isInState:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isEdit:Z

    if-eqz v0, :cond_4

    .line 283
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->inEditFragment:Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;

    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/activity/GTParamInEditFragment;->onShow(Z)V

    goto :goto_1

    .line 285
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isInState:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->isEdit:Z

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamTopFragment;->outEditFragment:Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;

    invoke-virtual {v0, p1}, Lcom/tencent/wstt/gt/activity/GTParamOutEditFragment;->onShow(Z)V

    goto :goto_1
.end method
