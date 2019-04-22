.class public Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTCaptureActivity.java"

# interfaces
.implements Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$ProgressRunnable;
    }
.end annotation


# static fields
.field private static count:I = 0x0

.field private static curFilePath:Ljava/lang/String; = null

.field private static curFileSize:Ljava/lang/String; = null

.field private static cur_param_switch_status:Z = false

.field private static final default_param:Ljava/lang/String; = "-p -s 0 -vv -w"

.field private static filename:Ljava/lang/String;

.field private static foldername:Ljava/lang/String;

.field private static initOnCreate:Z

.field private static param:Ljava/lang/String;

.field private static switch_param:Z

.field public static switch_tcpdump:Z


# instance fields
.field private btn_param_clear:Landroid/widget/Button;

.field private cb_param_switch:Lcom/tencent/wstt/gt/views/GTCheckBox;

.field private et_filename:Landroid/widget/EditText;

.field private et_param:Landroid/widget/EditText;

.field private fl_param:Landroid/widget/FrameLayout;

.field private proDialog:Landroid/app/ProgressDialog;

.field private tcpdumpSwitchHandler:Landroid/os/Handler;

.field private tv_param_switch:Landroid/widget/TextView;

.field private tv_param_title:Landroid/widget/TextView;

.field private tv_switch:Landroid/widget/TextView;

.field private tv_tcpdump_back:Landroid/widget/TextView;

.field private tv_tcpdump_curFile:Landroid/widget/TextView;

.field private tv_tcpdump_progress:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    sput v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->count:I

    .line 71
    const-string v0, "Capture"

    sput-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->filename:Ljava/lang/String;

    .line 75
    const-string v0, "-p -s 0 -vv -w"

    sput-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    .line 77
    sput-boolean v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->initOnCreate:Z

    .line 78
    sput-boolean v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->switch_param:Z

    .line 79
    sput-boolean v2, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->switch_tcpdump:Z

    .line 80
    sput-boolean v2, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->cur_param_switch_status:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Z
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->checkTcpDump()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Z)V
    .locals 0

    .prologue
    .line 80
    sput-boolean p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->cur_param_switch_status:Z

    return-void
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_switch:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->dismissProDialog()V

    return-void
.end method

.method static synthetic access$13(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    sput-object p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->curFileSize:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_tcpdump_progress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->curFileSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    sput-object p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->curFilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_tcpdump_curFile:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->curFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->showProDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->endTcpDump()V

    return-void
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->switch_param:Z

    return v0
.end method

.method static synthetic access$4(Z)V
    .locals 0

    .prologue
    .line 78
    sput-boolean p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->switch_param:Z

    return-void
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_param_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->fl_param:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_param:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    sput-object p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    return-void
.end method

.method private checkTcpDump()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 234
    .local v1, "message":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 237
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_filename:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    .line 238
    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    :cond_0
    const-string v3, "foldername cannot be null!"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    :goto_0
    return v2

    .line 243
    :cond_1
    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 245
    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 246
    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 247
    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 248
    :cond_2
    const-string v3, "foldername can\'t contain:\\/:*?\"<>|"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 254
    :cond_3
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_param:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    .line 255
    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    const-string v4, ">>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 256
    :cond_4
    const-string v3, "param can\'t contain: | > >>"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 260
    :cond_5
    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 261
    const-string v3, "-p -s 0 -vv -w"

    sput-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    .line 264
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_TCPDUMP_FOLDER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "dir":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->getCaptureState()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 266
    const-string v3, "capture has start!"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 271
    :cond_7
    invoke-static {v0}, Lcom/tencent/wstt/gt/utils/FileUtil;->createDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 272
    const-string v3, "folder create failed!"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 278
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Capture"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->filename:Ljava/lang/String;

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->startTcpDump(Ljava/lang/String;)V

    .line 281
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private dismissProDialog()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->proDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->proDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->proDialog:Landroid/app/ProgressDialog;

    .line 379
    :cond_0
    return-void
.end method

.method private endTcpDump()V
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->endTcpDump()V

    .line 307
    const/4 v0, 0x1

    sput v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->count:I

    .line 308
    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 220
    const v0, 0x7f08012e

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_filename:Landroid/widget/EditText;

    .line 221
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_filename:Landroid/widget/EditText;

    sget-object v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const v0, 0x7f080132

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_param_title:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->fl_param:Landroid/widget/FrameLayout;

    .line 225
    sget-boolean v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->initOnCreate:Z

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->initOnCreate:Z

    .line 228
    :cond_0
    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_tcpdump_curFile:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f080138

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_tcpdump_progress:Landroid/widget/TextView;

    .line 230
    return-void
.end method

.method private showProDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 383
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->proDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 386
    const-string v0, "get root.."

    const-string v1, "geting root..wait..."

    .line 385
    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->proDialog:Landroid/app/ProgressDialog;

    .line 388
    :cond_0
    return-void
.end method

.method private startTcpDump(Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-object v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    .line 289
    .local v1, "realParam":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/NetUtils;->isWifiActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    :try_start_0
    const-string v2, "wlan0"

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 293
    .local v0, "network":Ljava/net/NetworkInterface;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    const-string v3, "wlan0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-i wlan0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 301
    .end local v0    # "network":Ljava/net/NetworkInterface;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    move-result-object v2

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->count:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pcap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {v2, v3, v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->doCapture(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void

    .line 296
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onCaptureFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorstr"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 421
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 422
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 423
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 424
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->setContentView(I)V

    .line 93
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->initLayout()V

    .line 95
    const v0, 0x7f08012c

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_tcpdump_back:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_tcpdump_back:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$1;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$1;-><init>(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_tcpdump_curFile:Landroid/widget/TextView;

    .line 104
    sget-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->curFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 103
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_tcpdump_progress:Landroid/widget/TextView;

    .line 106
    sget-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->curFileSize:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 105
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v0, 0x7f080130

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_param_switch:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_param_switch:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$2;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$2;-><init>(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f080135

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->btn_param_clear:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->btn_param_clear:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$3;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$3;-><init>(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_param:Landroid/widget/EditText;

    .line 135
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_param:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$4;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$4;-><init>(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 144
    const v0, 0x7f080136

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_switch:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_switch:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$5;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$5;-><init>(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f080131

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/views/GTCheckBox;

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->cb_param_switch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    .line 155
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->cb_param_switch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    .line 156
    new-instance v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$6;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$6;-><init>(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    new-instance v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity$7;-><init>(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    .line 216
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->addListener(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;)V

    .line 217
    return-void

    .line 104
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->curFilePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->curFileSize:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "KB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public onDataChange(J)V
    .locals 3
    .param p1, "data"    # J

    .prologue
    .line 428
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 429
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 430
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 432
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onDestroy()V

    .line 85
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureEngine;->removeListener(Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureListener;)V

    .line 86
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onPause()V

    .line 313
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_param:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    .line 314
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 318
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onResume()V

    .line 321
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->cb_param_switch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    sget-boolean v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->cur_param_switch_status:Z

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setChecked(Z)V

    .line 323
    sget-object v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_filename:Landroid/widget/EditText;

    sget-object v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->foldername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->cb_param_switch:Lcom/tencent/wstt/gt/views/GTCheckBox;

    sget-boolean v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->cur_param_switch_status:Z

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/views/GTCheckBox;->setChecked(Z)V

    .line 331
    sget-boolean v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->cur_param_switch_status:Z

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_param_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->fl_param:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 340
    :goto_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_param:Landroid/widget/EditText;

    sget-object v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->param:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 342
    sget-boolean v0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->switch_tcpdump:Z

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_switch:Landroid/widget/TextView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 344
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_switch:Landroid/widget/TextView;

    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :goto_2
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->et_filename:Landroid/widget/EditText;

    sget-object v1, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_param_title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->fl_param:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_switch:Landroid/widget/TextView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 347
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tv_switch:Landroid/widget/TextView;

    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onStartCaptureBegin()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 398
    return-void
.end method

.method public onStartCaptureEnd(Ljava/lang/String;)V
    .locals 2
    .param p1, "curFile"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 403
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 404
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 406
    return-void
.end method

.method public onStopCaptureBegin()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public onStopCaptureEnd()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 416
    return-void
.end method

.method public preStartCapture()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/tcpdump/GTCaptureActivity;->tcpdumpSwitchHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 393
    return-void
.end method
