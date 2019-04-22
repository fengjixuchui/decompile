.class Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;
.super Ljava/lang/Object;
.source "WtloginHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

.field final synthetic val$cancel:I

.field final synthetic val$ret:I


# direct methods
.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V
    .locals 0

    .prologue
    .line 4704
    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;->this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iput p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;->val$cancel:I

    iput p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;->val$ret:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 4708
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;->this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    # invokes: Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->quitSelfLooper()V
    invoke-static {v0}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->access$500(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;)V

    .line 4710
    iget v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;->val$cancel:I

    if-eqz v0, :cond_0

    .line 4716
    :goto_0
    return-void

    .line 4712
    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;->this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iget-wide v0, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 4713
    iget-object v12, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 4714
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;->this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v1, v1, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    # getter for: Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;
    invoke-static {v1}, Loicq/wlogin_sdk/request/WtloginHelper;->access$100(Loicq/wlogin_sdk/request/WtloginHelper;)Loicq/wlogin_sdk/request/WtloginListener;

    move-result-object v1

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;->this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppid1:J

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;->this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mSubAppid1:J

    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;->this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v6, v6, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iget-object v7, v0, Loicq/wlogin_sdk/request/async_context;->_smslogin_msg:Ljava/lang/String;

    iget v8, v0, Loicq/wlogin_sdk/request/async_context;->_smslogin_msgcnt:I

    iget v9, v0, Loicq/wlogin_sdk/request/async_context;->_smslogin_timelimit:I

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;->this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v10, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iget v11, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;->val$ret:I

    invoke-virtual/range {v1 .. v12}, Loicq/wlogin_sdk/request/WtloginListener;->OnCheckSMSVerifyLoginAccount(JJLjava/lang/String;Ljava/lang/String;IILoicq/wlogin_sdk/request/WUserSigInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto :goto_0
.end method
