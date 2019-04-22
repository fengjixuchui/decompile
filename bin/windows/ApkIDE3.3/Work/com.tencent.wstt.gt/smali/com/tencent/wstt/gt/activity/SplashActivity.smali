.class public Lcom/tencent/wstt/gt/activity/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/activity/SplashActivity$EULATask;
    }
.end annotation


# static fields
.field private static final DIALOG_EULA:I = 0x2

.field private static INSTANCE:Lcom/tencent/wstt/gt/activity/SplashActivity;

.field static handler:Landroid/os/Handler;

.field public static sIsFirstTimeEnter:Z


# instance fields
.field public eluaStr:Ljava/lang/String;

.field private eulaTask:Lcom/tencent/wstt/gt/activity/SplashActivity$EULATask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wstt/gt/activity/SplashActivity;->sIsFirstTimeEnter:Z

    .line 171
    new-instance v0, Lcom/tencent/wstt/gt/activity/SplashActivity$1;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/activity/SplashActivity$1;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/activity/SplashActivity;->handler:Landroid/os/Handler;

    .line 184
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/SplashActivity;->eluaStr:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/SplashActivity;->eulaTask:Lcom/tencent/wstt/gt/activity/SplashActivity$EULATask;

    .line 40
    return-void
.end method

.method static synthetic access$0()Lcom/tencent/wstt/gt/activity/SplashActivity;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/tencent/wstt/gt/activity/SplashActivity;->INSTANCE:Lcom/tencent/wstt/gt/activity/SplashActivity;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/activity/SplashActivity;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/tencent/wstt/gt/activity/SplashActivity;->INSTANCE:Lcom/tencent/wstt/gt/activity/SplashActivity;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sput-object p0, Lcom/tencent/wstt/gt/activity/SplashActivity;->INSTANCE:Lcom/tencent/wstt/gt/activity/SplashActivity;

    .line 65
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getGTRunStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    sget-boolean v1, Lcom/tencent/wstt/gt/activity/GTMainActivity;->isActived:Z

    if-nez v1, :cond_0

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/wstt/gt/activity/GTMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/SplashActivity;->finish()V

    .line 111
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/wstt/gt/GTApp;->setGTRunStatus(Z)V

    .line 78
    sget-boolean v1, Lcom/tencent/wstt/gt/activity/SplashActivity;->sIsFirstTimeEnter:Z

    if-eqz v1, :cond_3

    .line 81
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/activity/SplashActivity;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTEntrance;->GTopen(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/tencent/wstt/gt/activity/Eula;->isAccepted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/tencent/wstt/gt/activity/SplashActivity$2;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/activity/SplashActivity$2;-><init>(Lcom/tencent/wstt/gt/activity/SplashActivity;)V

    .line 96
    const-wide/16 v4, 0x7d0

    .line 89
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    :goto_1
    sput-boolean v3, Lcom/tencent/wstt/gt/activity/SplashActivity;->sIsFirstTimeEnter:Z

    goto :goto_0

    .line 101
    :cond_2
    new-instance v1, Lcom/tencent/wstt/gt/activity/SplashActivity$EULATask;

    invoke-direct {v1}, Lcom/tencent/wstt/gt/activity/SplashActivity$EULATask;-><init>()V

    iput-object v1, p0, Lcom/tencent/wstt/gt/activity/SplashActivity;->eulaTask:Lcom/tencent/wstt/gt/activity/SplashActivity$EULATask;

    .line 102
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/SplashActivity;->eulaTask:Lcom/tencent/wstt/gt/activity/SplashActivity$EULATask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/SplashActivity$EULATask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 106
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/wstt/gt/activity/GTMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/SplashActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 125
    packed-switch p1, :pswitch_data_0

    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 127
    :pswitch_0
    new-instance v0, Lcom/tencent/wstt/gt/activity/Eula;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/Eula;-><init>(Lcom/tencent/wstt/gt/activity/SplashActivity;)V

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/SplashActivity;->eluaStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/Eula;->buildEulaDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 121
    return-void
.end method
