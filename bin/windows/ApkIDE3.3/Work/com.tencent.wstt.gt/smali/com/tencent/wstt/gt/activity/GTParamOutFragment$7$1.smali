.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;

.field private final synthetic val$chosedFilePathList:Ljava/util/List;

.field private final synthetic val$folder:Ljava/io/File;

.field private final synthetic val$lskey:Ljava/lang/String;

.field private final synthetic val$pairSelSave2Cloud:Landroid/util/Pair;

.field private final synthetic val$pskey:Ljava/lang/String;

.field private final synthetic val$sizeKB:J

.field private final synthetic val$skey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;JLandroid/util/Pair;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;

    iput-wide p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$sizeKB:J

    iput-object p4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$pairSelSave2Cloud:Landroid/util/Pair;

    iput-object p5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$folder:Ljava/io/File;

    iput-object p6, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$chosedFilePathList:Ljava/util/List;

    iput-object p7, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$skey:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$pskey:Ljava/lang/String;

    iput-object p9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$lskey:Ljava/lang/String;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 633
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v0

    # invokes: Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->dismissProDialog()V
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->access$7(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;)V

    .line 634
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 635
    .local v8, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v1

    const v2, 0x7f090112

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$sizeKB:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 636
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v0

    const v1, 0x7f090111

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 637
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v0

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$1;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;)V

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 644
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->this$1:Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;

    # getter for: Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    move-result-object v0

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$pairSelSave2Cloud:Landroid/util/Pair;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$folder:Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$chosedFilePathList:Ljava/util/List;

    iget-object v5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$skey:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$pskey:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;->val$lskey:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1$2;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;Landroid/util/Pair;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 678
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 679
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 680
    return-void
.end method
