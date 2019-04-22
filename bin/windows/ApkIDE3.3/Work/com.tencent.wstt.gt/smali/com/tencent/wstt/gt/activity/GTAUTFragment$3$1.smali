.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$3$1;
.super Ljava/lang/Object;
.source "GTAUTFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$3$1;->this$1:Lcom/tencent/wstt/gt/activity/GTAUTFragment$3;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 432
    const-string v0, "running"

    sput-object v0, Lcom/tencent/wstt/gt/manager/AUTManager;->appstatus:Ljava/lang/String;

    .line 433
    # invokes: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->checkRegist()V
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$4()V

    .line 434
    return-void
.end method
