.class public final Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineDatabaseSQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostCommentsLikesQuery"
.end annotation


# static fields
.field public static final INDEX_AVATAR_URL:I = 0x13

.field public static final INDEX_COMMENT:I = 0x24

.field public static final INDEX_COMMENTS_COUNT:I = 0x1b

.field public static final INDEX_COMMENT_ID:I = 0x23

.field public static final INDEX_COMMENT_USER_AVATAR_URL:I = 0x25

.field public static final INDEX_COMMENT_USER_LOCATION:I = 0x28

.field public static final INDEX_COMMENT_USER_TIMESTAMP:I = 0x27

.field public static final INDEX_COMMENT_USER_USERNAME:I = 0x29

.field public static final INDEX_COMMENT_USER_USER_ID:I = 0x26

.field public static final INDEX_COMMENT_USER_VERIFIED:I = 0x2a

.field public static final INDEX_DESCRIPTION:I = 0x7

.field public static final INDEX_EXPLICIT_CONTENT:I = 0xa

.field public static final INDEX_FOURSQUARE_VENUE_ID:I = 0x8

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_IS_LAST:I = 0x12

.field public static final INDEX_LIKED:I = 0x9

.field public static final INDEX_LIKES_COUNT:I = 0x1a

.field public static final INDEX_LIKE_ID:I = 0x1c

.field public static final INDEX_LIKE_USER_AVATAR_URL:I = 0x1d

.field public static final INDEX_LIKE_USER_LOCATION:I = 0x20

.field public static final INDEX_LIKE_USER_TIMESTAMP:I = 0x1f

.field public static final INDEX_LIKE_USER_USERNAME:I = 0x21

.field public static final INDEX_LIKE_USER_USER_ID:I = 0x1e

.field public static final INDEX_LIKE_USER_VERIFIED:I = 0x22

.field public static final INDEX_LOCATION:I = 0x16

.field public static final INDEX_POST_FLAGS:I = 0xb

.field public static final INDEX_POST_ID:I = 0x1

.field public static final INDEX_POST_TO_FACEBOOK:I = 0xc

.field public static final INDEX_POST_TO_TWITTER:I = 0xd

.field public static final INDEX_POST_VERIFIED:I = 0xe

.field public static final INDEX_PROMOTED:I = 0xf

.field public static final INDEX_SHARE_URL:I = 0x4

.field public static final INDEX_TAG:I = 0x11

.field public static final INDEX_TAGS:I = 0x2

.field public static final INDEX_THUMBNAIL_URL:I = 0x3

.field public static final INDEX_TIMESTAMP:I = 0x15

.field public static final INDEX_TYPE:I = 0x10

.field public static final INDEX_USERNAME:I = 0x17

.field public static final INDEX_USER_ID:I = 0x14

.field public static final INDEX_VENUE_DATA:I = 0x19

.field public static final INDEX_VERIFIED:I = 0x18

.field public static final INDEX_VIDEO_LOW_URL:I = 0x5

.field public static final INDEX_VIDEO_URL:I = 0x6

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 525
    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "post_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tags"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "thumbnail_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "share_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "video_low_uRL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "video_url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "foursquare_venue_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "liked"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "explicit_content"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "post_flags"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "post_to_facebook"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "post_to_twitter"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "post_verified"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "promoted"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "post_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "tag"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "is_last"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "avatar_url"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "username"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "verified"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "venue_data"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "likes_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "comments_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "like_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "like_user_avatar_url"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "like_user_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "like_user_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "like_user_location"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "like_user_username"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "like_user_verified"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "comment_id"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "comment"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "comment_user_avatar_url"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "comment_user_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "comment_user_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "comment_user_location"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "comment_user_username"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "comment_user_verified"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
