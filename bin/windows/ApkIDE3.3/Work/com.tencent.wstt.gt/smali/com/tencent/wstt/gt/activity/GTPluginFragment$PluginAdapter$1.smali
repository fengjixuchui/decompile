.class Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter$1;
.super Ljava/lang/Object;
.source "GTPluginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;

.field private final synthetic val$item:Lcom/tencent/wstt/gt/plugin/PluginItem;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;Lcom/tencent/wstt/gt/plugin/PluginItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter$1;->this$1:Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter$1;->val$item:Lcom/tencent/wstt/gt/plugin/PluginItem;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter$1;->this$1:Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter$1;->val$item:Lcom/tencent/wstt/gt/plugin/PluginItem;

    iget-object v2, v2, Lcom/tencent/wstt/gt/plugin/PluginItem;->activityClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter$1;->this$1:Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTPluginFragment$PluginAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method
