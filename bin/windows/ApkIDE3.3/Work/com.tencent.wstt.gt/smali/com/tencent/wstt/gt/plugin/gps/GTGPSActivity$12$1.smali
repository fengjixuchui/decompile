.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12$1;
.super Ljava/lang/Object;
.source "GTGPSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;

.field private final synthetic val$f:Ljava/io/File;

.field private final synthetic val$rename:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;Ljava/io/File;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12$1;->this$1:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;

    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12$1;->val$f:Ljava/io/File;

    iput-object p3, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12$1;->val$rename:Landroid/widget/EditText;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12$1;->val$f:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/wstt/gt/api/utils/Env;->ROOT_GPS_FOLDER:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12$1;->val$rename:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".gps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 359
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12$1;->this$1:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;)Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    move-result-object v0

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->access$2(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 360
    return-void
.end method
