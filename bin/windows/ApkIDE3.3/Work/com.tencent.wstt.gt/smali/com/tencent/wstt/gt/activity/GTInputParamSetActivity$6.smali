.class Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$6;
.super Ljava/lang/Object;
.source "GTInputParamSetActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$6;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$6;->val$auto:Landroid/widget/AutoCompleteTextView;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$6;->val$auto:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 137
    return-void
.end method
