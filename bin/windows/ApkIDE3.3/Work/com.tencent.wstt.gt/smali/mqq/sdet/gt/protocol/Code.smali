.class public Lmqq/sdet/gt/protocol/Code;
.super Ljava/lang/Object;
.source "Code.java"


# static fields
.field public static final NET_ERROR:I = 0x270d

.field public static final NOT_VALID_LETTER:I = 0x4b1

.field public static final NULL_PARAM:I = 0x65

.field public static final NULL_RESULT:I = 0x66

.field public static final OK:I = 0x0

.field public static final SERVICE_ERROR:I = 0x64

.field public static final SQL_ERROR:I = 0x270e

.field public static final UNKNOW_ERROR:I = 0x270f

.field public static final UPLOAD_FILE_EMPTY_PRODUCT_LIST:I = 0x453

.field public static final UPLOAD_FILE_NO_NEW_FILE:I = 0x452

.field public static final UPLOAD_FILE_NUM_NOT_SAMEAS_ATTR_NUM:I = 0x3ec

.field public static final UPLOAD_FILE_NUM_OVER:I = 0x3e9

.field public static final UPLOAD_FILE_SIZE_OVER:I = 0x3ea

.field public static final UPLOAD_PRODUCT_MAX_SIZE:I = 0x3eb

.field public static final UPLOAD_TIMES_ON_PRODUCT_OVER:I = 0x451

.field private static final map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    .line 54
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x64

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->SERVICE_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x65

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->NULL_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x66

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->NULL_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x3e9

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_FILE_NUM_OVER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x3ea

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_FILE_SIZE_OVER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x3eb

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_PRODUCT_MAX_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x3ec

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_FILE_NUM_NOT_SAMEAS_ATTR_NUM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x451

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_TIMES_ON_PRODUCT_OVER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x452

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_FILE_NO_NEW_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x453

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->UPLOAD_FILE_EMPTY_PRODUCT_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x4b1

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->NOT_VALID_LETTER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x270d

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->NET_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x270e

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->SQL_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v1, 0x270f

    sget-object v2, Lmqq/sdet/gt/protocol/ErrorMsg;->UNKNOW_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsg(I)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # I

    .prologue
    .line 77
    sget-object v1, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 80
    sget-object v1, Lmqq/sdet/gt/protocol/Code;->map:Landroid/util/SparseArray;

    const/16 v2, 0x270f

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 82
    .restart local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
