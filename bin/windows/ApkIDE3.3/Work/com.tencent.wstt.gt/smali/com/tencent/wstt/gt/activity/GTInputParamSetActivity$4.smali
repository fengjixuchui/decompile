.class Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$4;
.super Ljava/lang/Object;
.source "GTInputParamSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->initAutoCompleteTV(Ljava/util/ArrayList;Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

.field private final synthetic val$auto:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$4;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$4;->val$auto:Landroid/widget/AutoCompleteTextView;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$4;->val$auto:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 106
    return-void
.end method
