.class Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$5;
.super Ljava/lang/Object;
.source "GTOpSinglePerfActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity$5;->this$0:Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/activity/GTOpSinglePerfActivity;->finish()V

    .line 158
    return-void
.end method
