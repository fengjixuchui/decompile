.class Lcom/tencent/wstt/gt/activity/GTMainActivity$1;
.super Loicq/wlogin_sdk/request/WtloginListener;
.source "GTMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTMainActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTMainActivity;

    .line 561
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public OnGetStWithPasswd(Ljava/lang/String;JIJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V
    .locals 3
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "dwSrcAppid"    # J
    .param p4, "dwMainSigMap"    # I
    .param p5, "dwSubDstAppid"    # J
    .param p7, "userPasswd"    # Ljava/lang/String;
    .param p8, "userSigInfo"    # Loicq/wlogin_sdk/request/WUserSigInfo;
    .param p9, "ret"    # I
    .param p10, "errMsg"    # Loicq/wlogin_sdk/tools/ErrMsg;

    .prologue
    .line 566
    sparse-switch p9, :sswitch_data_0

    .line 579
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->setUin(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTMainActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTMainActivity;->dismissProDialog()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTMainActivity;)V

    .line 582
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p10}, Loicq/wlogin_sdk/tools/ErrMsg;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p10}, Loicq/wlogin_sdk/tools/ErrMsg;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 585
    :goto_0
    :sswitch_0
    return-void

    .line 572
    :sswitch_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTMainActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTMainActivity;

    # invokes: Lcom/tencent/wstt/gt/activity/GTMainActivity;->dismissProDialog()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTMainActivity;->access$2(Lcom/tencent/wstt/gt/activity/GTMainActivity;)V

    .line 573
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09011d

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 566
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x29 -> :sswitch_0
        0x74 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method
