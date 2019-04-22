.class public Lcom/tencent/wstt/gt/internal/DaemonHandler;
.super Landroid/os/Handler;
.source "DaemonHandler.java"


# static fields
.field public static final MEM_SECOND_WARNING_FLAG:I = 0x1

.field public static final MEM_SINGLE_WARNING_FLAG:I = 0x4

.field public static final MEM_THIRD_WARNING_FLAG:I = 0x3

.field public static final MEM_TOP_WARNING_FLAG:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v2, 0x7f02003b

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    :pswitch_0
    return-void

    .line 47
    :pswitch_1
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    const-string v3, "GT"

    .line 49
    const-string v5, "GT:Memory Waring"

    .line 50
    const-string v6, "More than 500000 GW and Prof records."

    .line 51
    const-class v7, Lcom/tencent/wstt/gt/activity/GTMainActivity;

    move v8, v1

    .line 47
    invoke-static/range {v0 .. v10}, Lcom/tencent/wstt/gt/utils/NotificationHelper;->genNotification(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;ZZI)Landroid/app/Notification;

    move-result-object v0

    .line 46
    sput-object v0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->notification:Landroid/app/Notification;

    .line 55
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1f

    .line 56
    sget-object v2, Lcom/tencent/wstt/gt/activity/GTMainActivity;->notification:Landroid/app/Notification;

    .line 55
    invoke-static {v0, v1, v2}, Lcom/tencent/wstt/gt/utils/NotificationHelper;->notify(Landroid/content/Context;ILandroid/app/Notification;)V

    goto :goto_0

    .line 61
    :pswitch_2
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    const-string v3, "GT"

    .line 63
    const-string v5, "GT:Memory Waring"

    .line 64
    const-string v6, "More than 450000 GW and Prof records."

    .line 65
    const-class v7, Lcom/tencent/wstt/gt/activity/GTMainActivity;

    move v8, v1

    .line 61
    invoke-static/range {v0 .. v10}, Lcom/tencent/wstt/gt/utils/NotificationHelper;->genNotification(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;ZZI)Landroid/app/Notification;

    move-result-object v0

    .line 60
    sput-object v0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->notification:Landroid/app/Notification;

    .line 69
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x20

    .line 70
    sget-object v2, Lcom/tencent/wstt/gt/activity/GTMainActivity;->notification:Landroid/app/Notification;

    .line 69
    invoke-static {v0, v1, v2}, Lcom/tencent/wstt/gt/utils/NotificationHelper;->notify(Landroid/content/Context;ILandroid/app/Notification;)V

    goto :goto_0

    .line 75
    :pswitch_3
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    const-string v3, "GT"

    .line 77
    const-string v5, "GT:Memory Waring"

    .line 78
    const-string v6, "More than 400000 GW and Prof records."

    .line 79
    const-class v7, Lcom/tencent/wstt/gt/activity/GTMainActivity;

    move v8, v1

    .line 75
    invoke-static/range {v0 .. v10}, Lcom/tencent/wstt/gt/utils/NotificationHelper;->genNotification(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;ZZI)Landroid/app/Notification;

    move-result-object v0

    .line 74
    sput-object v0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->notification:Landroid/app/Notification;

    .line 83
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x20

    .line 84
    sget-object v2, Lcom/tencent/wstt/gt/activity/GTMainActivity;->notification:Landroid/app/Notification;

    .line 83
    invoke-static {v0, v1, v2}, Lcom/tencent/wstt/gt/utils/NotificationHelper;->notify(Landroid/content/Context;ILandroid/app/Notification;)V

    goto :goto_0

    .line 87
    :pswitch_4
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/tencent/wstt/gt/OutPara;

    .line 89
    .local v11, "op":Lcom/tencent/wstt/gt/OutPara;
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    const-string v3, "GT"

    .line 91
    const-string v5, "GT:Memory Waring"

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OutPara "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has more than "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x249f0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " records."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    const-class v7, Lcom/tencent/wstt/gt/activity/GTMainActivity;

    move v8, v1

    .line 89
    invoke-static/range {v0 .. v10}, Lcom/tencent/wstt/gt/utils/NotificationHelper;->genNotification(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;ZZI)Landroid/app/Notification;

    move-result-object v0

    .line 88
    sput-object v0, Lcom/tencent/wstt/gt/activity/GTMainActivity;->notification:Landroid/app/Notification;

    .line 97
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x21

    .line 98
    sget-object v2, Lcom/tencent/wstt/gt/activity/GTMainActivity;->notification:Landroid/app/Notification;

    .line 97
    invoke-static {v0, v1, v2}, Lcom/tencent/wstt/gt/utils/NotificationHelper;->notify(Landroid/content/Context;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
