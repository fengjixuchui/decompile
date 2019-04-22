.class public Lcom/tencent/wstt/gt/log/GWSaveEntry;
.super Ljava/lang/Object;
.source "GWSaveEntry.java"


# instance fields
.field desc:Ljava/lang/String;

.field now:Ljava/lang/String;

.field path1:Ljava/lang/String;

.field path2:Ljava/lang/String;

.field path3:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;
    .param p3, "path3"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path1:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path2:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->path3:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->desc:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public setNow(Ljava/lang/String;)V
    .locals 0
    .param p1, "now"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tencent/wstt/gt/log/GWSaveEntry;->now:Ljava/lang/String;

    .line 43
    return-void
.end method
