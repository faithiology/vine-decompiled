.class public Lco/vine/android/provider/VineDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VineDatabaseHelper.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x3

.field private static final DB_NAME:Ljava/lang/String; = "vine"

#the value of this static final field might be set in the static constructor
.field private static final LOGGABLE:Z = false

.field private static final MAX_ACTIVITY_TABLE_SIZE:I = 0x1f4

.field private static final MAX_COMMENTS_TABLE_SIZE:I = 0x1388

.field private static final MAX_LIKES_TABLE_SIZE:I = 0x1388

.field private static final MAX_POST_TABLE_SIZE:I = 0x3e8

.field private static final MAX_USERS_TABLE_SIZE:I = 0x2710

.field private static final SCHEMA_VERSION:I = 0x1

.field private static final SEPARATOR:Ljava/lang/String; = "-"

.field public static final SETTINGS_NAME_SELECTION:Ljava/lang/String; = "name=?"

.field private static final TAG:Ljava/lang/String; = "VineDatabaseHelper"

.field private static final sHelperMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lco/vine/android/provider/VineDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "VineDatabaseHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lco/vine/android/provider/VineDatabaseHelper;->sHelperMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 86
    return-void
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 103
    const-string v0, "CREATE TABLE users (_id INTEGER PRIMARY KEY,user_id INT UNIQUE NOT NULL,avatar_url TEXT,blocked INT,blocking INT,description TEXT,location TEXT,explicit INT,follower_count INT,following_count INT,following_flag INT,like_count INT,post_count INT,username TEXT,verified INT,last_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "CREATE TABLE settings (_id INTEGER PRIMARY KEY,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string v0, "CREATE TABLE user_groups (_id INTEGER PRIMARY KEY,type INT,tag TEXT,user_id INT,is_last INT,g_flags INT,order_id INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "CREATE TABLE comments (_id INTEGER PRIMARY KEY,comment_id INT UNIQUE NOT NULL,post_id INT NOT NULL,avatar_url TEXT,comment TEXT,user_id INT,username TEXT,timestamp INT,location TEXT,verified INT,last_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    const-string v0, "CREATE TABLE activity (_id INTEGER PRIMARY KEY,notification_id INT UNIQUE NOT NULL,notification_type INT,user_id INT,post_id INT,thumbnail_url TEXT,avatar_url TEXT,timestamp INT,comment TEXT,username TEXT,verified INT,is_last INT,entities BLOB,last_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string v0, "CREATE VIEW user_groups_view AS SELECT user_groups._id AS _id,user_groups.type AS type,user_groups.tag AS tag,user_groups.user_id AS user_id,user_groups.is_last AS is_last,user_groups.g_flags AS g_flags,user_groups.order_id AS order_id,user.username AS username,user.user_id AS user_id,user.avatar_url AS avatar_url,user.blocked AS blocked,user.blocking AS blocking,user.description AS description,user.location AS location,user.explicit AS explicit,user.follower_count AS follower_count,user.following_count AS following_count,user.following_flag AS following_flag,user.like_count AS like_count,user.post_count AS post_count,user.verified AS verified FROM user_groups LEFT JOIN users AS user ON user_groups.user_id=user.user_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v0, "CREATE TABLE likes (_id INTEGER PRIMARY KEY,like_id INT UNIQUE NOT NULL,post_id INT NOT NULL,avatar_url TEXT,user_id INT,username TEXT,timestamp INT,location TEXT,verified INT,last_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    const-string v0, "CREATE TABLE posts (_id INTEGER PRIMARY KEY,post_id INT NOT NULL,tags BLOB,thumbnail_url TEXT,share_url TEXT,video_low_uRL TEXT,video_url TEXT,description TEXT,foursquare_venue_id TEXT,liked INT,explicit_content INT,post_flags INT,post_to_facebook INT,post_to_twitter INT,post_verified INT,promoted INT,avatar_url TEXT,user_id INT,username TEXT,timestamp INT,location TEXT,verified INT,venue_data BLOB,likes_count INT,comments_count INT,last_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "CREATE TABLE post_groups (_id INTEGER PRIMARY KEY,post_type INT,tag TEXT,post_id INT,is_last INT,g_flags INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "CREATE VIEW post_groups_view AS SELECT post_groups._id AS _id,post_groups.post_type AS post_type,post_groups.tag AS tag,post_groups.post_id AS post_id,post_groups.is_last AS is_last,post_groups.g_flags AS g_flags,posts.username AS username,posts.avatar_url AS avatar_url,posts.thumbnail_url AS thumbnail_url,posts.liked AS liked,posts.user_id AS user_id,posts.timestamp AS timestamp,posts.location AS location,posts.verified AS verified,posts.tags AS tags,posts.share_url AS share_url,posts.video_low_uRL AS video_low_uRL,posts.video_url AS video_url,posts.video_low_uRL AS video_low_uRL,posts.description AS description,posts.foursquare_venue_id AS foursquare_venue_id,posts.explicit_content AS explicit_content,posts.post_flags AS post_flags,posts.post_to_facebook AS post_to_facebook,posts.post_to_twitter AS post_to_twitter,posts.post_verified AS post_verified,posts.promoted AS promoted,posts.venue_data AS venue_data,posts.likes_count AS likes_count,posts.comments_count AS comments_count FROM post_groups LEFT JOIN posts AS posts ON post_groups.post_id=posts.post_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "CREATE VIEW post_comments_likes_view AS  SELECT post_groups_view._id AS _id,post_groups_view.post_id AS post_id,post_groups_view.tags AS tags,post_groups_view.thumbnail_url AS thumbnail_url,post_groups_view.share_url AS share_url,post_groups_view.video_low_uRL AS video_low_uRL,post_groups_view.video_url AS video_url,post_groups_view.description AS description,post_groups_view.foursquare_venue_id AS foursquare_venue_id,post_groups_view.liked AS liked,post_groups_view.explicit_content AS explicit_content,post_groups_view.post_flags AS post_flags,post_groups_view.post_to_facebook AS post_to_facebook,post_groups_view.post_to_twitter AS post_to_twitter,post_groups_view.post_verified AS post_verified,post_groups_view.promoted AS promoted,post_groups_view.post_type AS post_type,post_groups_view.tag AS tag,post_groups_view.is_last AS is_last,post_groups_view.avatar_url AS avatar_url,post_groups_view.user_id AS user_id,post_groups_view.timestamp AS timestamp,post_groups_view.location AS location,post_groups_view.username AS username,post_groups_view.verified AS verified,post_groups_view.venue_data AS venue_data,post_groups_view.likes_count AS likes_count,post_groups_view.comments_count AS comments_count,likes.like_id AS like_id,likes.avatar_url AS like_user_avatar_url,likes.user_id AS like_user_user_id,likes.timestamp AS like_user_timestamp,likes.location AS like_user_location,likes.username AS like_user_username,likes.verified AS like_user_verified,null  AS comment_id,null  AS comment,null  AS comment_user_avatar_url,null  AS comment_user_user_id,null  AS comment_user_timestamp,null  AS comment_user_location,null  AS comment_user_username,null  AS comment_user_verified FROM post_groups_view LEFT JOIN likes ON post_groups_view.post_id = likes.post_id UNION SELECT post_groups_view._id AS _id,post_groups_view.post_id AS post_id,post_groups_view.tags AS tags,post_groups_view.thumbnail_url AS thumbnail_url,post_groups_view.share_url AS share_url,post_groups_view.video_low_uRL AS video_low_uRL,post_groups_view.video_url AS video_url,post_groups_view.description AS description,post_groups_view.foursquare_venue_id AS foursquare_venue_id,post_groups_view.liked AS liked,post_groups_view.explicit_content AS explicit_content,post_groups_view.post_flags AS post_flags,post_groups_view.post_to_facebook AS post_to_facebook,post_groups_view.post_to_twitter AS post_to_twitter,post_groups_view.post_verified AS post_verified,post_groups_view.promoted AS promoted,post_groups_view.post_type AS post_type,post_groups_view.tag AS tag,post_groups_view.is_last AS is_last,post_groups_view.avatar_url AS avatar_url,post_groups_view.user_id AS user_id,post_groups_view.timestamp AS timestamp,post_groups_view.location AS location,post_groups_view.username AS username,post_groups_view.verified AS verified,post_groups_view.venue_data AS venue_data,post_groups_view.likes_count AS likes_count,post_groups_view.comments_count AS comments_count,null  AS like_id,null  AS like_user_avatar_url,null  AS like_user_user_id,null  AS like_user_timestamp,null  AS like_user_location,null  AS like_user_username,null  AS like_user_verified,comments.comment_id AS comment_id,comments.comment AS comment,comments.avatar_url AS comment_user_avatar_url,comments.user_id AS comment_user_user_id,comments.timestamp AS comment_user_timestamp,comments.location AS comment_user_location,comments.username AS comment_user_username,comments.verified AS comment_user_verified FROM post_groups_view LEFT JOIN comments ON post_groups_view.post_id = comments.post_id "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    const-string v0, "CREATE TABLE page_cursors (_id INTEGER PRIMARY KEY,type INT,tag TEXT,kind INT,next_page INT,previous_page INT,anchor TEXT,reversed INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 118
    const-string v0, "DROP VIEW user_groups_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const-string v0, "DROP VIEW post_groups_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    const-string v0, "DROP VIEW post_comments_likes_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    const-string v0, "DROP TABLE users;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    const-string v0, "DROP TABLE settings;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "DROP TABLE user_groups;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    const-string v0, "DROP TABLE comments;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "DROP TABLE activity;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    const-string v0, "DROP TABLE likes;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    const-string v0, "DROP TABLE posts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v0, "DROP TABLE post_groups;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    const-string v0, "DROP TABLE page_cursors;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private fillActivityValues(Landroid/content/ContentValues;Lco/vine/android/api/VineNotification;J)V
    .locals 3
    .parameter "values"
    .parameter "notif"
    .parameter "lastRefresh"

    .prologue
    .line 1730
    const-string v0, "notification_id"

    iget-wide v1, p2, Lco/vine/android/api/VineNotification;->notificationId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1732
    iget v0, p2, Lco/vine/android/api/VineNotification;->notificationType:I

    sparse-switch v0, :sswitch_data_0

    .line 1750
    const-string v0, "notification_type"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1755
    :goto_0
    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VineNotification;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const-string v0, "thumbnail_url"

    iget-object v1, p2, Lco/vine/android/api/VineNotification;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    const-string v0, "post_id"

    iget-wide v1, p2, Lco/vine/android/api/VineNotification;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1758
    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VineNotification;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1759
    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VineNotification;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    const-string v0, "comment"

    iget-object v1, p2, Lco/vine/android/api/VineNotification;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v0, "verified"

    iget-boolean v1, p2, Lco/vine/android/api/VineNotification;->verified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1762
    const-string v0, "timestamp"

    iget-wide v1, p2, Lco/vine/android/api/VineNotification;->createdAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1763
    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1765
    iget-object v0, p2, Lco/vine/android/api/VineNotification;->entities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1766
    const-string v0, "entities"

    iget-object v1, p2, Lco/vine/android/api/VineNotification;->entities:Ljava/util/ArrayList;

    invoke-static {v1}, Lco/vine/android/util/Util;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1768
    :cond_0
    return-void

    .line 1734
    :sswitch_0
    const-string v0, "notification_type"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1738
    :sswitch_1
    const-string v0, "notification_type"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1742
    :sswitch_2
    const-string v0, "notification_type"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1746
    :sswitch_3
    const-string v0, "notification_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1732
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method private fillCommentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineComment;J)V
    .locals 3
    .parameter "values"
    .parameter "comment"
    .parameter "lastRefresh"

    .prologue
    .line 1717
    const-string v0, "comment_id"

    iget-wide v1, p2, Lco/vine/android/api/VineComment;->commentId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1718
    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VineComment;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1719
    const-string v0, "post_id"

    iget-wide v1, p2, Lco/vine/android/api/VineComment;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1720
    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const-string v0, "comment"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    const-string v0, "timestamp"

    iget-wide v1, p2, Lco/vine/android/api/VineComment;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1723
    const-string v0, "location"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const-string v0, "verified"

    iget-boolean v1, p2, Lco/vine/android/api/VineComment;->verified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1726
    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1727
    return-void
.end method

.method private fillLikeValues(Landroid/content/ContentValues;Lco/vine/android/api/VineLike;J)V
    .locals 3
    .parameter "values"
    .parameter "like"
    .parameter "lastRefresh"

    .prologue
    .line 1705
    const-string v0, "like_id"

    iget-wide v1, p2, Lco/vine/android/api/VineLike;->likeId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1706
    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VineLike;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1707
    const-string v0, "post_id"

    iget-wide v1, p2, Lco/vine/android/api/VineLike;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1708
    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    const-string v0, "timestamp"

    iget-wide v1, p2, Lco/vine/android/api/VineLike;->created:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1710
    const-string v0, "location"

    iget-object v1, p2, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const-string v0, "verified"

    iget v1, p2, Lco/vine/android/api/VineLike;->verified:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1713
    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1714
    return-void
.end method

.method private fillPostValues(Landroid/content/ContentValues;Lco/vine/android/api/VinePost;J)V
    .locals 3
    .parameter "values"
    .parameter "post"
    .parameter "lastRefresh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1675
    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string v0, "description"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const-string v0, "explicit_content"

    iget v1, p2, Lco/vine/android/api/VinePost;->explicitContent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1678
    const-string v0, "foursquare_venue_id"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    const-string v0, "liked"

    iget-boolean v1, p2, Lco/vine/android/api/VinePost;->liked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1680
    const-string v0, "location"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    const-string v0, "post_flags"

    iget v1, p2, Lco/vine/android/api/VinePost;->postFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1682
    const-string v0, "post_id"

    iget-wide v1, p2, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1683
    const-string v0, "post_to_facebook"

    iget v1, p2, Lco/vine/android/api/VinePost;->postToFacebook:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1684
    const-string v0, "post_to_twitter"

    iget v1, p2, Lco/vine/android/api/VinePost;->postToTwitter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1685
    const-string v0, "post_verified"

    iget v1, p2, Lco/vine/android/api/VinePost;->postVerified:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1686
    const-string v0, "promoted"

    iget v1, p2, Lco/vine/android/api/VinePost;->promoted:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1687
    const-string v0, "share_url"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    const-string v0, "thumbnail_url"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    const-string v0, "video_url"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string v0, "video_low_uRL"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    const-string v0, "timestamp"

    iget-wide v1, p2, Lco/vine/android/api/VinePost;->created:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1692
    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VinePost;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1694
    const-string v0, "verified"

    iget v1, p2, Lco/vine/android/api/VinePost;->verified:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1695
    const-string v0, "likes_count"

    iget v1, p2, Lco/vine/android/api/VinePost;->likesCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1696
    const-string v0, "comments_count"

    iget v1, p2, Lco/vine/android/api/VinePost;->commentsCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1697
    const-string v0, "tags"

    invoke-static {p2}, Lco/vine/android/api/VinePost;->getBytesFromTags(Lco/vine/android/api/VinePost;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1698
    iget-object v0, p2, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    if-eqz v0, :cond_0

    .line 1699
    const-string v0, "venue_data"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    invoke-static {v1}, Lco/vine/android/util/Util;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1701
    :cond_0
    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1702
    return-void
.end method

.method private fillUserContentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineUser;J)V
    .locals 3
    .parameter "values"
    .parameter "user"
    .parameter "lastRefresh"

    .prologue
    .line 1654
    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1655
    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const-string v0, "blocked"

    iget v1, p2, Lco/vine/android/api/VineUser;->blocked:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1658
    const-string v0, "blocking"

    iget v1, p2, Lco/vine/android/api/VineUser;->blocking:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1659
    const-string v0, "description"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    const-string v0, "location"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    const-string v0, "explicit"

    iget v1, p2, Lco/vine/android/api/VineUser;->explicit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1662
    const-string v0, "follower_count"

    iget v1, p2, Lco/vine/android/api/VineUser;->followerCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1663
    const-string v0, "following_count"

    iget v1, p2, Lco/vine/android/api/VineUser;->followingCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1664
    iget v0, p2, Lco/vine/android/api/VineUser;->following:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1665
    const-string v0, "following_flag"

    iget v1, p2, Lco/vine/android/api/VineUser;->following:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1667
    :cond_0
    const-string v0, "like_count"

    iget v1, p2, Lco/vine/android/api/VineUser;->likeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1668
    const-string v0, "post_count"

    iget v1, p2, Lco/vine/android/api/VineUser;->postCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1669
    const-string v0, "verified"

    iget v1, p2, Lco/vine/android/api/VineUser;->verified:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1670
    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1671
    return-void
.end method

.method public static declared-synchronized getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
    .locals 4
    .parameter "context"

    .prologue
    .line 74
    const-class v3, Lco/vine/android/provider/VineDatabaseHelper;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, databaseName:Ljava/lang/String;
    sget-object v2, Lco/vine/android/provider/VineDatabaseHelper;->sHelperMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/provider/VineDatabaseHelper;

    .line 76
    .local v1, helper:Lco/vine/android/provider/VineDatabaseHelper;
    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lco/vine/android/provider/VineDatabaseHelper;

    .end local v1           #helper:Lco/vine/android/provider/VineDatabaseHelper;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lco/vine/android/provider/VineDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    .restart local v1       #helper:Lco/vine/android/provider/VineDatabaseHelper;
    sget-object v2, Lco/vine/android/provider/VineDatabaseHelper;->sHelperMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit v3

    return-object v1

    .line 74
    .end local v0           #databaseName:Ljava/lang/String;
    .end local v1           #helper:Lco/vine/android/provider/VineDatabaseHelper;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static getDatabaseName(I)Ljava/lang/String;
    .locals 2
    .parameter "schemaVersion"

    .prologue
    .line 1771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vine-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLastActivityRowId()J
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1638
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1639
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "activity"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$ActivityQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "timestamp ASC"

    const-string v8, "1"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1641
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1643
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1644
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1647
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1650
    :goto_0
    return-wide v1

    .line 1647
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1650
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1647
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getLastPostRowId(ILjava/lang/String;)J
    .locals 10
    .parameter "type"
    .parameter "tag"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1619
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1620
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "post_comments_likes_view"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "post_type=? AND tag=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/4 v6, 0x1

    aput-object p2, v4, v6

    const-string v7, "timestamp ASC"

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1625
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1627
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1628
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1631
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1634
    :goto_0
    return-wide v1

    .line 1631
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1634
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1631
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getLastUserRowId(ILjava/lang/String;Ljava/lang/String;)J
    .locals 10
    .parameter "type"
    .parameter "tag"
    .parameter "isLastOrdering"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1601
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1602
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "user_groups_view"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "type=? AND tag=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/4 v6, 0x1

    aput-object p2, v4, v6

    const-string v8, "1"

    move-object v6, v5

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1606
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1608
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1609
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1612
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1615
    :goto_0
    return-wide v1

    .line 1612
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1615
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1612
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private declared-synchronized mergeUserGroups(Ljava/util/Collection;ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .parameter
    .parameter "type"
    .parameter "groupTag"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1203
    .local p1, users:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VineUser;>;"
    .local p4, tagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local p5, orderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 1282
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1207
    :cond_1
    :try_start_0
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_2

    .line 1208
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mergeUserGroups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tagged by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_2
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1214
    .local v12, newUserGroupsMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lco/vine/android/api/VineUser;

    .line 1215
    .local v14, user:Lco/vine/android/api/VineUser;
    iget-wide v2, v14, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1203
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #newUserGroupsMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    .end local v14           #user:Lco/vine/android/api/VineUser;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1219
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #newUserGroupsMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1222
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p3, :cond_4

    .line 1223
    const-string v2, "user_groups"

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$UserGroupsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "type=? AND tag=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 1235
    .local v9, cursor:Landroid/database/Cursor;
    :goto_2
    if-eqz v9, :cond_0

    .line 1240
    :goto_3
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1242
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 1245
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1229
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_4
    const-string v2, "user_groups"

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$UserGroupsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .restart local v9       #cursor:Landroid/database/Cursor;
    goto :goto_2

    .line 1245
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1248
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_6

    .line 1249
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserting new user groups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_6
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v11

    .line 1253
    .local v11, newUserGroupsCount:I
    if-lez v11, :cond_0

    .line 1255
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1257
    :try_start_4
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1258
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1260
    if-eqz p3, :cond_7

    .line 1261
    const-string v2, "tag"

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_7
    if-eqz p5, :cond_9

    const/4 v13, 0x1

    .line 1264
    .local v13, useOrdering:Z
    :goto_4
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lco/vine/android/api/VineUser;

    .line 1266
    .restart local v14       #user:Lco/vine/android/api/VineUser;
    const-string v2, "g_flags"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1267
    const-string v2, "user_id"

    iget-wide v3, v14, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1268
    if-eqz v13, :cond_a

    iget-wide v2, v14, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1269
    const-string v3, "order_id"

    iget-wide v4, v14, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v15, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1273
    :cond_8
    :goto_6
    const-string v2, "user_groups"

    const-string v3, "user_id"

    invoke-virtual {v1, v2, v3, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 1277
    .end local v13           #useOrdering:Z
    .end local v14           #user:Lco/vine/android/api/VineUser;
    .end local v15           #values:Landroid/content/ContentValues;
    :catchall_2
    move-exception v2

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1263
    .restart local v15       #values:Landroid/content/ContentValues;
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 1270
    .restart local v13       #useOrdering:Z
    .restart local v14       #user:Lco/vine/android/api/VineUser;
    :cond_a
    if-eqz p4, :cond_8

    :try_start_6
    iget-wide v2, v14, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1271
    const-string v3, "tag"

    iget-wide v4, v14, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v15, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6

    .line 1275
    .end local v14           #user:Lco/vine/android/api/VineUser;
    :cond_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1277
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method private notifyPostCommentsViewUris()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1775
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1777
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_USER:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1779
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_USER_LIKES:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1781
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_TAG:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1783
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_EDITORS_PICK:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1785
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_POPULAR_NOW:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1787
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_SINGLE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1789
    return-void
.end method

.method private safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1798
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1799
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1801
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addFollow(JJJZ)I
    .locals 20
    .parameter "userId"
    .parameter "sessionOwnerId"
    .parameter "followId"
    .parameter "notify"

    .prologue
    .line 796
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 798
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 800
    .local v7, whereArgs:[Ljava/lang/String;
    const-string v4, "users"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "following_flag"

    aput-object v8, v5, v6

    const-string v6, "user_id=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 803
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 804
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 805
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 806
    .local v15, currentFriendship:I
    const/4 v4, 0x1

    invoke-static {v15, v4}, Lco/vine/android/Friendships;->setFriendship(II)I

    move-result v17

    .line 809
    .local v17, newFriendship:I
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 810
    .local v16, cv:Landroid/content/ContentValues;
    const-string v4, "following_flag"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 812
    const-string v4, "users"

    const-string v5, "user_id=?"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 815
    .local v18, result:I
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 816
    new-instance v19, Lco/vine/android/api/VineUser;

    invoke-direct/range {v19 .. v19}, Lco/vine/android/api/VineUser;-><init>()V

    .line 817
    .local v19, skeletonUser:Lco/vine/android/api/VineUser;
    move-wide/from16 v0, p1

    move-object/from16 v2, v19

    iput-wide v0, v2, Lco/vine/android/api/VineUser;->userId:J

    .line 818
    new-instance v9, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 819
    .local v9, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    const/4 v13, 0x0

    .line 821
    .local v13, orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_0

    .line 822
    new-instance v13, Ljava/util/HashMap;

    .end local v13           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v4, 0x1

    invoke-direct {v13, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 823
    .restart local v13       #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    :cond_0
    const/4 v10, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUserGroups(Ljava/util/Collection;ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 828
    if-eqz p7, :cond_1

    .line 829
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWING:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 831
    :cond_1
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_2

    .line 832
    const-string v4, "VineDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Followed user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    .end local v9           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    .end local v13           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v15           #currentFriendship:I
    .end local v16           #cv:Landroid/content/ContentValues;
    .end local v17           #newFriendship:I
    .end local v18           #result:I
    .end local v19           #skeletonUser:Lco/vine/android/api/VineUser;
    :cond_2
    :goto_0
    monitor-exit p0

    return v18

    :cond_3
    const/16 v18, -0x1

    goto :goto_0

    .line 796
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized addLike(Lco/vine/android/api/VineLike;)I
    .locals 16
    .parameter "like"

    .prologue
    .line 888
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 890
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-wide v3, v0, Lco/vine/android/api/VineLike;->postId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 893
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 894
    .local v15, result:I
    const/4 v14, 0x0

    .line 896
    .local v14, mergeResult:I
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 899
    const-string v2, "posts"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "liked"

    aput-object v6, v3, v4

    const-string v4, "post_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 902
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 903
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 904
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 905
    .local v13, cv:Landroid/content/ContentValues;
    const-string v2, "liked"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 906
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 907
    const-string v2, "posts"

    const-string v3, "post_id=?"

    invoke-virtual {v1, v2, v13, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v15, 0x1

    .line 909
    :goto_0
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_0

    .line 910
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating like value in post: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v8, v0, Lco/vine/android/api/VineLike;->postId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 916
    .local v7, likes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineLike;>;"
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    move-object/from16 v0, p1

    iget-wide v8, v0, Lco/vine/android/api/VineLike;->postId:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lco/vine/android/provider/VineDatabaseHelper;->mergeLikes(Ljava/util/Collection;JII)I

    move-result v14

    .line 918
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 922
    if-gtz v15, :cond_1

    if-lez v14, :cond_2

    .line 923
    :cond_1
    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 925
    :cond_2
    monitor-exit p0

    return v15

    .line 907
    .end local v7           #likes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineLike;>;"
    .restart local v13       #cv:Landroid/content/ContentValues;
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 920
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #cv:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 888
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v14           #mergeResult:I
    .end local v15           #result:I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cleanUp(J)I
    .locals 7
    .parameter "timeAnchor"

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 362
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 364
    .local v1, deleted:I
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 365
    const-string v2, "DELETE FROM post_groups WHERE post_id IN (SELECT post_id FROM posts WHERE last_refresh < ?);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    const-string v2, "posts"

    const-string v3, "last_refresh<?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 372
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 373
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_0

    .line 374
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleanup performed, deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " posts with last_refresh less "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "than anchor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :cond_0
    :try_start_2
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 381
    if-lez v1, :cond_1

    .line 382
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 384
    :cond_1
    monitor-exit p0

    return v1

    .line 378
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 361
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #deleted:I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clearAllData()V
    .locals 4

    .prologue
    .line 1589
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1590
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "settings"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1591
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1592
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "activity"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1593
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "posts"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1594
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "likes"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1595
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "post_groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1596
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "comments"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1597
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "page_cursors"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    monitor-exit p0

    return-void

    .line 1589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteComment(Ljava/lang/String;)I
    .locals 6
    .parameter "commentId"

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 518
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "comments"

    const-string v3, "comment_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 522
    .local v1, deleted:I
    if-lez v1, :cond_0

    .line 523
    iget-object v2, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$Comments;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 524
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V

    .line 527
    :cond_0
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_1

    .line 528
    if-lez v1, :cond_2

    .line 529
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting comment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 531
    :cond_2
    :try_start_1
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t delete comment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 517
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #deleted:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deletePost(J)I
    .locals 8
    .parameter "postId"

    .prologue
    .line 975
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 978
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 979
    const-string v3, "posts"

    const-string v4, "post_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 981
    .local v1, deleted:I
    const/4 v2, 0x0

    .line 982
    .local v2, deletedGroups:I
    if-lez v1, :cond_0

    .line 983
    const-string v3, "post_groups"

    const-string v4, "post_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 986
    :cond_0
    if-gtz v1, :cond_1

    if-lez v2, :cond_2

    .line 987
    :cond_1
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V

    .line 990
    :cond_2
    sget-boolean v3, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v3, :cond_3

    .line 991
    if-lez v2, :cond_4

    .line 992
    const-string v3, "VineDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing the post: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 999
    :try_start_2
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1001
    monitor-exit p0

    return v1

    .line 994
    :cond_4
    :try_start_3
    const-string v3, "VineDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t delete post: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 999
    .end local v1           #deleted:I
    .end local v2           #deletedGroups:I
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 975
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getNextPageCursor(IILjava/lang/String;Z)I
    .locals 10
    .parameter "kind"
    .parameter "type"
    .parameter "tag"
    .parameter "reversed"

    .prologue
    .line 1509
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1511
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p4, :cond_1

    .line 1512
    const-string v9, "previous_page"

    .line 1517
    .local v9, column:Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_0

    .line 1518
    const-string p3, ""

    .line 1521
    :cond_0
    const-string v1, "page_cursors"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const-string v3, "kind=? AND type=? AND tag=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1525
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1526
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1528
    :goto_1
    monitor-exit p0

    return v1

    .line 1514
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #column:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v9, "next_page"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v9       #column:Ljava/lang/String;
    goto :goto_0

    .line 1528
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 1509
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #column:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPageAnchor(IILjava/lang/String;)J
    .locals 9
    .parameter "kind"
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 1576
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1577
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "page_cursors"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "anchor"

    aput-object v4, v2, v3

    const-string v3, "kind=? AND type=? AND tag=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1581
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1582
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1584
    :goto_0
    monitor-exit p0

    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 1576
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPreviousPageCursor(IILjava/lang/String;Z)I
    .locals 11
    .parameter "kind"
    .parameter "type"
    .parameter "tag"
    .parameter "reversed"

    .prologue
    .line 1543
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1545
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p4, :cond_1

    .line 1546
    const-string v9, "next_page"

    .line 1551
    .local v9, column:Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_0

    .line 1552
    const-string p3, ""

    .line 1555
    :cond_0
    const-string v1, "page_cursors"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const-string v3, "kind=? AND type=? AND tag=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1559
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1560
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1561
    .local v10, index:I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1563
    .end local v10           #index:I
    :goto_1
    monitor-exit p0

    return v1

    .line 1548
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #column:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v9, "previous_page"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v9       #column:Ljava/lang/String;
    goto :goto_0

    .line 1563
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 1543
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #column:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized markLastActivity()V
    .locals 9

    .prologue
    .line 1418
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getLastActivityRowId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1419
    .local v1, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 1435
    :goto_0
    monitor-exit p0

    return-void

    .line 1423
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1425
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_1

    .line 1426
    const-string v4, "VineDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tagging the oldest activity with row: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1429
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1430
    const-string v4, "activity"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1432
    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1433
    const-string v4, "activity"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1418
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #rowId:J
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized markLastPost(ILjava/lang/String;)V
    .locals 9
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 1395
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lco/vine/android/provider/VineDatabaseHelper;->getLastPostRowId(ILjava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1396
    .local v1, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 1414
    :goto_0
    monitor-exit p0

    return-void

    .line 1400
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1402
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_1

    .line 1403
    const-string v4, "VineDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tagging the oldest post of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " row id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1407
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1408
    const-string v4, "post_groups"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1410
    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1411
    const-string v4, "post_groups"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1413
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1395
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #rowId:J
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized markLastUser(ILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 1360
    monitor-enter p0

    :try_start_0
    const-string v0, "order_id DESC"

    invoke-virtual {p0, p1, p2, v0}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1361
    monitor-exit p0

    return-void

    .line 1360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markLastUser(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "type"
    .parameter "tag"
    .parameter "isLastOrdering"

    .prologue
    .line 1371
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/provider/VineDatabaseHelper;->getLastUserRowId(ILjava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1372
    .local v1, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 1391
    :goto_0
    monitor-exit p0

    return-void

    .line 1376
    :cond_0
    :try_start_1
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_1

    .line 1377
    const-string v4, "VineDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tagging the oldest user of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " row id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1383
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1384
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1385
    const-string v4, "user_groups"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1387
    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1388
    const-string v4, "user_groups"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1390
    iget-object v4, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1371
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #rowId:J
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized mergeActivity(Ljava/util/Collection;II)I
    .locals 33
    .parameter
    .parameter "next"
    .parameter "previous"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineNotification;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, notifs:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VineNotification;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 679
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v21, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 682
    .local v21, newNotifs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineNotification;>;"
    new-instance v31, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v31

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 685
    .local v31, updatedNotifs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineNotification;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lco/vine/android/api/VineNotification;

    .line 686
    .local v22, notif:Lco/vine/android/api/VineNotification;
    move-object/from16 v0, v22

    iget-wide v6, v0, Lco/vine/android/api/VineNotification;->notificationId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 678
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v21           #newNotifs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineNotification;>;"
    .end local v22           #notif:Lco/vine/android/api/VineNotification;
    .end local v31           #updatedNotifs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineNotification;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 689
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v21       #newNotifs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineNotification;>;"
    .restart local v31       #updatedNotifs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineNotification;>;"
    :cond_0
    :try_start_1
    const-string v6, "activity"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "notification_id"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 691
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 694
    :cond_1
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 695
    .local v23, notifId:J
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lco/vine/android/api/VineNotification;

    .line 696
    .restart local v22       #notif:Lco/vine/android/api/VineNotification;
    if-eqz v22, :cond_2

    .line 697
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 700
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 703
    .end local v22           #notif:Lco/vine/android/api/VineNotification;
    .end local v23           #notifId:J
    :cond_3
    const/16 v18, 0x0

    .line 704
    .local v18, inserted:I
    const/16 v30, 0x0

    .line 705
    .local v30, updated:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 706
    .local v19, lastRefresh:J
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 707
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    :try_start_2
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 710
    .local v32, values:Landroid/content/ContentValues;
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lco/vine/android/api/VineNotification;

    .line 711
    .restart local v22       #notif:Lco/vine/android/api/VineNotification;
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 712
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillActivityValues(Landroid/content/ContentValues;Lco/vine/android/api/VineNotification;J)V

    .line 713
    const-string v6, "activity"

    const-string v7, "notification_id"

    move-object/from16 v0, v32

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    add-int v18, v18, v6

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 716
    .end local v22           #notif:Lco/vine/android/api/VineNotification;
    :cond_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 718
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 721
    .end local v32           #values:Landroid/content/ContentValues;
    :cond_6
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 722
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 724
    :try_start_4
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 725
    .restart local v32       #values:Landroid/content/ContentValues;
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lco/vine/android/api/VineNotification;

    .line 726
    .restart local v22       #notif:Lco/vine/android/api/VineNotification;
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 727
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillActivityValues(Landroid/content/ContentValues;Lco/vine/android/api/VineNotification;J)V

    .line 728
    const-string v6, "activity"

    const-string v7, "notification_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, v22

    iget-wide v10, v0, Lco/vine/android/api/VineNotification;->notificationId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, v32

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v6

    if-lez v6, :cond_7

    const/4 v6, 0x1

    :goto_4
    add-int v30, v30, v6

    goto :goto_3

    .line 718
    .end local v22           #notif:Lco/vine/android/api/VineNotification;
    .end local v32           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v6

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 728
    .restart local v22       #notif:Lco/vine/android/api/VineNotification;
    .restart local v32       #values:Landroid/content/ContentValues;
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 732
    .end local v22           #notif:Lco/vine/android/api/VineNotification;
    :cond_8
    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 734
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 739
    .end local v32           #values:Landroid/content/ContentValues;
    :cond_9
    const/16 v16, 0x0

    .line 740
    .local v16, deleted:I
    if-lez v18, :cond_d

    .line 741
    const-string v6, "activity"

    sget-object v7, Lco/vine/android/provider/VineDatabaseSQL$TableQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 743
    .local v28, tableCursor:Landroid/database/Cursor;
    if-eqz v28, :cond_d

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 744
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v29

    .line 745
    .local v29, tableSize:I
    const/16 v6, 0x1f4

    move/from16 v0, v29

    if-le v0, v6, :cond_c

    .line 747
    :try_start_8
    const-string v6, "SELECT last_refresh FROM activity ORDER BY last_refresh DESC LIMIT 1 OFFSET 249"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 751
    .local v27, oldestNthRow:Landroid/database/Cursor;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 752
    if-eqz v27, :cond_b

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 753
    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 754
    .local v25, oldestNthId:J
    const-string v6, "activity"

    const-string v7, "last_refresh<?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 756
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_a

    .line 757
    const-string v6, "s"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Due to reaching maximum table size ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with a max of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x1f4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), deleted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " activity, all less than refresh time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v25

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_a
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 764
    .end local v25           #oldestNthId:J
    :cond_b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 766
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 769
    .end local v27           #oldestNthRow:Landroid/database/Cursor;
    :cond_c
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 773
    .end local v28           #tableCursor:Landroid/database/Cursor;
    .end local v29           #tableSize:I
    :cond_d
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_e

    .line 774
    const-string v6, "VineDatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new notifications and updated "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_e
    if-gtz p2, :cond_f

    if-lez p3, :cond_10

    .line 778
    :cond_f
    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v6, p0

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v6 .. v14}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I

    .line 781
    :cond_10
    if-gtz v18, :cond_11

    if-gtz v30, :cond_11

    if-lez v16, :cond_12

    .line 782
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$Activity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 784
    :cond_12
    monitor-exit p0

    return v18

    .line 734
    .end local v16           #deleted:I
    :catchall_2
    move-exception v6

    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 766
    .restart local v16       #deleted:I
    .restart local v28       #tableCursor:Landroid/database/Cursor;
    .restart local v29       #tableSize:I
    :catchall_3
    move-exception v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public declared-synchronized mergeComments(Ljava/util/Collection;JZ)I
    .locals 42
    .parameter
    .parameter "postId"
    .parameter "notify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineComment;",
            ">;JZ)I"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, comments:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VineComment;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 542
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v30, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 544
    .local v30, newComments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineComment;>;"
    new-instance v39, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v39

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 546
    .local v39, updatedComments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineComment;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lco/vine/android/api/VineComment;

    .line 547
    .local v41, vc:Lco/vine/android/api/VineComment;
    move-wide/from16 v0, p2

    move-object/from16 v2, v41

    iput-wide v0, v2, Lco/vine/android/api/VineComment;->postId:J

    .line 548
    move-object/from16 v0, v41

    iget-wide v8, v0, Lco/vine/android/api/VineComment;->commentId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 539
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v30           #newComments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineComment;>;"
    .end local v39           #updatedComments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineComment;>;"
    .end local v41           #vc:Lco/vine/android/api/VineComment;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 552
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27       #i$:Ljava/util/Iterator;
    .restart local v30       #newComments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineComment;>;"
    .restart local v39       #updatedComments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineComment;>;"
    :cond_0
    :try_start_1
    const-string v6, "comments"

    sget-object v7, Lco/vine/android/provider/VineDatabaseSQL$CommentsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 555
    .local v22, c:Landroid/database/Cursor;
    if-eqz v22, :cond_4

    .line 557
    :cond_1
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 558
    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 559
    .local v24, commentId:J
    const/4 v6, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 560
    .local v21, avatarUrl:Ljava/lang/String;
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lco/vine/android/api/VineComment;

    .line 561
    .local v23, comment:Lco/vine/android/api/VineComment;
    if-eqz v23, :cond_1

    if-nez v21, :cond_2

    move-object/from16 v0, v23

    iget-object v6, v0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 563
    :goto_2
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 561
    :cond_2
    move-object/from16 v0, v23

    iget-object v6, v0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 566
    .end local v21           #avatarUrl:Ljava/lang/String;
    .end local v23           #comment:Lco/vine/android/api/VineComment;
    .end local v24           #commentId:J
    :cond_3
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_4
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_6

    .line 570
    const/16 v31, 0x0

    .line 672
    :cond_5
    :goto_3
    monitor-exit p0

    return v31

    .line 573
    :cond_6
    :try_start_2
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->size()I

    move-result v8

    add-int v36, v6, v8

    .line 574
    .local v36, size:I
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v36

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 575
    .local v7, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    new-instance v12, Ljava/util/HashMap;

    move/from16 v0, v36

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 576
    .local v12, orderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_7
    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lco/vine/android/api/VineComment;

    .line 577
    .restart local v41       #vc:Lco/vine/android/api/VineComment;
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_7

    .line 578
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    iget-wide v8, v6, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v41

    iget-wide v8, v0, Lco/vine/android/api/VineComment;->commentId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v12, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 582
    .end local v41           #vc:Lco/vine/android/api/VineComment;
    :cond_8
    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_9
    :goto_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lco/vine/android/api/VineComment;

    .line 583
    .restart local v41       #vc:Lco/vine/android/api/VineComment;
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_9

    .line 584
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    iget-wide v8, v6, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v41

    iget-wide v8, v0, Lco/vine/android/api/VineComment;->commentId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v12, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 589
    .end local v41           #vc:Lco/vine/android/api/VineComment;
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 590
    const/4 v8, 0x3

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v12}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 594
    :cond_b
    const/16 v31, 0x0

    .line 595
    .local v31, numInserted:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 596
    .local v28, lastRefresh:J
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 597
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 599
    :try_start_3
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 600
    .local v40, values:Landroid/content/ContentValues;
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_6
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lco/vine/android/api/VineComment;

    .line 601
    .restart local v23       #comment:Lco/vine/android/api/VineComment;
    invoke-virtual/range {v40 .. v40}, Landroid/content/ContentValues;->clear()V

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v23

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillCommentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineComment;J)V

    .line 603
    const-string v6, "comments"

    const/4 v8, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v5, v6, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_c

    const/4 v6, 0x1

    :goto_7
    add-int v31, v31, v6

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    goto :goto_7

    .line 605
    .end local v23           #comment:Lco/vine/android/api/VineComment;
    :cond_d
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 607
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 611
    .end local v40           #values:Landroid/content/ContentValues;
    :cond_e
    const/16 v32, 0x0

    .line 612
    .local v32, numUpdated:I
    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    .line 613
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 615
    :try_start_5
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 616
    .restart local v40       #values:Landroid/content/ContentValues;
    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_8
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lco/vine/android/api/VineComment;

    .line 617
    .restart local v23       #comment:Lco/vine/android/api/VineComment;
    invoke-virtual/range {v40 .. v40}, Landroid/content/ContentValues;->clear()V

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v23

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillCommentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineComment;J)V

    .line 619
    const-string v6, "comments"

    const-string v8, "comment_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, v23

    iget-wide v13, v0, Lco/vine/android/api/VineComment;->commentId:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, v40

    invoke-virtual {v5, v6, v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v6

    if-lez v6, :cond_f

    const/4 v6, 0x1

    :goto_9
    add-int v32, v32, v6

    goto :goto_8

    .line 607
    .end local v23           #comment:Lco/vine/android/api/VineComment;
    .end local v32           #numUpdated:I
    .end local v40           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v6

    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 619
    .restart local v23       #comment:Lco/vine/android/api/VineComment;
    .restart local v32       #numUpdated:I
    .restart local v40       #values:Landroid/content/ContentValues;
    :cond_f
    const/4 v6, 0x0

    goto :goto_9

    .line 622
    .end local v23           #comment:Lco/vine/android/api/VineComment;
    :cond_10
    :try_start_7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 624
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 629
    .end local v40           #values:Landroid/content/ContentValues;
    :cond_11
    const/16 v26, 0x0

    .line 630
    .local v26, deleted:I
    if-lez v31, :cond_15

    .line 631
    const-string v14, "comments"

    sget-object v15, Lco/vine/android/provider/VineDatabaseSQL$TableQuery;->PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v5

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    .line 633
    .local v37, tableCursor:Landroid/database/Cursor;
    if-eqz v37, :cond_15

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 634
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v38

    .line 635
    .local v38, tableSize:I
    const/16 v6, 0x1388

    move/from16 v0, v38

    if-le v0, v6, :cond_14

    .line 637
    :try_start_9
    const-string v6, "SELECT last_refresh FROM comments ORDER BY last_refresh DESC LIMIT 1 OFFSET 2500"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 641
    .local v35, oldestNthRow:Landroid/database/Cursor;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 642
    if-eqz v35, :cond_13

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 643
    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 644
    .local v33, oldestNthId:J
    const-string v6, "comments"

    const-string v8, "last_refresh<?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 646
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_12

    .line 647
    const-string v6, "s"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Due to reaching maximum table size ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with a max of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), deleted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " comments, all less than"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " refresh time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v33

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_12
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 654
    .end local v33           #oldestNthId:J
    :cond_13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 656
    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 659
    .end local v35           #oldestNthRow:Landroid/database/Cursor;
    :cond_14
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 663
    .end local v37           #tableCursor:Landroid/database/Cursor;
    .end local v38           #tableSize:I
    :cond_15
    if-eqz p4, :cond_17

    if-gtz v31, :cond_16

    if-gtz v32, :cond_16

    if-lez v26, :cond_17

    .line 664
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lco/vine/android/provider/Vine$Comments;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 665
    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V

    .line 668
    :cond_17
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_5

    .line 669
    const-string v6, "VineDatabaseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inserted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " comments and updated "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 624
    .end local v26           #deleted:I
    :catchall_2
    move-exception v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 656
    .restart local v26       #deleted:I
    .restart local v37       #tableCursor:Landroid/database/Cursor;
    .restart local v38       #tableSize:I
    :catchall_3
    move-exception v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public declared-synchronized mergeLikes(Ljava/util/Collection;JII)I
    .locals 41
    .parameter
    .parameter "postId"
    .parameter "next"
    .parameter "previous"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineLike;",
            ">;JII)I"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VineLike;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 391
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v29, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v29

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 393
    .local v29, newLikes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineLike;>;"
    new-instance v38, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v38

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 395
    .local v38, updatedLikes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineLike;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lco/vine/android/api/VineLike;

    .line 396
    .local v26, like:Lco/vine/android/api/VineLike;
    move-wide/from16 v0, p2

    move-object/from16 v2, v26

    iput-wide v0, v2, Lco/vine/android/api/VineLike;->postId:J

    .line 397
    move-object/from16 v0, v26

    iget-wide v8, v0, Lco/vine/android/api/VineLike;->likeId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 389
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v26           #like:Lco/vine/android/api/VineLike;
    .end local v29           #newLikes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineLike;>;"
    .end local v38           #updatedLikes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineLike;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 400
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v29       #newLikes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineLike;>;"
    .restart local v38       #updatedLikes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineLike;>;"
    :cond_0
    :try_start_1
    const-string v6, "likes"

    sget-object v7, Lco/vine/android/provider/VineDatabaseSQL$LikesQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 403
    .local v21, c:Landroid/database/Cursor;
    if-eqz v21, :cond_3

    .line 404
    :cond_1
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 405
    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 406
    .local v27, likeId:J
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lco/vine/android/api/VineLike;

    .line 407
    .restart local v26       #like:Lco/vine/android/api/VineLike;
    if-eqz v26, :cond_1

    .line 408
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 411
    .end local v26           #like:Lco/vine/android/api/VineLike;
    .end local v27           #likeId:J
    :cond_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_3
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->size()I

    move-result v8

    add-int v37, v6, v8

    .line 415
    .local v37, totalSize:I
    new-instance v12, Ljava/util/HashMap;

    move/from16 v0, v37

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 416
    .local v12, orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v37

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    .local v7, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_4
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lco/vine/android/api/VineLike;

    .line 419
    .local v40, vc:Lco/vine/android/api/VineLike;
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_4

    .line 420
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    iget-wide v8, v6, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v40

    iget-wide v8, v0, Lco/vine/android/api/VineLike;->likeId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 425
    .end local v40           #vc:Lco/vine/android/api/VineLike;
    :cond_5
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_6
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lco/vine/android/api/VineLike;

    .line 426
    .restart local v40       #vc:Lco/vine/android/api/VineLike;
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_6

    .line 427
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    iget-wide v8, v6, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v40

    iget-wide v8, v0, Lco/vine/android/api/VineLike;->likeId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 432
    .end local v40           #vc:Lco/vine/android/api/VineLike;
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 433
    const/4 v8, 0x5

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v6, p0

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v12}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 437
    :cond_8
    const/16 v30, 0x0

    .line 438
    .local v30, numInserted:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 439
    .local v24, lastRefresh:J
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 440
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    :try_start_2
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 443
    .local v39, values:Landroid/content/ContentValues;
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lco/vine/android/api/VineLike;

    .line 444
    .restart local v26       #like:Lco/vine/android/api/VineLike;
    invoke-virtual/range {v39 .. v39}, Landroid/content/ContentValues;->clear()V

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillLikeValues(Landroid/content/ContentValues;Lco/vine/android/api/VineLike;J)V

    .line 446
    const-string v6, "likes"

    const/4 v8, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v5, v6, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_9

    const/4 v6, 0x1

    :goto_5
    add-int v30, v30, v6

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 448
    .end local v26           #like:Lco/vine/android/api/VineLike;
    :cond_a
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 450
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 454
    .end local v39           #values:Landroid/content/ContentValues;
    :cond_b
    const/16 v31, 0x0

    .line 455
    .local v31, numUpdated:I
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 456
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 458
    :try_start_4
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 459
    .restart local v39       #values:Landroid/content/ContentValues;
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lco/vine/android/api/VineLike;

    .line 460
    .restart local v26       #like:Lco/vine/android/api/VineLike;
    invoke-virtual/range {v39 .. v39}, Landroid/content/ContentValues;->clear()V

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillLikeValues(Landroid/content/ContentValues;Lco/vine/android/api/VineLike;J)V

    .line 462
    const-string v6, "likes"

    const-string v8, "like_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, v26

    iget-wide v13, v0, Lco/vine/android/api/VineLike;->likeId:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, v39

    invoke-virtual {v5, v6, v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v6

    if-lez v6, :cond_c

    const/4 v6, 0x1

    :goto_7
    add-int v31, v31, v6

    goto :goto_6

    .line 450
    .end local v26           #like:Lco/vine/android/api/VineLike;
    .end local v31           #numUpdated:I
    .end local v39           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v6

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 462
    .restart local v26       #like:Lco/vine/android/api/VineLike;
    .restart local v31       #numUpdated:I
    .restart local v39       #values:Landroid/content/ContentValues;
    :cond_c
    const/4 v6, 0x0

    goto :goto_7

    .line 465
    .end local v26           #like:Lco/vine/android/api/VineLike;
    :cond_d
    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 467
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 473
    .end local v39           #values:Landroid/content/ContentValues;
    :cond_e
    const/16 v22, 0x0

    .line 474
    .local v22, deleted:I
    if-lez v30, :cond_12

    .line 475
    const-string v14, "likes"

    sget-object v15, Lco/vine/android/provider/VineDatabaseSQL$TableQuery;->PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v5

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 477
    .local v36, tableCursor:Landroid/database/Cursor;
    if-eqz v36, :cond_12

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 478
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v35

    .line 479
    .local v35, size:I
    const/16 v6, 0x1388

    move/from16 v0, v35

    if-le v0, v6, :cond_11

    .line 481
    :try_start_8
    const-string v6, "SELECT last_refresh FROM likes ORDER BY last_refresh DESC LIMIT 1 OFFSET 2500"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 485
    .local v34, oldestNthRow:Landroid/database/Cursor;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 486
    if-eqz v34, :cond_10

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 487
    const/4 v6, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 488
    .local v32, oldestNthId:J
    const-string v6, "likes"

    const-string v8, "last_refresh<?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 490
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_f

    .line 491
    const-string v6, "s"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Due to reaching maximum table size ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with a max of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), deleted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " likes, all less than refresh time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_f
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 498
    .end local v32           #oldestNthId:J
    :cond_10
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 500
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 503
    .end local v34           #oldestNthRow:Landroid/database/Cursor;
    :cond_11
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 507
    .end local v35           #size:I
    .end local v36           #tableCursor:Landroid/database/Cursor;
    :cond_12
    if-gtz v30, :cond_13

    if-gtz v31, :cond_13

    if-lez v22, :cond_14

    .line 508
    :cond_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lco/vine/android/provider/Vine$Likes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 510
    :cond_14
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_15

    .line 511
    const-string v6, "VineDatabaseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inserted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " likes and updated "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 513
    :cond_15
    monitor-exit p0

    return v30

    .line 467
    .end local v22           #deleted:I
    :catchall_2
    move-exception v6

    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 500
    .restart local v22       #deleted:I
    .restart local v35       #size:I
    .restart local v36       #tableCursor:Landroid/database/Cursor;
    :catchall_3
    move-exception v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public declared-synchronized mergePostGroups(Ljava/util/Collection;ILjava/lang/String;)V
    .locals 15
    .parameter
    .parameter "type"
    .parameter "groupTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1286
    .local p1, posts:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VinePost;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 1347
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1290
    :cond_1
    :try_start_0
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_2

    .line 1291
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mergePostGroups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tagged by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_2
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1297
    .local v12, newPostGroups:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco/vine/android/api/VinePost;

    .line 1298
    .local v13, post:Lco/vine/android/api/VinePost;
    iget-wide v2, v13, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1286
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #newPostGroups:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    .end local v13           #post:Lco/vine/android/api/VinePost;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1302
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #newPostGroups:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1303
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "post_groups"

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "post_type=? AND tag=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 1310
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 1315
    :goto_2
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1317
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 1320
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1323
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_5

    .line 1324
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserting new post groups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_5
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v11

    .line 1328
    .local v11, newPostGrooupsCount:I
    if-lez v11, :cond_0

    .line 1330
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1332
    :try_start_4
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1333
    .local v14, values:Landroid/content/ContentValues;
    const-string v2, "post_type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1334
    const-string v2, "tag"

    move-object/from16 v0, p3

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco/vine/android/api/VinePost;

    .line 1337
    .restart local v13       #post:Lco/vine/android/api/VinePost;
    const-string v2, "g_flags"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1338
    const-string v2, "post_id"

    iget-wide v3, v13, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1339
    const-string v2, "post_groups"

    const-string v3, "post_id"

    invoke-virtual {v1, v2, v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 1343
    .end local v13           #post:Lco/vine/android/api/VinePost;
    .end local v14           #values:Landroid/content/ContentValues;
    :catchall_2
    move-exception v2

    :try_start_5
    invoke-direct {p0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1341
    .restart local v14       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1343
    :try_start_7
    invoke-direct {p0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1345
    iget-object v2, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$PostGroupsView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized mergePosts(Ljava/util/Collection;ILjava/lang/String;IIJZ)Lco/vine/android/provider/DbResponse;
    .locals 51
    .parameter
    .parameter "groupType"
    .parameter "tag"
    .parameter "nextPage"
    .parameter "previousPage"
    .parameter "anchor"
    .parameter "userInitiated"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;I",
            "Ljava/lang/String;",
            "IIJZ)",
            "Lco/vine/android/provider/DbResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VinePost;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 147
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v34, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 149
    .local v34, newPosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    new-instance v48, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v48

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 151
    .local v48, updatedPosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lco/vine/android/api/VinePost;

    .line 152
    .local v31, item:Lco/vine/android/api/VinePost;
    move-object/from16 v0, v31

    iget-wide v6, v0, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v31           #item:Lco/vine/android/api/VinePost;
    .end local v34           #newPosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    .end local v48           #updatedPosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 155
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v30       #i$:Ljava/util/Iterator;
    .restart local v34       #newPosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    .restart local v48       #updatedPosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    :cond_0
    const/16 v27, 0x1

    .line 158
    .local v27, contiguous:Z
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 159
    const-string v8, "post_type=? AND tag=?"

    .line 160
    .local v8, selectionString:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x1

    aput-object p3, v9, v6

    .line 165
    .local v9, selectionArgs:[Ljava/lang/String;
    :goto_1
    const-string v6, "post_groups_view"

    sget-object v7, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "post_id DESC"

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 167
    .local v26, c:Landroid/database/Cursor;
    if-eqz v26, :cond_3

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 169
    const-wide/16 v6, 0x0

    cmp-long v6, p6, v6

    if-lez v6, :cond_1

    .line 170
    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, p6, v6

    if-gez v6, :cond_5

    .line 171
    const/16 v27, 0x1

    .line 177
    :cond_1
    :goto_2
    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 178
    .local v41, postId:J
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lco/vine/android/api/VinePost;

    .line 179
    .local v40, post:Lco/vine/android/api/VinePost;
    if-eqz v40, :cond_2

    .line 180
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v48

    move-object/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_2
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 183
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 186
    .end local v40           #post:Lco/vine/android/api/VinePost;
    .end local v41           #postId:J
    :cond_3
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_6

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual/range {v48 .. v48}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 187
    const-string v6, "VineDatabaseHelper"

    const-string v7, "No new posts to merge or update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v6, Lco/vine/android/provider/DbResponse;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x2

    invoke-direct {v6, v7, v10, v12}, Lco/vine/android/provider/DbResponse;-><init>(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :goto_3
    monitor-exit p0

    return-object v6

    .line 162
    .end local v8           #selectionString:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v26           #c:Landroid/database/Cursor;
    :cond_4
    :try_start_2
    const-string v8, "post_type=?"

    .line 163
    .restart local v8       #selectionString:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto :goto_1

    .line 173
    .restart local v26       #c:Landroid/database/Cursor;
    :cond_5
    const/16 v27, 0x0

    goto :goto_2

    .line 191
    :cond_6
    new-instance v16, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 192
    .local v16, tagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v11, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_7
    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lco/vine/android/api/VinePost;

    .line 195
    .local v50, vc:Lco/vine/android/api/VinePost;
    move-object/from16 v0, v50

    iget-object v6, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_7

    .line 196
    move-object/from16 v0, v50

    iget-object v6, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    move-object/from16 v0, v50

    iget-wide v6, v0, Lco/vine/android/api/VinePost;->userId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    iget-wide v12, v0, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 200
    .end local v50           #vc:Lco/vine/android/api/VinePost;
    :cond_8
    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v17}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;Ljava/util/Map;)I

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 204
    .local v32, lastRefresh:J
    const/16 v35, 0x0

    .line 205
    .local v35, numInserted:I
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 206
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    :try_start_3
    new-instance v49, Landroid/content/ContentValues;

    invoke-direct/range {v49 .. v49}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v49, values:Landroid/content/ContentValues;
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_9
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lco/vine/android/api/VinePost;

    .line 210
    .restart local v40       #post:Lco/vine/android/api/VinePost;
    invoke-virtual/range {v49 .. v49}, Landroid/content/ContentValues;->clear()V

    .line 213
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget v6, v6, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, v40

    iput v6, v0, Lco/vine/android/api/VinePost;->likesCount:I

    .line 214
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget v6, v6, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, v40

    iput v6, v0, Lco/vine/android/api/VinePost;->commentsCount:I

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v40

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillPostValues(Landroid/content/ContentValues;Lco/vine/android/api/VinePost;J)V

    .line 217
    const-string v6, "posts"

    const/4 v7, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-lez v6, :cond_b

    const/4 v6, 0x1

    :goto_6
    add-int v35, v35, v6

    .line 218
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 219
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    iget-wide v12, v0, Lco/vine/android/api/VinePost;->postId:J

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12, v13, v7}, Lco/vine/android/provider/VineDatabaseHelper;->mergeComments(Ljava/util/Collection;JZ)I

    .line 221
    :cond_a
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 222
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v0, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v40

    iget-wide v0, v0, Lco/vine/android/api/VinePost;->postId:J

    move-wide/from16 v19, v0

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v17, p0

    invoke-virtual/range {v17 .. v22}, Lco/vine/android/provider/VineDatabaseHelper;->mergeLikes(Ljava/util/Collection;JII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 227
    .end local v40           #post:Lco/vine/android/api/VinePost;
    .end local v49           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v6

    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    .restart local v40       #post:Lco/vine/android/api/VinePost;
    .restart local v49       #values:Landroid/content/ContentValues;
    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    .line 225
    .end local v40           #post:Lco/vine/android/api/VinePost;
    :cond_c
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 227
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 231
    .end local v49           #values:Landroid/content/ContentValues;
    :cond_d
    const/16 v36, 0x0

    .line 233
    .local v36, numUpdated:I
    invoke-virtual/range {v48 .. v48}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    .line 234
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 236
    :try_start_7
    new-instance v49, Landroid/content/ContentValues;

    invoke-direct/range {v49 .. v49}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .restart local v49       #values:Landroid/content/ContentValues;
    invoke-virtual/range {v48 .. v48}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_e
    :goto_7
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lco/vine/android/api/VinePost;

    .line 238
    .restart local v40       #post:Lco/vine/android/api/VinePost;
    invoke-virtual/range {v49 .. v49}, Landroid/content/ContentValues;->clear()V

    .line 240
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget v6, v6, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, v40

    iput v6, v0, Lco/vine/android/api/VinePost;->likesCount:I

    .line 241
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget v6, v6, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, v40

    iput v6, v0, Lco/vine/android/api/VinePost;->commentsCount:I

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v40

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillPostValues(Landroid/content/ContentValues;Lco/vine/android/api/VinePost;J)V

    .line 244
    const-string v6, "posts"

    const-string v7, "post_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, v40

    iget-wide v13, v0, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    move-object/from16 v0, v49

    invoke-virtual {v5, v6, v0, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_10

    const/4 v6, 0x1

    :goto_8
    add-int v36, v36, v6

    .line 246
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 247
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    iget-wide v12, v0, Lco/vine/android/api/VinePost;->postId:J

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12, v13, v7}, Lco/vine/android/provider/VineDatabaseHelper;->mergeComments(Ljava/util/Collection;JZ)I

    .line 249
    :cond_f
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 250
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v0, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v40

    iget-wide v0, v0, Lco/vine/android/api/VinePost;->postId:J

    move-wide/from16 v19, v0

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v17, p0

    invoke-virtual/range {v17 .. v22}, Lco/vine/android/provider/VineDatabaseHelper;->mergeLikes(Ljava/util/Collection;JII)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_7

    .line 255
    .end local v40           #post:Lco/vine/android/api/VinePost;
    .end local v49           #values:Landroid/content/ContentValues;
    :catchall_2
    move-exception v6

    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 244
    .restart local v40       #post:Lco/vine/android/api/VinePost;
    .restart local v49       #values:Landroid/content/ContentValues;
    :cond_10
    const/4 v6, 0x0

    goto :goto_8

    .line 253
    .end local v40           #post:Lco/vine/android/api/VinePost;
    :cond_11
    :try_start_9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 255
    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 259
    .end local v49           #values:Landroid/content/ContentValues;
    :cond_12
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_13

    .line 260
    const-string v6, "VineDatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inserted "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " posts, and updated "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " with lastRefresh time "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v32

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_13
    const-wide/16 v6, 0x0

    cmp-long v6, p6, v6

    if-gtz v6, :cond_14

    if-gtz p4, :cond_14

    if-lez p5, :cond_15

    .line 265
    :cond_14
    const/16 v18, 0x2

    const/16 v25, 0x0

    move-object/from16 v17, p0

    move/from16 v19, p2

    move-object/from16 v20, p3

    move/from16 v21, p4

    move/from16 v22, p5

    move-wide/from16 v23, p6

    invoke-virtual/range {v17 .. v25}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I

    .line 271
    :cond_15
    if-eqz v27, :cond_1d

    .line 272
    const/16 v43, 0x1

    .line 303
    .local v43, response:I
    :goto_9
    const/16 v28, 0x0

    .line 304
    .local v28, deleted:I
    if-lez v35, :cond_19

    if-eqz v27, :cond_19

    .line 305
    const-string v18, "posts"

    sget-object v19, Lco/vine/android/provider/VineDatabaseSQL$TableQuery;->PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v45

    .line 307
    .local v45, tableCursor:Landroid/database/Cursor;
    if-eqz v45, :cond_19

    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 308
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->getCount()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v44

    .line 309
    .local v44, size:I
    const/16 v6, 0x3e8

    move/from16 v0, v44

    if-le v0, v6, :cond_18

    .line 311
    :try_start_b
    const-string v6, "SELECT last_refresh FROM posts ORDER BY last_refresh DESC LIMIT 1 OFFSET 500"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 315
    .local v39, oldestNthRow:Landroid/database/Cursor;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 316
    if-eqz v39, :cond_17

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 317
    const/4 v6, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 319
    .local v37, oldestNthId:J
    const-string v6, "DELETE FROM post_groups WHERE post_id IN (SELECT post_id FROM posts WHERE last_refresh < ?);"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    const-string v6, "posts"

    const-string v7, "last_refresh<?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    invoke-virtual {v5, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    .line 327
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_16

    .line 328
    const-string v6, "s"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Due to reaching maximum table size ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " with a max of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v10, 0x3e8

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "), deleted "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " posts groups all less than last refresh id "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v37

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_16
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 335
    .end local v37           #oldestNthId:J
    :cond_17
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 337
    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 340
    .end local v39           #oldestNthRow:Landroid/database/Cursor;
    :cond_18
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->close()V

    .line 344
    .end local v44           #size:I
    .end local v45           #tableCursor:Landroid/database/Cursor;
    :cond_19
    if-gtz v35, :cond_1a

    if-gtz v36, :cond_1a

    if-lez v28, :cond_1c

    :cond_1a
    if-eqz p2, :cond_1c

    .line 346
    const/4 v6, -0x1

    move/from16 v0, p2

    if-eq v0, v6, :cond_1b

    .line 347
    invoke-virtual/range {p0 .. p3}, Lco/vine/android/provider/VineDatabaseHelper;->mergePostGroups(Ljava/util/Collection;ILjava/lang/String;)V

    .line 349
    :cond_1b
    if-eqz p8, :cond_20

    .line 350
    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V

    .line 357
    :cond_1c
    :goto_a
    new-instance v6, Lco/vine/android/provider/DbResponse;

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v43

    invoke-direct {v6, v0, v1, v2}, Lco/vine/android/provider/DbResponse;-><init>(III)V

    goto/16 :goto_3

    .line 277
    .end local v28           #deleted:I
    .end local v43           #response:I
    :cond_1d
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 278
    const-string v46, "post_type=? AND tag=? AND post_id<?"

    .line 280
    .local v46, timelineSelection:Ljava/lang/String;
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v47, v6

    const/4 v6, 0x1

    aput-object p3, v47, v6

    const/4 v6, 0x2

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v47, v6

    .line 288
    .local v47, timelineSelectionArgs:[Ljava/lang/String;
    :goto_b
    const-string v6, "posts"

    const-string v7, "post_id<?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    invoke-virtual {v5, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    .line 290
    .restart local v28       #deleted:I
    const-string v6, "post_groups"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    .line 292
    .local v29, deletedGroups:I
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_1e

    .line 293
    const-string v6, "VineDatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non contiguous timeline detected, deleted "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " posts and "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " with id less than anchor: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p6

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " of type "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " and tag "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1e
    const/16 v43, 0x4

    .restart local v43       #response:I
    goto/16 :goto_9

    .line 283
    .end local v28           #deleted:I
    .end local v29           #deletedGroups:I
    .end local v43           #response:I
    .end local v46           #timelineSelection:Ljava/lang/String;
    .end local v47           #timelineSelectionArgs:[Ljava/lang/String;
    :cond_1f
    const-string v46, "post_type=? AND post_id<?"

    .line 284
    .restart local v46       #timelineSelection:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v47, v6

    const/4 v6, 0x1

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v47, v6

    .restart local v47       #timelineSelectionArgs:[Ljava/lang/String;
    goto/16 :goto_b

    .line 337
    .end local v46           #timelineSelection:Ljava/lang/String;
    .end local v47           #timelineSelectionArgs:[Ljava/lang/String;
    .restart local v28       #deleted:I
    .restart local v43       #response:I
    .restart local v44       #size:I
    .restart local v45       #tableCursor:Landroid/database/Cursor;
    :catchall_3
    move-exception v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 351
    .end local v44           #size:I
    .end local v45           #tableCursor:Landroid/database/Cursor;
    :cond_20
    if-lez v35, :cond_1c

    .line 353
    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_a
.end method

.method public declared-synchronized mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I
    .locals 8
    .parameter
    .parameter "type"
    .parameter "groupTag"
    .parameter "next"
    .parameter "previous"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1058
    .local p1, users:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VineUser;>;"
    .local p6, orderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;Ljava/util/Map;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;Ljava/util/Map;)I
    .locals 33
    .parameter
    .parameter "type"
    .parameter "groupTag"
    .parameter "next"
    .parameter "previous"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1073
    .local p1, users:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VineUser;>;"
    .local p6, tagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local p7, orderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1076
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v20, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 1077
    .local v20, newUsers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    new-instance v28, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 1078
    .local v28, updatedUsers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lco/vine/android/api/VineUser;

    .line 1079
    .local v29, user:Lco/vine/android/api/VineUser;
    move-object/from16 v0, v29

    iget-wide v6, v0, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1073
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v20           #newUsers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    .end local v28           #updatedUsers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    .end local v29           #user:Lco/vine/android/api/VineUser;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1083
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v20       #newUsers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    .restart local v28       #updatedUsers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    :cond_0
    :try_start_1
    const-string v6, "users"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "user_id"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1085
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    .line 1088
    :cond_1
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1089
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1090
    .local v30, userId:J
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lco/vine/android/api/VineUser;

    .line 1091
    .restart local v29       #user:Lco/vine/android/api/VineUser;
    if-eqz v29, :cond_1

    .line 1092
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1096
    .end local v29           #user:Lco/vine/android/api/VineUser;
    .end local v30           #userId:J
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1099
    :cond_3
    const/16 v21, 0x0

    .line 1100
    .local v21, numInserted:I
    const/16 v22, 0x0

    .line 1102
    .local v22, numUpdated:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1104
    .local v18, lastRefreshTime:J
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1105
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1107
    :try_start_2
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 1108
    .local v32, values:Landroid/content/ContentValues;
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lco/vine/android/api/VineUser;

    .line 1109
    .restart local v29       #user:Lco/vine/android/api/VineUser;
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 1110
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillUserContentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineUser;J)V

    .line 1111
    const-string v6, "users"

    const-string v7, "user_id"

    move-object/from16 v0, v32

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    const/4 v6, 0x1

    :goto_3
    add-int v21, v21, v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 1113
    .end local v29           #user:Lco/vine/android/api/VineUser;
    :cond_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1115
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1119
    .end local v32           #values:Landroid/content/ContentValues;
    :cond_6
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1120
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1122
    :try_start_4
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 1123
    .restart local v32       #values:Landroid/content/ContentValues;
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lco/vine/android/api/VineUser;

    .line 1124
    .restart local v29       #user:Lco/vine/android/api/VineUser;
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 1125
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillUserContentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineUser;J)V

    .line 1126
    const-string v6, "users"

    const-string v7, "user_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, v29

    iget-wide v10, v0, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, v32

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v6

    if-lez v6, :cond_7

    const/4 v6, 0x1

    :goto_5
    add-int v22, v22, v6

    goto :goto_4

    .line 1115
    .end local v29           #user:Lco/vine/android/api/VineUser;
    .end local v32           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v6

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1126
    .restart local v29       #user:Lco/vine/android/api/VineUser;
    .restart local v32       #values:Landroid/content/ContentValues;
    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    .line 1129
    .end local v29           #user:Lco/vine/android/api/VineUser;
    :cond_8
    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1131
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1137
    .end local v32           #values:Landroid/content/ContentValues;
    :cond_9
    const/16 v16, 0x0

    .line 1138
    .local v16, deleted:I
    if-lez v21, :cond_d

    .line 1139
    const-string v6, "users"

    sget-object v7, Lco/vine/android/provider/VineDatabaseSQL$TableQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 1141
    .local v27, tableCursor:Landroid/database/Cursor;
    if-eqz v27, :cond_d

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1142
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v26

    .line 1143
    .local v26, size:I
    const/16 v6, 0x2710

    move/from16 v0, v26

    if-le v0, v6, :cond_c

    .line 1145
    :try_start_8
    const-string v6, "SELECT last_refresh FROM users ORDER BY last_refresh DESC LIMIT 1 OFFSET 5000"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1149
    .local v25, oldestRefreshId:Landroid/database/Cursor;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1150
    if-eqz v25, :cond_b

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1151
    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1153
    .local v23, oldestNthId:J
    const-string v6, "DELETE FROM user_groups WHERE user_id IN (SELECT user_id FROM users WHERE last_refresh < ?);"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1158
    const-string v6, "users"

    const-string v7, "last_refresh<?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 1160
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_a

    .line 1161
    const-string v6, "s"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Due to reaching maximum table size ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with a max of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2710

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), deleted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " users, all less than last refresh of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_a
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1168
    .end local v23           #oldestNthId:J
    :cond_b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1170
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1173
    .end local v25           #oldestRefreshId:Landroid/database/Cursor;
    :cond_c
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1177
    .end local v26           #size:I
    .end local v27           #tableCursor:Landroid/database/Cursor;
    :cond_d
    if-gtz v21, :cond_e

    if-gtz v22, :cond_e

    if-lez v16, :cond_11

    .line 1178
    :cond_e
    const/4 v6, -0x1

    move/from16 v0, p2

    if-eq v0, v6, :cond_10

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 1179
    invoke-direct/range {v6 .. v11}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUserGroups(Ljava/util/Collection;ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1180
    if-gtz p4, :cond_f

    if-lez p5, :cond_10

    .line 1181
    :cond_f
    const/4 v7, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v6, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v14}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I

    .line 1184
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FIND_FRIENDS_TWITTER:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FIND_FRIENDS_ADDRESS:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_LIKERS:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWERS:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWING:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1192
    :cond_11
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_12

    .line 1193
    const-string v6, "VineDatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new users and updating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1197
    :cond_12
    monitor-exit p0

    return v21

    .line 1131
    .end local v16           #deleted:I
    :catchall_2
    move-exception v6

    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 1170
    .restart local v16       #deleted:I
    .restart local v26       #size:I
    .restart local v27       #tableCursor:Landroid/database/Cursor;
    :catchall_3
    move-exception v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lco/vine/android/provider/VineDatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 95
    sget-boolean v0, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "VineDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lco/vine/android/provider/VineDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    invoke-direct {p0, p1}, Lco/vine/android/provider/VineDatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    return-void
.end method

.method public declared-synchronized removeFollow(JZZ)I
    .locals 13
    .parameter "userId"
    .parameter "deleteRow"
    .parameter "notify"

    .prologue
    .line 846
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 848
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 850
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v1, "users"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "following_flag"

    aput-object v5, v2, v3

    const-string v3, "user_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 853
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 854
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 855
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 856
    .local v9, currentFriendship:I
    const/4 v1, 0x1

    invoke-static {v9, v1}, Lco/vine/android/Friendships;->unsetFriendship(II)I

    move-result v11

    .line 858
    .local v11, newFriendship:I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 859
    .local v10, cv:Landroid/content/ContentValues;
    const-string v1, "following_flag"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 862
    const-string v1, "users"

    const-string v2, "user_id=?"

    invoke-virtual {v0, v1, v10, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 865
    .local v12, result:I
    if-eqz p3, :cond_0

    .line 866
    const-string v1, "user_groups"

    const-string v2, "user_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 870
    :cond_0
    if-eqz p4, :cond_1

    .line 871
    iget-object v1, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWING:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 873
    :cond_1
    sget-boolean v1, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v1, :cond_2

    .line 874
    const-string v1, "VineDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unfollowed user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    .end local v9           #currentFriendship:I
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v11           #newFriendship:I
    .end local v12           #result:I
    :cond_2
    :goto_0
    monitor-exit p0

    return v12

    :cond_3
    const/4 v12, -0x1

    goto :goto_0

    .line 846
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeLike(JJ)I
    .locals 12
    .parameter "postId"
    .parameter "myUserId"

    .prologue
    .line 937
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 938
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 939
    .local v11, result:I
    const/4 v10, 0x0

    .line 941
    .local v10, deletes:I
    const/4 v1, 0x1

    :try_start_1
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 942
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v1, "posts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "liked"

    aput-object v5, v2, v3

    const-string v3, "post_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 945
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 946
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 947
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 948
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "liked"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 949
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 951
    sget-boolean v1, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v1, :cond_0

    .line 952
    const-string v1, "VineDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing like in post: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    const-string v1, "posts"

    const-string v2, "post_id=?"

    invoke-virtual {v0, v1, v9, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    const/4 v11, 0x1

    .line 959
    .end local v9           #cv:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    const-string v1, "likes"

    const-string v2, "post_id=? AND user_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 962
    sget-boolean v1, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v1, :cond_2

    .line 963
    const-string v1, "VineDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted self like for post: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 966
    :cond_2
    :try_start_2
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 968
    if-gtz v11, :cond_3

    if-lez v10, :cond_4

    .line 969
    :cond_3
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 971
    :cond_4
    monitor-exit p0

    return v11

    .line 954
    .restart local v9       #cv:Landroid/content/ContentValues;
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 966
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #cv:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 937
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #deletes:I
    .end local v11           #result:I
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removePostsFromGroup(JILjava/lang/String;)I
    .locals 18
    .parameter "userId"
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 1005
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1006
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "post_groups_view"

    sget-object v4, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "user_id=? AND post_type=? AND tag=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p4, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1010
    .local v10, c:Landroid/database/Cursor;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v15, postIdsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1013
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1015
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1018
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1019
    .local v14, placeHolderString:Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1020
    .local v16, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v11, v0, :cond_3

    .line 1021
    const-string v3, "?"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    add-int/lit8 v3, v16, -0x1

    if-ge v11, v3, :cond_2

    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_2

    .line 1023
    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1020
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1028
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1030
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v12, v3, [Ljava/lang/String;

    .line 1031
    .local v12, idArray:[Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "post_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1036
    .local v17, whereString:Ljava/lang/String;
    const-string v4, "post_groups"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "post_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1038
    .local v13, numGroups:I
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1040
    sget-boolean v3, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v3, :cond_4

    .line 1041
    const-string v3, "VineDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Due to unfollowing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " groups "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1045
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1048
    if-lez v13, :cond_5

    .line 1049
    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1052
    :cond_5
    monitor-exit p0

    return v13

    .line 1045
    .end local v12           #idArray:[Ljava/lang/String;
    .end local v13           #numGroups:I
    .end local v17           #whereString:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1005
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #i:I
    .end local v14           #placeHolderString:Ljava/lang/StringBuilder;
    .end local v15           #postIdsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #size:I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removeUsersByGroup(I)V
    .locals 7
    .parameter "type"

    .prologue
    .line 1350
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1351
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "user_groups"

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1354
    .local v1, deleted:I
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_0

    .line 1355
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " users of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    :cond_0
    monitor-exit p0

    return-void

    .line 1350
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #deleted:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized savePageCursor(IILjava/lang/String;IIJZ)I
    .locals 14
    .parameter "kind"
    .parameter "type"
    .parameter "tag"
    .parameter "nextPage"
    .parameter "prevPage"
    .parameter "anchor"
    .parameter "reversed"

    .prologue
    .line 1460
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1462
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p3, :cond_0

    .line 1463
    const-string p3, ""

    .line 1466
    :cond_0
    const-string v12, "kind=? AND type=? AND tag=?"

    .line 1467
    .local v12, projection:Ljava/lang/String;
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object p3, v6, v3

    .line 1470
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v3, "page_cursors"

    sget-object v4, Lco/vine/android/provider/VineDatabaseSQL$PageCursorsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "kind=? AND type=? AND tag=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1473
    .local v10, c:Landroid/database/Cursor;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1474
    .local v13, values:Landroid/content/ContentValues;
    const-string v3, "kind"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1475
    const-string v3, "type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1476
    const-string v3, "tag"

    move-object/from16 v0, p3

    invoke-virtual {v13, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const-string v3, "next_page"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1478
    const-string v3, "previous_page"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1479
    const-string v3, "anchor"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1480
    const-string v3, "reversed"

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1482
    const/4 v11, 0x0

    .line 1483
    .local v11, num:I
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1484
    const-string v3, "page_cursors"

    const-string v4, "kind=? AND type=? AND tag=?"

    invoke-virtual {v2, v3, v13, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v11, v3

    .line 1488
    :goto_1
    sget-boolean v3, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v3, :cond_1

    .line 1489
    if-lez v11, :cond_1

    .line 1490
    const-string v3, "VineDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved pagecursor of kind: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " next:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prev: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " anchor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reverse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1495
    :cond_1
    monitor-exit p0

    return v11

    .line 1484
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1486
    :cond_3
    :try_start_1
    const-string v3, "page_cursors"

    const-string v4, "_id"

    invoke-virtual {v2, v3, v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-lez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    add-int/2addr v11, v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 1460
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #num:I
    .end local v12           #projection:Ljava/lang/String;
    .end local v13           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized saveUserValue(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 7
    .parameter "propName"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1445
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1446
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "settings"

    const-string v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1449
    const-string v3, "name"

    invoke-virtual {p2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const-string v3, "settings"

    const-string v4, "name"

    invoke-virtual {v0, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1455
    :goto_0
    monitor-exit p0

    return v1

    .line 1454
    :cond_0
    :try_start_1
    iget-object v1, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 1455
    goto :goto_0

    .line 1445
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
