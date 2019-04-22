.class Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$2;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;->toggle(Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->tb_full:Lcom/tencent/wstt/gt/views/GTCheckBox;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;->access$0(Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;)Lcom/tencent/wstt/gt/views/GTCheckBox;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;->flag:Z

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setChecked(Z)V

    .line 79
    return-void
.end method
