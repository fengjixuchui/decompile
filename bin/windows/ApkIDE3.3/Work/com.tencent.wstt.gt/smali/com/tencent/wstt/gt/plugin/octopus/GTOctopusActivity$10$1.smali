.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$1;
.super Ljava/lang/Object;
.source "GTOctopusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$1;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$1;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v0

    const v1, 0x7f090128

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    .line 657
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$1;->this$1:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-result-object v0

    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->dismissProDialog()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)V

    .line 658
    return-void
.end method
