.class Lcom/tencent/wstt/gt/service/GTLogo$2;
.super Landroid/os/Handler;
.source "GTLogo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/service/GTLogo;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTLogo$2;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    .line 188
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 190
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo$2;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-static {v0, v2}, Lcom/tencent/wstt/gt/service/GTLogo;->access$6(Lcom/tencent/wstt/gt/service/GTLogo;Z)V

    .line 193
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo$2;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # invokes: Lcom/tencent/wstt/gt/service/GTLogo;->keyUpDownListener()I
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTLogo;->access$7(Lcom/tencent/wstt/gt/service/GTLogo;)I

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo$2;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->keyUpDown:Z
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTLogo;->access$8(Lcom/tencent/wstt/gt/service/GTLogo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo$2;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/service/GTLogo;->access$6(Lcom/tencent/wstt/gt/service/GTLogo;Z)V

    .line 198
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo$2;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # getter for: Lcom/tencent/wstt/gt/service/GTLogo;->timer:I
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTLogo;->access$9(Lcom/tencent/wstt/gt/service/GTLogo;)I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 199
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo$2;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # invokes: Lcom/tencent/wstt/gt/service/GTLogo;->viewIsOnClick()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTLogo;->access$10(Lcom/tencent/wstt/gt/service/GTLogo;)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo$2;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/service/GTLogo;->access$11(Lcom/tencent/wstt/gt/service/GTLogo;I)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
