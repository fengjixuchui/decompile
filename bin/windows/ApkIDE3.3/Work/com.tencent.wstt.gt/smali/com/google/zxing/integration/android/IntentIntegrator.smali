.class public Lcom/google/zxing/integration/android/IntentIntegrator;
.super Ljava/lang/Object;
.source "IntentIntegrator.java"


# static fields
.field public static final ALL_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BSPLUS_PACKAGE:Ljava/lang/String; = "com.srowen.bs.android"

.field private static final BS_PACKAGE:Ljava/lang/String; = "com.google.zxing.client.android"

.field public static final DATA_MATRIX_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "This application requires Barcode Scanner. Would you like to install it?"

.field public static final DEFAULT_NO:Ljava/lang/String; = "No"

.field public static final DEFAULT_TITLE:Ljava/lang/String; = "Install Barcode Scanner?"

.field public static final DEFAULT_YES:Ljava/lang/String; = "Yes"

.field public static final ONE_D_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCT_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final QR_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_CODE:I = 0xc0de

.field private static final TAG:Ljava/lang/String;

.field public static final TARGET_ALL_KNOWN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_BARCODE_SCANNER_ONLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;

.field private buttonNo:Ljava/lang/String;

.field private buttonYes:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private final moreExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private targetApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    const-class v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->TAG:Ljava/lang/String;

    .line 124
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UPC_A"

    aput-object v1, v0, v3

    const-string v1, "UPC_E"

    aput-object v1, v0, v4

    const-string v1, "EAN_8"

    aput-object v1, v0, v5

    const-string v1, "EAN_13"

    aput-object v1, v0, v6

    const-string v1, "RSS_14"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->list([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->PRODUCT_CODE_TYPES:Ljava/util/Collection;

    .line 125
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 126
    const-string v1, "UPC_A"

    aput-object v1, v0, v3

    const-string v1, "UPC_E"

    aput-object v1, v0, v4

    const-string v1, "EAN_8"

    aput-object v1, v0, v5

    const-string v1, "EAN_13"

    aput-object v1, v0, v6

    const-string v1, "CODE_39"

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "CODE_93"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CODE_128"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 127
    const-string v2, "ITF"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RSS_14"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "RSS_EXPANDED"

    aput-object v2, v0, v1

    .line 126
    invoke-static {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->list([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->ONE_D_CODE_TYPES:Ljava/util/Collection;

    .line 128
    const-string v0, "QR_CODE"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->QR_CODE_TYPES:Ljava/util/Collection;

    .line 129
    const-string v0, "DATA_MATRIX"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->DATA_MATRIX_TYPES:Ljava/util/Collection;

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->ALL_CODE_TYPES:Ljava/util/Collection;

    .line 133
    const-string v0, "com.google.zxing.client.android"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->TARGET_BARCODE_SCANNER_ONLY:Ljava/util/List;

    .line 134
    new-array v0, v6, [Ljava/lang/String;

    .line 135
    const-string v1, "com.srowen.bs.android"

    aput-object v1, v0, v3

    .line 136
    const-string v1, "com.srowen.bs.android.simple"

    aput-object v1, v0, v4

    .line 137
    const-string v1, "com.google.zxing.client.android"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->list([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->TARGET_ALL_KNOWN:Ljava/util/List;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    .line 151
    const-string v0, "Install Barcode Scanner?"

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->title:Ljava/lang/String;

    .line 152
    const-string v0, "This application requires Barcode Scanner. Would you like to install it?"

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->message:Ljava/lang/String;

    .line 153
    const-string v0, "Yes"

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->buttonYes:Ljava/lang/String;

    .line 154
    const-string v0, "No"

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->buttonNo:Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->TARGET_ALL_KNOWN:Ljava/util/List;

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->targetApplications:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    .line 157
    return-void
.end method

.method static synthetic access$0(Lcom/google/zxing/integration/android/IntentIntegrator;)Ljava/util/List;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->targetApplications:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/zxing/integration/android/IntentIntegrator;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private attachMoreExtras(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 412
    iget-object v3, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 432
    return-void

    .line 412
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 413
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 414
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 416
    .local v2, "value":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 417
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 418
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 419
    check-cast v2, Ljava/lang/Long;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 420
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 421
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 422
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v4, v2, Ljava/lang/Double;

    if-eqz v4, :cond_4

    .line 423
    check-cast v2, Ljava/lang/Double;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 424
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Ljava/lang/Float;

    if-eqz v4, :cond_5

    .line 425
    check-cast v2, Ljava/lang/Float;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 426
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v4, v2, Landroid/os/Bundle;

    if-eqz v4, :cond_6

    .line 427
    check-cast v2, Landroid/os/Bundle;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 429
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static contains(Ljava/lang/Iterable;Ljava/lang/String;)Z
    .locals 4
    .param p1, "targetApp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "availableApps":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 307
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 301
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 302
    .local v0, "availableApp":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 303
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private findTargetAppPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 288
    iget-object v3, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 289
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v3, 0x10000

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 290
    .local v0, "availableApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    .line 291
    iget-object v3, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->targetApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 297
    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 291
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    .local v2, "targetApp":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/google/zxing/integration/android/IntentIntegrator;->contains(Ljava/lang/Iterable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method private static varargs list([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;
    .locals 8
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/high16 v7, -0x80000000

    .line 352
    const v0, 0xc0de

    if-ne p0, v0, :cond_2

    .line 353
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 354
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "contents":Ljava/lang/String;
    const-string v0, "SCAN_RESULT_FORMAT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "formatName":Ljava/lang/String;
    const-string v0, "SCAN_RESULT_BYTES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 357
    .local v3, "rawBytes":[B
    const-string v0, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 358
    .local v6, "intentOrientation":I
    if-ne v6, v7, :cond_0

    .line 359
    .local v4, "orientation":Ljava/lang/Integer;
    :goto_0
    const-string v0, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "errorCorrectionLevel":Ljava/lang/String;
    new-instance v0, Lcom/google/zxing/integration/android/IntentResult;

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;)V

    .line 368
    .end local v1    # "contents":Ljava/lang/String;
    .end local v2    # "formatName":Ljava/lang/String;
    .end local v3    # "rawBytes":[B
    .end local v4    # "orientation":Ljava/lang/Integer;
    .end local v5    # "errorCorrectionLevel":Ljava/lang/String;
    .end local v6    # "intentOrientation":I
    :goto_1
    return-object v0

    .line 358
    .restart local v1    # "contents":Ljava/lang/String;
    .restart local v2    # "formatName":Ljava/lang/String;
    .restart local v3    # "rawBytes":[B
    .restart local v6    # "intentOrientation":I
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 366
    .end local v1    # "contents":Ljava/lang/String;
    .end local v2    # "formatName":Ljava/lang/String;
    .end local v3    # "rawBytes":[B
    .end local v6    # "intentOrientation":I
    :cond_1
    new-instance v0, Lcom/google/zxing/integration/android/IntentResult;

    invoke-direct {v0}, Lcom/google/zxing/integration/android/IntentResult;-><init>()V

    goto :goto_1

    :cond_2
    move-object v0, v4

    .line 368
    goto :goto_1
.end method

.method private showDownloadDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 311
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, "downloadDialog":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 314
    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->buttonYes:Ljava/lang/String;

    new-instance v2, Lcom/google/zxing/integration/android/IntentIntegrator$1;

    invoke-direct {v2, p0}, Lcom/google/zxing/integration/android/IntentIntegrator$1;-><init>(Lcom/google/zxing/integration/android/IntentIntegrator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->buttonNo:Ljava/lang/String;

    new-instance v2, Lcom/google/zxing/integration/android/IntentIntegrator$2;

    invoke-direct {v2, p0}, Lcom/google/zxing/integration/android/IntentIntegrator$2;-><init>(Lcom/google/zxing/integration/android/IntentIntegrator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public getButtonNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->buttonNo:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonYes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->buttonYes:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    return-object v0
.end method

.method public getTargetApplications()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->targetApplications:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final initiateScan()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->ALL_CODE_TYPES:Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan(Ljava/util/Collection;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final initiateScan(Ljava/util/Collection;)Landroid/app/AlertDialog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "desiredBarcodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.zxing.client.android.SCAN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, "intentScan":Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    if-eqz p1, :cond_0

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v2, "joinedByComma":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 259
    const-string v4, "SCAN_FORMATS"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    .end local v2    # "joinedByComma":Ljava/lang/StringBuilder;
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->findTargetAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "targetAppPackage":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 264
    invoke-direct {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->showDownloadDialog()Landroid/app/AlertDialog;

    move-result-object v4

    .line 271
    :goto_1
    return-object v4

    .line 253
    .end local v3    # "targetAppPackage":Ljava/lang/String;
    .restart local v2    # "joinedByComma":Ljava/lang/StringBuilder;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, "format":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 255
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 266
    .end local v0    # "format":Ljava/lang/String;
    .end local v2    # "joinedByComma":Ljava/lang/StringBuilder;
    .restart local v3    # "targetAppPackage":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    const/high16 v4, 0x80000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    invoke-direct {p0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->attachMoreExtras(Landroid/content/Intent;)V

    .line 270
    const v4, 0xc0de

    invoke-virtual {p0, v1, v4}, Lcom/google/zxing/integration/android/IntentIntegrator;->startActivityForResult(Landroid/content/Intent;I)V

    .line 271
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setButtonNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonNo"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->buttonNo:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setButtonNoByID(I)V
    .locals 1
    .param p1, "buttonNoID"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->buttonNo:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setButtonYes(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonYes"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->buttonYes:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setButtonYesByID(I)V
    .locals 1
    .param p1, "buttonYesID"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->buttonYes:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->message:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setMessageByID(I)V
    .locals 1
    .param p1, "messageID"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->message:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setSingleTargetApplication(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetApplication"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->targetApplications:Ljava/util/List;

    .line 220
    return-void
.end method

.method public final setTargetApplications(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "targetApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No target applications"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->targetApplications:Ljava/util/List;

    .line 216
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->title:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setTitleByID(I)V
    .locals 1
    .param p1, "titleID"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->title:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public final shareText(Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 377
    const-string v0, "TEXT_TYPE"

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->shareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final shareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/CharSequence;

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v2, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v2, "ENCODE_TYPE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 394
    const-string v2, "ENCODE_DATA"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 395
    invoke-direct {p0, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->findTargetAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "targetAppPackage":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->showDownloadDialog()Landroid/app/AlertDialog;

    move-result-object v2

    .line 404
    :goto_0
    return-object v2

    .line 399
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    invoke-direct {p0, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->attachMoreExtras(Landroid/content/Intent;)V

    .line 403
    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 404
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "code"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 285
    return-void
.end method
