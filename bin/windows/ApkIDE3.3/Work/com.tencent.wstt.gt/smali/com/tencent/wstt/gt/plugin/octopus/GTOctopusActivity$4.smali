.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$4;
.super Ljava/lang/Object;
.source "GTOctopusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->onStartUpload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

.field private final synthetic val$folderName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$4;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$4;->val$folderName:Ljava/lang/String;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$4;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    const-string v1, "upload.."

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upload  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity$4;->val$folderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..wait..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->showProDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;->access$3(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method
