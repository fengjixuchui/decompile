.class Lcom/tencent/wstt/gt/service/GTFloatView$18;
.super Ljava/lang/Thread;
.source "GTFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_MoveClickListener()V
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$18;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    .line 1122
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1124
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$18;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_down:Z
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$107(Lcom/tencent/wstt/gt/service/GTFloatView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1139
    return-void

    .line 1126
    :cond_1
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView$18;->sleep(J)V

    .line 1127
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$18;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_timer:I
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$108(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$109(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    .line 1128
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$18;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->up_event:Z
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$97(Lcom/tencent/wstt/gt/service/GTFloatView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$18;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$30(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V

    .line 1130
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$18;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # getter for: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_timer:I
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$108(Lcom/tencent/wstt/gt/service/GTFloatView;)I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    .line 1131
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$18;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    # invokes: Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_onClick()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$110(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 1133
    :cond_2
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView$18;->this$0:Lcom/tencent/wstt/gt/service/GTFloatView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->access$109(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
