.class Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$9;
.super Ljava/lang/Object;
.source "SMActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->onSMStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->tv_switch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->access$4(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 248
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->tv_switch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->access$4(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$9;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method
