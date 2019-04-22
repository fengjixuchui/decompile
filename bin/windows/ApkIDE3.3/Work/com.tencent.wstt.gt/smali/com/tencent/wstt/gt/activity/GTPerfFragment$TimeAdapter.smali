.class public Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GTPerfFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTPerfFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tencent/wstt/gt/ui/model/NamedEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_GROUP:I = 0x0

.field public static final TYPE_SUM:I = 0x2

.field public static final TYPE_TAG:I = 0x1


# instance fields
.field dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;[Lcom/tencent/wstt/gt/ui/model/NamedEntry;)V
    .locals 2
    .param p2, "data"    # [Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    .line 338
    invoke-virtual {p1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 339
    invoke-virtual {p1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 340
    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    .line 341
    return-void
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;)Lcom/tencent/wstt/gt/activity/GTPerfFragment;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->getItem(I)Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->getItem(I)Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v0

    .line 352
    .local v0, "entry":Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    instance-of v1, v0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    if-eqz v1, :cond_0

    .line 354
    const/4 v1, 0x1

    .line 358
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, "holderGroup":Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderGroup;
    const/4 v2, 0x0

    .line 378
    .local v2, "holderTag":Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->getItemViewType(I)I

    move-result v4

    .line 380
    .local v4, "type":I
    const/4 v3, 0x0

    .line 381
    .local v3, "rl":Landroid/view/ViewGroup;
    if-nez p2, :cond_0

    .line 382
    packed-switch v4, :pswitch_data_0

    .line 418
    :goto_0
    packed-switch v4, :pswitch_data_1

    .line 468
    :goto_1
    return-object v3

    .line 385
    :pswitch_0
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 386
    const v6, 0x7f030022

    .line 385
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .end local v3    # "rl":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .line 387
    .restart local v3    # "rl":Landroid/view/ViewGroup;
    new-instance v1, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderGroup;

    .end local v1    # "holderGroup":Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderGroup;
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    invoke-direct {v1, v5}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderGroup;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V

    .line 388
    .restart local v1    # "holderGroup":Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderGroup;
    const v5, 0x7f0800dd

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderGroup;->tvGroup:Landroid/widget/TextView;

    .line 389
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 392
    :pswitch_1
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 393
    const v6, 0x7f030021

    .line 392
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .end local v3    # "rl":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .line 394
    .restart local v3    # "rl":Landroid/view/ViewGroup;
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;

    .end local v2    # "holderTag":Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    invoke-direct {v2, v5}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V

    .line 395
    .restart local v2    # "holderTag":Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;
    const v5, 0x7f0800d7

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->tvTimeTag:Landroid/widget/TextView;

    .line 396
    const v5, 0x7f0800d8

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->tvTimeTimes:Landroid/widget/TextView;

    .line 397
    const v5, 0x7f0800d9

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->tvTimeTotaltime:Landroid/widget/TextView;

    .line 398
    const v5, 0x7f0800da

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->tvTimeMax:Landroid/widget/TextView;

    .line 399
    const v5, 0x7f0800db

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->tvTimeAve:Landroid/widget/TextView;

    .line 400
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 404
    :cond_0
    packed-switch v4, :pswitch_data_2

    :goto_2
    move-object v3, p2

    .line 414
    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_0

    .line 407
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holderGroup":Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderGroup;
    check-cast v1, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderGroup;

    .line 408
    .restart local v1    # "holderGroup":Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderGroup;
    goto :goto_2

    .line 410
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holderTag":Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;
    check-cast v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;

    .restart local v2    # "holderTag":Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;
    goto :goto_2

    .line 421
    :pswitch_4
    iget-object v5, v1, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderGroup;->tvGroup:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/tencent/wstt/gt/ui/model/NamedEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 424
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;->getItem(I)Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    .line 425
    .local v0, "entry":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getTid()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 427
    iget-object v5, v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->tvTimeTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :goto_3
    iget-object v5, v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->tvTimeMax:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getMax()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v5, v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->tvTimeTimes:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSizeText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getFunctionId()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_1

    .line 437
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getFunctionId()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1

    .line 438
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getFunctionId()I

    move-result v5

    const/16 v6, 0xe

    if-eq v5, v6, :cond_1

    .line 439
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getFunctionId()I

    move-result v5

    const/16 v6, 0xf

    if-eq v5, v6, :cond_1

    .line 440
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getFunctionId()I

    move-result v5

    const/16 v6, 0x11

    if-ne v5, v6, :cond_3

    .line 442
    :cond_1
    iget-object v5, v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->tvTimeTotaltime:Landroid/widget/TextView;

    const-string v6, "--"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :goto_4
    iget-object v5, v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->tvTimeAve:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getAve()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    new-instance v5, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter$1;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment$TimeAdapter;Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 431
    :cond_2
    iget-object v5, v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->tvTimeTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getNameT()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 446
    :cond_3
    iget-object v5, v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->tvTimeTotaltime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getTotal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 418
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 404
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x2

    return v0
.end method
