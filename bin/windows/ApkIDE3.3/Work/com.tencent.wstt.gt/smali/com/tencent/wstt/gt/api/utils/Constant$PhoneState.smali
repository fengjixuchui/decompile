.class public final enum Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/api/utils/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

.field public static final enum STATE_MULTI_FOUND_PHONE:Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

.field public static final enum STATE_NOT_ADB:Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

.field public static final enum STATE_NOT_FOUND_PHONE:Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

.field public static final enum STATE_OK:Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    new-instance v0, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    const-string v1, "STATE_OK"

    invoke-direct {v0, v1, v2}, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;->STATE_OK:Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    new-instance v0, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    const-string v1, "STATE_NOT_ADB"

    invoke-direct {v0, v1, v3}, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;->STATE_NOT_ADB:Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    new-instance v0, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    const-string v1, "STATE_NOT_FOUND_PHONE"

    invoke-direct {v0, v1, v4}, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;->STATE_NOT_FOUND_PHONE:Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    new-instance v0, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    const-string v1, "STATE_MULTI_FOUND_PHONE"

    invoke-direct {v0, v1, v5}, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;->STATE_MULTI_FOUND_PHONE:Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    .line 160
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;->STATE_OK:Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;->STATE_NOT_ADB:Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;->STATE_NOT_FOUND_PHONE:Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;->STATE_MULTI_FOUND_PHONE:Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;->ENUM$VALUES:[Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    return-object v0
.end method

.method public static values()[Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;->ENUM$VALUES:[Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/wstt/gt/api/utils/Constant$PhoneState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
