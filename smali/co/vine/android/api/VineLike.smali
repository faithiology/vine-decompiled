.class public Lco/vine/android/api/VineLike;
.super Ljava/lang/Object;
.source "VineLike.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VineLike;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public created:J

.field public likeId:J

.field public location:Ljava/lang/String;

.field public postId:J

.field public user:Lco/vine/android/api/VineUser;

.field public userId:J

.field public username:Ljava/lang/String;

.field public verified:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lco/vine/android/api/VineLike$1;

    invoke-direct {v0}, Lco/vine/android/api/VineLike$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineLike;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineLike;->postId:J

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineLike;->created:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineLike;->likeId:J

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineLike;->userId:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineLike;->verified:I

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineUser;

    iput-object v0, p0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    .line 45
    return-void
.end method

.method public static from(Landroid/database/Cursor;)Lco/vine/android/api/VineLike;
    .locals 3
    .parameter "c"

    .prologue
    .line 56
    new-instance v0, Lco/vine/android/api/VineLike;

    invoke-direct {v0}, Lco/vine/android/api/VineLike;-><init>()V

    .line 57
    .local v0, v:Lco/vine/android/api/VineLike;
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lco/vine/android/api/VineLike;->postId:J

    .line 58
    const/16 v1, 0x1e

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    .line 59
    const/16 v1, 0x21

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    .line 60
    const/16 v1, 0x22

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    .line 61
    const/16 v1, 0x20

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lco/vine/android/api/VineLike;->created:J

    .line 62
    const/16 v1, 0x1d

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lco/vine/android/api/VineLike;->likeId:J

    .line 63
    const/16 v1, 0x1f

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lco/vine/android/api/VineLike;->userId:J

    .line 64
    const/16 v1, 0x23

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VineLike;->verified:I

    .line 65
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 89
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

    .line 91
    check-cast v0, Lco/vine/android/api/VineLike;

    .line 93
    .local v0, vineLike:Lco/vine/android/api/VineLike;
    iget-wide v3, p0, Lco/vine/android/api/VineLike;->created:J

    iget-wide v5, v0, Lco/vine/android/api/VineLike;->created:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 94
    :cond_4
    iget-wide v3, p0, Lco/vine/android/api/VineLike;->likeId:J

    iget-wide v5, v0, Lco/vine/android/api/VineLike;->likeId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 95
    :cond_5
    iget-wide v3, p0, Lco/vine/android/api/VineLike;->postId:J

    iget-wide v5, v0, Lco/vine/android/api/VineLike;->postId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 96
    :cond_6
    iget-wide v3, p0, Lco/vine/android/api/VineLike;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/VineLike;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 97
    :cond_7
    iget v3, p0, Lco/vine/android/api/VineLike;->verified:I

    iget v4, v0, Lco/vine/android/api/VineLike;->verified:I

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 98
    :cond_8
    iget-object v3, p0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 99
    goto :goto_0

    .line 98
    :cond_a
    iget-object v3, v0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 100
    :cond_b
    iget-object v3, p0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 101
    goto :goto_0

    .line 100
    :cond_d
    iget-object v3, v0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 102
    :cond_e
    iget-object v3, p0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    iget-object v4, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v3, v4}, Lco/vine/android/api/VineUser;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v1, v2

    goto :goto_0

    :cond_10
    iget-object v3, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    if-nez v3, :cond_f

    .line 103
    :cond_11
    iget-object v3, p0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 104
    goto/16 :goto_0

    .line 103
    :cond_12
    iget-object v3, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 111
    iget-wide v3, p0, Lco/vine/android/api/VineLike;->postId:J

    iget-wide v5, p0, Lco/vine/android/api/VineLike;->postId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    .line 112
    .local v0, result:I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 113
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 114
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 115
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineLike;->created:J

    iget-wide v5, p0, Lco/vine/android/api/VineLike;->created:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 116
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineLike;->likeId:J

    iget-wide v5, p0, Lco/vine/android/api/VineLike;->likeId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 117
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineLike;->userId:J

    iget-wide v5, p0, Lco/vine/android/api/VineLike;->userId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 118
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineLike;->verified:I

    add-int v0, v1, v3

    .line 119
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v2}, Lco/vine/android/api/VineUser;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 120
    return v0

    :cond_1
    move v1, v2

    .line 112
    goto :goto_0

    :cond_2
    move v1, v2

    .line 113
    goto :goto_1

    :cond_3
    move v1, v2

    .line 114
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 70
    iget-wide v0, p0, Lco/vine/android/api/VineLike;->postId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-object v0, p0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-wide v0, p0, Lco/vine/android/api/VineLike;->created:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Lco/vine/android/api/VineLike;->likeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-wide v0, p0, Lco/vine/android/api/VineLike;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget v0, p0, Lco/vine/android/api/VineLike;->verified:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-object v0, p0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    return-void
.end method
