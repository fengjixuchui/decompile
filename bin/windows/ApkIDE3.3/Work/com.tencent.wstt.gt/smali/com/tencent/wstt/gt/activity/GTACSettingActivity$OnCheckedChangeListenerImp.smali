.class Lcom/tencent/wstt/gt/activity/GTACSettingActivity$OnCheckedChangeListenerImp;
.super Ljava/lang/Object;
.source "GTACSettingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTACSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCheckedChangeListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTACSettingActivity;


# direct methods
.method private constructor <init>(Lcom/tencent/wstt/gt/activity/GTACSettingActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity$OnCheckedChangeListenerImp;->this$0:Lcom/tencent/wstt/gt/activity/GTACSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wstt/gt/activity/GTACSettingActivity;Lcom/tencent/wstt/gt/activity/GTACSettingActivity$OnCheckedChangeListenerImp;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity$OnCheckedChangeListenerImp;-><init>(Lcom/tencent/wstt/gt/activity/GTACSettingActivity;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity$OnCheckedChangeListenerImp;->this$0:Lcom/tencent/wstt/gt/activity/GTACSettingActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_profiler:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTACSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 81
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->access$2(I)V

    .line 82
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ac_switch_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTACSettingActivity$OnCheckedChangeListenerImp;->this$0:Lcom/tencent/wstt/gt/activity/GTACSettingActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->show_gw:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->access$3(Lcom/tencent/wstt/gt/activity/GTACSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 85
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->access$2(I)V

    .line 86
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ac_switch_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
