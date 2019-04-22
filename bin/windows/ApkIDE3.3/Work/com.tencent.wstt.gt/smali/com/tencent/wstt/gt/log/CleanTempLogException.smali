.class public Lcom/tencent/wstt/gt/log/CleanTempLogException;
.super Ljava/lang/Exception;
.source "CleanTempLogException.java"


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "ERROR:cleanTempLog failed!"

.field public static final TAG:Ljava/lang/String; = "--CleanTempLogException--"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "ERROR:cleanTempLog failed!"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v0, "--CleanTempLogException--"

    const-string v1, "ERROR:cleanTempLog failed!"

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/api/base/GTLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
