.class public final Lcom/google/zxing/integration/android/IntentIntegratorV30;
.super Lcom/google/zxing/integration/android/IntentIntegrator;
.source "IntentIntegratorV30.java"


# instance fields
.field private final fragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 36
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegratorV30;->fragment:Landroid/app/Fragment;

    .line 37
    return-void
.end method


# virtual methods
.method protected startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "code"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegratorV30;->fragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 42
    return-void
.end method
