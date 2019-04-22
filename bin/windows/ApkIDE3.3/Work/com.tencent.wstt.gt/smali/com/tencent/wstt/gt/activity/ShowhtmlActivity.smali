.class public Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "ShowhtmlActivity.java"


# instance fields
.field webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v9, 0x7f03002a

    invoke-virtual {p0, v9}, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 53
    .local v6, "intent":Landroid/content/Intent;
    const-string v9, "uri"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    const-string v8, "http://gt.qq.com/"

    .line 55
    .local v8, "uri":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 57
    move-object v8, v0

    .line 60
    :cond_0
    const-string v9, "cookies"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "cookies":Ljava/lang/String;
    const v9, 0x7f080116

    invoke-virtual {p0, v9}, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebView;

    iput-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    .line 63
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_1

    .line 67
    :try_start_0
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "removeJavascriptInterface"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 68
    .local v7, "m":Ljava/lang/reflect/Method;
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "searchBoxJavaBridge_"

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "accessibility"

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "accessibilityTraversal"

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    sget-object v10, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 83
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 84
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 85
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 86
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 87
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 88
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 89
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 91
    if-eqz v4, :cond_2

    .line 93
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 94
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 97
    .local v3, "cookieManager":Landroid/webkit/CookieManager;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 98
    invoke-virtual {v3}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 100
    const-string v9, ";"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "cookieArray":[Ljava/lang/String;
    array-length v10, v2

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v10, :cond_3

    .line 108
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 112
    .end local v2    # "cookieArray":[Ljava/lang/String;
    .end local v3    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/tencent/wstt/gt/activity/ShowhtmlActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v9, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :goto_2
    return-void

    .line 101
    .restart local v2    # "cookieArray":[Ljava/lang/String;
    .restart local v3    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_3
    aget-object v1, v2, v9

    .line 103
    .local v1, "cookie":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 105
    invoke-virtual {v3, v8, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 113
    .end local v1    # "cookie":Ljava/lang/String;
    .end local v2    # "cookieArray":[Ljava/lang/String;
    .end local v3    # "cookieManager":Landroid/webkit/CookieManager;
    :catch_0
    move-exception v5

    .line 114
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 77
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 75
    :catch_2
    move-exception v9

    goto/16 :goto_0

    .line 73
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .line 71
    :catch_4
    move-exception v9

    goto/16 :goto_0
.end method
