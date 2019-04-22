.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$1;
.super Ljava/lang/Object;
.source "GTOctopusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1$1;->this$2:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$3$1;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 380
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 381
    return-void
.end method
