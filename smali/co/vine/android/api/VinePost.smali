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
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 87
    .local v0, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lco/vine/android/api/VinePost;->created:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lco/vine/android/api/VinePost;->liked:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lco/vine/android/api/VinePost;->isLast:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->explicitContent:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->postFlags:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->postToFacebook:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->postToTwitter:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->postVerified:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->promoted:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->verified:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->likesCount:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lco/vine/android/api/VinePost;->commentsCount:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VinePost;->userId:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VinePost;->postId:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VinePagedData;

    iput-object v1, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VinePagedData;

    iput-object v1, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineUser;

    iput-object v1, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineVenue;

    iput-object v1, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    .line 113
    return-void

    :cond_0
    move v1, v3

    .line 88
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 89
    goto/16 :goto_1
.end method

.method public static from(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;
    .locals 7
    .parameter "c"

    .prologue
    const/16 v6, 0x18

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 125
    new-instance v0, Lco/vine/android/api/VinePost;

    invoke-direct {v0}, Lco/vine/android/api/VinePost;-><init>()V

    .line 127
    .local v0, p:Lco/vine/android/api/VinePost;
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lco/vine/android/api/VinePost;->postId:J

    .line 128
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    .line 129
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    .line 130
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    .line 131
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    .line 132
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lco/vine/android/api/VinePost;->liked:Z

    .line 133
    const/16 v1, 0x12

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, v0, Lco/vine/android/api/VinePost;->isLast:Z

    .line 134
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->explicitContent:I

    .line 135
    const/16 v1, 0xb

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->postFlags:I

    .line 136
    const/16 v1, 0xc

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->postToFacebook:I

    .line 137
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->postToTwitter:I

    .line 138
    const/16 v1, 0xe

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->postVerified:I

    .line 139
    const/16 v1, 0xf

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->promoted:I

    .line 140
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->verified:I

    .line 141
    const/16 v1, 0x1b

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->likesCount:I

    .line 142
    const/16 v1, 0x1c

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->commentsCount:I

    .line 143
    const/16 v1, 0x14

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lco/vine/android/api/VinePost;->userId:J

    .line 144
    const/16 v1, 0x15

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lco/vine/android/api/VinePost;->created:J

    .line 145
    const/16 v1, 0x13

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    .line 146
    const/16 v1, 0x16

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    .line 147
    const/16 v1, 0x17

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    .line 148
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VinePost;->verified:I

    .line 149
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    .line 150
    new-instance v1, Lco/vine/android/api/VinePagedData;

    invoke-direct {v1}, Lco/vine/android/api/VinePagedData;-><init>()V

    iput-object v1, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    .line 151
    new-instance v1, Lco/vine/android/api/VinePagedData;

    invoke-direct {v1}, Lco/vine/android/api/VinePagedData;-><init>()V

    iput-object v1, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    .line 152
    const/16 v1, 0x19

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineVenue;

    iput-object v1, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    .line 153
    const/16 v1, 0x1a

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    .line 154
    return-object v0

    :cond_0
    move v1, v3

    .line 132
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 133
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
    .line 158
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 160
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

    .line 161
    .local v3, tag:Lco/vine/android/api/VineTag;
    iget-wide v4, v3, Lco/vine/android/api/VineTag;->tagId:J

    invoke-interface {v2, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 162
    iget-object v4, v3, Lco/vine/android/api/VineTag;->tagName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    .end local v3           #tag:Lco/vine/android/api/VineTag;
    :cond_0
    invoke-interface {v2}, Ljava/io/ObjectOutput;->flush()V

    .line 165
    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    .line 166
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 167
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
    .line 172
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 173
    .local v0, byteArrayInputStream:Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    .local v2, ins:Ljava/io/ObjectInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    .line 179
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 183
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

    .line 186
    .end local v3           #tagId:J
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 187
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    throw v5

    .line 180
    :catch_0
    move-exception v1

    .line 186
    .local v1, e:Ljava/io/EOFException;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 187
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 189
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    if-ne p0, p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 231
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

    .line 233
    check-cast v0, Lco/vine/android/api/VinePost;

    .line 235
    .local v0, vinePost:Lco/vine/android/api/VinePost;
    iget v3, p0, Lco/vine/android/api/VinePost;->commentsCount:I

    iget v4, v0, Lco/vine/android/api/VinePost;->commentsCount:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 236
    :cond_4
    iget-wide v3, p0, Lco/vine/android/api/VinePost;->created:J

    iget-wide v5, v0, Lco/vine/android/api/VinePost;->created:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 237
    :cond_5
    iget v3, p0, Lco/vine/android/api/VinePost;->explicitContent:I

    iget v4, v0, Lco/vine/android/api/VinePost;->explicitContent:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 238
    :cond_6
    iget-boolean v3, p0, Lco/vine/android/api/VinePost;->isLast:Z

    iget-boolean v4, v0, Lco/vine/android/api/VinePost;->isLast:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 239
    :cond_7
    iget-boolean v3, p0, Lco/vine/android/api/VinePost;->liked:Z

    iget-boolean v4, v0, Lco/vine/android/api/VinePost;->liked:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 240
    :cond_8
    iget v3, p0, Lco/vine/android/api/VinePost;->likesCount:I

    iget v4, v0, Lco/vine/android/api/VinePost;->likesCount:I

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 241
    :cond_9
    iget v3, p0, Lco/vine/android/api/VinePost;->postFlags:I

    iget v4, v0, Lco/vine/android/api/VinePost;->postFlags:I

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 242
    :cond_a
    iget-wide v3, p0, Lco/vine/android/api/VinePost;->postId:J

    iget-wide v5, v0, Lco/vine/android/api/VinePost;->postId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0

    .line 243
    :cond_b
    iget v3, p0, Lco/vine/android/api/VinePost;->postToFacebook:I

    iget v4, v0, Lco/vine/android/api/VinePost;->postToFacebook:I

    if-eq v3, v4, :cond_c

    move v1, v2

    goto :goto_0

    .line 244
    :cond_c
    iget v3, p0, Lco/vine/android/api/VinePost;->postToTwitter:I

    iget v4, v0, Lco/vine/android/api/VinePost;->postToTwitter:I

    if-eq v3, v4, :cond_d

    move v1, v2

    goto :goto_0

    .line 245
    :cond_d
    iget v3, p0, Lco/vine/android/api/VinePost;->postVerified:I

    iget v4, v0, Lco/vine/android/api/VinePost;->postVerified:I

    if-eq v3, v4, :cond_e

    move v1, v2

    goto :goto_0

    .line 246
    :cond_e
    iget v3, p0, Lco/vine/android/api/VinePost;->promoted:I

    iget v4, v0, Lco/vine/android/api/VinePost;->promoted:I

    if-eq v3, v4, :cond_f

    move v1, v2

    goto :goto_0

    .line 247
    :cond_f
    iget-wide v3, p0, Lco/vine/android/api/VinePost;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/VinePost;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_10

    move v1, v2

    goto :goto_0

    .line 248
    :cond_10
    iget v3, p0, Lco/vine/android/api/VinePost;->verified:I

    iget v4, v0, Lco/vine/android/api/VinePost;->verified:I

    if-eq v3, v4, :cond_11

    move v1, v2

    goto/16 :goto_0

    .line 249
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

    .line 250
    goto/16 :goto_0

    .line 249
    :cond_13
    iget-object v3, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 251
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

    .line 252
    goto/16 :goto_0

    .line 251
    :cond_16
    iget-object v3, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    if-nez v3, :cond_15

    .line 253
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

    .line 255
    goto/16 :goto_0

    .line 253
    :cond_19
    iget-object v3, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    if-nez v3, :cond_18

    .line 256
    :cond_1a
    iget-object v3, p0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_1b
    move v1, v2

    .line 257
    goto/16 :goto_0

    .line 256
    :cond_1c
    iget-object v3, v0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    if-nez v3, :cond_1b

    .line 258
    :cond_1d
    iget-object v3, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1e
    move v1, v2

    .line 260
    goto/16 :goto_0

    .line 258
    :cond_1f
    iget-object v3, v0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    if-nez v3, :cond_1e

    .line 261
    :cond_20
    iget-object v3, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    :cond_21
    move v1, v2

    goto/16 :goto_0

    :cond_22
    iget-object v3, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    if-nez v3, :cond_21

    .line 262
    :cond_23
    iget-object v3, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    :cond_24
    move v1, v2

    .line 263
    goto/16 :goto_0

    .line 262
    :cond_25
    iget-object v3, v0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 264
    :cond_26
    iget-object v3, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_27
    move v1, v2

    .line 265
    goto/16 :goto_0

    .line 264
    :cond_28
    iget-object v3, v0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    if-nez v3, :cond_27

    .line 266
    :cond_29
    iget-object v3, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    :cond_2a
    move v1, v2

    goto/16 :goto_0

    :cond_2b
    iget-object v3, v0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    if-nez v3, :cond_2a

    .line 267
    :cond_2c
    iget-object v3, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    :cond_2d
    move v1, v2

    .line 269
    goto/16 :goto_0

    .line 267
    :cond_2e
    iget-object v3, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    if-nez v3, :cond_2d

    .line 270
    :cond_2f
    iget-object v3, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v3, v4}, Lco/vine/android/api/VineUser;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    :cond_30
    move v1, v2

    goto/16 :goto_0

    :cond_31
    iget-object v3, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    if-nez v3, :cond_30

    .line 271
    :cond_32
    iget-object v3, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    :cond_33
    move v1, v2

    .line 272
    goto/16 :goto_0

    .line 271
    :cond_34
    iget-object v3, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    if-nez v3, :cond_33

    .line 273
    :cond_35
    iget-object v3, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    if-eqz v3, :cond_37

    iget-object v3, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    invoke-virtual {v3, v4}, Lco/vine/android/api/VineVenue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    :cond_36
    move v1, v2

    .line 274
    goto/16 :goto_0

    .line 273
    :cond_37
    iget-object v3, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    if-nez v3, :cond_36

    .line 275
    :cond_38
    iget-object v3, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    :cond_39
    move v1, v2

    .line 277
    goto/16 :goto_0

    .line 275
    :cond_3a
    iget-object v3, v0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    if-nez v3, :cond_39

    .line 278
    :cond_3b
    iget-object v3, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 279
    goto/16 :goto_0

    .line 278
    :cond_3c
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

    .line 286
    iget-wide v4, p0, Lco/vine/android/api/VinePost;->created:J

    iget-wide v6, p0, Lco/vine/android/api/VinePost;->created:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 287
    .local v0, result:I
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lco/vine/android/api/VinePost;->liked:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 288
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lco/vine/android/api/VinePost;->isLast:Z

    if-eqz v4, :cond_2

    :goto_1
    add-int v0, v1, v2

    .line 289
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->explicitContent:I

    add-int v0, v1, v2

    .line 290
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->postFlags:I

    add-int v0, v1, v2

    .line 291
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->postToFacebook:I

    add-int v0, v1, v2

    .line 292
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->postToTwitter:I

    add-int v0, v1, v2

    .line 293
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->postVerified:I

    add-int v0, v1, v2

    .line 294
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->promoted:I

    add-int v0, v1, v2

    .line 295
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->verified:I

    add-int v0, v1, v2

    .line 296
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lco/vine/android/api/VinePost;->userId:J

    iget-wide v6, p0, Lco/vine/android/api/VinePost;->userId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int v0, v1, v2

    .line 297
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lco/vine/android/api/VinePost;->postId:J

    iget-wide v6, p0, Lco/vine/android/api/VinePost;->postId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int v0, v1, v2

    .line 298
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->likesCount:I

    add-int v0, v1, v2

    .line 299
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VinePost;->commentsCount:I

    add-int v0, v1, v2

    .line 300
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v2, v1

    .line 301
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int v0, v2, v1

    .line 302
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int v0, v2, v1

    .line 303
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int v0, v2, v1

    .line 304
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int v0, v2, v1

    .line 305
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int v0, v2, v1

    .line 306
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int v0, v2, v1

    .line 307
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int v0, v2, v1

    .line 308
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a
    add-int v0, v2, v1

    .line 309
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :goto_b
    add-int v0, v2, v1

    .line 310
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :goto_c
    add-int v0, v2, v1

    .line 311
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_d
    add-int v0, v2, v1

    .line 312
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_e
    add-int v0, v2, v1

    .line 313
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v1}, Lco/vine/android/api/VineUser;->hashCode()I

    move-result v1

    :goto_f
    add-int v0, v2, v1

    .line 314
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    invoke-virtual {v2}, Lco/vine/android/api/VineVenue;->hashCode()I

    move-result v3

    :cond_0
    add-int v0, v1, v3

    .line 315
    return v0

    :cond_1
    move v1, v3

    .line 287
    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 288
    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 300
    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 301
    goto/16 :goto_3

    :cond_5
    move v1, v3

    .line 302
    goto/16 :goto_4

    :cond_6
    move v1, v3

    .line 303
    goto/16 :goto_5

    :cond_7
    move v1, v3

    .line 304
    goto/16 :goto_6

    :cond_8
    move v1, v3

    .line 305
    goto/16 :goto_7

    :cond_9
    move v1, v3

    .line 306
    goto/16 :goto_8

    :cond_a
    move v1, v3

    .line 307
    goto/16 :goto_9

    :cond_b
    move v1, v3

    .line 308
    goto :goto_a

    :cond_c
    move v1, v3

    .line 309
    goto :goto_b

    :cond_d
    move v1, v3

    .line 310
    goto :goto_c

    :cond_e
    move v1, v3

    .line 311
    goto :goto_d

    :cond_f
    move v1, v3

    .line 312
    goto :goto_e

    :cond_10
    move v1, v3

    .line 313
    goto :goto_f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    iget-wide v3, p0, Lco/vine/android/api/VinePost;->created:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    iget-boolean v0, p0, Lco/vine/android/api/VinePost;->liked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-boolean v0, p0, Lco/vine/android/api/VinePost;->isLast:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Lco/vine/android/api/VinePost;->explicitContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Lco/vine/android/api/VinePost;->postFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Lco/vine/android/api/VinePost;->postToFacebook:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget v0, p0, Lco/vine/android/api/VinePost;->postToTwitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lco/vine/android/api/VinePost;->postVerified:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Lco/vine/android/api/VinePost;->promoted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Lco/vine/android/api/VinePost;->verified:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lco/vine/android/api/VinePost;->likesCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Lco/vine/android/api/VinePost;->commentsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-wide v0, p0, Lco/vine/android/api/VinePost;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    iget-wide v0, p0, Lco/vine/android/api/VinePost;->postId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    iget-object v0, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 222
    iget-object v0, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 223
    iget-object v0, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 224
    iget-object v0, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 225
    iget-object v0, p0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 226
    return-void

    :cond_0
    move v0, v2

    .line 199
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 200
    goto/16 :goto_1
.end method
