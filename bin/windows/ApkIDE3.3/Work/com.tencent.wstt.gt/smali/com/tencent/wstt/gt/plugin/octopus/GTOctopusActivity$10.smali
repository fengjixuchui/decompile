.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;
.super Ljava/lang/Object;
.source "GTOctopusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->waitForApplyAppId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->val$name:Ljava/lang/String;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;)Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 646
    const/4 v0, 0x0

    .line 649
    .local v0, "appId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getLsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->val$name:Ljava/lang/String;

    .line 648
    invoke-static {v3, v4, v5}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;->registProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 661
    move-object v1, v0

    .line 662
    .local v1, "appIdFinal":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    new-instance v4, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;

    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->val$name:Ljava/lang/String;

    invoke-direct {v4, p0, v1, v5}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$2;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 684
    .end local v1    # "appIdFinal":Ljava/lang/String;
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v2

    .line 651
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    new-instance v4, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$1;

    invoke-direct {v4, p0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10$1;-><init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$10;)V

    invoke-virtual {v3, v4}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
