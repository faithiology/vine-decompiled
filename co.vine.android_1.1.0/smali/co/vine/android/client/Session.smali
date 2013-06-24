.class public Lco/vine/android/client/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/client/Session$LoginStatus;
    }
.end annotation


# instance fields
.field private mAvatarUrl:Ljava/lang/String;

.field private mLastLogin:J

.field private mLoginEmail:Ljava/lang/String;

.field private mLoginStatus:Lco/vine/android/client/Session$LoginStatus;

.field private mName:Ljava/lang/String;

.field private mSessionKey:Ljava/lang/String;

.field private mUser:Lco/vine/android/api/VineUser;

.field private mUserId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sessionKey"
    .parameter "userId"
    .parameter "name"
    .parameter "avatar"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lco/vine/android/client/Session;->mSessionKey:Ljava/lang/String;

    .line 23
    iput-wide p2, p0, Lco/vine/android/client/Session;->mUserId:J

    .line 24
    iput-object p4, p0, Lco/vine/android/client/Session;->mName:Ljava/lang/String;

    .line 25
    sget-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGED_OUT:Lco/vine/android/client/Session$LoginStatus;

    iput-object v0, p0, Lco/vine/android/client/Session;->mLoginStatus:Lco/vine/android/client/Session$LoginStatus;

    .line 26
    iput-object p5, p0, Lco/vine/android/client/Session;->mAvatarUrl:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lco/vine/android/client/Session;->mAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lco/vine/android/client/Session;->mLoginEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginStatus()Lco/vine/android/client/Session$LoginStatus;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lco/vine/android/client/Session;->mLoginStatus:Lco/vine/android/client/Session$LoginStatus;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lco/vine/android/client/Session;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lco/vine/android/client/Session;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lco/vine/android/client/Session;->mUserId:J

    return-wide v0
.end method

.method public isLoggedIn()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lco/vine/android/client/Session;->mLoginStatus:Lco/vine/android/client/Session$LoginStatus;

    sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;

    invoke-virtual {v0, v1}, Lco/vine/android/client/Session$LoginStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public logout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iput-object v2, p0, Lco/vine/android/client/Session;->mLoginEmail:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lco/vine/android/client/Session;->mSessionKey:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lco/vine/android/client/Session;->mName:Ljava/lang/String;

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/vine/android/client/Session;->mUserId:J

    .line 91
    iput-object v2, p0, Lco/vine/android/client/Session;->mAvatarUrl:Ljava/lang/String;

    .line 92
    sget-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGED_OUT:Lco/vine/android/client/Session$LoginStatus;

    iput-object v0, p0, Lco/vine/android/client/Session;->mLoginStatus:Lco/vine/android/client/Session$LoginStatus;

    .line 93
    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 51
    iput-object p1, p0, Lco/vine/android/client/Session;->mAvatarUrl:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setLoginEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "loginEmail"

    .prologue
    .line 83
    iput-object p1, p0, Lco/vine/android/client/Session;->mLoginEmail:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V
    .locals 0
    .parameter "loginStatus"

    .prologue
    .line 55
    iput-object p1, p0, Lco/vine/android/client/Session;->mLoginStatus:Lco/vine/android/client/Session$LoginStatus;

    .line 56
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "login"

    .prologue
    .line 71
    iput-object p1, p0, Lco/vine/android/client/Session;->mName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 34
    iput-object p1, p0, Lco/vine/android/client/Session;->mSessionKey:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUserId(J)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 75
    iput-wide p1, p0, Lco/vine/android/client/Session;->mUserId:J

    .line 76
    return-void
.end method
