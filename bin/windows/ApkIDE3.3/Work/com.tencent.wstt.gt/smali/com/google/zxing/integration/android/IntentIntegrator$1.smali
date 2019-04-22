.class Lcom/google/zxing/integration/android/IntentIntegrator$1;
.super Ljava/lang/Object;
.source "IntentIntegrator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/integration/android/IntentIntegrator;->showDownloadDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/integration/android/IntentIntegrator;


# direct methods
.method constructor <init>(Lcom/google/zxing/integration/android/IntentIntegrator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator$1;->this$0:Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 318
    iget-object v4, p0, Lcom/google/zxing/integration/android/IntentIntegrator$1;->this$0:Lcom/google/zxing/integration/android/IntentIntegrator;

    # getter for: Lcom/google/zxing/integration/android/IntentIntegrator;->targetApplications:Ljava/util/List;
    invoke-static {v4}, Lcom/google/zxing/integration/android/IntentIntegrator;->access$0(Lcom/google/zxing/integration/android/IntentIntegrator;)Ljava/util/List;

    move-result-object v4

    const-string v5, "com.google.zxing.client.android"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    const-string v2, "com.google.zxing.client.android"

    .line 325
    .local v2, "packageName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "market://details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 326
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 328
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/google/zxing/integration/android/IntentIntegrator$1;->this$0:Lcom/google/zxing/integration/android/IntentIntegrator;

    # getter for: Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/google/zxing/integration/android/IntentIntegrator;->access$1(Lcom/google/zxing/integration/android/IntentIntegrator;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_1
    return-void

    .line 323
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v4, p0, Lcom/google/zxing/integration/android/IntentIntegrator$1;->this$0:Lcom/google/zxing/integration/android/IntentIntegrator;

    # getter for: Lcom/google/zxing/integration/android/IntentIntegrator;->targetApplications:Ljava/util/List;
    invoke-static {v4}, Lcom/google/zxing/integration/android/IntentIntegrator;->access$0(Lcom/google/zxing/integration/android/IntentIntegrator;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 329
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    # getter for: Lcom/google/zxing/integration/android/IntentIntegrator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/zxing/integration/android/IntentIntegrator;->access$2()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Google Play is not installed; cannot install "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
