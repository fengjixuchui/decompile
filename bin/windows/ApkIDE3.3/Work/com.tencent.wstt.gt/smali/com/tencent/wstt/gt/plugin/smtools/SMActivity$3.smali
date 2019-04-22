.class Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$3;
.super Ljava/lang/Object;
.source "SMActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 176
    const-string v0, "setprop debug.choreographer.skipwarning 30"

    .line 177
    .local v0, "cmd":Ljava/lang/String;
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "su"

    aput-object v5, v3, v4

    const-string v4, "-c"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 178
    .local v2, "execBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v2, v6}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 180
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
