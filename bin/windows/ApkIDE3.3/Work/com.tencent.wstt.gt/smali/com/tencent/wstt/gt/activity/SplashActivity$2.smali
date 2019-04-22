.class Lcom/tencent/wstt/gt/activity/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/SplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/SplashActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/SplashActivity;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/SplashActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/SplashActivity;

    .line 92
    const-class v2, Lcom/tencent/wstt/gt/activity/GTMainActivity;

    .line 91
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/SplashActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/wstt/gt/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/SplashActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/activity/SplashActivity;->finish()V

    .line 95
    return-void
.end method
