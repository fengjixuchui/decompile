.class Lcom/tencent/wstt/gt/service/GTFloatView$22;
.super Ljava/lang/Thread;
.source "GTFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_MoveClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTFloatView;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$22;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 1227
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1229
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$22;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_down:Z
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$112(Lcom/tencent/wstt/gt/service/GTFloatView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1244
    return-void

    .line 1231
    :cond_1
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView$22;->sleep(J)V

    .line 1232
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$22;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_timer:I
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$113(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$114(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    .line 1233
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$22;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->up_event:Z
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$97(Lcom/tencent/wstt/gt/service/GTFloatView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1234
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$22;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$57(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 1235
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$22;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_timer:I
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$113(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    .line 1236
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$22;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_onClick()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$115(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 1238
    :cond_2
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$22;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$114(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
