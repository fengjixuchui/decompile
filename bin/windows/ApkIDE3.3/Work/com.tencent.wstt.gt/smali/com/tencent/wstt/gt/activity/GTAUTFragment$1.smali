.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$1;
.super Landroid/os/Handler;
.source "GTAUTFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$1;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->doResume()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$0(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V

    .line 115
    return-void
.end method
