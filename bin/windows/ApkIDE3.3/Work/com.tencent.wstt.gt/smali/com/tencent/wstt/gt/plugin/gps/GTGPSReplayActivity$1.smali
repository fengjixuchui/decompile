.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$1;
.super Ljava/lang/Object;
.source "GTGPSReplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$1;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$1;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->finish()V

    .line 119
    return-void
.end method
