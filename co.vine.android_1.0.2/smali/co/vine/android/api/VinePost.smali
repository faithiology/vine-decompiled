.class public Lco/vine/android/api/VinePost;
.super Ljava/lang/Object;
.source "VinePost.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public comments:Lco/vine/android/api/VinePagedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VinePagedData",
            "<",
            "Lco/vine/android/api/VineComment;",
            ">;"
        }
    .end annotation
.end field

.field public commentsCount:I

.field public created:J

.field public description:Ljava/lang/String;

.field public explicitContent:I

.field public foursquareVenueId:Ljava/lang/String;

.field public isLast:Z

.field public liked:Z

.field public likes:Lco/vine/android/api/VinePagedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VinePagedData",
            "<",
            "Lco/vine/android/api/VineLike;",
            ">;"
        }
    .end annotation
.end field

.field public likesCount:I

.field public location:Ljava/lang/String;

.field public postFlags:I

.field public postId:J

.field public postToFacebook:I

.field public postToTwitter:I

.field public postVerified:I

.field public promoted:I

.field public shareUrl:Ljava/lang/String;

.field public tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineTag;",
            ">;"
        }
    .end annotation
.end field

.field public thumbnailUrl:Ljava/lang/String;

.field public user:Lco/vine/android/api/VineUser;

.field public userId:J

.field public username:Ljava/lang/String;

.field public venueData:Lco/vine/android/api/VineVenue;

.field public verified:I

.field public videoLowURL:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 84
    .local v0, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lco/vine/android/api/VinePost;->created:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lco/vine/android/api/VinePost;->liked:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lco/vine/android/api/VinePost;->isLast:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->explicitContent:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->postFlags:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->postToFacebook:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->postToTwitter:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->postVerified:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->promoted:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->verified:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->likesCount:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->commentsCount:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VinePost;->userId:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VinePost;->postId:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VinePagedData;

    iput-object v1, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VinePagedData;

    iput-object v1, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineUser;

    iput-object v1, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineVenue;

    iput-object v1, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    .line 110
    return-void

    :cond_0
    move v1, v3

    .line 85
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 86
    goto/16 :goto_1
.end method

.method public static from(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;
    .locals 7
    .parameter "c"

    .prologue
    const/16 v6, 0x18

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 121
    new-instance v0, Lco/vine/android/api/VinePost;

    invoke-direct {v0}, Lco/vine/android/api/VinePost;-><init>()V

    .line 123
    .local v0, p:Lco/vine/android/api/VinePost;
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lco/vine/android/api/VinePost;->postId:J

    .line 125
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    .line 126
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    .line 127
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    .line 128
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    .line 129
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lco/vine/android/api/VinePost;->liked:Z

    .line 130
    const/16 v1, 0x12

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, v0, Lco/vine/android/api/VinePost;->isLast:Z

    .line 131
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->explicitContent:I

    .line 132
    const/16 v1, 0xb

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->postFlags:I

    .line 133
    const/16 v1, 0xc

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->postToFacebook:I

    .line 134
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->postToTwitter:I

    .line 135
    const/16 v1, 0xe

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->postVerified:I

    .line 136
    const/16 v1, 0xf

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->promoted:I

    .line 137
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->verified:I

    .line 138
    const/16 v1, 0x1a

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->likesCount:I

    .line 139
    const/16 v1, 0x1b

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->commentsCount:I

    .line 140
    const/16 v1, 0x14

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lco/vine/android/api/VinePost;->userId:J

    .line 141
    const/16 v1, 0x15

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lco/vine/android/api/VinePost;->created:J

    .line 142
    const/16 v1, 0x13

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    .line 143
    const/16 v1, 0x16

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    .line 144
    const/16 v1, 0x17

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    .line 145
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->verified:I

    .line 146
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    .line 147
    new-instance v1, Lco/vine/android/api/VinePagedData;

    invoke-direct {v1}, Lco/vine/android/api/VinePagedData;-><init>()V

    iput-object v1, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    .line 148
    new-instance v1, Lco/vine/android/api/VinePagedData;

    invoke-direct {v1}, Lco/vine/android/api/VinePagedData;-><init>()V

    iput-object v1, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    .line 149
    const/16 v1, 0x19

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineVenue;

    iput-object v1, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    .line 150
    return-object v0

    :cond_0
    move v1, v3

    .line 129
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 130
    goto/16 :goto_1
.end method

.method public static getBytesFromTags(Lco/vine/android/api/VinePost;)[B
    .locals 6
    .parameter "post"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    .local v2, out:Ljava/io/ObjectOutput;
    iget-object v4, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/api/VineTag;

    .line 157
    .local v3, tag:Lco/vine/android/api/VineTag;
    iget-wide v4, v3, Lco/vine/android/api/VineTag;->tagId:J

    invoke-interface {v2, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 158
    iget-object v4, v3, Lco/vine/android/api/VineTag;->tag:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    .end local v3           #tag:Lco/vine/android/api/VineTag;
    :cond_0
    invoke-interface {v2}, Ljava/io/ObjectOutput;->flush()V

    .line 161
    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    .line 162
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 163
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public static setTagFromBytes(Lco/vine/android/api/VinePost;[B)V
    .locals 8
    .parameter "post"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 169
    .local v0, byteArrayInputStream:Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 170
    .local v2, ins:Ljava/io/ObjectInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    .line 175
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 179
    .local v3, tagId:J
    :try_start_1
    iget-object v6, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    new-instance v7, Lco/vine/android/api/VineTag;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v7, v5, v3, v4}, Lco/vine/android/api/VineTag;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    .end local v3           #tagId:J
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 183
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    throw v5

    .line 176
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Ljava/io/EOFException;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 183
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 185
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    if-ne p0, p1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v1

    .line 228
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

    .line 230
    check-cast v0, Lco/vine/android/api/VinePost;

    .line 232
    .local v0, vinePost:Lco/vine/android/api/VinePost;
    iget v3, p0, Lco/vine/android/api/VinePost;->commentsCount:I

    iget v4, v0, Lco/vine/android/api/VinePost;->commentsCount:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 233
    :cond_4
    iget-wide v3, p0, Lco/vine/android/api/VinePost;->created:J

    iget-wide v5, v0, Lco/vine/android/api/VinePost;->created:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 234
    :cond_5
    iget v3, p0, Lco/vine/android/api/VinePost;->explicitContent:I

    iget v4, v0, Lco/vine/android/api/VinePost;->explicitContent:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 235
    :cond_6
    iget-boolean v3, p0, Lco/vine/android/api/VinePost;->isLast:Z

    iget-boolean v4, v0, Lco/vine/android/api/VinePost;->isLast:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 236
    :cond_7
    iget-boolean v3, p0, Lco/vine/android/api/VinePost;->liked:Z

    iget-boolean v4, v0, Lco/vine/android/api/VinePost;->liked:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 237
    :cond_8
    iget v3, p0, Lco/vine/android/api/VinePost;->likesCount:I

    iget v4, v0, Lco/vine/android/api/VinePost;->likesCount:I

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 238
    :cond_9
    iget v3, p0, Lco/vine/android/api/VinePost;->postFlags:I

    iget v4, v0, Lco/vine/android/api/VinePost;->postFlags:I

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 239
    :cond_a
    iget-wide v3, p0, Lco/vine/android/api/VinePost;->postId:J

    iget-wide v5, v0, Lco/vine/android/api/VinePost;->postId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0

    .line 240
    :cond_b
    iget v3, p0, Lco/vine/android/api/VinePost;->postToFacebook:I

    iget v4, v0, Lco/vine/android/api/VinePost;->postToFacebook:I

    if-eq v3, v4, :cond_c

    move v1, v2

    goto :goto_0

    .line 241
    :cond_c
    iget v3, p0, Lco/vine/android/api/VinePost;->postToTwitter:I

    iget v4, v0, Lco/vine/android/api/VinePost;->postToTwitter:I

    if-eq v3, v4, :cond_d

    move v1, v2

    goto :goto_0

    .line 242
    :cond_d
    iget v3, p0, Lco/vine/android/api/VinePost;->postVerified:I

    iget v4, v0, Lco/vine/android/api/VinePost;->postVerified:I

    if-eq v3, v4, :cond_e

    move v1, v2

    goto :goto_0

    .line 243
    :cond_e
    iget v3, p0, Lco/vine/android/api/VinePost;->promoted:I

    iget v4, v0, Lco/vine/android/api/VinePost;->promoted:I

    if-eq v3, v4, :cond_f

    move v1, v2

    goto :goto_0

    .line 244
    :cond_f
    iget-wide v3, p0, Lco/vine/android/api/VinePost;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/VinePost;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_10

    move v1, v2

    goto :goto_0

    .line 245
    :cond_10
    iget v3, p0, Lco/vine/android/api/VinePost;->verified:I

    iget v4, v0, Lco/vine/android/api/VinePost;->verified:I

    if-eq v3, v4, :cond_11

    move v1, v2

    goto/16 :goto_0

    .line 246
    :cond_11
    iget-object v3, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    move v1, v2

    .line 247
    goto/16 :goto_0

    .line 246
    :cond_13
    iget-object v3, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 248
    :cond_14
    iget-object v3, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_15
    move v1, v2

    .line 249
    goto/16 :goto_0

    .line 248
    :cond_16
    iget-object v3, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    if-nez v3, :cond_15

    .line 250
    :cond_17
    iget-object v3, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_18
    move v1, v2

    .line 252
    goto/16 :goto_0

    .line 250
    :cond_19
    iget-object v3, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    if-nez v3, :cond_18

    .line 253
    :cond_1a
    iget-object v3, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_1b
    move v1, v2

    .line 255
    goto/16 :goto_0

    .line 253
    :cond_1c
    iget-object v3, v0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    if-nez v3, :cond_1b

    .line 256
    :cond_1d
    iget-object v3, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1e
    move v1, v2

    goto/16 :goto_0

    :cond_1f
    iget-object v3, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    if-nez v3, :cond_1e

    .line 257
    :cond_20
    iget-object v3, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    :cond_21
    move v1, v2

    .line 258
    goto/16 :goto_0

    .line 257
    :cond_22
    iget-object v3, v0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    if-nez v3, :cond_21

    .line 259
    :cond_23
    iget-object v3, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    :cond_24
    move v1, v2

    .line 260
    goto/16 :goto_0

    .line 259
    :cond_25
    iget-object v3, v0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 261
    :cond_26
    iget-object v3, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_27
    move v1, v2

    goto/16 :goto_0

    :cond_28
    iget-object v3, v0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    if-nez v3, :cond_27

    .line 262
    :cond_29
    iget-object v3, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    :cond_2a
    move v1, v2

    .line 264
    goto/16 :goto_0

    .line 262
    :cond_2b
    iget-object v3, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    if-nez v3, :cond_2a

    .line 265
    :cond_2c
    iget-object v3, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v3, v4}, Lco/vine/android/api/VineUser;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    :cond_2d
    move v1, v2

    goto/16 :goto_0

    :cond_2e
    iget-object v3, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    if-nez v3, :cond_2d

    .line 266
    :cond_2f
    iget-object v3, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    :cond_30
    move v1, v2

    .line 267
    goto/16 :goto_0

    .line 266
    :cond_31
    iget-object v3, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    if-nez v3, :cond_30

    .line 268
    :cond_32
    iget-object v3, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    invoke-virtual {v3, v4}, Lco/vine/android/api/VineVenue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    :cond_33
    move v1, v2

    .line 269
    goto/16 :goto_0

    .line 268
    :cond_34
    iget-object v3, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    if-nez v3, :cond_33

    .line 270
    :cond_35
    iget-object v3, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    if-eqz v3, :cond_37

    iget-object v3, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    :cond_36
    move v1, v2

    .line 272
    goto/16 :goto_0

    .line 270
    :cond_37
    iget-object v3, v0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    if-nez v3, :cond_36

    .line 273
    :cond_38
    iget-object v3, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 274
    goto/16 :goto_0

    .line 273
    :cond_39
    iget-object v3, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 281
    iget-wide v4, p0, Lco/vine/android/api/VinePost;->created:J

    iget-wide v6, p0, Lco/vine/android/api/VinePost;->created:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 282
    .local v0, result:I
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lco/vine/android/api/VinePost;->liked:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 283
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lco/vine/android/api/VinePost;->isLast:Z

    if-eqz v4, :cond_2

    :goto_1
    add-int v0, v1, v2

    .line 284
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->explicitContent:I

    add-int v0, v1, v2

    .line 285
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->postFlags:I

    add-int v0, v1, v2

    .line 286
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->postToFacebook:I

    add-int v0, v1, v2

    .line 287
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->postToTwitter:I

    add-int v0, v1, v2

    .line 288
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->postVerified:I

    add-int v0, v1, v2

    .line 289
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->promoted:I

    add-int v0, v1, v2

    .line 290
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->verified:I

    add-int v0, v1, v2

    .line 291
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lco/vine/android/api/VinePost;->userId:J

    iget-wide v6, p0, Lco/vine/android/api/VinePost;->userId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int v0, v1, v2

    .line 292
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lco/vine/android/api/VinePost;->postId:J

    iget-wide v6, p0, Lco/vine/android/api/VinePost;->postId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int v0, v1, v2

    .line 293
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->likesCount:I

    add-int v0, v1, v2

    .line 294
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->commentsCount:I

    add-int v0, v1, v2

    .line 295
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v2, v1

    .line 296
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int v0, v2, v1

    .line 297
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int v0, v2, v1

    .line 298
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int v0, v2, v1

    .line 299
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int v0, v2, v1

    .line 300
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int v0, v2, v1

    .line 301
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int v0, v2, v1

    .line 302
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int v0, v2, v1

    .line 303
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a
    add-int v0, v2, v1

    .line 304
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :goto_b
    add-int v0, v2, v1

    .line 305
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    add-int v0, v2, v1

    .line 306
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_d
    add-int v0, v2, v1

    .line 307
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v1}, Lco/vine/android/api/VineUser;->hashCode()I

    move-result v1

    :goto_e
    add-int v0, v2, v1

    .line 308
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    invoke-virtual {v2}, Lco/vine/android/api/VineVenue;->hashCode()I

    move-result v3

    :cond_0
    add-int v0, v1, v3

    .line 309
    return v0

    :cond_1
    move v1, v3

    .line 282
    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 283
    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 295
    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 296
    goto/16 :goto_3

    :cond_5
    move v1, v3

    .line 297
    goto/16 :goto_4

    :cond_6
    move v1, v3

    .line 298
    goto/16 :goto_5

    :cond_7
    move v1, v3

    .line 299
    goto/16 :goto_6

    :cond_8
    move v1, v3

    .line 300
    goto/16 :goto_7

    :cond_9
    move v1, v3

    .line 301
    goto :goto_8

    :cond_a
    move v1, v3

    .line 302
    goto :goto_9

    :cond_b
    move v1, v3

    .line 303
    goto :goto_a

    :cond_c
    move v1, v3

    .line 304
    goto :goto_b

    :cond_d
    move v1, v3

    .line 305
    goto :goto_c

    :cond_e
    move v1, v3

    .line 306
    goto :goto_d

    :cond_f
    move v1, v3

    .line 307
    goto :goto_e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    iget-wide v3, p0, Lco/vine/android/api/VinePost;->created:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    iget-boolean v0, p0, Lco/vine/android/api/VinePost;->liked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean v0, p0, Lco/vine/android/api/VinePost;->isLast:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lco/vine/android/api/VinePost;->explicitContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lco/vine/android/api/VinePost;->postFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lco/vine/android/api/VinePost;->postToFacebook:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Lco/vine/android/api/VinePost;->postToTwitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Lco/vine/android/api/VinePost;->postVerified:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Lco/vine/android/api/VinePost;->promoted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Lco/vine/android/api/VinePost;->verified:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget v0, p0, Lco/vine/android/api/VinePost;->likesCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lco/vine/android/api/VinePost;->commentsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-wide v0, p0, Lco/vine/android/api/VinePost;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    iget-wide v0, p0, Lco/vine/android/api/VinePost;->postId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 208
    iget-object v0, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 218
    iget-object v0, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 219
    iget-object v0, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 220
    iget-object v0, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 223
    return-void

    :cond_0
    move v0, v2

    .line 195
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 196
    goto :goto_1
.end method
