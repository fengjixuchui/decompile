.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$10;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    iput p2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$10;->val$type:I

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 796
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$10;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    iget v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$10;->val$type:I

    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->unregisterOutpara(I)V
    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$22(Lcom/tencent/wstt/gt/activity/GTAUTFragment;I)V

    .line 797
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 799
    return-void
.end method
