.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;
.super Ljava/lang/Object;
.source "GTOctopusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->showUploadDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

.field private final synthetic val$folders:Ljava/util/List;

.field private final synthetic val$lskey:Ljava/lang/String;

.field private final synthetic val$pskey:Ljava/lang/String;

.field private final synthetic val$skey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;->val$folders:Ljava/util/List;

    iput-object p3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;->val$skey:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;->val$pskey:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;->val$lskey:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 295
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;->val$folders:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 296
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 297
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/SavedGWDataHelper;->getGWDirectory()Ljava/io/File;

    move-result-object v2

    .line 296
    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 297
    if-eqz v1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 304
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;->val$skey:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;->val$pskey:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$2;->val$lskey:Ljava/lang/String;

    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->comfirmUpdateSize(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$1(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
