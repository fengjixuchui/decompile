.class Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$10;
.super Ljava/lang/Object;
.source "GTOpMulPerfActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$10;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 300
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 301
    return-void
.end method
