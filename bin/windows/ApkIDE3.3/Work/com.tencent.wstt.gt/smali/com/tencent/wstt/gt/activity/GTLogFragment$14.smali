.class Lcom/tencent/wstt/gt/activity/GTLogFragment$14;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$14;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 765
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->clearLog()V

    .line 767
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$14;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogFragment;->logAdapter:Lcom/tencent/wstt/gt/log/NormalLogAdapter;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$12(Lcom/tencent/wstt/gt/activity/GTLogFragment;)Lcom/tencent/wstt/gt/log/NormalLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/NormalLogAdapter;->clear()V

    .line 769
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 770
    return-void
.end method
