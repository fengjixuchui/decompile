.class Lcom/tencent/wstt/gt/activity/GTOpSMActivity$4;
.super Ljava/lang/Object;
.source "GTOpSMActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

.field private final synthetic val$alias:Ljava/lang/String;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$4;->val$alias:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$4;->val$name:Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    new-instance v0, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$4;->val$alias:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$4;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTOpSMActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSMActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->about:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/wstt/gt/activity/GTOpSMActivity;->access$17(Lcom/tencent/wstt/gt/activity/GTOpSMActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v0, "dialog":Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/views/GTOutParaPerfDialog;->show()V

    .line 151
    return-void
.end method
