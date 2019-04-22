.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$9;
.super Ljava/lang/Object;
.source "GTAUTFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment;->hashistory(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$9;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    iput p2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$9;->val$type:I

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 785
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 786
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$9;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->cb_boxs:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$21(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)[Landroid/widget/CheckBox;

    move-result-object v0

    iget v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$9;->val$type:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 787
    return-void
.end method
