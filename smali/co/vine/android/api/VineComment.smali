.class public Lco/vine/android/api/VineComment;
.super Ljava/lang/Object;
.source "VineComment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VineComment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public comment:Ljava/lang/String;

.field public commentId:J

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineEntity;",
            ">;"
        }
    .end annotation
.end field

.field public location:Ljava/lang/String;

.field public postId:J

.field public timestamp:J

.field public user:Lco/vine/android/api/VineUser;

.field public userId:J

.field public username:Ljava/lang/String;

.field public verified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lco/vine/android/api/VineComment$1;

    invoke-direct {v0}, Lco/vine/android/api/VineComment$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineComment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineUser;JLjava/lang/String;JLjava/lang/String;ZJLjava/util/ArrayList;)V
    .locals 0
    .parameter "commentId"
    .parameter "comment"
    .parameter "avatarUrl"
    .parameter "user"
    .parameter "timestamp"
    .parameter "location"
    .parameter "userId"
    .parameter "username"
    .parameter "verified"
    .parameter "postId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lco/vine/android/api/VineUser;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p15, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lco/vine/android/api/VineComment;->commentId:J

    .line 43
    iput-object p4, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    .line 46
    iput-wide p6, p0, Lco/vine/android/api/VineComment;->timestamp:J

    .line 47
    iput-object p8, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    .line 48
    iput-wide p9, p0, Lco/vine/android/api/VineComment;->userId:J

    .line 49
    iput-object p11, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    .line 50
    iput-boolean p12, p0, Lco/vine/android/api/VineComment;->verified:Z

    .line 51
    iput-wide p13, p0, Lco/vine/android/api/VineComment;->postId:J

    .line 52
    iput-object p15, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/api/VineComment;->commentId:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    .line 85
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineUser;

    iput-object v0, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/api/VineComment;->timestamp:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/api/VineComment;->userId:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lco/vine/android/api/VineComment;->verified:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineComment;->postId:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    .line 93
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static from(Landroid/database/Cursor;)Lco/vine/android/api/VineComment;
    .locals 18
    .parameter "c"

    .prologue
    .line 65
    new-instance v2, Lco/vine/android/api/VineComment;

    const/16 v3, 0x24

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/16 v5, 0x25

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x26

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x28

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v10, 0x29

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x27

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/16 v13, 0x2a

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2b

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    const/4 v14, 0x1

    :goto_0
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v17, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    invoke-direct/range {v2 .. v17}, Lco/vine/android/api/VineComment;-><init>(JLjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineUser;JLjava/lang/String;JLjava/lang/String;ZJLjava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v14, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 118
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

    .line 120
    check-cast v0, Lco/vine/android/api/VineComment;

    .line 122
    .local v0, that:Lco/vine/android/api/VineComment;
    iget-wide v3, p0, Lco/vine/android/api/VineComment;->commentId:J

    iget-wide v5, v0, Lco/vine/android/api/VineComment;->commentId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 123
    :cond_4
    iget-wide v3, p0, Lco/vine/android/api/VineComment;->postId:J

    iget-wide v5, v0, Lco/vine/android/api/VineComment;->postId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 124
    :cond_5
    iget-wide v3, p0, Lco/vine/android/api/VineComment;->timestamp:J

    iget-wide v5, v0, Lco/vine/android/api/VineComment;->timestamp:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 125
    :cond_6
    iget-wide v3, p0, Lco/vine/android/api/VineComment;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/VineComment;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 126
    :cond_7
    iget-boolean v3, p0, Lco/vine/android/api/VineComment;->verified:Z

    iget-boolean v4, v0, Lco/vine/android/api/VineComment;->verified:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 127
    :cond_8
    iget-object v3, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 128
    goto :goto_0

    .line 127
    :cond_a
    iget-object v3, v0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 129
    :cond_b
    iget-object v3, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    goto :goto_0

    :cond_d
    iget-object v3, v0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 130
    :cond_e
    iget-object v3, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    iget-object v4, v0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v1, v2

    .line 131
    goto :goto_0

    .line 130
    :cond_10
    iget-object v3, v0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    if-nez v3, :cond_f

    .line 132
    :cond_11
    iget-object v3, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    move v1, v2

    .line 133
    goto/16 :goto_0

    .line 132
    :cond_13
    iget-object v3, v0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 134
    :cond_14
    iget-object v3, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    iget-object v4, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v3, v4}, Lco/vine/android/api/VineUser;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_15
    move v1, v2

    goto/16 :goto_0

    :cond_16
    iget-object v3, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    if-nez v3, :cond_15

    .line 135
    :cond_17
    iget-object v3, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 136
    goto/16 :goto_0

    .line 135
    :cond_18
    iget-object v3, v0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 143
    iget-wide v3, p0, Lco/vine/android/api/VineComment;->commentId:J

    iget-wide v5, p0, Lco/vine/android/api/VineComment;->commentId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    .line 144
    .local v0, result:I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 145
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 146
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v1}, Lco/vine/android/api/VineUser;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 147
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineComment;->timestamp:J

    iget-wide v5, p0, Lco/vine/android/api/VineComment;->timestamp:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 148
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int v0, v3, v1

    .line 149
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineComment;->userId:J

    iget-wide v5, p0, Lco/vine/android/api/VineComment;->userId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 150
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int v0, v3, v1

    .line 151
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lco/vine/android/api/VineComment;->verified:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_5
    add-int v0, v3, v1

    .line 152
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineComment;->postId:J

    iget-wide v5, p0, Lco/vine/android/api/VineComment;->postId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 153
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 154
    return v0

    :cond_1
    move v1, v2

    .line 144
    goto :goto_0

    :cond_2
    move v1, v2

    .line 145
    goto :goto_1

    :cond_3
    move v1, v2

    .line 146
    goto :goto_2

    :cond_4
    move v1, v2

    .line 148
    goto :goto_3

    :cond_5
    move v1, v2

    .line 150
    goto :goto_4

    :cond_6
    move v1, v2

    .line 151
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 102
    iget-wide v0, p0, Lco/vine/android/api/VineComment;->commentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-object v0, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget-wide v0, p0, Lco/vine/android/api/VineComment;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-object v0, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-wide v0, p0, Lco/vine/android/api/VineComment;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-object v0, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lco/vine/android/api/VineComment;->verified:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-wide v0, p0, Lco/vine/android/api/VineComment;->postId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-object v0, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 113
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
