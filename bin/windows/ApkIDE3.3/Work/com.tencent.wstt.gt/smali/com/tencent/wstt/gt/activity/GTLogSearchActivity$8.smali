.class Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;)Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 270
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedSeq()I

    move-result v0

    .line 271
    .local v0, "historySeq":I
    if-lez v0, :cond_1

    .line 273
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setLastMatchedSeq(I)V

    .line 274
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$10(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;

    iget v1, v1, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->posionInDataSet:I

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 276
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->tv_count:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$11(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8$1;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8$1;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 289
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/tencent/wstt/gt/log/GTLogInternal;->setLastMatchedSeq(I)V

    .line 290
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$10(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v1

    .line 291
    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 290
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;

    .line 291
    iget v1, v1, Lcom/tencent/wstt/gt/ui/model/MatchedEntry;->posionInDataSet:I

    .line 290
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 293
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    iget-object v1, v1, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->tv_count:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/wstt/gt/log/GTLogInternal;->getLastMatchedEntryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$11(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8$2;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8$2;-><init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$8;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
