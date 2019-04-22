.class Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$4;
.super Ljava/lang/Object;
.source "GTBatteryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->onBatteryStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$4;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$4;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->tv_switch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 183
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$4;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->tv_switch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->access$2(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$4;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method
