.class public Lcom/tencent/wstt/gt/service/GTServiceController;
.super Ljava/lang/Object;
.source "GTServiceController.java"


# static fields
.field public static INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;


# instance fields
.field private Id:I

.field public show_alert:Z

.field private stateSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/tencent/wstt/gt/service/GTServiceController;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/service/GTServiceController;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTServiceController;->show_alert:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getCurAviableService()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTServiceController;->Id:I

    return v0
.end method

.method public getInstance()Lcom/tencent/wstt/gt/service/GTServiceController;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    return-object v0
.end method

.method public getServiceControllerSwitchState()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTServiceController;->stateSwitch:Z

    return v0
.end method

.method public setCurAviableService(I)V
    .locals 0
    .param p1, "Id"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTServiceController;->Id:I

    .line 40
    return-void
.end method

.method public setFloatViewFront(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTServiceController;->stateSwitch:Z

    .line 56
    if-eqz p1, :cond_0

    .line 57
    iput v0, p0, Lcom/tencent/wstt/gt/service/GTServiceController;->Id:I

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTServiceController;->Id:I

    goto :goto_0
.end method

.method public setServiceControllerSwitchStateClose()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTServiceController;->stateSwitch:Z

    .line 48
    return-void
.end method
