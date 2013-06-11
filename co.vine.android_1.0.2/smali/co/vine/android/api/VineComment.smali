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
    .line 123
    new-instance v0, Lco/vine/android/api/VineComment$1;

    invoke-direct {v0}, Lco/vine/android/api/VineComment$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineComment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineUser;JLjava/lang/String;JLjava/lang/String;ZJ)V
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

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lco/vine/android/api/VineComment;->commentId:J

    .line 37
    iput-object p4, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    .line 40
    iput-wide p6, p0, Lco/vine/android/api/VineComment;->timestamp:J

    .line 41
    iput-object p8, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    .line 42
    iput-wide p9, p0, Lco/vine/android/api/VineComment;->userId:J

    .line 43
    iput-object p11, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    .line 44
    iput-boolean p12, p0, Lco/vine/android/api/VineComment;->verified:Z

    .line 45
    iput-wide p13, p0, Lco/vine/android/api/VineComment;->postId:J

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/api/VineComment;->commentId:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    .line 75
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineUser;

    iput-object v0, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/api/VineComment;->timestamp:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/api/VineComment;->userId:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lco/vine/android/api/VineComment;->verified:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineComment;->postId:J

    .line 82
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static from(Landroid/database/Cursor;)Lco/vine/android/api/VineComment;
    .locals 15
    .parameter "c"

    .prologue
    const/4 v13, 0x1

    .line 57
    new-instance v0, Lco/vine/android/api/VineComment;

    const/16 v1, 0x23

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/16 v3, 0x24

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x25

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x27

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/16 v8, 0x28

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x26

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/16 v11, 0x29

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2a

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v12, v13, :cond_0

    move v12, v13

    :goto_0
    invoke-interface {p0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-direct/range {v0 .. v14}, Lco/vine/android/api/VineComment;-><init>(JLjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineUser;JLjava/lang/String;JLjava/lang/String;ZJ)V

    return-object v0

    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-ne p0, p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 106
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

    .line 108
    check-cast v0, Lco/vine/android/api/VineComment;

    .line 110
    .local v0, vineComment:Lco/vine/android/api/VineComment;
    iget-wide v3, p0, Lco/vine/android/api/VineComment;->commentId:J

    iget-wide v5, v0, Lco/vine/android/api/VineComment;->commentId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 111
    :cond_4
    iget-object v3, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 113
    :cond_5
    iget-wide v3, p0, Lco/vine/android/api/VineComment;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/VineComment;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 114
    :cond_6
    iget-wide v3, p0, Lco/vine/android/api/VineComment;->postId:J

    iget-wide v5, v0, Lco/vine/android/api/VineComment;->postId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 115
    :cond_7
    iget-wide v3, p0, Lco/vine/android/api/VineComment;->timestamp:J

    iget-wide v5, v0, Lco/vine/android/api/VineComment;->timestamp:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 116
    :cond_8
    iget-object v3, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    iget-object v4, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 117
    :cond_9
    iget-object v3, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    goto :goto_0

    .line 118
    :cond_a
    iget-boolean v3, p0, Lco/vine/android/api/VineComment;->verified:Z

    iget-boolean v4, v0, Lco/vine/android/api/VineComment;->verified:Z

    if-eq v3, v4, :cond_b

    move v1, v2

    goto :goto_0

    .line 119
    :cond_b
    iget-wide v3, p0, Lco/vine/android/api/VineComment;->postId:J

    iget-wide v5, v0, Lco/vine/android/api/VineComment;->postId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 91
    iget-wide v0, p0, Lco/vine/android/api/VineComment;->commentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-object v0, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    iget-wide v0, p0, Lco/vine/android/api/VineComment;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-object v0, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-wide v0, p0, Lco/vine/android/api/VineComment;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-object v0, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-boolean v0, p0, Lco/vine/android/api/VineComment;->verified:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-wide v0, p0, Lco/vine/android/api/VineComment;->postId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
