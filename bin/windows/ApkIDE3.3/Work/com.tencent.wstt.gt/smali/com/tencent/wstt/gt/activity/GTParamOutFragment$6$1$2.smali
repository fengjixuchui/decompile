.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

.field private final synthetic val$path1:Ljava/lang/String;

.field private final synthetic val$path2:Ljava/lang/String;

.field private final synthetic val$path3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->val$path1:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->val$path2:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->val$path3:Ljava/lang/String;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 291
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectName:Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 292
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectPair:Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$15(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 296
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v5

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v5

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectName:Ljava/util/List;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$30(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;I)V

    .line 297
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v5

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectName:Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;

    move-result-object v4

    .line 298
    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v6}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v6

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v6}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v6

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectNameSize:I
    invoke-static {v6}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$31(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 297
    invoke-static {v5, v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$32(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;[Ljava/lang/String;)V

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "defaultSelected":I
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v5

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectPair:Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$15(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iput-object v4, v5, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->pairSelSave2Cloud:Landroid/util/Pair;

    .line 304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 305
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 304
    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09007c

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 307
    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v4

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->strListProjectName:[Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$33(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)[Ljava/lang/String;

    move-result-object v4

    .line 308
    new-instance v5, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$1;

    invoke-direct {v5, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$1;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;)V

    .line 307
    invoke-virtual {v0, v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    const v4, 0x7f090072

    .line 326
    new-instance v5, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;

    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->val$path1:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->val$path2:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->val$path3:Ljava/lang/String;

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2$2;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    const v4, 0x7f090071

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 341
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 342
    return-void

    .line 292
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "defaultSelected":I
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 293
    .local v2, "projectPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 294
    .local v3, "projectSecond":Ljava/lang/String;
    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1$2;->this$2:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;

    move-result-object v5

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$6;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v5

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->listProjectName:Ljava/util/List;
    invoke-static {v5}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$16(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
