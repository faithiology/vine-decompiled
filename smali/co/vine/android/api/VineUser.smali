.class public Lco/vine/android/api/VineUser;
.super Ljava/lang/Object;
.source "VineUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public blocked:I

.field public blocking:I

.field public description:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public explicit:I

.field public followerCount:I

.field public following:I

.field public followingCount:I

.field public likeCount:I

.field public location:Ljava/lang/String;

.field public orderId:J

.field public phoneNumber:Ljava/lang/String;

.field public postCount:I

.field public twitterConnected:I

.field public userId:J

.field public username:Ljava/lang/String;

.field public verified:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lco/vine/android/api/VineUser$1;

    invoke-direct {v0}, Lco/vine/android/api/VineUser$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineUser;->userId:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineUser;->orderId:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->blocked:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->blocking:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->explicit:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->followerCount:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->followingCount:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->following:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->likeCount:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->postCount:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->verified:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->twitterConnected:I

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIIIIIIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "username"
    .parameter "avatarUrl"
    .parameter "description"
    .parameter "location"
    .parameter "userId"
    .parameter "orderId"
    .parameter "blocked"
    .parameter "blocking"
    .parameter "explicit"
    .parameter "followerCount"
    .parameter "followingCount"
    .parameter "following"
    .parameter "likeCount"
    .parameter "postCount"
    .parameter "verified"
    .parameter "email"
    .parameter "phoneNumber"
    .parameter "twitterConnected"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    .line 42
    iput-wide p5, p0, Lco/vine/android/api/VineUser;->userId:J

    .line 43
    iput-wide p7, p0, Lco/vine/android/api/VineUser;->orderId:J

    .line 44
    iput p9, p0, Lco/vine/android/api/VineUser;->blocked:I

    .line 45
    iput p10, p0, Lco/vine/android/api/VineUser;->blocking:I

    .line 46
    iput p11, p0, Lco/vine/android/api/VineUser;->explicit:I

    .line 47
    iput p12, p0, Lco/vine/android/api/VineUser;->followerCount:I

    .line 48
    iput p13, p0, Lco/vine/android/api/VineUser;->followingCount:I

    .line 49
    iput p14, p0, Lco/vine/android/api/VineUser;->following:I

    .line 50
    move/from16 v0, p15

    iput v0, p0, Lco/vine/android/api/VineUser;->likeCount:I

    .line 51
    move/from16 v0, p16

    iput v0, p0, Lco/vine/android/api/VineUser;->postCount:I

    .line 52
    move/from16 v0, p17

    iput v0, p0, Lco/vine/android/api/VineUser;->verified:I

    .line 53
    move-object/from16 v0, p18

    iput-object v0, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    .line 54
    move-object/from16 v0, p19

    iput-object v0, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    .line 55
    move/from16 v0, p20

    iput v0, p0, Lco/vine/android/api/VineUser;->twitterConnected:I

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-ne p0, p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 109
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

    .line 111
    check-cast v0, Lco/vine/android/api/VineUser;

    .line 113
    .local v0, vineUser:Lco/vine/android/api/VineUser;
    iget v3, p0, Lco/vine/android/api/VineUser;->blocked:I

    iget v4, v0, Lco/vine/android/api/VineUser;->blocked:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 114
    :cond_4
    iget v3, p0, Lco/vine/android/api/VineUser;->blocking:I

    iget v4, v0, Lco/vine/android/api/VineUser;->blocking:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 115
    :cond_5
    iget v3, p0, Lco/vine/android/api/VineUser;->explicit:I

    iget v4, v0, Lco/vine/android/api/VineUser;->explicit:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 116
    :cond_6
    iget v3, p0, Lco/vine/android/api/VineUser;->followerCount:I

    iget v4, v0, Lco/vine/android/api/VineUser;->followerCount:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 117
    :cond_7
    iget v3, p0, Lco/vine/android/api/VineUser;->following:I

    iget v4, v0, Lco/vine/android/api/VineUser;->following:I

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 118
    :cond_8
    iget v3, p0, Lco/vine/android/api/VineUser;->followingCount:I

    iget v4, v0, Lco/vine/android/api/VineUser;->followingCount:I

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 119
    :cond_9
    iget v3, p0, Lco/vine/android/api/VineUser;->likeCount:I

    iget v4, v0, Lco/vine/android/api/VineUser;->likeCount:I

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 120
    :cond_a
    iget-wide v3, p0, Lco/vine/android/api/VineUser;->orderId:J

    iget-wide v5, v0, Lco/vine/android/api/VineUser;->orderId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0

    .line 121
    :cond_b
    iget v3, p0, Lco/vine/android/api/VineUser;->postCount:I

    iget v4, v0, Lco/vine/android/api/VineUser;->postCount:I

    if-eq v3, v4, :cond_c

    move v1, v2

    goto :goto_0

    .line 122
    :cond_c
    iget v3, p0, Lco/vine/android/api/VineUser;->twitterConnected:I

    iget v4, v0, Lco/vine/android/api/VineUser;->twitterConnected:I

    if-eq v3, v4, :cond_d

    move v1, v2

    goto :goto_0

    .line 123
    :cond_d
    iget-wide v3, p0, Lco/vine/android/api/VineUser;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/VineUser;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e

    move v1, v2

    goto :goto_0

    .line 124
    :cond_e
    iget v3, p0, Lco/vine/android/api/VineUser;->verified:I

    iget v4, v0, Lco/vine/android/api/VineUser;->verified:I

    if-eq v3, v4, :cond_f

    move v1, v2

    goto :goto_0

    .line 125
    :cond_f
    iget-object v3, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    .line 126
    goto/16 :goto_0

    .line 125
    :cond_11
    iget-object v3, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 127
    :cond_12
    iget-object v3, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    move v1, v2

    .line 129
    goto/16 :goto_0

    .line 127
    :cond_14
    iget-object v3, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 130
    :cond_15
    iget-object v3, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_16
    move v1, v2

    goto/16 :goto_0

    :cond_17
    iget-object v3, v0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 131
    :cond_18
    iget-object v3, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_19
    move v1, v2

    .line 132
    goto/16 :goto_0

    .line 131
    :cond_1a
    iget-object v3, v0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    if-nez v3, :cond_19

    .line 133
    :cond_1b
    iget-object v3, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1c
    move v1, v2

    .line 135
    goto/16 :goto_0

    .line 133
    :cond_1d
    iget-object v3, v0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 136
    :cond_1e
    iget-object v3, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 137
    goto/16 :goto_0

    .line 136
    :cond_1f
    iget-object v3, v0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 144
    iget-object v2, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 145
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 146
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 147
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 148
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 149
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 150
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lco/vine/android/api/VineUser;->userId:J

    iget-wide v4, p0, Lco/vine/android/api/VineUser;->userId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 151
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lco/vine/android/api/VineUser;->orderId:J

    iget-wide v4, p0, Lco/vine/android/api/VineUser;->orderId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 152
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineUser;->blocked:I

    add-int v0, v1, v2

    .line 153
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineUser;->blocking:I

    add-int v0, v1, v2

    .line 154
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineUser;->explicit:I

    add-int v0, v1, v2

    .line 155
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineUser;->followerCount:I

    add-int v0, v1, v2

    .line 156
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineUser;->followingCount:I

    add-int v0, v1, v2

    .line 157
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineUser;->following:I

    add-int v0, v1, v2

    .line 158
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineUser;->likeCount:I

    add-int v0, v1, v2

    .line 159
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineUser;->postCount:I

    add-int v0, v1, v2

    .line 160
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineUser;->verified:I

    add-int v0, v1, v2

    .line 161
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineUser;->twitterConnected:I

    add-int v0, v1, v2

    .line 162
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 144
    goto/16 :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 145
    goto/16 :goto_1

    :cond_3
    move v2, v1

    .line 146
    goto/16 :goto_2

    :cond_4
    move v2, v1

    .line 147
    goto :goto_3

    :cond_5
    move v2, v1

    .line 148
    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 86
    iget-object v0, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-wide v0, p0, Lco/vine/android/api/VineUser;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-wide v0, p0, Lco/vine/android/api/VineUser;->orderId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget v0, p0, Lco/vine/android/api/VineUser;->blocked:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lco/vine/android/api/VineUser;->blocking:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lco/vine/android/api/VineUser;->explicit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lco/vine/android/api/VineUser;->followerCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lco/vine/android/api/VineUser;->followingCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lco/vine/android/api/VineUser;->following:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lco/vine/android/api/VineUser;->likeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lco/vine/android/api/VineUser;->postCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lco/vine/android/api/VineUser;->verified:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lco/vine/android/api/VineUser;->twitterConnected:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
