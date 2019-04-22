.class Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1$1;
.super Ljava/lang/Object;
.source "GTShowPackageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1$1;->this$1:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1$1;->this$1:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;->access$0(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;)Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    move-result-object v0

    # invokes: Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->backToSetting(I)V
    invoke-static {v0, p3}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;I)V

    .line 78
    return-void
.end method
