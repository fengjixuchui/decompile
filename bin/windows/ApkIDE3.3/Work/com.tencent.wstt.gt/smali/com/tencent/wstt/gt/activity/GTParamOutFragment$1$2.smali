.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1$2;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1$2;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$1;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 489
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTGWInternal;->clearAllEnableGWData()V

    .line 492
    sget-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->memInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 493
    const/4 v0, 0x0

    sput v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tagTimes:I

    .line 494
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 496
    return-void
.end method
