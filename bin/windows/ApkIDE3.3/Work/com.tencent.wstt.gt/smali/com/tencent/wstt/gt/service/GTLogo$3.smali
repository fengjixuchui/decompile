.class Lcom/tencent/wstt/gt/service/GTLogo$3;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTLogo$3;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    .line 384
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 386
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 396
    :goto_0
    return-void

    .line 388
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo$3;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # invokes: Lcom/tencent/wstt/gt/service/GTLogo;->doAnimationToLeft()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTLogo;->access$12(Lcom/tencent/wstt/gt/service/GTLogo;)V

    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTLogo$3;->this$0:Lcom/tencent/wstt/gt/service/GTLogo;

    # invokes: Lcom/tencent/wstt/gt/service/GTLogo;->doAnimationToRight()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/service/GTLogo;->access$13(Lcom/tencent/wstt/gt/service/GTLogo;)V

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
