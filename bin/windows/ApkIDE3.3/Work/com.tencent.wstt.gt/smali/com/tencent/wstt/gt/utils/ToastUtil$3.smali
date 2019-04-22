.class Lcom/tencent/wstt/gt/utils/ToastUtil$3;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$delay:I

.field private final synthetic val$gravity:I

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$textid:I

.field private final synthetic val$xOffset:I

.field private final synthetic val$yOffset:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;IIII)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$textid:I

    iput-object p2, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$text:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$delay:I

    iput p5, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$gravity:I

    iput p6, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$xOffset:I

    iput p7, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$yOffset:I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 99
    const-class v2, Lcom/tencent/wstt/gt/utils/ToastUtil;

    monitor-enter v2

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "toast":Landroid/widget/Toast;
    :try_start_0
    iget v1, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$textid:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 102
    iget-object v1, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$text:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$delay:I

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 106
    :goto_0
    iget v1, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$gravity:I

    iget v3, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$xOffset:I

    iget v4, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$yOffset:I

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 107
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    monitor-exit v2

    .line 109
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$textid:I

    iget v4, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;->val$delay:I

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
