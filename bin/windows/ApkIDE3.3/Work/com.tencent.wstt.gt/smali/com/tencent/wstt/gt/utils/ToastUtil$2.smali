.class Lcom/tencent/wstt/gt/utils/ToastUtil$2;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$delay:I

.field private final synthetic val$gravity:Ljava/lang/String;

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$textid:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$textid:I

    iput-object p2, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$text:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$delay:I

    iput-object p5, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$gravity:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 74
    const-class v2, Lcom/tencent/wstt/gt/utils/ToastUtil;

    monitor-enter v2

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "toast":Landroid/widget/Toast;
    :try_start_0
    iget v1, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$textid:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 77
    iget-object v1, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$text:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$delay:I

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$gravity:Ljava/lang/String;

    const-string v3, "center"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/16 v1, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 83
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    :goto_1
    monitor-exit v2

    .line 88
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$textid:I

    iget v4, p0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;->val$delay:I

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
