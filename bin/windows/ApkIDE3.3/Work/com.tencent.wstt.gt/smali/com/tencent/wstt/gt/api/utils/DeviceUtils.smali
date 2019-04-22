.class public Lcom/tencent/wstt/gt/api/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetWork()Z
    .locals 4

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "flag":Z
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 249
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 250
    .local v0, "cManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    .line 252
    :cond_0
    return v1
.end method

.method public static getABI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 351
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 352
    .local v0, "CPU_ABI":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 356
    .local v1, "CPU_ABI2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDevDensity()F
    .locals 3

    .prologue
    .line 116
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 117
    .local v1, "metric":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 118
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 119
    .local v0, "density":F
    return v0
.end method

.method public static getDevDensity(Landroid/app/Activity;)F
    .locals 3
    .param p0, "mactivity"    # Landroid/app/Activity;

    .prologue
    .line 109
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    .local v1, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 112
    .local v0, "density":F
    return v0
.end method

.method public static getDevDensityDpi(Landroid/app/Activity;)I
    .locals 3
    .param p0, "mactivity"    # Landroid/app/Activity;

    .prologue
    .line 95
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    .local v1, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 98
    .local v0, "densityDpi":I
    return v0
.end method

.method public static getDevHeight()I
    .locals 4

    .prologue
    .line 161
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 162
    const-string v3, "window"

    .line 161
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 163
    .local v1, "wm":Landroid/view/WindowManager;
    const/16 v0, 0x320

    .line 164
    .local v0, "height":I
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 167
    :cond_0
    return v0
.end method

.method public static getDevModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDevScaledDensity(Landroid/app/Activity;)F
    .locals 3
    .param p0, "mactivity"    # Landroid/app/Activity;

    .prologue
    .line 130
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 131
    .local v0, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 132
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 133
    .local v1, "scaledDensity":F
    return v1
.end method

.method public static getDevWidth()I
    .locals 4

    .prologue
    .line 144
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 145
    const-string v3, "window"

    .line 144
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 146
    .local v1, "wm":Landroid/view/WindowManager;
    const/16 v0, 0x1e0

    .line 147
    .local v0, "width":I
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 148
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 150
    :cond_0
    return v0
.end method

.method public static getDisplayHeight(Landroid/app/Activity;)I
    .locals 1
    .param p0, "mactivity"    # Landroid/app/Activity;

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getDisplayWidth(Landroid/app/Activity;)I
    .locals 1
    .param p0, "mactivity"    # Landroid/app/Activity;

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public static getHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 83
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 84
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLocalIP()V
    .locals 7

    .prologue
    .line 221
    const-string v4, ""

    .line 224
    .local v4, "ipaddress":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    return-void

    .line 225
    .restart local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 227
    .local v3, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 229
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 231
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 230
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 235
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getMobileDataStatus(Ljava/lang/String;)Z
    .locals 10
    .param p0, "getMobileDataEnabled"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 292
    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 291
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 293
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 294
    .local v4, "cmClass":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 295
    .local v1, "argClasses":[Ljava/lang/Class;
    const/4 v2, 0x0

    .line 296
    .local v2, "argObjects":[Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 298
    .local v6, "isOpen":Ljava/lang/Boolean;
    :try_start_0
    invoke-virtual {v4, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 299
    .local v7, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v7, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 312
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    return v8

    .line 300
    :catch_0
    move-exception v5

    .line 301
    .local v5, "e":Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 302
    .end local v5    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v5

    .line 303
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v5

    .line 305
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 306
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v5

    .line 307
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v5

    .line 309
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, ""

    .line 70
    .local v0, "version":Ljava/lang/String;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 71
    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 202
    .local v3, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 203
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .line 204
    .local v5, "x":I
    const/4 v4, 0x0

    .line 206
    .local v4, "sbar":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 208
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 214
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return v4

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v12, 0x20

    .line 263
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 265
    .local v1, "context":Landroid/content/Context;
    const-string v7, "phone"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 264
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 266
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const-string v4, ""

    .line 267
    .local v4, "tmDevice":Ljava/lang/String;
    const-string v5, ""

    .line 268
    .local v5, "tmSerial":Ljava/lang/String;
    const-string v0, ""

    .line 269
    .local v0, "androidId":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 273
    const-string v8, "android_id"

    .line 271
    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v6, "0"

    .line 276
    .local v6, "uniqueId":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 277
    if-nez v5, :cond_1

    .line 278
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v8, v7

    .line 279
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v10, v7

    shl-long/2addr v10, v12

    .line 278
    invoke-direct {v2, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 285
    .local v2, "deviceUuid":Ljava/util/UUID;
    :goto_0
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 287
    .end local v2    # "deviceUuid":Ljava/util/UUID;
    :cond_0
    return-object v6

    .line 281
    :cond_1
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v8, v7

    .line 282
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v10, v7

    shl-long/2addr v10, v12

    .line 283
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v12, v7

    .line 282
    or-long/2addr v10, v12

    .line 281
    invoke-direct {v2, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .restart local v2    # "deviceUuid":Ljava/util/UUID;
    goto :goto_0
.end method

.method public static setMobileDataStatus(Z)V
    .locals 11
    .param p0, "enable"    # Z

    .prologue
    .line 316
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 317
    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 318
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 319
    .local v1, "conMgrClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 320
    .local v5, "iConMgrField":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 321
    .local v3, "iConMgr":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 322
    .local v4, "iConMgrClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 324
    .local v6, "setMobileDataEnableMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 325
    const-string v7, "mService"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 326
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 327
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 328
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 330
    const-string v7, "setMobileDataEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    .line 329
    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 331
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 332
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 348
    .end local v3    # "iConMgr":Ljava/lang/Object;
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 336
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 337
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 339
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 341
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 342
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v2

    .line 344
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 345
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_6
    move-exception v2

    .line 346
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
