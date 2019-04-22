.class public Lcom/tencent/wstt/gt/utils/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field public static final DEFAULT:I = -0x1

.field public static final DEFAULT_VB:I = 0x2

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_ONGOING_EVENT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;I)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "notifyId"    # I

    .prologue
    .line 135
    check-cast p0, Landroid/app/Activity;

    .line 136
    .end local p0    # "c":Landroid/content/Context;
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    check-cast v0, Landroid/app/NotificationManager;

    .line 137
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 138
    return-void
.end method

.method public static genNotification(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;ZZI)Landroid/app/Notification;
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "notifyId"    # I
    .param p2, "iconResId"    # I
    .param p3, "notifyShowText"    # Ljava/lang/String;
    .param p4, "soundResId"    # I
    .param p5, "titleText"    # Ljava/lang/String;
    .param p6, "contentText"    # Ljava/lang/String;
    .param p8, "ongoing"    # Z
    .param p9, "autoCancel"    # Z
    .param p10, "notify_way"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;ZZI)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 90
    .local p7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 91
    .local v3, "intent":Landroid/content/Intent;
    if-eqz p7, :cond_0

    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p7

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 94
    invoke-static {p0, v6, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 99
    .local v5, "pi":Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v6, p5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 101
    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 102
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 103
    invoke-virtual {v6, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 105
    move/from16 v0, p8

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 106
    move/from16 v0, p9

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 107
    move/from16 v0, p10

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 108
    .local v2, "builder":Landroid/app/Notification$Builder;
    if-nez p4, :cond_2

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "greattit.mp3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 122
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 124
    .local v4, "notification":Landroid/app/Notification;
    return-object v4

    .line 113
    .end local v4    # "notification":Landroid/app/Notification;
    :cond_2
    const/4 v6, 0x1

    if-eq p4, v6, :cond_1

    .line 119
    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method public static notify(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "notifyId"    # I
    .param p2, "n"    # Landroid/app/Notification;

    .prologue
    .line 55
    .line 56
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    check-cast v0, Landroid/app/NotificationManager;

    .line 59
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 60
    return-void
.end method
