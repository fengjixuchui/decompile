.class public Lcom/tencent/stat/lifecycle/MtaActivityLifeCycle;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/stat/common/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/stat/common/StatCommonHelper;->getLogger()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/lifecycle/MtaActivityLifeCycle;->a:Lcom/tencent/stat/common/StatLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/tencent/stat/common/StatLogger;
    .locals 1

    sget-object v0, Lcom/tencent/stat/lifecycle/MtaActivityLifeCycle;->a:Lcom/tencent/stat/common/StatLogger;

    return-object v0
.end method

.method public static registerActivityLifecycleCallbacks(Landroid/app/Application;Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;)Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/stat/lifecycle/MtaActivityLifeCycle;->a:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "............ start registerActivityLifecycleCallbacks."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/stat/lifecycle/a;

    invoke-direct {v0, p1}, Lcom/tencent/stat/lifecycle/a;-><init>(Lcom/tencent/stat/lifecycle/MtaActivityLifecycleCallback;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v0, Lcom/tencent/stat/lifecycle/MtaActivityLifeCycle;->a:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "............ end registerActivityLifecycleCallbacks."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
