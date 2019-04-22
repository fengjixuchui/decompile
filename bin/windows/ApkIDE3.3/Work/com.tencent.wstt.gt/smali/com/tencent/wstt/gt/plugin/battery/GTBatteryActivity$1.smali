.class Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$1;
.super Ljava/lang/Object;
.source "GTBatteryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$1;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$1;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->finish()V

    .line 117
    return-void
.end method
