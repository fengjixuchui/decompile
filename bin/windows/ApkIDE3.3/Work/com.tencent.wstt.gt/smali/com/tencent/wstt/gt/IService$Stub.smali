.class public abstract Lcom/tencent/wstt/gt/IService$Stub;
.super Landroid/os/Binder;
.source "IService.java"

# interfaces
.implements Lcom/tencent/wstt/gt/IService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/IService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/IService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.wstt.gt.IService"

.field static final TRANSACTION_checkIsCanConnect:I = 0x1

.field static final TRANSACTION_disconnectGT:I = 0x3

.field static final TRANSACTION_getGlobalInPara:I = 0xe

.field static final TRANSACTION_getGlobalOutPara:I = 0x7

.field static final TRANSACTION_getInPara:I = 0xd

.field static final TRANSACTION_getOutPara:I = 0x6

.field static final TRANSACTION_initConnectGT:I = 0x2

.field static final TRANSACTION_log:I = 0x11

.field static final TRANSACTION_registerGlobalInPara:I = 0xc

.field static final TRANSACTION_registerGlobalOutPara:I = 0x5

.field static final TRANSACTION_registerInPara:I = 0xb

.field static final TRANSACTION_registerOutPara:I = 0x4

.field static final TRANSACTION_setBooleanEntry:I = 0x14

.field static final TRANSACTION_setCommond:I = 0x15

.field static final TRANSACTION_setCommondSync:I = 0x16

.field static final TRANSACTION_setGlobalInPara:I = 0x10

.field static final TRANSACTION_setGlobalOutPara:I = 0x9

.field static final TRANSACTION_setInPara:I = 0xf

.field static final TRANSACTION_setOutPara:I = 0x8

.field static final TRANSACTION_setPerfDigitalEntry:I = 0x12

.field static final TRANSACTION_setPerfStringEntry:I = 0x13

.field static final TRANSACTION_setTimedOutPara:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.tencent.wstt.gt.IService"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/wstt/gt/IService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/wstt/gt/IService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/wstt/gt/IService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/wstt/gt/IService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/wstt/gt/IService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/IService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 52
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/tencent/wstt/gt/IService$Stub;->checkIsCanConnect(Ljava/lang/String;I)I

    move-result v0

    .line 53
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    .end local v0    # "_result":I
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_2
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 64
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/tencent/wstt/gt/IService$Stub;->initConnectGT(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_3
    const-string v10, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->disconnectGT(Ljava/lang/String;)Z

    move-result v0

    .line 74
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v0, :cond_0

    move v1, v7

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v0    # "_result":Z
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    sget-object v1, Lcom/tencent/wstt/gt/OutPara;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    .line 88
    .local v2, "_arg0":Lcom/tencent/wstt/gt/OutPara;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->registerOutPara(Lcom/tencent/wstt/gt/OutPara;)V

    goto :goto_0

    .line 86
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/OutPara;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/tencent/wstt/gt/OutPara;
    goto :goto_1

    .line 93
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/OutPara;
    :sswitch_5
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    sget-object v1, Lcom/tencent/wstt/gt/OutPara;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/OutPara;

    .line 101
    .restart local v2    # "_arg0":Lcom/tencent/wstt/gt/OutPara;
    :goto_2
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->registerGlobalOutPara(Lcom/tencent/wstt/gt/OutPara;)V

    goto :goto_0

    .line 99
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/OutPara;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/tencent/wstt/gt/OutPara;
    goto :goto_2

    .line 106
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/OutPara;
    :sswitch_6
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->getOutPara(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    .end local v0    # "_result":Ljava/lang/String;
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->getGlobalOutPara(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_result":Ljava/lang/String;
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/tencent/wstt/gt/IService$Stub;->setOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 137
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 142
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/tencent/wstt/gt/IService$Stub;->setGlobalOutPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 148
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_a
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 154
    .local v8, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v8, v9, v5}, Lcom/tencent/wstt/gt/IService$Stub;->setTimedOutPara(Ljava/lang/String;JLjava/lang/String;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 161
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg1":J
    :sswitch_b
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    sget-object v1, Lcom/tencent/wstt/gt/InPara;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/InPara;

    .line 169
    .local v2, "_arg0":Lcom/tencent/wstt/gt/InPara;
    :goto_3
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->registerInPara(Lcom/tencent/wstt/gt/InPara;)V

    goto/16 :goto_0

    .line 167
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/InPara;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/tencent/wstt/gt/InPara;
    goto :goto_3

    .line 174
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/InPara;
    :sswitch_c
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    sget-object v1, Lcom/tencent/wstt/gt/InPara;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/InPara;

    .line 182
    .restart local v2    # "_arg0":Lcom/tencent/wstt/gt/InPara;
    :goto_4
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->registerGlobalInPara(Lcom/tencent/wstt/gt/InPara;)V

    goto/16 :goto_0

    .line 180
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/InPara;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/tencent/wstt/gt/InPara;
    goto :goto_4

    .line 187
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/InPara;
    :sswitch_d
    const-string v10, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;

    move-result-object v0

    .line 191
    .local v0, "_result":Lcom/tencent/wstt/gt/InPara;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v0, :cond_5

    .line 193
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v0, p3, v7}, Lcom/tencent/wstt/gt/InPara;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 197
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v0    # "_result":Lcom/tencent/wstt/gt/InPara;
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v10, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->getGlobalInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;

    move-result-object v0

    .line 207
    .restart local v0    # "_result":Lcom/tencent/wstt/gt/InPara;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v0, :cond_6

    .line 209
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {v0, p3, v7}, Lcom/tencent/wstt/gt/InPara;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 213
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    .end local v0    # "_result":Lcom/tencent/wstt/gt/InPara;
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 224
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/tencent/wstt/gt/IService$Stub;->setInPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 230
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 235
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/tencent/wstt/gt/IService$Stub;->setGlobalInPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 241
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_11
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 245
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 247
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 249
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg3":Ljava/lang/String;
    move-object v1, p0

    .line 250
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/wstt/gt/IService$Stub;->log(JILjava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 256
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    :sswitch_12
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 259
    sget-object v1, Lcom/tencent/wstt/gt/PerfDigitalEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/PerfDigitalEntry;

    .line 264
    .local v2, "_arg0":Lcom/tencent/wstt/gt/PerfDigitalEntry;
    :goto_5
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->setPerfDigitalEntry(Lcom/tencent/wstt/gt/PerfDigitalEntry;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 262
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/PerfDigitalEntry;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/tencent/wstt/gt/PerfDigitalEntry;
    goto :goto_5

    .line 270
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/PerfDigitalEntry;
    :sswitch_13
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 273
    sget-object v1, Lcom/tencent/wstt/gt/PerfStringEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/PerfStringEntry;

    .line 278
    .local v2, "_arg0":Lcom/tencent/wstt/gt/PerfStringEntry;
    :goto_6
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->setPerfStringEntry(Lcom/tencent/wstt/gt/PerfStringEntry;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 276
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/PerfStringEntry;
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/tencent/wstt/gt/PerfStringEntry;
    goto :goto_6

    .line 284
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/PerfStringEntry;
    :sswitch_14
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 287
    sget-object v1, Lcom/tencent/wstt/gt/BooleanEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/BooleanEntry;

    .line 292
    .local v2, "_arg0":Lcom/tencent/wstt/gt/BooleanEntry;
    :goto_7
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->setBooleanEntry(Lcom/tencent/wstt/gt/BooleanEntry;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 290
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/BooleanEntry;
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/tencent/wstt/gt/BooleanEntry;
    goto :goto_7

    .line 298
    .end local v2    # "_arg0":Lcom/tencent/wstt/gt/BooleanEntry;
    :sswitch_15
    const-string v1, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 301
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 306
    .local v2, "_arg0":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->setCommond(Landroid/os/Bundle;)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 304
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Bundle;
    goto :goto_8

    .line 312
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_16
    const-string v10, "com.tencent.wstt.gt.IService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_b

    .line 315
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 320
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/IService$Stub;->setCommondSync(Landroid/os/Bundle;)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-eqz v2, :cond_c

    .line 323
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    invoke-virtual {v2, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 318
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .line 327
    :cond_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
