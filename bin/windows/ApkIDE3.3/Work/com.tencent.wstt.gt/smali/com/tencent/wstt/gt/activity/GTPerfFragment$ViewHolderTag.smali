.class Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;
.super Ljava/lang/Object;
.source "GTPerfFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTPerfFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderTag"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

.field tvTimeAve:Landroid/widget/TextView;

.field tvTimeMax:Landroid/widget/TextView;

.field tvTimeTag:Landroid/widget/TextView;

.field tvTimeTimes:Landroid/widget/TextView;

.field tvTimeTotaltime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTPerfFragment;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTPerfFragment$ViewHolderTag;->this$0:Lcom/tencent/wstt/gt/activity/GTPerfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
