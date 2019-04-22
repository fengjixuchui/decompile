.class Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;
.super Landroid/widget/ArrayAdapter;
.source "GTLogSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgAdaptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field filter:Landroid/widget/Filter;

.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    .line 458
    const v0, 0x7f03002b

    .line 459
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getCurShowDownMsgList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 460
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;)Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    return-object v0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->filter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor$1;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->filter:Landroid/widget/Filter;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$MsgAdaptor;->filter:Landroid/widget/Filter;

    return-object v0
.end method
