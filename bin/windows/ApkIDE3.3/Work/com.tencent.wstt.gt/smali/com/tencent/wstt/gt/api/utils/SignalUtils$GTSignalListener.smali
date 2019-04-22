.class Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;
.super Landroid/telephony/PhoneStateListener;
.source "SignalUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/api/utils/SignalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GTSignalListener"
.end annotation


# instance fields
.field private dbm:I

.field private isWifiRssiAvailable:Z

.field private phoneType:Ljava/lang/String;

.field private teleManager:Landroid/telephony/TelephonyManager;

.field private wifi:I

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 119
    iput v0, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->dbm:I

    .line 120
    iput v0, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->wifi:I

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->phoneType:Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->isWifiRssiAvailable:Z

    .line 127
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 126
    iput-object v0, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->teleManager:Landroid/telephony/TelephonyManager;

    .line 128
    iget-object v0, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->teleManager:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x100

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 130
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 129
    iput-object v0, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 131
    return-void
.end method


# virtual methods
.method public getCellId(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    .line 142
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 141
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 144
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 143
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 145
    .local v1, "mGsmCellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 146
    .local v0, "cid":I
    return v0
.end method

.method public getDBM()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->dbm:I

    return v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 181
    iget-object v2, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->teleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 182
    .local v1, "type":I
    const-string v0, ""

    .line 184
    .local v0, "netType":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 210
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5176\u5b83"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->teleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 186
    :pswitch_1
    const-string v0, "UMTS(3G)"

    .line 187
    goto :goto_0

    .line 189
    :pswitch_2
    const-string v0, "HSDPA(3G)"

    .line 190
    goto :goto_0

    .line 192
    :pswitch_3
    const-string v0, "GPRS(2G)"

    .line 193
    goto :goto_0

    .line 195
    :pswitch_4
    const-string v0, "EDGE(2G)"

    .line 196
    goto :goto_0

    .line 198
    :pswitch_5
    const-string v0, "CDMA(2G)"

    .line 199
    goto :goto_0

    .line 201
    :pswitch_6
    const-string v0, "EVDO0(3G)"

    .line 202
    goto :goto_0

    .line 204
    :pswitch_7
    const-string v0, "EVDOA(3G)"

    .line 205
    goto :goto_0

    .line 207
    :pswitch_8
    const-string v0, "\u672a\u77e5"

    .line 208
    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->teleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "operatorInfo":Ljava/lang/String;
    const-string v0, ""

    .line 156
    .local v0, "operator":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 157
    const-string v2, "46000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    const-string v2, "46007"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    :cond_0
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    .line 166
    :cond_1
    :goto_0
    return-object v0

    .line 160
    :cond_2
    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    .line 162
    goto :goto_0

    :cond_3
    const-string v2, "46003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_0
.end method

.method public getPhoneType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->phoneType:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiStrength()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->wifi:I

    return v0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 227
    iget-object v1, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->teleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 239
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    iput v1, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->dbm:I

    .line 240
    const-string v1, "EVDO"

    iput-object v1, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->phoneType:Ljava/lang/String;

    .line 245
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->isWifiRssiAvailable:Z

    if-eqz v1, :cond_0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->wifi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_1
    return-void

    .line 230
    :pswitch_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    iput v1, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->dbm:I

    .line 231
    const-string v1, "CDMA"

    iput-object v1, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->phoneType:Ljava/lang/String;

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    iput v1, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->dbm:I

    .line 236
    const-string v1, "GSM"

    iput-object v1, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->phoneType:Ljava/lang/String;

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/wstt/gt/api/utils/SignalUtils$GTSignalListener;->isWifiRssiAvailable:Z

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "get Wi-Fi rssi unavailable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
