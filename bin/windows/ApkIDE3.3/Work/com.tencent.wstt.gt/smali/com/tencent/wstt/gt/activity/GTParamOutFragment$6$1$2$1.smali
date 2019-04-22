.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$1;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$1;->this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 314
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$1;->this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strListProjectName:[Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$33(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, p2

    .line 315
    .local v1, "strSelProj":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$1;->this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectPair:Ljava/util/List;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$15(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 316
    .local v0, "comPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$1;->this$3:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v2

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v2

    iput-object v0, v2, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->pairSelSave2Cloud:Landroid/util/Pair;

    goto :goto_0
.end method
