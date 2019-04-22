.class final Lcom/tencent/stat/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/stat/StatActionListener;


# instance fields
.field final synthetic a:Lcom/tencent/stat/StatSpecifyReportedInfo;


# direct methods
.method constructor <init>(Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/ap;->a:Lcom/tencent/stat/StatSpecifyReportedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBecameBackground()V
    .locals 3

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/stat/ap;->a:Lcom/tencent/stat/StatSpecifyReportedInfo;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/stat/StatServiceImpl;->a(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;Z)V

    return-void
.end method

.method public onBecameForeground()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/stat/StatServiceImpl;->a(J)J

    return-void
.end method
