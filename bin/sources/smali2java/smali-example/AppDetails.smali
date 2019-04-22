.class public Lcom/noshufou/android/su/AppDetails;
.super Ljava/lang/Object;
.source "AppDetails.java"


# static fields
.field public static final ALLOW:I = 0x1

.field public static final ALLOW_CODE:Ljava/lang/String; = "ALLOW"

.field public static final ASK:I = -0x1

.field public static final DENY:I = 0x0

.field public static final DENY_CODE:Ljava/lang/String; = "DENY"

.field private static final TAG:Ljava/lang/String; = "Su.AppDetails"


# instance fields
.field private mAccessType:I

.field private mAllow:I

.field private mCommand:Ljava/lang/String;

.field private mDateAccess:J

.field private mDateCreated:J

.field private mExecUid:I

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method constructor <init>(IIJ)V
    .locals 0
    .parameter "uid"
    .parameter "allow"
    .parameter "dateAccess"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/noshufou/android/su/AppDetails;->mUid:I

    .line 33
    iput p2, p0, Lcom/noshufou/android/su/AppDetails;->mAllow:I

    .line 34
    iput-wide p3, p0, Lcom/noshufou/android/su/AppDetails;->mDateAccess:J

    .line 35
    return-void
.end method


# virtual methods
.method public getAccessType()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/noshufou/android/su/AppDetails;->mAccessType:I

    return v0
.end method

.method public getAllow()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/noshufou/android/su/AppDetails;->mAllow:I

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/noshufou/android/su/AppDetails;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAccess()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/noshufou/android/su/AppDetails;->mDateAccess:J

    return-wide v0
.end method

.method public getDateCreated()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/noshufou/android/su/AppDetails;->mDateCreated:J

    return-wide v0
.end method

.method public getExecUid()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/noshufou/android/su/AppDetails;->mExecUid:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/noshufou/android/su/AppDetails;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/noshufou/android/su/AppDetails;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/noshufou/android/su/AppDetails;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionBool()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 42
    iget v0, p0, Lcom/noshufou/android/su/AppDetails;->mAllow:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPermissionCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/noshufou/android/su/AppDetails;->mAllow:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ALLOW"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DENY"

    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/noshufou/android/su/AppDetails;->mUid:I

    return v0
.end method

.method public setAccessType(I)V
    .locals 3
    .parameter "accessType"

    .prologue
    .line 118
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 119
    :cond_0
    iput p1, p0, Lcom/noshufou/android/su/AppDetails;->mAccessType:I

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v0, "Su.AppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppDetails.setAccessType(int): accessType should be 1 or 3. accessType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/noshufou/android/su/AppDetails;->mAccessType:I

    goto :goto_0
.end method

.method public setAllow(I)V
    .locals 3
    .parameter "allow"

    .prologue
    .line 98
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 99
    :cond_0
    iput p1, p0, Lcom/noshufou/android/su/AppDetails;->mAllow:I

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v0, "Su.AppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppDetails.setAllow(int): accessType should be 1, 2, or 3. allow="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/noshufou/android/su/AppDetails;->mCommand:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setDateAccess(J)V
    .locals 0
    .parameter "mDateAccess"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/noshufou/android/su/AppDetails;->mDateAccess:J

    .line 111
    return-void
.end method

.method public setDateCreated(J)V
    .locals 0
    .parameter "mDateCreated"

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/noshufou/android/su/AppDetails;->mDateCreated:J

    .line 132
    return-void
.end method

.method public setExecUid(I)V
    .locals 0
    .parameter "execUid"

    .prologue
    .line 82
    iput p1, p0, Lcom/noshufou/android/su/AppDetails;->mExecUid:I

    .line 83
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 50
    iput p1, p0, Lcom/noshufou/android/su/AppDetails;->mId:I

    .line 51
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/noshufou/android/su/AppDetails;->mName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/noshufou/android/su/AppDetails;->mPackageName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 58
    iput p1, p0, Lcom/noshufou/android/su/AppDetails;->mUid:I

    .line 59
    return-void
.end method

.method public setUid(I[IJLcom/noshufou/android/su/AppDetails;)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/noshufou/android/su/AppDetails;->mUid:I

    .line 59
    return-void
.end method

