.class public Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;
.super Lcom/tencent/wstt/gt/activity/GTBaseActivity;
.source "GTInputParamSetActivity.java"


# static fields
.field public static fromfinish:Z


# instance fields
.field private autoTV:Landroid/widget/AutoCompleteTextView;

.field private btn_c:Landroid/widget/Button;

.field private c:Landroid/view/View$OnClickListener;

.field private cancel:Landroid/view/View$OnClickListener;

.field private finish:Landroid/view/View$OnClickListener;

.field private ip_client:Ljava/lang/String;

.field private ip_name:Ljava/lang/String;

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->fromfinish:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;-><init>()V

    .line 90
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$1;-><init>(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->c:Landroid/view/View$OnClickListener;

    .line 143
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$2;-><init>(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->cancel:Landroid/view/View$OnClickListener;

    .line 156
    new-instance v0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$3;-><init>(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->finish:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->autoTV:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->autoTV:Landroid/widget/AutoCompleteTextView;

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->openToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->values:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->ip_client:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->ip_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;Ljava/util/ArrayList;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->initAutoCompleteTV(Ljava/util/ArrayList;Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->btn_c:Landroid/widget/Button;

    return-object v0
.end method

.method private initAutoCompleteTV(Ljava/util/ArrayList;Landroid/widget/AutoCompleteTextView;)V
    .locals 3
    .param p2, "auto"    # Landroid/widget/AutoCompleteTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/AutoCompleteTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "vals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 98
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 99
    const v1, 0x7f030007

    .line 98
    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 101
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x7f020077

    invoke-virtual {p2, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundResource(I)V

    .line 103
    new-instance v1, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$4;

    invoke-direct {v1, p0, p2}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$4;-><init>(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p2, v1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 110
    invoke-virtual {p2, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 112
    new-instance v1, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$5;

    invoke-direct {v1, p0, p2}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$5;-><init>(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p2, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    new-instance v1, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$6;

    invoke-direct {v1, p0, p2}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$6;-><init>(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p2, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    return-void
.end method

.method private openToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 201
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 202
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/activity/GTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v6, 0x7f030010

    invoke-virtual {p0, v6}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->setContentView(I)V

    .line 63
    const v6, 0x7f08007d

    invoke-virtual {p0, v6}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 64
    .local v3, "tv_cancel":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->cancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v6, 0x7f08007f

    invoke-virtual {p0, v6}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 66
    .local v4, "tv_finish":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->finish:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "ip_name"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->ip_name:Ljava/lang/String;

    .line 70
    const-string v6, "ip_client"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->ip_client:Ljava/lang/String;

    .line 71
    const-string v6, "ip_values"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->values:Ljava/util/ArrayList;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, "linked_vals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->values:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 79
    const v6, 0x7f080080

    invoke-virtual {p0, v6}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 80
    .local v5, "tv_ip_name":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->ip_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v6, 0x7f080081

    invoke-virtual {p0, v6}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AutoCompleteTextView;

    iput-object v6, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->autoTV:Landroid/widget/AutoCompleteTextView;

    .line 83
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->autoTV:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v2, v6}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->initAutoCompleteTV(Ljava/util/ArrayList;Landroid/widget/AutoCompleteTextView;)V

    .line 85
    const v6, 0x7f080082

    invoke-virtual {p0, v6}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->btn_c:Landroid/widget/Button;

    .line 86
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->btn_c:Landroid/widget/Button;

    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void

    .line 76
    .end local v5    # "tv_ip_name":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->values:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
