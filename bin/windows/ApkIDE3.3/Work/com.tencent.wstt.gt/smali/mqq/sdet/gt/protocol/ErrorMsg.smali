.class public Lmqq/sdet/gt/protocol/ErrorMsg;
.super Ljava/lang/Object;
.source "ErrorMsg.java"


# static fields
.field public static final NET_ERROR:Ljava/lang/String;

.field public static final NOT_VALID_LETTER:Ljava/lang/String;

.field public static final NULL_PARAM:Ljava/lang/String;

.field public static final NULL_RESULT:Ljava/lang/String;

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final SERVICE_ERROR:Ljava/lang/String;

.field public static final SQL_ERROR:Ljava/lang/String;

.field public static final UNKNOW_ERROR:Ljava/lang/String;

.field public static final UPLOAD_FILE_EMPTY_PRODUCT_LIST:Ljava/lang/String;

.field public static final UPLOAD_FILE_NO_NEW_FILE:Ljava/lang/String;

.field public static final UPLOAD_FILE_NUM_NOT_SAMEAS_ATTR_NUM:Ljava/lang/String;

.field public static final UPLOAD_FILE_NUM_OVER:Ljava/lang/String;

.field public static final UPLOAD_FILE_SIZE_OVER:Ljava/lang/String;

.field public static final UPLOAD_PRODUCT_MAX_SIZE:Ljava/lang/String;

.field public static final UPLOAD_TIMES_ON_PRODUCT_OVER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->SERVICE_ERROR:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->NULL_PARAM:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->NULL_RESULT:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090106

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_FILE_NUM_OVER:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090107

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_FILE_SIZE_OVER:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_PRODUCT_MAX_SIZE:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090109

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_FILE_NUM_NOT_SAMEAS_ATTR_NUM:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_TIMES_ON_PRODUCT_OVER:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09010a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_FILE_NO_NEW_FILE:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_FILE_EMPTY_PRODUCT_LIST:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->NOT_VALID_LETTER:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09010e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->NET_ERROR:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->SQL_ERROR:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090110

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmqq/sdet/gt/protocol/ErrorMsg;->UNKNOW_ERROR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
