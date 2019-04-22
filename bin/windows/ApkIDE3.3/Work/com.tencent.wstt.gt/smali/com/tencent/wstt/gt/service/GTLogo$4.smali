.class Lcom/tencent/wstt/gt/service/GTLogo$4;
.super Ljava/lang/Thread;
.source "GTLogo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/service/GTLogo;->keyUpDownListener()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/service/GTLogo;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/service/GTLogo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTLogo$4;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    .line 209
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 211
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo$4;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->keyUpDown:Z
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTLogo;->access$8(Lcom/tencent/wstt/gt/service/GTLogo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    return-void

    .line 213
    :cond_1
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/service/GTLogo$4;->sleep(J)V

    .line 214
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo$4;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->timer:I
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTLogo;->access$9(Lcom/tencent/wstt/gt/service/GTLogo;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$11(Lcom/tencent/wstt/gt/service/GTLogo;I)V

    .line 215
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo$4;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->move_event:Z
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTLogo;->access$14(Lcom/tencent/wstt/gt/service/GTLogo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo$4;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->timer:I
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTLogo;->access$9(Lcom/tencent/wstt/gt/service/GTLogo;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 217
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo$4;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$6(Lcom/tencent/wstt/gt/service/GTLogo;Z)V

    .line 218
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTLogo$4;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # invokes: Lcom/tencent/wstt/gt/service/GTLogo;->viewIsOnLongClick()V
    invoke-static {v1}, Lcom/tencent/wstt/gt/service/GTLogo;->access$15(Lcom/tencent/wstt/gt/service/GTLogo;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
