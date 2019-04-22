.class public Lcom/tencent/wstt/gt/dao/GTPref;
.super Ljava/lang/Object;
.source "GTPref.java"


# static fields
.field public static final AC_SWITCH:Ljava/lang/String; = "ac_switch_type"

.field public static final AC_SWITCH_FLAG:Ljava/lang/String; = "ac_switch_type_flag"

.field public static final FLOAT_ALLOWED:Ljava/lang/String; = "ac_float_allowed_flag"

.field public static final GT_SP_NAME:Ljava/lang/String; = "gt_SharedPreferences"

.field public static final INTERVAL_FPS:Ljava/lang/String; = "interval_fps"

.field public static final INTERVAL_FPS_POS:Ljava/lang/String; = "interval_fps_pos"

.field public static final INTERVAL_PERF:Ljava/lang/String; = "interval_perf"

.field public static final INTERVAL_PERF_POS:Ljava/lang/String; = "interval_perf_pos"

.field public static final LOG_AUTOSAVEFLUSH_SWITCH:Ljava/lang/String; = "log_autosaveflush_switch"

.field public static final LOG_AUTOSAVE_SWITCH:Ljava/lang/String; = "log_autosave_switch"

.field public static final LOG_MASTER_SWITCH:Ljava/lang/String; = "log_master_switch"

.field public static final LOG_SAVE_DEFAULT_SEG:Ljava/lang/String; = "log_save_default_seg"

.field public static final PERF_MASTER_SWITCH:Ljava/lang/String; = "perf_master_switch"

.field public static final PREFERENCE_EULA_ACCEPTED:Ljava/lang/String; = "eula.accepted"

.field private static gt_SP:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gt_SharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/tencent/wstt/gt/dao/GTPref;->gt_SP:Landroid/content/SharedPreferences;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGTPref()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/tencent/wstt/gt/dao/GTPref;->gt_SP:Landroid/content/SharedPreferences;

    return-object v0
.end method
