.class public Lco/vine/android/api/TwitterUser;
.super Ljava/lang/Object;
.source "TwitterUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/TwitterUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultProfileImage:Z

.field public description:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public profileUrl:Ljava/lang/String;

.field public screenName:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public userId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lco/vine/android/api/TwitterUser$1;

    invoke-direct {v0}, Lco/vine/android/api/TwitterUser$1;-><init>()V

    sput-object v0, Lco/vine/android/api/TwitterUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/TwitterUser;->userId:J

    .line 41
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0
    .parameter "name"
    .parameter "screenName"
    .parameter "location"
    .parameter "description"
    .parameter "url"
    .parameter "profileUrl"
    .parameter "defaultProfileImage"
    .parameter "userId"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    .line 28
    iput-boolean p7, p0, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    .line 29
    iput-wide p8, p0, Lco/vine/android/api/TwitterUser;->userId:J

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 63
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

    .line 65
    check-cast v0, Lco/vine/android/api/TwitterUser;

    .line 67
    .local v0, that:Lco/vine/android/api/TwitterUser;
    iget-boolean v3, p0, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    iget-boolean v4, v0, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 68
    :cond_4
    iget-wide v3, p0, Lco/vine/android/api/TwitterUser;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/TwitterUser;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 69
    :cond_5
    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 70
    goto :goto_0

    .line 69
    :cond_7
    iget-object v3, v0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 71
    :cond_8
    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 72
    goto :goto_0

    .line 71
    :cond_a
    iget-object v3, v0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 73
    :cond_b
    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    goto :goto_0

    :cond_d
    iget-object v3, v0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 74
    :cond_e
    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v1, v2

    .line 75
    goto :goto_0

    .line 74
    :cond_10
    iget-object v3, v0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 76
    :cond_11
    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    move v1, v2

    .line 77
    goto/16 :goto_0

    .line 76
    :cond_13
    iget-object v3, v0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 78
    :cond_14
    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto/16 :goto_0

    :cond_15
    iget-object v3, v0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 86
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 87
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 88
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 89
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 90
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 91
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int v0, v2, v1

    .line 92
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lco/vine/android/api/TwitterUser;->userId:J

    iget-wide v4, p0, Lco/vine/android/api/TwitterUser;->userId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 93
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 85
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 86
    goto :goto_1

    :cond_3
    move v2, v1

    .line 87
    goto :goto_2

    :cond_4
    move v2, v1

    .line 88
    goto :goto_3

    :cond_5
    move v2, v1

    .line 89
    goto :goto_4

    :cond_6
    move v2, v1

    .line 90
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 50
    iget-object v0, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-boolean v0, p0, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-wide v0, p0, Lco/vine/android/api/TwitterUser;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
