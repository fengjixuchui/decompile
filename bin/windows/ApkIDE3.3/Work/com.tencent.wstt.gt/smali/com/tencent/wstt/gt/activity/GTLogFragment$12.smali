.class Lcom/tencent/wstt/gt/activity/GTLogFragment$12;
.super Ljava/lang/Object;
.source "GTLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogFragment;->onLogChanged()V
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$12;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogFragment$12;->this$0:Lcom/tencent/wstt/gt/activity/GTLogFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTLogFragment;->query()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogFragment;->access$22(Lcom/tencent/wstt/gt/activity/GTLogFragment;)V

    .line 617
    return-void
.end method
