.class Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$4;
.super Ljava/lang/Object;
.source "GTMemFillActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->onFillEnd()V
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$4;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$4;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->proDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->access$5(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 128
    return-void
.end method
