.class Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;
.super Ljava/lang/Object;
.source "GTParamOutListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;

.field private final synthetic val$ov:Lcom/tencent/wstt/gt/OutPara;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;Lcom/tencent/wstt/gt/OutPara;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;->val$ov:Lcom/tencent/wstt/gt/OutPara;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x249f0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 138
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;->val$ov:Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->isMonitor()Z

    move-result v2

    if-nez v2, :cond_3

    .line 142
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;->val$ov:Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/OutPara;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->getProfilerData(Ljava/lang/String;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    .line 143
    .local v1, "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;->val$ov:Lcom/tencent/wstt/gt/OutPara;

    iget-boolean v2, v2, Lcom/tencent/wstt/gt/OutPara;->hasMonitorOnce:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "size":I
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->hasChild()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getChildren()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v0

    .line 156
    :goto_0
    if-lt v0, v5, :cond_2

    .line 158
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;

    iget-object v2, v2, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OutPara "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;->val$ov:Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    const-string v4, " has more than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " records."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    const-string v4, "You should save and clear records first."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    .end local v0    # "size":I
    .end local v1    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_0
    :goto_1
    return-void

    .line 153
    .restart local v0    # "size":I
    .restart local v1    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v0

    goto :goto_0

    .line 166
    .end local v0    # "size":I
    :cond_2
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;->val$ov:Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    .line 167
    sput-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_change:Z

    .line 170
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;->val$ov:Lcom/tencent/wstt/gt/OutPara;

    iget-boolean v2, v2, Lcom/tencent/wstt/gt/OutPara;->hasMonitorOnce:Z

    if-nez v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;->val$ov:Lcom/tencent/wstt/gt/OutPara;

    invoke-static {v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->registMonitor(Lcom/tencent/wstt/gt/OutPara;)V

    goto :goto_1

    .line 175
    .end local v1    # "tte":Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    :cond_3
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;->val$ov:Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v2, v4}, Lcom/tencent/wstt/gt/OutPara;->setMonitor(Z)V

    .line 176
    sput-boolean v3, Lcom/tencent/wstt/gt/manager/OpUIManager;->list_change:Z

    .line 177
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutListAdapter$1;->val$ov:Lcom/tencent/wstt/gt/OutPara;

    invoke-static {v2}, Lcom/tencent/wstt/gt/manager/OpPerfBridge;->endProfier(Lcom/tencent/wstt/gt/OutPara;)V

    goto :goto_1
.end method
