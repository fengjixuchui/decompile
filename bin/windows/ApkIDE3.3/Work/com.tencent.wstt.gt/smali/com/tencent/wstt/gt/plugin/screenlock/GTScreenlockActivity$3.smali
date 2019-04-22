.class Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$3;
.super Ljava/lang/Object;
.source "GTScreenlockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;->toggle(Landroid/content/Context;)V

    .line 87
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->tb_partial:Lcom/tencent/wstt/gt/views/GTCheckBox;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->access$1(Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;)Lcom/tencent/wstt/gt/views/GTCheckBox;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/wstt/gt/plugin/screenlock/PartialWakeLock;->flag:Z

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setChecked(Z)V

    .line 88
    return-void
.end method
