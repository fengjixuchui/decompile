.class Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8$2;
.super Ljava/lang/Object;
.source "GTLogSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8$2;->this$1:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8$2;->this$1:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;->access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;)Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->arrayAdapter:Lcom/tencent/wstt/gt/log/SearchLogAdapter;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$9(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Lcom/tencent/wstt/gt/log/SearchLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/log/SearchLogAdapter;->notifyDataSetChanged()V

    .line 302
    return-void
.end method
