.class Lcom/tencent/wstt/gt/activity/GTAUTFragment$6;
.super Ljava/lang/Object;
.source "GTAUTFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTAUTFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTAUTFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTAUTFragment$6;->this$0:Lcom/tencent/wstt/gt/activity/GTAUTFragment;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    sget-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->memInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    return-void
.end method
