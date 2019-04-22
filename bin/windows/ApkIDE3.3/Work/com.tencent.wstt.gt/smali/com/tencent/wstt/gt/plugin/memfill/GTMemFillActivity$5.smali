.class Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$5;
.super Ljava/lang/Object;
.source "GTMemFillActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->onFree()V
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$5;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$5;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->tv_switch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->access$3(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 143
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$5;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->tv_switch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->access$3(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$5;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    const v2, 0x7f0900de

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method
