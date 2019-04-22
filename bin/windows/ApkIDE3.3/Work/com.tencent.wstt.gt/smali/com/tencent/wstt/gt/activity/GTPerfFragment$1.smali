.class Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;
.super Ljava/lang/Object;
.source "GTPerfFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTPerfFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;)Lcom/tencent/wstt/gt/activity/GTPerfFragment;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 487
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTPerfFragment;->dataSet:[Lcom/tencent/wstt/gt/ui/model/NamedEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)[Lcom/tencent/wstt/gt/ui/model/NamedEntry;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    const v2, 0x7f09006d

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 494
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 495
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    const v2, 0x7f090071

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 496
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$1;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$1;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;)V

    .line 495
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 503
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    const v2, 0x7f090070

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTPerfFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$2;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/activity/GTPerfFragment$1$2;-><init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment$1;)V

    .line 503
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
