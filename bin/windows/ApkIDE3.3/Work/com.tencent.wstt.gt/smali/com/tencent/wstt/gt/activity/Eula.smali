.class public Lcom/tencent/wstt/gt/activity/Eula;
.super Ljava/lang/Object;
.source "Eula.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final ASSET_EULA:Ljava/lang/String; = "EULA"


# instance fields
.field private mWelcomeAcrivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/wstt/gt/activity/SplashActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/activity/SplashActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/tencent/wstt/gt/activity/SplashActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/Eula;->mWelcomeAcrivityRef:Ljava/lang/ref/WeakReference;

    .line 62
    return-void
.end method

.method private accept()V
    .locals 5

    .prologue
    .line 128
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/Eula;->mWelcomeAcrivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/activity/SplashActivity;

    .line 129
    .local v0, "activity":Lcom/tencent/wstt/gt/activity/SplashActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/SplashActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/tencent/wstt/gt/activity/SplashActivity;->eluaStr:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 134
    const-string v3, "eula.accepted"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/wstt/gt/activity/GTMainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/SplashActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/Eula;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/Eula;->accept()V

    return-void
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/Eula;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/Eula;->refuse()V

    return-void
.end method

.method public static isAccepted()Z
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "eula.accepted"

    .line 121
    const/4 v2, 0x0

    .line 120
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readEula()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 153
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 154
    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "EULA"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 153
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 163
    if-eqz v3, :cond_0

    .line 165
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 158
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 160
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 163
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v2, :cond_2

    .line 165
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 161
    :cond_2
    :goto_3
    const-string v0, ""

    goto :goto_1

    .line 162
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 163
    :goto_4
    if-eqz v2, :cond_3

    .line 165
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 169
    :cond_3
    :goto_5
    throw v5

    .line 166
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_5

    .line 162
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 160
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public static readEula(Ljava/net/URL;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 176
    const/4 v2, 0x0

    .line 178
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 187
    if-eqz v3, :cond_0

    .line 189
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    move-object v2, v3

    .line 185
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_2
    return-object v0

    .line 182
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 184
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 187
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v2, :cond_2

    .line 189
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 185
    :cond_2
    :goto_4
    const-string v0, ""

    goto :goto_2

    .line 186
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 187
    :goto_5
    if-eqz v2, :cond_3

    .line 189
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 193
    :cond_3
    :goto_6
    throw v5

    .line 190
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    goto :goto_4

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_6

    .line 186
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_5

    .line 184
    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method private refuse()V
    .locals 0

    .prologue
    .line 144
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->exitGT()V

    .line 145
    return-void
.end method


# virtual methods
.method public buildEulaDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 5
    .param p1, "eulaStr"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/Eula;->mWelcomeAcrivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/activity/SplashActivity;

    .line 69
    .local v0, "activity":Lcom/tencent/wstt/gt/activity/SplashActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/SplashActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    :cond_0
    const/4 v1, 0x0

    .line 107
    :goto_0
    return-object v1

    .line 73
    :cond_1
    invoke-static {p1}, Lcom/tencent/wstt/gt/utils/StringUtil;->isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-static {}, Lcom/tencent/wstt/gt/activity/Eula;->readEula()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "eula":Ljava/lang/String;
    :goto_1
    new-instance v1, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;

    .line 77
    const v3, 0x7f030031

    .line 76
    invoke-direct {v1, v0, v3}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;-><init>(Landroid/content/Context;I)V

    .line 78
    .local v1, "dialog":Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;
    const v3, 0x7f090005

    invoke-virtual {v1, v3}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->setTitle(I)V

    .line 79
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->setCancelable(Z)V

    .line 80
    const v3, 0x7f090006

    invoke-virtual {v1, v3}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->setPositiveButton(I)V

    .line 81
    const v3, 0x7f090007

    invoke-virtual {v1, v3}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->setNegativeButton(I)V

    .line 82
    invoke-virtual {v1, p0}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 83
    const v3, 0x7f08011d

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->setViewVisibility(II)V

    .line 84
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->hideNegativeButton()V

    .line 85
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->showAgreementCheckBox()V

    .line 86
    const v3, 0x7f08011e

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->setViewContent(ILandroid/text/Spanned;)V

    .line 88
    new-instance v3, Lcom/tencent/wstt/gt/activity/Eula$1;

    invoke-direct {v3, p0, v1}, Lcom/tencent/wstt/gt/activity/Eula$1;-><init>(Lcom/tencent/wstt/gt/activity/Eula;Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;)V

    invoke-virtual {v1, v3}, Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;->setListener(Lcom/tencent/wstt/gt/views/CustomerConfirmDialog$IDialogListener;)V

    goto :goto_0

    .end local v1    # "dialog":Lcom/tencent/wstt/gt/views/CustomerConfirmDialog;
    .end local v2    # "eula":Ljava/lang/String;
    :cond_2
    move-object v2, p1

    .line 74
    goto :goto_1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/Eula;->refuse()V

    .line 112
    return-void
.end method
