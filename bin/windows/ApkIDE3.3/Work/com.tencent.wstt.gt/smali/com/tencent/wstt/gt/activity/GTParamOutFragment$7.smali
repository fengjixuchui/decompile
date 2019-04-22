.class Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;
.super Ljava/lang/Object;
.source "GTParamOutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->save2CloudOnDialog(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

.field private final synthetic val$folder:Ljava/io/File;

.field private final synthetic val$lskey:Ljava/lang/String;

.field private final synthetic val$pairSelSave2Cloud:Landroid/util/Pair;

.field private final synthetic val$path1:Ljava/lang/String;

.field private final synthetic val$path2:Ljava/lang/String;

.field private final synthetic val$path3:Ljava/lang/String;

.field private final synthetic val$pskey:Ljava/lang/String;

.field private final synthetic val$skey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment;Ljava/io/File;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$folder:Ljava/io/File;

    iput-object p3, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$pairSelSave2Cloud:Landroid/util/Pair;

    iput-object p4, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$path1:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$path2:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$path3:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$skey:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$pskey:Ljava/lang/String;

    iput-object p9, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$lskey:Ljava/lang/String;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;)Lcom/tencent/wstt/gt/activity/GTParamOutFragment;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 614
    const-wide/16 v16, 0x0

    .line 615
    .local v16, "size":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$folder:Ljava/io/File;

    sget-object v4, Lcom/tencent/wstt/gt/utils/FileUtil;->CSV_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 617
    .local v2, "csvFiles":[Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$pairSelSave2Cloud:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$path1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$path2:Ljava/lang/String;

    .line 618
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$path3:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wstt/gt/utils/WtloginUtil;->getUin()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$skey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$pskey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$lskey:Ljava/lang/String;

    .line 617
    invoke-static/range {v2 .. v10}, Lcom/tencent/wstt/gt/plugin/octopus/HttpAssist;->preUpload([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;

    move-result-object v15

    .line 619
    .local v15, "preUploadEntry":Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;
    if-nez v15, :cond_0

    .line 620
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lmqq/sdet/gt/protocol/ErrorMsg;->NET_ERROR:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/tencent/wstt/gt/utils/ToastUtil;->ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 683
    :goto_0
    return-void

    .line 624
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v10, "chosedFilePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, v15, Lcom/tencent/wstt/gt/plugin/octopus/PreUploadEntry;->choicedCsvFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 629
    const-wide/16 v4, 0x400

    div-long v4, v16, v4

    const-wide/16 v8, 0x1

    add-long v6, v4, v8

    .line 630
    .local v6, "sizeKB":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->this$0:Lcom/tencent/wstt/gt/activity/GTParamOutFragment;

    invoke-virtual {v3}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$pairSelSave2Cloud:Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$folder:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$skey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$pskey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;->val$lskey:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v13}, Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7$1;-><init>(Lcom/tencent/wstt/gt/activity/GTParamOutFragment$7;JLandroid/util/Pair;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 625
    .end local v6    # "sizeKB":J
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/File;

    .line 626
    .local v14, "f":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long v16, v16, v4

    .line 627
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
