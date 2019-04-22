.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;
.super Ljava/lang/Thread;
.source "GTOctopusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->loginSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    .line 539
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 544
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getLsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "lsk":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->productPairs:Ljava/util/ArrayList;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$4()Ljava/util/ArrayList;

    move-result-object v3

    .line 545
    invoke-static {v2, v0, v3}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;->prepareProductPairs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result v1

    .line 548
    .local v1, "retCode":I
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    new-instance v3, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7$1;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$7;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 573
    return-void
.end method
