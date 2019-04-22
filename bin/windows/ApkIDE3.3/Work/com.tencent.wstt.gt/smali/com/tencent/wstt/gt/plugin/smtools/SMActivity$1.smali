.class Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$1;
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
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$1;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 128
    const-string v1, "getprop debug.choreographer.skipwarning"

    .line 129
    .local v1, "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "sh"

    aput-object v11, v10, v13

    const-string v11, "-c"

    aput-object v11, v10, v12

    const/4 v11, 0x2

    aput-object v1, v10, v11

    invoke-direct {v3, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 130
    .local v3, "execBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v3, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 132
    :try_start_0
    iget-object v10, p0, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity$1;->this$0:Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;

    const v11, 0x7f080150

    invoke-virtual {v10, v11}, Lcom/tencent/wstt/gt/plugin/smtools/SMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 133
    .local v9, "textview":Landroid/widget/TextView;
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v8

    .line 134
    .local v8, "p":Ljava/lang/Process;
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 135
    .local v5, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 136
    .local v6, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 137
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 139
    .local v4, "flag":Ljava/lang/Boolean;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 146
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 147
    const-string v10, "OK"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "flag":Ljava/lang/Boolean;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "p":Ljava/lang/Process;
    .end local v9    # "textview":Landroid/widget/TextView;
    :goto_1
    return-void

    .line 140
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "flag":Ljava/lang/Boolean;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "p":Ljava/lang/Process;
    .restart local v9    # "textview":Landroid/widget/TextView;
    :cond_1
    const-string v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    .line 141
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 142
    goto :goto_0

    .line 149
    :cond_2
    const-string v10, "NOT OK"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 151
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "flag":Ljava/lang/Boolean;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "p":Ljava/lang/Process;
    .end local v9    # "textview":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
