.class Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$1;
.super Ljava/lang/Object;
.source "GTInputParamSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$1;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->autoTV:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->access$0(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method
