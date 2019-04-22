.class Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$11;
.super Ljava/lang/Object;
.source "GTLogSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->doSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 434
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$11;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$10(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v0

    .line 438
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 437
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;

    .line 438
    iget v0, v0, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->posionInDataSet:I

    .line 437
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 439
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setLastMatchedSeq(I)V

    .line 441
    :cond_0
    return-void
.end method
