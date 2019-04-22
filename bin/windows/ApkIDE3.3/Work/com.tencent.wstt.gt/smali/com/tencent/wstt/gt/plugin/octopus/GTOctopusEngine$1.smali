.class Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;
.super Ljava/lang/Object;
.source "GTOctopusEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->onStart(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

.field private final synthetic val$files:[Ljava/lang/String;

.field private final synthetic val$lsk:Ljava/lang/String;

.field private final synthetic val$path1:Ljava/lang/String;

.field private final synthetic val$path2:Ljava/lang/String;

.field private final synthetic val$path3:Ljava/lang/String;

.field private final synthetic val$productId:Ljava/lang/String;

.field private final synthetic val$productName:Ljava/lang/String;

.field private final synthetic val$psk:Ljava/lang/String;

.field private final synthetic val$sk:Ljava/lang/String;

.field private final synthetic val$srcFolder:Ljava/lang/String;

.field private final synthetic val$uin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    iput-object p2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$srcFolder:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$files:[Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$productId:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$productName:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$path1:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$path2:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$path3:Ljava/lang/String;

    iput-object p9, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$uin:Ljava/lang/String;

    iput-object p10, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$sk:Ljava/lang/String;

    iput-object p11, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$psk:Ljava/lang/String;

    iput-object p12, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$lsk:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->this$0:Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$srcFolder:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$files:[Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$productId:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$productName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$path1:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$path2:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$path3:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$uin:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$sk:Ljava/lang/String;

    iget-object v10, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$psk:Ljava/lang/String;

    iget-object v11, p0, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine$1;->val$lsk:Ljava/lang/String;

    # invokes: Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->upload(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v11}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->access$0(Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method
