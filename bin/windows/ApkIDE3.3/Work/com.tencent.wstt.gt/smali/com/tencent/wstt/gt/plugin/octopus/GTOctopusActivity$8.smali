.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$8;
.super Ljava/lang/Object;
.source "GTOctopusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->comfirmToProductRegistPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$8;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 596
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 597
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$8;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->finish()V

    .line 598
    return-void
.end method
