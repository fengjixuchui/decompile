.class Lcom/tencent/wstt/gt/api/utils/BatteryUtils$BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/api/utils/BatteryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/api/utils/BatteryUtils;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/api/utils/BatteryUtils;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils$BatteryBroadcastReceiver;->this$0:Lcom/tencent/wstt/gt/api/utils/BatteryUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils$BatteryBroadcastReceiver;->this$0:Lcom/tencent/wstt/gt/api/utils/BatteryUtils;

    const-string v2, "temperature"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/api/utils/BatteryUtils;->access$0(Lcom/tencent/wstt/gt/api/utils/BatteryUtils;I)V

    .line 58
    :cond_0
    const-string v1, "health"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils$BatteryBroadcastReceiver;->this$0:Lcom/tencent/wstt/gt/api/utils/BatteryUtils;

    const-string v2, "\u672a\u77e5\u72b6\u51b5"

    iput-object v2, v1, Lcom/tencent/wstt/gt/api/utils/BatteryUtils;->batteryHealth:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils$BatteryBroadcastReceiver;->this$0:Lcom/tencent/wstt/gt/api/utils/BatteryUtils;

    const-string v2, "\u72b6\u6001\u826f\u597d"

    iput-object v2, v1, Lcom/tencent/wstt/gt/api/utils/BatteryUtils;->batteryHealth:Ljava/lang/String;

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils$BatteryBroadcastReceiver;->this$0:Lcom/tencent/wstt/gt/api/utils/BatteryUtils;

    const-string v2, "\u7535\u6c60\u6ca1\u6709\u7535"

    iput-object v2, v1, Lcom/tencent/wstt/gt/api/utils/BatteryUtils;->batteryHealth:Ljava/lang/String;

    goto :goto_0

    .line 69
    :pswitch_3
    iget-object v1, p0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils$BatteryBroadcastReceiver;->this$0:Lcom/tencent/wstt/gt/api/utils/BatteryUtils;

    const-string v2, "\u7535\u6c60\u7535\u538b\u8fc7\u9ad8"

    iput-object v2, v1, Lcom/tencent/wstt/gt/api/utils/BatteryUtils;->batteryHealth:Ljava/lang/String;

    goto :goto_0

    .line 72
    :pswitch_4
    iget-object v1, p0, Lcom/tencent/wstt/gt/api/utils/BatteryUtils$BatteryBroadcastReceiver;->this$0:Lcom/tencent/wstt/gt/api/utils/BatteryUtils;

    const-string v2, "\u7535\u6c60\u8fc7\u70ed"

    iput-object v2, v1, Lcom/tencent/wstt/gt/api/utils/BatteryUtils;->batteryHealth:Ljava/lang/String;

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
