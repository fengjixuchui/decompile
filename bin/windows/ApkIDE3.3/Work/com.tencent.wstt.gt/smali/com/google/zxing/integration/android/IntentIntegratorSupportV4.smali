.class public final Lcom/google/zxing/integration/android/IntentIntegratorSupportV4;
.super Lcom/google/zxing/integration/android/IntentIntegrator;
.source "IntentIntegratorSupportV4.java"


# instance fields
.field private final fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 35
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegratorSupportV4;->fragment:Landroid/support/v4/app/Fragment;

    .line 36
    return-void
.end method


# virtual methods
.method protected startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "code"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegratorSupportV4;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 41
    return-void
.end method
