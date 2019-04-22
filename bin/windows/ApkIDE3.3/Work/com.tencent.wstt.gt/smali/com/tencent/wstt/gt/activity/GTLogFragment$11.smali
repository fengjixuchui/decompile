.class Lcom/tencent/wstt/gt/activity/GTLogFragment$11;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment;->showOpenLogDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

.field private final synthetic val$filenames:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$11;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$11;->val$filenames:Ljava/util/List;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 561
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 562
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$11;->val$filenames:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 563
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$11;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTLogFragment;->openLog(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$21(Lcom/tencent/wstt/gt/activity/GTLogFragment;Ljava/lang/String;)V

    .line 565
    return-void
.end method
