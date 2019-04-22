.class public Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
.super Ljava/lang/Object;
.source "MemInfo.java"


# static fields
.field public static final EMPTY:Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;


# instance fields
.field public dalvikAllocated:J

.field public dalvikHeapSize:J

.field public nativeAllocated:J

.field public nativeHeapSize:J

.field public private_dirty:J

.field public pss_Ashmem:J

.field public pss_Dalvik:J

.field public pss_Native:J

.field public pss_OtherDev:J

.field public pss_Stack:J

.field public pss_UnKnown:J

.field public pss_gl:J

.field public pss_graphics:J

.field public pss_total:J

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->EMPTY:Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->time:J

    .line 32
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikHeapSize:J

    .line 33
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikAllocated:J

    .line 35
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->nativeHeapSize:J

    .line 36
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->nativeAllocated:J

    .line 38
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_total:J

    .line 39
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Native:J

    .line 40
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Dalvik:J

    .line 41
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_OtherDev:J

    .line 42
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_UnKnown:J

    .line 43
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Ashmem:J

    .line 44
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Stack:J

    .line 45
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_graphics:J

    .line 46
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_gl:J

    .line 48
    iput-wide v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->private_dirty:J

    .line 28
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget v1, Lcom/tencent/wstt/gt/api/utils/Env;->API:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 56
    const-string v1, "dHeapSize\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikHeapSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "\ndAllocated\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikAllocated:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v1, "\nnHeapSize\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->nativeHeapSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, "\nnAllocated\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->nativeAllocated:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, "\npri_dirty : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->private_dirty:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "\npss\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_total:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 75
    :cond_0
    sget v1, Lcom/tencent/wstt/gt/api/utils/Env;->API:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 77
    const-string v1, "dHeapSize\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikHeapSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, "\ndAllocated\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikAllocated:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 82
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, "\npri_dirty : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->private_dirty:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 85
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v1, "\npss_T\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_total:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 88
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v1, "\npss_D\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Dalvik:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 91
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, "\npss_N\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Native:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "\npss_O\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_OtherDev:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 97
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v1, "\npss_U\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_UnKnown:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 100
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 104
    :cond_1
    const-string v1, "dHeapSize\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikHeapSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 106
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v1, "\ndAllocated\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikAllocated:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 109
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v1, "\npri_dirty : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->private_dirty:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 112
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const-string v1, "\npss_T\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_total:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 115
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string v1, "\npss_D\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Dalvik:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 118
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v1, "\npss_N\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_Native:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 121
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v1, "\npss_O\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_OtherDev:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v1, "\npss_U\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_UnKnown:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "\npss_GR\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_graphics:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v1, "\npss_GL\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    iget-wide v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->pss_gl:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 133
    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
