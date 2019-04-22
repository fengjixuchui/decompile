.class Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$2;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 146
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 148
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;

    invoke-virtual {v2}, Lcom/tencent/wstt/gt/activity/GTInputParamSetActivity;->finish()V

    .line 153
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
