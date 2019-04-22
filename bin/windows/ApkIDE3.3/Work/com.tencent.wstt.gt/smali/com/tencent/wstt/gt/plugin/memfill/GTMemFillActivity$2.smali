.class Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$2;
.super Ljava/lang/Object;
.source "GTMemFillActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->finish()V

    .line 80
    return-void
.end method
