.class public Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;
.super Ljava/lang/Object;
.source "BaseServiceConnection.java"


# instance fields
.field private key:Ljava/lang/String;

.field public mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "claxx":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;->mClass:Ljava/lang/Class;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;->key:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/internal/BaseServiceConnection;->key:Ljava/lang/String;

    return-object v0
.end method
