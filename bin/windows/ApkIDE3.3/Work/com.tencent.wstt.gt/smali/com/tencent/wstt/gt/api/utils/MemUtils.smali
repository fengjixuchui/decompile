.class public Lcom/tencent/wstt/gt/api/utils/MemUtils;
.super Ljava/lang/Object;
.source "MemUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFreeAndTotalMem()Ljava/lang/String;
    .locals 6

    .prologue
    .line 99
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/MemUtils;->getMemInfo()[J

    move-result-object v0

    .line 100
    .local v0, "memInfo":[J
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    const/4 v4, 0x2

    aget-wide v4, v0, v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    aget-wide v4, v0, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "M/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFreeMem()Ljava/lang/String;
    .locals 6

    .prologue
    .line 79
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/MemUtils;->getMemInfo()[J

    move-result-object v0

    .line 80
    .local v0, "memInfo":[J
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    const/4 v4, 0x2

    aget-wide v4, v0, v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    aget-wide v4, v0, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHeapDalvik()[J
    .locals 14

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x2

    .line 176
    const/4 v3, 0x0

    .line 177
    .local v3, "Total_HeapSize":I
    const/4 v2, 0x1

    .line 179
    .local v2, "Total_HeapAlloc":I
    new-array v6, v12, [J

    .line 180
    .local v6, "value_total":[J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    shr-long/2addr v8, v13

    aput-wide v8, v6, v3

    .line 181
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    .line 182
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    sub-long/2addr v8, v10

    shr-long/2addr v8, v13

    .line 181
    aput-wide v8, v6, v2

    .line 184
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/MemUtils;->getHeapNative()[J

    move-result-object v5

    .line 186
    .local v5, "value_native":[J
    const/4 v1, 0x0

    .line 187
    .local v1, "Dalvik_HeapSize":I
    const/4 v0, 0x1

    .line 188
    .local v0, "Dalvik_HeapAlloc":I
    new-array v4, v12, [J

    .line 189
    .local v4, "value_dalvik":[J
    aget-wide v8, v6, v3

    .line 190
    const/4 v7, 0x0

    aget-wide v10, v5, v7

    sub-long/2addr v8, v10

    .line 189
    aput-wide v8, v4, v1

    .line 191
    aget-wide v8, v6, v2

    .line 192
    const/4 v7, 0x1

    aget-wide v10, v5, v7

    sub-long/2addr v8, v10

    .line 191
    aput-wide v8, v4, v0

    .line 194
    return-object v4
.end method

.method public static getHeapNative()[J
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "Native_HeapSize":I
    const/4 v0, 0x1

    .line 169
    .local v0, "Native_HeapAlloc":I
    const/4 v3, 0x2

    new-array v2, v3, [J

    .line 170
    .local v2, "value":[J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v4

    shr-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 171
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    shr-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 172
    return-object v2
.end method

.method public static getMemInfo()[J
    .locals 14

    .prologue
    const/4 v9, 0x4

    .line 44
    new-array v3, v9, [J

    .line 46
    .local v3, "memInfo":[J
    :try_start_0
    const-string v9, "android.os.Process"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 47
    .local v7, "procClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x3

    new-array v6, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-class v10, [Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x2

    .line 48
    const-class v10, [J

    aput-object v10, v6, v9

    .line 49
    .local v6, "paramTypes":[Ljava/lang/Class;
    const-string v9, "readProcLines"

    invoke-virtual {v7, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 51
    .local v8, "readProclines":Ljava/lang/reflect/Method;
    const/4 v9, 0x3

    new-array v0, v9, [Ljava/lang/Object;

    .line 52
    .local v0, "args":[Ljava/lang/Object;
    const/4 v9, 0x4

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "MemTotal:"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    .line 53
    const-string v10, "MemFree:"

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, "Buffers:"

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string v10, "Cached:"

    aput-object v10, v4, v9

    .line 54
    .local v4, "memInfoFields":[Ljava/lang/String;
    array-length v9, v4

    new-array v5, v9, [J

    .line 55
    .local v5, "memInfoSizes":[J
    const/4 v9, 0x0

    const-wide/16 v10, 0x1e

    aput-wide v10, v5, v9

    .line 56
    const/4 v9, 0x1

    const-wide/16 v10, -0x1e

    aput-wide v10, v5, v9

    .line 57
    const/4 v9, 0x0

    new-instance v10, Ljava/lang/String;

    const-string v11, "/proc/meminfo"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v10, v0, v9

    .line 58
    const/4 v9, 0x1

    aput-object v4, v0, v9

    .line 59
    const/4 v9, 0x2

    aput-object v5, v0, v9

    .line 60
    if-eqz v8, :cond_0

    .line 61
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v5

    if-lt v2, v9, :cond_1

    .line 70
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v4    # "memInfoFields":[Ljava/lang/String;
    .end local v5    # "memInfoSizes":[J
    .end local v6    # "paramTypes":[Ljava/lang/Class;
    .end local v7    # "procClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "readProclines":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-object v3

    .line 63
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v4    # "memInfoFields":[Ljava/lang/String;
    .restart local v5    # "memInfoSizes":[J
    .restart local v6    # "paramTypes":[Ljava/lang/Class;
    .restart local v7    # "procClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "readProclines":Ljava/lang/reflect/Method;
    :cond_1
    aget-wide v10, v5, v2

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    aput-wide v10, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v4    # "memInfoFields":[Ljava/lang/String;
    .end local v5    # "memInfoSizes":[J
    .end local v6    # "paramTypes":[Ljava/lang/Class;
    .end local v7    # "procClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "readProclines":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getPSS(Landroid/content/Context;I)[J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .prologue
    const/4 v10, 0x2

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 145
    const/4 v5, 0x3

    new-array v4, v5, [J

    .line 146
    .local v4, "value":[J
    if-ltz p1, :cond_0

    .line 147
    new-array v3, v9, [I

    .line 148
    .local v3, "pids":[I
    aput p1, v3, v8

    .line 150
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    check-cast v0, Landroid/app/ActivityManager;

    .line 151
    .local v0, "mAm":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 152
    .local v1, "memoryInfoArray":[Landroid/os/Debug$MemoryInfo;
    aget-object v2, v1, v8

    .line 154
    .local v2, "pidMemoryInfo":Landroid/os/Debug$MemoryInfo;
    iget v5, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    int-to-long v6, v5

    aput-wide v6, v4, v8

    .line 155
    iget v5, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    int-to-long v6, v5

    aput-wide v6, v4, v9

    .line 156
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v5

    int-to-long v6, v5

    aput-wide v6, v4, v10

    .line 163
    .end local v0    # "mAm":Landroid/app/ActivityManager;
    .end local v1    # "memoryInfoArray":[Landroid/os/Debug$MemoryInfo;
    .end local v2    # "pidMemoryInfo":Landroid/os/Debug$MemoryInfo;
    .end local v3    # "pids":[I
    :goto_0
    return-object v4

    .line 158
    :cond_0
    aput-wide v6, v4, v8

    .line 159
    aput-wide v6, v4, v9

    .line 160
    aput-wide v6, v4, v10

    goto :goto_0
.end method

.method public static getPrivDirty(Landroid/content/Context;I)[J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 124
    .line 125
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, Landroid/app/ActivityManager;

    .line 126
    .local v0, "mAm":Landroid/app/ActivityManager;
    new-array v3, v9, [I

    .line 127
    .local v3, "pids":[I
    aput p1, v3, v8

    .line 128
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 129
    .local v1, "memoryInfoArray":[Landroid/os/Debug$MemoryInfo;
    aget-object v2, v1, v8

    .line 130
    .local v2, "pidMemoryInfo":Landroid/os/Debug$MemoryInfo;
    const/4 v5, 0x3

    new-array v4, v5, [J

    .line 131
    .local v4, "value":[J
    iget v5, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    int-to-long v6, v5

    aput-wide v6, v4, v8

    .line 132
    iget v5, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    int-to-long v6, v5

    aput-wide v6, v4, v9

    .line 133
    const/4 v5, 0x2

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v5

    .line 134
    return-object v4
.end method

.method public static getTotalMem()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/MemUtils;->getMemInfo()[J

    move-result-object v0

    .line 90
    .local v0, "memInfo":[J
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVM()[J
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 205
    const/4 v1, 0x5

    new-array v0, v1, [J

    .line 206
    .local v0, "value":[J
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 207
    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    shr-long/2addr v2, v6

    .line 206
    aput-wide v2, v0, v1

    .line 208
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    shr-long/2addr v2, v6

    aput-wide v2, v0, v1

    .line 210
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    shr-long/2addr v2, v6

    aput-wide v2, v0, v1

    .line 211
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    shr-long/2addr v2, v6

    aput-wide v2, v0, v1

    .line 212
    const/4 v1, 0x4

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0xa

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 213
    return-object v0
.end method

.method public static trans2FreeAndTotalMem([J)Ljava/lang/String;
    .locals 6
    .param p0, "memInfo"    # [J

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-wide v2, p0, v1

    const/4 v1, 0x2

    aget-wide v4, p0, v1

    add-long/2addr v2, v4

    const/4 v1, 0x3

    aget-wide v4, p0, v1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "M/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
