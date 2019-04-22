.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;
.super Ljava/lang/Object;
.source "GTGPSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

.field private final synthetic val$f:Ljava/io/File;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;Ljava/io/File;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->val$f:Ljava/io/File;

    iput p3, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->val$position:I

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;)Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 332
    packed-switch p2, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 336
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->val$f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 337
    iget v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->val$position:I

    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    iget v2, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    if-ne v1, v2, :cond_1

    .line 338
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    .line 345
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->access$2(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 339
    :cond_1
    iget v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->val$position:I

    .line 340
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    iget v2, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    if-ge v1, v2, :cond_0

    .line 342
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v1

    .line 343
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;

    move-result-object v2

    iget v2, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    .line 342
    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayEngine;->selectedItemPos:I

    goto :goto_1

    .line 349
    :pswitch_1
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 350
    .local v0, "rename":Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    iget-object v2, v2, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->myself:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    const v3, 0x7f090074

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 352
    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 353
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;

    const v3, 0x7f090070

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 355
    new-instance v3, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12$1;

    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;->val$f:Ljava/io/File;

    invoke-direct {v3, p0, v4, v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12$1;-><init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSActivity$12;Ljava/io/File;Landroid/widget/EditText;)V

    .line 354
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 362
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
