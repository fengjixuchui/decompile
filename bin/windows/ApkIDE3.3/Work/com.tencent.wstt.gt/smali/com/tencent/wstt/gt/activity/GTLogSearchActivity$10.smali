.class Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;
.super Landroid/os/AsyncTask;
.source "GTLogSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->openLog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/tencent/wstt/gt/ui/model/LogEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

.field private final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    iput-object p2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->val$filename:Ljava/lang/String;

    .line 387
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->doInBackground([Ljava/lang/Void;)[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 399
    const/16 v1, 0x3e8

    .line 400
    .local v1, "maxLines":I
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->val$filename:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Lcom/tencent/wstt/gt/log/logcat/SaveLogHelper;->openLog(Ljava/lang/String;I)[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    move-result-object v0

    .line 401
    .local v0, "logLines":[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Lcom/tencent/wstt/gt/ui/model/LogEntry;

    invoke-virtual {p0, p1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->onPostExecute([Lcom/tencent/wstt/gt/ui/model/LogEntry;)V

    return-void
.end method

.method protected onPostExecute([Lcom/tencent/wstt/gt/ui/model/LogEntry;)V
    .locals 4
    .param p1, "logLines"    # [Lcom/tencent/wstt/gt/ui/model/LogEntry;

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->proDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$13(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 409
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$12(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Landroid/app/ProgressDialog;)V

    .line 411
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    invoke-static {v0, p1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$14(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;[Lcom/tencent/wstt/gt/ui/model/LogEntry;)V

    .line 412
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    new-instance v1, Lcom/tencent/wstt/gt/log/SearchLogAdapter;

    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    iget-object v3, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->dataSet:[Lcom/tencent/wstt/gt/ui/model/LogEntry;
    invoke-static {v3}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$15(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)[Lcom/tencent/wstt/gt/ui/model/LogEntry;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/wstt/gt/log/SearchLogAdapter;-><init>(Landroid/content/Context;[Lcom/tencent/wstt/gt/ui/model/LogEntry;)V

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$16(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Lcom/tencent/wstt/gt/log/SearchLogAdapter;)V

    .line 413
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$10(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->arrayAdapter:Lcom/tencent/wstt/gt/log/SearchLogAdapter;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$9(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;)Lcom/tencent/wstt/gt/log/SearchLogAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 414
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 391
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 393
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity$10;->this$0:Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;

    .line 394
    const-string v2, "get data.."

    const-string v3, "geting data..wait..."

    .line 393
    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;->access$12(Lcom/tencent/wstt/gt/activity/GTLogSearchActivity;Landroid/app/ProgressDialog;)V

    .line 395
    return-void
.end method
