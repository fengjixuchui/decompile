.class public Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "SMActivity.java"

# interfaces
.implements Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;


# static fields
.field private static selectedItem:Ljava/lang/String;


# instance fields
.field button_check_status:Landroid/view/View$OnClickListener;

.field button_recover_property:Landroid/view/View$OnClickListener;

.field button_restart:Landroid/view/View$OnClickListener;

.field button_write_property:Landroid/view/View$OnClickListener;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listview:Landroid/widget/ListView;

.field listview_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field onStartClick:Landroid/view/View$OnClickListener;

.field private pid:Ljava/lang/Integer;

.field private tv_switch:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->selectedItem:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->listview:Landroid/widget/ListView;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->data:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->pid:Ljava/lang/Integer;

    .line 124
    new-instance v0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$1;-><init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->button_check_status:Landroid/view/View$OnClickListener;

    .line 157
    new-instance v0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$2;-><init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->button_write_property:Landroid/view/View$OnClickListener;

    .line 172
    new-instance v0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$3;-><init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->button_recover_property:Landroid/view/View$OnClickListener;

    .line 187
    new-instance v0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$4;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$4;-><init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->button_restart:Landroid/view/View$OnClickListener;

    .line 202
    new-instance v0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$5;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$5;-><init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->listview_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 211
    new-instance v0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$6;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$6;-><init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->onStartClick:Landroid/view/View$OnClickListener;

    .line 47
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->selectedItem:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->selectedItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->pid:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->pid:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->tv_switch:Landroid/widget/TextView;

    return-object v0
.end method

.method private getData()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->getAllRunningAppProcessInfo()Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, "rp":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->data:Ljava/util/ArrayList;

    return-object v2

    .line 118
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;

    .line 119
    .local v0, "i":Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;
    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->data:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/tencent/wstt/gt/api/utils/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 59
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v8, 0x7f03003b

    invoke-virtual {p0, v8}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->setContentView(I)V

    .line 62
    const v8, 0x7f080151

    invoke-virtual {p0, v8}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 63
    .local v1, "buttonCheckStatus":Landroid/widget/Button;
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->button_check_status:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v8, 0x7f080152

    invoke-virtual {p0, v8}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 66
    .local v4, "buttonWriteProperty":Landroid/widget/Button;
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->button_write_property:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v8, 0x7f080153

    invoke-virtual {p0, v8}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 69
    .local v2, "buttonRecoverProperty":Landroid/widget/Button;
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->button_recover_property:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v8, 0x7f080154

    invoke-virtual {p0, v8}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 72
    .local v3, "buttonRestart":Landroid/widget/Button;
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->button_restart:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v8, 0x7f08012a

    invoke-virtual {p0, v8}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->tv_switch:Landroid/widget/TextView;

    .line 75
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->isStarted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 76
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->tv_switch:Landroid/widget/TextView;

    const v9, 0x7f020063

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 77
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->tv_switch:Landroid/widget/TextView;

    const v9, 0x7f090003

    invoke-virtual {p0, v9}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->tv_switch:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->onStartClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v8, 0x7f080146

    invoke-virtual {p0, v8}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 85
    .local v7, "tv_back":Landroid/widget/TextView;
    new-instance v8, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$7;

    invoke-direct {v8, p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$7;-><init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v8, 0x7f080155

    invoke-virtual {p0, v8}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->listview:Landroid/widget/ListView;

    .line 93
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->listview:Landroid/widget/ListView;

    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 94
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->getData()Ljava/util/ArrayList;

    move-result-object v5

    .line 95
    .local v5, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x109000f

    invoke-direct {v0, p0, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 97
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->listview:Landroid/widget/ListView;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    if-eqz v5, :cond_0

    sget-object v8, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->selectedItem:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 99
    sget-object v8, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->selectedItem:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 100
    .local v6, "position":I
    if-ltz v6, :cond_0

    .line 101
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->listview:Landroid/widget/ListView;

    invoke-virtual {v8, v6, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 105
    .end local v6    # "position":I
    :cond_0
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->listview:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->listview_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->addListener(Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;)V

    .line 108
    return-void

    .line 79
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v5    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "tv_back":Landroid/widget/TextView;
    :cond_1
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->tv_switch:Landroid/widget/TextView;

    const v9, 0x7f020064

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 80
    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->tv_switch:Landroid/widget/TextView;

    const v9, 0x7f090002

    invoke-virtual {p0, v9}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onDestroy()V

    .line 113
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->getInstance()Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMServiceHelper;->removeListener(Lcom/tencent/wstt/gt/plugin/smtools/SMPluginListener;)V

    .line 114
    return-void
.end method

.method public onSMStart()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$8;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$8;-><init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method public onSMStop()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$9;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$9;-><init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method
