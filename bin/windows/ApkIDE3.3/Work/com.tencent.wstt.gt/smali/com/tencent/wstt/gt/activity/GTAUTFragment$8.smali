.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;
.super Ljava/lang/Object;
.source "GTAUTFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_PkName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$13(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "n/a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->isAutoGetMem:Z
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$14()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$15(Z)V

    .line 235
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->defaultDrawable:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$17(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 237
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOff:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$18(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOff:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$18(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->selectDrawable:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$19(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 242
    const-class v2, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    .line 241
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pName"

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->tv_PkName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$13(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v1

    .line 249
    invoke-static {}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->getInstance()Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    move-result-object v2

    .line 248
    invoke-virtual {v1, v2, v0}, Lcom/tencent/wstt/gt/plugin/PluginControler;->startService(Lcom/tencent/wstt/gt/plugin/BaseService;Landroid/content/Intent;)Lcom/tencent/wstt/gt/plugin/BaseService;

    .line 269
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 270
    return v3

    .line 253
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$15(Z)V

    .line 254
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->selectDrawable:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$19(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 256
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOff:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$18(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->memOff:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$18(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->defaultDrawable:I
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$17(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 259
    sput v3, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tagTimes:I

    .line 262
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getInstance()Lcom/tencent/wstt/gt/plugin/PluginManager;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/PluginManager;->getPluginControler()Lcom/tencent/wstt/gt/plugin/PluginControler;

    move-result-object v1

    .line 265
    invoke-static {}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->getInstance()Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    move-result-object v2

    .line 264
    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/PluginControler;->stopService(Lcom/tencent/wstt/gt/plugin/BaseService;)V

    .line 266
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$8;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    # getter for: Lcom/tencent/wstt/gt/activity/GTAUTFragment;->dlg_save:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTAUTFragment;->access$20(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
