.class public Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTGPSActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;
.implements Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/wstt/gt/activity/GTBaseActivity;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;",
        "Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GTGPSActivity"

.field private static final MOCK_GPS_PROVIDER_INDEX:Ljava/lang/String; = "GpsMockProviderIndex"

.field public static final RES_GPSREPALY_ACTIVITY:I = 0xc8

.field private static mMockGpsProviderIndex:I


# instance fields
.field private back:Landroid/view/View$OnClickListener;

.field private back_gt:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field listview_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_gpsFile:Landroid/widget/ListView;

.field public myself:Landroid/content/Context;

.field private recordOnClickListener:Landroid/view/View$OnClickListener;

.field private replayOnClickListener:Landroid/view/View$OnClickListener;

.field private tv_record:Landroid/widget/TextView;

.field private tv_replay:Landroid/widget/TextView;

.field private tv_tag:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->mMockGpsProviderIndex:I

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 69
    iput-object p0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->myself:Landroid/content/Context;

    .line 158
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$1;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->back:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$2;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->recordOnClickListener:Landroid/view/View$OnClickListener;

    .line 181
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$3;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->replayOnClickListener:Landroid/view/View$OnClickListener;

    .line 281
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$4;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$4;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->listview_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->lv_gpsFile:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_record:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_replay:Landroid/widget/TextView;

    return-object v0
.end method

.method private initListView()V
    .locals 3

    .prologue
    .line 272
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->lv_gpsFile:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 273
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 274
    const v1, 0x109000f

    .line 275
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSUtils;->getGPSFileList()Ljava/util/ArrayList;

    move-result-object v2

    .line 273
    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 276
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->lv_gpsFile:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 277
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->lv_gpsFile:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->listview_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 278
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->lv_gpsFile:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 279
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 379
    sparse-switch p2, :sswitch_data_0

    .line 400
    :goto_0
    return-void

    .line 382
    :sswitch_0
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v1

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/PluginControler;->stopService(Lcom/tencent/wstt/gt/plugin/BaseService;)V

    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "seq"

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    iget v2, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string v1, "progress"

    const-string v2, "progress"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    const-string v1, "replayspeed"

    const-string v2, "replayspeed"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v1

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/wstt/gt/plugin/PluginControler;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;

    .line 391
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "has GPS replayed on\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "progress"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 394
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 379
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f020064

    const v3, 0x7f020063

    .line 73
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v1, 0x7f030035

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->setContentView(I)V

    .line 77
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "GpsMockProviderIndex"

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->mMockGpsProviderIndex:I

    .line 82
    :cond_0
    const v1, 0x7f080139

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->back_gt:Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->back_gt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->back:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f08013a

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_record:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f08013b

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_replay:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f08013c

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_tag:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f08013d

    invoke-virtual {p0, v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->lv_gpsFile:Landroid/widget/ListView;

    .line 90
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->initListView()V

    .line 92
    new-instance v1, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$5;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$5;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)V

    iput-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->handler:Landroid/os/Handler;

    .line 110
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->isRecord()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_record:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 112
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_record:Landroid/widget/TextView;

    const v2, 0x7f0900ea

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isReplay()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_replay:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 121
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_replay:Landroid/widget/TextView;

    const v2, 0x7f0900ec

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_1
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v1

    iget v1, v1, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    if-ltz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->lv_gpsFile:Landroid/widget/ListView;

    .line 129
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    iget v2, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 130
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->lv_gpsFile:Landroid/widget/ListView;

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    iget v2, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 131
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->lv_gpsFile:Landroid/widget/ListView;

    .line 132
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    iget v2, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "o":Ljava/lang/Object;
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItem:Ljava/lang/String;

    .line 136
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_record:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->recordOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_replay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->replayOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->addListener(Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;)V

    .line 140
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->addListener(Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;)V

    .line 141
    return-void

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_record:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 115
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_record:Landroid/widget/TextView;

    const v2, 0x7f0900e9

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_replay:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 124
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->tv_replay:Landroid/widget/TextView;

    const v2, 0x7f0900eb

    invoke-virtual {p0, v2}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->removeListener(Lcom/tencent/wstt/gt/plugin/gps/GPSRecordListener;)V

    .line 153
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->removeListener(Lcom/tencent/wstt/gt/plugin/gps/GPSReplayListener;)V

    .line 154
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 155
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onDestroy()V

    .line 156
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 314
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->isReplay()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    const v3, 0x7f0900f1

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    :cond_0
    :goto_0
    return v6

    .line 320
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v3

    iput p3, v3, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    .line 321
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "fName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_GPS_FOLDER:Ljava/io/File;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 326
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f09006b

    invoke-virtual {p0, v3}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 327
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f090068

    invoke-virtual {p0, v5}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const v4, 0x7f090073

    invoke-virtual {p0, v4}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 328
    new-instance v4, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;

    invoke-direct {v4, p0, v1, p3}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;Ljava/io/File;I)V

    .line 327
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 371
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onRecordFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorstr"    # Ljava/lang/String;

    .prologue
    .line 226
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$8;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public onRecordStart()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$6;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$6;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method public onRecordStop()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$7;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$7;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method public onReplayEnd()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public onReplayFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorstr"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$11;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method public onReplayStart()V
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$9;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$9;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method

.method public onReplayStop()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$10;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$10;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    const-string v0, "GpsMockProviderIndex"

    .line 146
    sget v1, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->mMockGpsProviderIndex:I

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    return-void
.end method
