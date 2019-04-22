.class Lcom/tencent/wstt/gt/activity/GTPerfFragment$4;
.super Ljava/lang/Object;
.source "GTPerfFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTPerfFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$4;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 173
    return-void
.end method
