.class Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;
.super Landroid/os/Handler;
.source "GTShowPackageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;)Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    const v3, 0x7f08011a

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 67
    .local v1, "app_listView":Landroid/widget/ListView;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 68
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$AppAdapter;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    .line 69
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    iget-object v4, v4, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->appList:Ljava/util/ArrayList;

    .line 68
    invoke-direct {v0, v2, v3, v4}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$AppAdapter;-><init>(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 70
    .local v0, "appAdapter":Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$AppAdapter;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 71
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1$1;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1$1;-><init>(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->proDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->proDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;->access$1(Lcom/tencent/wstt/gt/activity/GTShowPackageActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 85
    :cond_1
    return-void
.end method
