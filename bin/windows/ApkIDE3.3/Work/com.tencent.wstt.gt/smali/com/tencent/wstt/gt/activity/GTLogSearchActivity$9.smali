.class Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;
.super Ljava/lang/Object;
.source "GTLogSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;)Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 311
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedSeq()I

    move-result v0

    .line 312
    .local v0, "historySeq":I
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 314
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setLastMatchedSeq(I)V

    .line 315
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$10(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;

    iget v2, v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->posionInDataSet:I

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 317
    add-int/lit8 v1, v0, 0x2

    .line 318
    .local v1, "viewSeq":I
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    iget-object v2, v2, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->tv_count:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$11(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9$1;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9$1;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    .end local v1    # "viewSeq":I
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 331
    invoke-static {v4}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setLastMatchedSeq(I)V

    .line 332
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$10(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;

    iget v2, v2, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->posionInDataSet:I

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 334
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    iget-object v2, v2, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->tv_count:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1 / "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$11(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9$2;

    invoke-direct {v3, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9$2;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$9;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
