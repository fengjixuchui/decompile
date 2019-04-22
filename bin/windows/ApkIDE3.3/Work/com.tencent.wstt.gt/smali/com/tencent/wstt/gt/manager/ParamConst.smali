.class public Lcom/tencent/wstt/gt/manager/ParamConst;
.super Ljava/lang/Object;
.source "ParamConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDisable;,
        Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDivide;,
        Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag;,
        Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderDrag_nopic;,
        Lcom/tencent/wstt/gt/manager/ParamConst$ViewHolderPrompt;
    }
.end annotation


# static fields
.field public static final DIVID_TITLE:Ljava/lang/String;

.field public static final PROMPT_DISABLE_TITLE:Ljava/lang/String;

.field public static final PROMPT_INIT_TITLE:Ljava/lang/String;

.field public static final PROMPT_TITLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x7f090093

    .line 34
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_TITLE:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    const-string v1, "\n                                  empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_INIT_TITLE:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090094

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/manager/ParamConst;->DIVID_TITLE:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/manager/ParamConst;->PROMPT_DISABLE_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
