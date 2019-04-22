.class public interface abstract Lcom/tencent/wstt/gt/manager/IInParaManager;
.super Ljava/lang/Object;
.source "IInParaManager.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInPara(Ljava/lang/String;B)B
.end method

.method public abstract getInPara(Ljava/lang/String;D)D
.end method

.method public abstract getInPara(Ljava/lang/String;F)F
.end method

.method public abstract getInPara(Ljava/lang/String;I)I
.end method

.method public abstract getInPara(Ljava/lang/String;J)J
.end method

.method public abstract getInPara(I)Lcom/tencent/wstt/gt/InPara;
.end method

.method public abstract getInPara(Ljava/lang/String;)Lcom/tencent/wstt/gt/InPara;
.end method

.method public abstract getInPara(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInPara(Ljava/lang/String;S)S
.end method

.method public abstract getInPara(Ljava/lang/String;Z)Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract register(Lcom/tencent/wstt/gt/InPara;)V
.end method

.method public varargs abstract register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract removeOutPara(Ljava/lang/String;)V
.end method
