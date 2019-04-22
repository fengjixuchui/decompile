.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$11;
.super Ljava/lang/Object;
.source "GTGPSActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->onReplayFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

.field private final synthetic val$errorstr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$11;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$11;->val$errorstr:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$11;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$11;->val$errorstr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    return-void
.end method
