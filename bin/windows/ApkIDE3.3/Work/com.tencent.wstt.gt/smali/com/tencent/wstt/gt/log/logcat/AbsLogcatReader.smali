.class public abstract Lcom/tencent/wstt/gt/log/logcat/AbsLogcatReader;
.super Ljava/lang/Object;
.source "AbsLogcatReader.java"

# interfaces
.implements Lcom/tencent/wstt/gt/log/logcat/LogcatReader;


# instance fields
.field protected recordingMode:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "recordingMode"    # Z

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/log/logcat/AbsLogcatReader;->recordingMode:Z

    .line 10
    return-void
.end method


# virtual methods
.method public isRecordingMode()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/log/logcat/AbsLogcatReader;->recordingMode:Z

    return v0
.end method
