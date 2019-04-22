.class Lcom/google/zxing/integration/android/IntentIntegrator$2;
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
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator$2;->this$0:Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 337
    return-void
.end method
