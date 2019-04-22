.class public Lcom/tencent/wstt/gt/api/utils/WidgetUtils;
.super Ljava/lang/Object;
.source "WidgetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openToast(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 35
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 36
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 37
    return-void
.end method
