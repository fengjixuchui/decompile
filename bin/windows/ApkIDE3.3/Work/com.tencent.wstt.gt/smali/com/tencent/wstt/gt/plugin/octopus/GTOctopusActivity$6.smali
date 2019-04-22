.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$6;
.super Ljava/lang/Object;
.source "GTOctopusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->onUploadFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

.field private final synthetic val$errorStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$6;->val$errorStr:Ljava/lang/String;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$6;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->dismissProDialog()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)V

    .line 470
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$6;->val$errorStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 471
    return-void
.end method
