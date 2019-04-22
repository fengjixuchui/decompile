.class Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$2;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0900c9

    .line 125
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->isStarted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    const/16 v2, 0xfa

    .line 128
    .local v2, "refreshRate":I
    const/4 v0, -0x1

    .line 130
    .local v0, "brightness":I
    :try_start_0
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->et_refresh_rate:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->access$0(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 140
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->et_brightness:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->access$1(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    :try_start_1
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->et_brightness:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->access$1(Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 153
    :cond_0
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->doStart(II)V

    .line 159
    .end local v0    # "brightness":I
    .end local v2    # "refreshRate":I
    :goto_0
    return-void

    .line 132
    .restart local v0    # "brightness":I
    .restart local v2    # "refreshRate":I
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 148
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v0    # "brightness":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "refreshRate":I
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/plugin/battery/GTBatteryEngine;->doStop()V

    goto :goto_0
.end method
