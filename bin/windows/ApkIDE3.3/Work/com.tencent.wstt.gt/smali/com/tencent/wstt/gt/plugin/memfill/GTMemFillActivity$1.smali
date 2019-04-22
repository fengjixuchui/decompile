.class Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$1;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$1;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->isFilled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->free()V

    .line 72
    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$1;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->et_Num:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->access$0(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->access$1(I)V

    .line 65
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;

    move-result-object v1

    # getter for: Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->fillNum:I
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->access$2()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillEngine;->fill(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
