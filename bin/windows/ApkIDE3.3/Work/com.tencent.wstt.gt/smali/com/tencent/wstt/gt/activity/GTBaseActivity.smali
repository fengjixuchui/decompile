.class public abstract Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.super Landroid/app/Activity;
.source "GTBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/wstt/gt/GTApp;->setInGT(Z)V

    .line 50
    invoke-static {p0}, Lcom/tencent/stat/StatService;->onPause(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/wstt/gt/GTApp;->setInGT(Z)V

    .line 43
    invoke-static {p0}, Lcom/tencent/stat/StatService;->onResume(Landroid/content/Context;)V

    .line 44
    return-void
.end method
