.class public Lco/vine/android/api/VineLogin;
.super Ljava/lang/Object;
.source "VineLogin.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VineLogin;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOGIN_TYPE_EMAIL:I = 0x1

.field public static final LOGIN_TYPE_TWITTER:I = 0x2


# instance fields
.field public key:Ljava/lang/String;

.field public loginType:I

.field public name:Ljava/lang/String;

.field public twitterSecret:Ljava/lang/String;

.field public twitterToken:Ljava/lang/String;

.field public twitterUserId:J

.field public twitterUsername:Ljava/lang/String;

.field public userId:J

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lco/vine/android/api/VineLogin$1;

    invoke-direct {v0}, Lco/vine/android/api/VineLogin$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineLogin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineLogin;->userId:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineLogin;->loginType:I

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "key"
    .parameter "username"
    .parameter "userId"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    .line 27
    iput-wide p3, p0, Lco/vine/android/api/VineLogin;->userId:J

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lco/vine/android/api/VineLogin;->loginType:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "key"
    .parameter "twitterUsername"
    .parameter "twitterToken"
    .parameter "twitterSecret"
    .parameter "twitterUserId"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    .line 37
    iput-wide p5, p0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lco/vine/android/api/VineLogin;->loginType:I

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 58
    check-cast v0, Lco/vine/android/api/VineLogin;

    .line 60
    .local v0, vineLogin:Lco/vine/android/api/VineLogin;
    iget v3, p0, Lco/vine/android/api/VineLogin;->loginType:I

    iget v4, v0, Lco/vine/android/api/VineLogin;->loginType:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 61
    :cond_4
    iget-wide v3, p0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    iget-wide v5, v0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 62
    :cond_5
    iget-wide v3, p0, Lco/vine/android/api/VineLogin;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/VineLogin;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 63
    :cond_6
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 64
    :cond_9
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 65
    :cond_c
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    .line 67
    goto :goto_0

    .line 65
    :cond_e
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 68
    :cond_f
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    .line 70
    goto :goto_0

    .line 68
    :cond_11
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 71
    :cond_12
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    move v1, v2

    .line 73
    goto/16 :goto_0

    .line 71
    :cond_14
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 74
    :cond_15
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 75
    goto/16 :goto_0

    .line 74
    :cond_16
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 82
    iget-object v2, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 83
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 84
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 85
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 86
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 87
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 88
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lco/vine/android/api/VineLogin;->userId:J

    iget-wide v4, p0, Lco/vine/android/api/VineLogin;->userId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 89
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    iget-wide v4, p0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 90
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineLogin;->loginType:I

    add-int v0, v1, v2

    .line 91
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 82
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 83
    goto :goto_1

    :cond_3
    move v2, v1

    .line 84
    goto :goto_2

    :cond_4
    move v2, v1

    .line 85
    goto :goto_3

    :cond_5
    move v2, v1

    .line 86
    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "i"

    .prologue
    .line 101
    iget-object v0, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-wide v0, p0, Lco/vine/android/api/VineLogin;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-wide v0, p0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget v0, p0, Lco/vine/android/api/VineLogin;->loginType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return-void
.end method
