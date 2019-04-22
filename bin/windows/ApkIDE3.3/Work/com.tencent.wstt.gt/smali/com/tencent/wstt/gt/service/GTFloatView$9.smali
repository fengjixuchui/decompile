.class Lcom/tencent/wstt/gt/service/GTFloatView$9;
.super Landroid/os/Handler;
.source "GTFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/service/GTFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTFloatView;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$9;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 1307
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v11, 0x10000000

    .line 1309
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 1353
    :goto_0
    return-void

    .line 1311
    :pswitch_0
    iget-object v9, p0, Lcom/tencent/wstt/gt/service/GTFloatView$9;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;
    invoke-static {v9}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$63(Lcom/tencent/wstt/gt/service/GTFloatView;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/wstt/gt/InPara;

    .line 1312
    .local v6, "iv":Lcom/tencent/wstt/gt/InPara;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1313
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v9, "ip_name"

    invoke-virtual {v6}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v9, "ip_client"

    invoke-virtual {v6}, Lcom/tencent/wstt/gt/InPara;->getClient()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v10, "ip_values"

    .line 1316
    invoke-virtual {v6}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 1315
    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1318
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/tencent/wstt/gt/service/GTFloatView$9;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 1319
    const-class v10, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    .line 1318
    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1320
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1321
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1322
    iget-object v9, p0, Lcom/tencent/wstt/gt/service/GTFloatView$9;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-virtual {v9, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1325
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "iv":Lcom/tencent/wstt/gt/InPara;
    :pswitch_1
    iget-object v9, p0, Lcom/tencent/wstt/gt/service/GTFloatView$9;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;
    invoke-static {v9}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$63(Lcom/tencent/wstt/gt/service/GTFloatView;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/wstt/gt/InPara;

    .line 1326
    .local v7, "iv_2":Lcom/tencent/wstt/gt/InPara;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1327
    .local v1, "bundle_2":Landroid/os/Bundle;
    const-string v9, "ip_name"

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string v9, "ip_client"

    invoke-virtual {v7}, Lcom/tencent/wstt/gt/InPara;->getClient()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string v10, "ip_values"

    .line 1330
    invoke-virtual {v7}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 1329
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1332
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/tencent/wstt/gt/service/GTFloatView$9;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 1333
    const-class v10, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    .line 1332
    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1334
    .local v4, "intent_2":Landroid/content/Intent;
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1335
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1336
    iget-object v9, p0, Lcom/tencent/wstt/gt/service/GTFloatView$9;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-virtual {v9, v4}, Lcom/tencent/wstt/gt/service/GTFloatView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1339
    .end local v1    # "bundle_2":Landroid/os/Bundle;
    .end local v4    # "intent_2":Landroid/content/Intent;
    .end local v7    # "iv_2":Lcom/tencent/wstt/gt/InPara;
    :pswitch_2
    iget-object v9, p0, Lcom/tencent/wstt/gt/service/GTFloatView$9;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;
    invoke-static {v9}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$63(Lcom/tencent/wstt/gt/service/GTFloatView;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/wstt/gt/InPara;

    .line 1340
    .local v8, "iv_3":Lcom/tencent/wstt/gt/InPara;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1341
    .local v2, "bundle_3":Landroid/os/Bundle;
    const-string v9, "ip_name"

    invoke-virtual {v8}, Lcom/tencent/wstt/gt/InPara;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    const-string v9, "ip_client"

    invoke-virtual {v8}, Lcom/tencent/wstt/gt/InPara;->getClient()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    const-string v10, "ip_values"

    .line 1344
    invoke-virtual {v8}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 1343
    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1346
    new-instance v5, Landroid/content/Intent;

    iget-object v9, p0, Lcom/tencent/wstt/gt/service/GTFloatView$9;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 1347
    const-class v10, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    .line 1346
    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1348
    .local v5, "intent_3":Landroid/content/Intent;
    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1349
    invoke-virtual {v5, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1350
    iget-object v9, p0, Lcom/tencent/wstt/gt/service/GTFloatView$9;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    invoke-virtual {v9, v5}, Lcom/tencent/wstt/gt/service/GTFloatView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
