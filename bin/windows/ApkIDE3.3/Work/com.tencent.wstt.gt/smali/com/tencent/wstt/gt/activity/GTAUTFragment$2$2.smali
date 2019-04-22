.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$2$2;
.super Ljava/lang/Object;
.source "GTAUTFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 389
    new-instance v0, Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->access$0(Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;)Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 391
    const-class v2, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    .line 389
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2$2;->this$1:Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;->access$0(Lcom/tencent/wstt/gt/activity/GTAUTFragment$2;)Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->startActivity(Landroid/content/Intent;)V

    .line 394
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 396
    return-void
.end method
