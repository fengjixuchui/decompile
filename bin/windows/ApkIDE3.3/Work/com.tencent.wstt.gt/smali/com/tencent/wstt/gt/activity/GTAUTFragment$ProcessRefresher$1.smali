.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher$1;
.super Ljava/lang/Object;
.source "GTAUTFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher$1;->this$1:Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher$1;->this$1:Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;->access$1(Lcom/tencent/wstt/gt/activity/GTAUTFragment$ProcessRefresher;)Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_refresh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$10(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 831
    return-void
.end method
