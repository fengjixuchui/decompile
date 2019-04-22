.class public Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;
.super Ljava/lang/Object;
.source "Env.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/api/utils/Env;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDCardPathHelper"
.end annotation


# static fields
.field private static CD_S_SdcardPath:Ljava/lang/String; = null

.field private static CD_S_SdcardPathAbsolute:Ljava/lang/String; = null

.field public static final CT_S_Sdcard_Sign_Storage_emulated:Ljava/lang/String; = "storage/emulated/"

.field public static final CT_S_Sdcard_Sign_Storage_emulated_0:Ljava/lang/String; = "storage/emulated/0"

.field public static final CT_S_Sdcard_Sign_Storage_sdcard:Ljava/lang/String; = "storage/sdcard"

.field public static final CT_S_Sdcard_Sign_sdcard:Ljava/lang/String; = "sdcard"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const-string v0, ""

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->CD_S_SdcardPath:Ljava/lang/String;

    .line 161
    const-string v0, ""

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->CD_S_SdcardPathAbsolute:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndReplaceEmulatedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "strSrc"    # Ljava/lang/String;

    .prologue
    .line 186
    move-object v3, p0

    .line 187
    .local v3, "result":Ljava/lang/String;
    const-string v5, "/?storage/emulated/\\d{1,2}"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 188
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 189
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 190
    const-string v5, "storage/emulated/"

    const-string v6, "storage/sdcard"

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 192
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "gTFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    const-string v5, "storage/emulated/0"

    const-string v6, "sdcard"

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 198
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/GT/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v4, "testF":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 203
    .end local v0    # "gTFile":Ljava/io/File;
    .end local v4    # "testF":Ljava/io/File;
    :cond_0
    return-object v3
.end method

.method public static getAbsoluteSdcardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->CD_S_SdcardPathAbsolute:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->CD_S_SdcardPathAbsolute:Ljava/lang/String;

    .line 176
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->CD_S_SdcardPathAbsolute:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->checkAndReplaceEmulatedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->CD_S_SdcardPathAbsolute:Ljava/lang/String;

    .line 178
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->CD_S_SdcardPathAbsolute:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdcardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->CD_S_SdcardPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->CD_S_SdcardPath:Ljava/lang/String;

    .line 167
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->CD_S_SdcardPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->checkAndReplaceEmulatedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->CD_S_SdcardPath:Ljava/lang/String;

    .line 169
    sget-object v0, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->CD_S_SdcardPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdcardPathFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/Env$SDCardPathHelper;->getSdcardPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
