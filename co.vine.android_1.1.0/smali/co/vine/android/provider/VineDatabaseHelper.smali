.class public Lco/vine/android/provider/VineDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VineDatabaseHelper.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x7

.field private static final DB_NAME:Ljava/lang/String; = "vine"

#the value of this static final field might be set in the static constructor
.field private static final LOGGABLE:Z = false

.field private static final MAX_ACTIVITY_TABLE_SIZE:I = 0x1f4

.field private static final MAX_COMMENTS_TABLE_SIZE:I = 0x1388

.field private static final MAX_LIKES_TABLE_SIZE:I = 0x1388

.field private static final MAX_POST_TABLE_SIZE:I = 0x3e8

.field private static final MAX_USERS_TABLE_SIZE:I = 0x2710

.field public static final SCHEMA_VERSION:I = 0x1

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
    .line 57
    const-string v0, "VineDatabaseHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    .line 73
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
    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    return-void
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 106
    const-string v0, "CREATE TABLE users (_id INTEGER PRIMARY KEY,user_id INT UNIQUE NOT NULL,avatar_url TEXT,blocked INT,blocking INT,description TEXT,location TEXT,explicit INT,follower_count INT,following_count INT,following_flag INT,like_count INT,post_count INT,username TEXT,verified INT,last_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    const-string v0, "CREATE TABLE settings (_id INTEGER PRIMARY KEY,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string v0, "CREATE TABLE user_groups (_id INTEGER PRIMARY KEY,type INT,tag TEXT,user_id INT,is_last INT,g_flags INT,order_id INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v0, "CREATE TABLE comments (_id INTEGER PRIMARY KEY,comment_id INT UNIQUE NOT NULL,post_id INT NOT NULL,avatar_url TEXT,comment TEXT,user_id INT,username TEXT,timestamp INT,location TEXT,verified INT,entities BLOB,last_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    const-string v0, "CREATE TABLE activity (_id INTEGER PRIMARY KEY,notification_id INT UNIQUE NOT NULL,notification_type INT,user_id INT,post_id INT,thumbnail_url TEXT,avatar_url TEXT,timestamp INT,comment TEXT,username TEXT,verified INT,is_last INT,entities BLOB,last_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "CREATE VIEW user_groups_view AS SELECT user_groups._id AS _id,user_groups.type AS type,user_groups.tag AS tag,user_groups.user_id AS user_id,user_groups.is_last AS is_last,user_groups.g_flags AS g_flags,user_groups.order_id AS order_id,user.username AS username,user.user_id AS user_id,user.avatar_url AS avatar_url,user.blocked AS blocked,user.blocking AS blocking,user.description AS description,user.location AS location,user.explicit AS explicit,user.follower_count AS follower_count,user.following_count AS following_count,user.following_flag AS following_flag,user.like_count AS like_count,user.post_count AS post_count,user.verified AS verified FROM user_groups LEFT JOIN users AS user ON user_groups.user_id=user.user_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "CREATE TABLE likes (_id INTEGER PRIMARY KEY,like_id INT UNIQUE NOT NULL,post_id INT NOT NULL,avatar_url TEXT,user_id INT,username TEXT,timestamp INT,location TEXT,verified INT,last_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "CREATE TABLE posts (_id INTEGER PRIMARY KEY,post_id INT NOT NULL,tags BLOB,thumbnail_url TEXT,share_url TEXT,video_low_uRL TEXT,video_url TEXT,description TEXT,foursquare_venue_id TEXT,liked INT,explicit_content INT,post_flags INT,post_to_facebook INT,post_to_twitter INT,post_verified INT,promoted INT,avatar_url TEXT,user_id INT,username TEXT,timestamp INT,location TEXT,verified INT,venue_data BLOB,entities BLOB,likes_count INT,comments_count INT,last_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    const-string v0, "CREATE TABLE post_groups (_id INTEGER PRIMARY KEY,post_type INT,tag TEXT,post_id INT,is_last INT,g_flags INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v0, "CREATE VIEW post_groups_view AS SELECT post_groups._id AS _id,post_groups.post_type AS post_type,post_groups.tag AS tag,post_groups.post_id AS post_id,post_groups.is_last AS is_last,post_groups.g_flags AS g_flags,posts.username AS username,posts.avatar_url AS avatar_url,posts.thumbnail_url AS thumbnail_url,posts.liked AS liked,posts.user_id AS user_id,posts.timestamp AS timestamp,posts.location AS location,posts.verified AS verified,posts.tags AS tags,posts.share_url AS share_url,posts.video_low_uRL AS video_low_uRL,posts.video_url AS video_url,posts.video_low_uRL AS video_low_uRL,posts.description AS description,posts.foursquare_venue_id AS foursquare_venue_id,posts.explicit_content AS explicit_content,posts.post_flags AS post_flags,posts.post_to_facebook AS post_to_facebook,posts.post_to_twitter AS post_to_twitter,posts.post_verified AS post_verified,posts.promoted AS promoted,posts.venue_data AS venue_data,posts.entities AS entities,posts.likes_count AS likes_count,posts.comments_count AS comments_count FROM post_groups LEFT JOIN posts AS posts ON post_groups.post_id=posts.post_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v0, "CREATE VIEW post_comments_likes_view AS  SELECT post_groups_view._id AS _id,post_groups_view.post_id AS post_id,post_groups_view.tags AS tags,post_groups_view.thumbnail_url AS thumbnail_url,post_groups_view.share_url AS share_url,post_groups_view.video_low_uRL AS video_low_uRL,post_groups_view.video_url AS video_url,post_groups_view.description AS description,post_groups_view.foursquare_venue_id AS foursquare_venue_id,post_groups_view.liked AS liked,post_groups_view.explicit_content AS explicit_content,post_groups_view.post_flags AS post_flags,post_groups_view.post_to_facebook AS post_to_facebook,post_groups_view.post_to_twitter AS post_to_twitter,post_groups_view.post_verified AS post_verified,post_groups_view.promoted AS promoted,post_groups_view.post_type AS post_type,post_groups_view.tag AS tag,post_groups_view.is_last AS is_last,post_groups_view.avatar_url AS avatar_url,post_groups_view.user_id AS user_id,post_groups_view.timestamp AS timestamp,post_groups_view.location AS location,post_groups_view.username AS username,post_groups_view.verified AS verified,post_groups_view.venue_data AS venue_data,post_groups_view.entities AS entities,post_groups_view.likes_count AS likes_count,post_groups_view.comments_count AS comments_count,likes.like_id AS like_id,likes.avatar_url AS like_user_avatar_url,likes.user_id AS like_user_user_id,likes.timestamp AS like_user_timestamp,likes.location AS like_user_location,likes.username AS like_user_username,likes.verified AS like_user_verified,null  AS comment_id,null  AS comment,null  AS comment_user_avatar_url,null  AS comment_user_user_id,null  AS comment_user_timestamp,null  AS comment_user_location,null  AS comment_user_username,null  AS comment_user_verified,null  AS comment_entities FROM post_groups_view LEFT JOIN likes ON post_groups_view.post_id = likes.post_id UNION SELECT post_groups_view._id AS _id,post_groups_view.post_id AS post_id,post_groups_view.tags AS tags,post_groups_view.thumbnail_url AS thumbnail_url,post_groups_view.share_url AS share_url,post_groups_view.video_low_uRL AS video_low_uRL,post_groups_view.video_url AS video_url,post_groups_view.description AS description,post_groups_view.foursquare_venue_id AS foursquare_venue_id,post_groups_view.liked AS liked,post_groups_view.explicit_content AS explicit_content,post_groups_view.post_flags AS post_flags,post_groups_view.post_to_facebook AS post_to_facebook,post_groups_view.post_to_twitter AS post_to_twitter,post_groups_view.post_verified AS post_verified,post_groups_view.promoted AS promoted,post_groups_view.post_type AS post_type,post_groups_view.tag AS tag,post_groups_view.is_last AS is_last,post_groups_view.avatar_url AS avatar_url,post_groups_view.user_id AS user_id,post_groups_view.timestamp AS timestamp,post_groups_view.location AS location,post_groups_view.username AS username,post_groups_view.verified AS verified,post_groups_view.venue_data AS venue_data,post_groups_view.entities AS entities,post_groups_view.likes_count AS likes_count,post_groups_view.comments_count AS comments_count,null  AS like_id,null  AS like_user_avatar_url,null  AS like_user_user_id,null  AS like_user_timestamp,null  AS like_user_location,null  AS like_user_username,null  AS like_user_verified,comments.comment_id AS comment_id,comments.comment AS comment,comments.avatar_url AS comment_user_avatar_url,comments.user_id AS comment_user_user_id,comments.timestamp AS comment_user_timestamp,comments.location AS comment_user_location,comments.username AS comment_user_username,comments.verified AS comment_user_verified,comments.entities AS comment_entities FROM post_groups_view LEFT JOIN comments ON post_groups_view.post_id = comments.post_id "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    const-string v0, "CREATE TABLE page_cursors (_id INTEGER PRIMARY KEY,type INT,tag TEXT,kind INT,next_page INT,previous_page INT,anchor TEXT,reversed INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v0, "CREATE TABLE tag_search_results (_id INTEGER PRIMARY KEY,tag_id INT UNIQUE NOT NULL,tag_name TEXT NOT NULL,is_last INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 122
    const-string v0, "DROP VIEW IF EXISTS user_groups_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "DROP VIEW IF EXISTS  post_groups_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    const-string v0, "DROP VIEW IF EXISTS  post_comments_likes_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "DROP TABLE IF EXISTS  users;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    const-string v0, "DROP TABLE IF EXISTS  settings;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    const-string v0, "DROP TABLE IF EXISTS  user_groups;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v0, "DROP TABLE IF EXISTS  comments;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    const-string v0, "DROP TABLE IF EXISTS  activity;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    const-string v0, "DROP TABLE IF EXISTS  likes;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string v0, "DROP TABLE IF EXISTS  posts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    const-string v0, "DROP TABLE IF EXISTS  post_groups;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    const-string v0, "DROP TABLE IF EXISTS  page_cursors;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v0, "DROP TABLE IF EXISTS  tag_search_results;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private fillActivityValues(Landroid/content/ContentValues;Lco/vine/android/api/VineNotification;J)V
    .locals 3
    .parameter "values"
    .parameter "notif"
    .parameter "lastRefresh"

    .prologue
    .line 1980
    const-string v0, "notification_id"

    iget-wide v1, p2, Lco/vine/android/api/VineNotification;->notificationId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1982
    iget v0, p2, Lco/vine/android/api/VineNotification;->notificationType:I

    sparse-switch v0, :sswitch_data_0

    .line 1991
    const-string v0, "notification_type"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1996
    :goto_0
    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VineNotification;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    const-string v0, "thumbnail_url"

    iget-object v1, p2, Lco/vine/android/api/VineNotification;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    const-string v0, "post_id"

    iget-wide v1, p2, Lco/vine/android/api/VineNotification;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1999
    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VineNotification;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2000
    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VineNotification;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    const-string v0, "comment"

    iget-object v1, p2, Lco/vine/android/api/VineNotification;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    const-string v0, "verified"

    iget-boolean v1, p2, Lco/vine/android/api/VineNotification;->verified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2003
    const-string v0, "timestamp"

    iget-wide v1, p2, Lco/vine/android/api/VineNotification;->createdAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2004
    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2006
    iget-object v0, p2, Lco/vine/android/api/VineNotification;->entities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2007
    const-string v0, "entities"

    iget-object v1, p2, Lco/vine/android/api/VineNotification;->entities:Ljava/util/ArrayList;

    invoke-static {v1}, Lco/vine/android/util/Util;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2009
    :cond_0
    return-void

    .line 1987
    :sswitch_0
    const-string v0, "notification_type"

    iget v1, p2, Lco/vine/android/api/VineNotification;->notificationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1982
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private fillCommentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineComment;J)V
    .locals 3
    .parameter "values"
    .parameter "comment"
    .parameter "lastRefresh"

    .prologue
    .line 1963
    const-string v0, "comment_id"

    iget-wide v1, p2, Lco/vine/android/api/VineComment;->commentId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1964
    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VineComment;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1965
    const-string v0, "post_id"

    iget-wide v1, p2, Lco/vine/android/api/VineComment;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1966
    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    const-string v0, "comment"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    const-string v0, "timestamp"

    iget-wide v1, p2, Lco/vine/android/api/VineComment;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1969
    const-string v0, "location"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    const-string v0, "verified"

    iget-boolean v1, p2, Lco/vine/android/api/VineComment;->verified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1972
    iget-object v0, p2, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1973
    const-string v0, "entities"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    invoke-static {v1}, Lco/vine/android/util/Util;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1975
    :cond_0
    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1976
    return-void
.end method

.method private fillLikeValues(Landroid/content/ContentValues;Lco/vine/android/api/VineLike;J)V
    .locals 3
    .parameter "values"
    .parameter "like"
    .parameter "lastRefresh"

    .prologue
    .line 1946
    const-string v0, "like_id"

    iget-wide v1, p2, Lco/vine/android/api/VineLike;->likeId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1947
    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VineLike;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1948
    const-string v0, "post_id"

    iget-wide v1, p2, Lco/vine/android/api/VineLike;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1949
    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const-string v0, "timestamp"

    iget-wide v1, p2, Lco/vine/android/api/VineLike;->created:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1951
    const-string v0, "location"

    iget-object v1, p2, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    const-string v0, "verified"

    iget v1, p2, Lco/vine/android/api/VineLike;->verified:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1954
    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1955
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
    .line 1913
    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    const-string v0, "description"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    const-string v0, "explicit_content"

    iget v1, p2, Lco/vine/android/api/VinePost;->explicitContent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1916
    const-string v0, "foursquare_venue_id"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    const-string v0, "liked"

    iget-boolean v1, p2, Lco/vine/android/api/VinePost;->liked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1918
    const-string v0, "location"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    const-string v0, "post_flags"

    iget v1, p2, Lco/vine/android/api/VinePost;->postFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1920
    const-string v0, "post_id"

    iget-wide v1, p2, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1921
    const-string v0, "post_to_facebook"

    iget v1, p2, Lco/vine/android/api/VinePost;->postToFacebook:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1922
    const-string v0, "post_to_twitter"

    iget v1, p2, Lco/vine/android/api/VinePost;->postToTwitter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1923
    const-string v0, "post_verified"

    iget v1, p2, Lco/vine/android/api/VinePost;->postVerified:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1924
    const-string v0, "promoted"

    iget v1, p2, Lco/vine/android/api/VinePost;->promoted:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1925
    const-string v0, "share_url"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    const-string v0, "thumbnail_url"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    const-string v0, "video_url"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    const-string v0, "video_low_uRL"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    const-string v0, "timestamp"

    iget-wide v1, p2, Lco/vine/android/api/VinePost;->created:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1930
    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VinePost;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1932
    const-string v0, "verified"

    iget v1, p2, Lco/vine/android/api/VinePost;->verified:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1933
    const-string v0, "likes_count"

    iget v1, p2, Lco/vine/android/api/VinePost;->likesCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1934
    const-string v0, "comments_count"

    iget v1, p2, Lco/vine/android/api/VinePost;->commentsCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1935
    const-string v0, "tags"

    invoke-static {p2}, Lco/vine/android/api/VinePost;->getBytesFromTags(Lco/vine/android/api/VinePost;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1936
    iget-object v0, p2, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    if-eqz v0, :cond_0

    .line 1937
    const-string v0, "venue_data"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    invoke-static {v1}, Lco/vine/android/util/Util;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1939
    :cond_0
    iget-object v0, p2, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1940
    const-string v0, "entities"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    invoke-static {v1}, Lco/vine/android/util/Util;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1942
    :cond_1
    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1943
    return-void
.end method

.method private fillTagValues(Landroid/content/ContentValues;Lco/vine/android/api/VineTag;)V
    .locals 3
    .parameter "values"
    .parameter "tag"

    .prologue
    .line 1958
    const-string v0, "tag_id"

    iget-wide v1, p2, Lco/vine/android/api/VineTag;->tagId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1959
    const-string v0, "tag_name"

    iget-object v1, p2, Lco/vine/android/api/VineTag;->tagName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    return-void
.end method

.method private fillUserContentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineUser;J)V
    .locals 3
    .parameter "values"
    .parameter "user"
    .parameter "lastRefresh"

    .prologue
    .line 1892
    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1893
    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    const-string v0, "blocked"

    iget v1, p2, Lco/vine/android/api/VineUser;->blocked:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1896
    const-string v0, "blocking"

    iget v1, p2, Lco/vine/android/api/VineUser;->blocking:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1897
    const-string v0, "description"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    const-string v0, "location"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    const-string v0, "explicit"

    iget v1, p2, Lco/vine/android/api/VineUser;->explicit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1900
    const-string v0, "follower_count"

    iget v1, p2, Lco/vine/android/api/VineUser;->followerCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1901
    const-string v0, "following_count"

    iget v1, p2, Lco/vine/android/api/VineUser;->followingCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1902
    iget v0, p2, Lco/vine/android/api/VineUser;->following:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1903
    const-string v0, "following_flag"

    iget v1, p2, Lco/vine/android/api/VineUser;->following:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1905
    :cond_0
    const-string v0, "like_count"

    iget v1, p2, Lco/vine/android/api/VineUser;->likeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1906
    const-string v0, "post_count"

    iget v1, p2, Lco/vine/android/api/VineUser;->postCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1907
    const-string v0, "verified"

    iget v1, p2, Lco/vine/android/api/VineUser;->verified:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1908
    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1909
    return-void
.end method

.method public static declared-synchronized getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
    .locals 4
    .parameter "context"

    .prologue
    .line 77
    const-class v3, Lco/vine/android/provider/VineDatabaseHelper;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, databaseName:Ljava/lang/String;
    sget-object v2, Lco/vine/android/provider/VineDatabaseHelper;->sHelperMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/provider/VineDatabaseHelper;

    .line 79
    .local v1, helper:Lco/vine/android/provider/VineDatabaseHelper;
    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lco/vine/android/provider/VineDatabaseHelper;

    .end local v1           #helper:Lco/vine/android/provider/VineDatabaseHelper;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lco/vine/android/provider/VineDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    .restart local v1       #helper:Lco/vine/android/provider/VineDatabaseHelper;
    sget-object v2, Lco/vine/android/provider/VineDatabaseHelper;->sHelperMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit v3

    return-object v1

    .line 77
    .end local v0           #databaseName:Ljava/lang/String;
    .end local v1           #helper:Lco/vine/android/provider/VineDatabaseHelper;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getDatabaseName(I)Ljava/lang/String;
    .locals 2
    .parameter "schemaVersion"

    .prologue
    .line 2012
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

    .line 1860
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1861
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

    .line 1863
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1865
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1866
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1869
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1872
    :goto_0
    return-wide v1

    .line 1869
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1872
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1869
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

    .line 1841
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1842
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

    .line 1847
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1849
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1850
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1853
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1856
    :goto_0
    return-wide v1

    .line 1853
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1856
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1853
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getLastTagRowId()J
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1876
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1877
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "tag_search_results"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$TagsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "_id DESC"

    const-string v8, "1"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1879
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1881
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1882
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1885
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1888
    :goto_0
    return-wide v1

    .line 1885
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1888
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1885
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

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1815
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1818
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_0

    .line 1819
    const-string v3, "type=? AND tag=?"

    .line 1820
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    aput-object p2, v4, v6

    .line 1826
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_0
    const-string v1, "user_groups_view"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;

    const-string v8, "1"

    move-object v6, v5

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1828
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 1830
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1831
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1834
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1837
    :goto_1
    return-wide v1

    .line 1822
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v3, "type=?"

    .line 1823
    .restart local v3       #selection:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_0

    .line 1834
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1837
    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 1834
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private declared-synchronized mergePostGroups(Ljava/util/Collection;ILjava/lang/String;Ljava/util/Map;)V
    .locals 16
    .parameter
    .parameter "type"
    .parameter "groupTag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1457
    .local p1, posts:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VinePost;>;"
    .local p4, orderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 1518
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1461
    :cond_1
    :try_start_0
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_2

    .line 1462
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

    .line 1467
    :cond_2
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1468
    .local v11, newPostGroups:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lco/vine/android/api/VinePost;

    .line 1469
    .local v14, post:Lco/vine/android/api/VinePost;
    iget-wide v2, v14, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1457
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #newPostGroups:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    .end local v14           #post:Lco/vine/android/api/VinePost;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1473
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #newPostGroups:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1474
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "post_groups"

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "post_type=?"

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

    .line 1478
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 1482
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_4

    .line 1485
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1489
    :cond_5
    const/4 v13, 0x0

    .line 1490
    .local v13, numInserted:I
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->size()I

    move-result v12

    .line 1491
    .local v12, newPostGroupsCount:I
    if-lez v12, :cond_9

    .line 1493
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1495
    :try_start_4
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1496
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "post_type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1497
    const-string v2, "tag"

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lco/vine/android/api/VinePost;

    .line 1500
    .restart local v14       #post:Lco/vine/android/api/VinePost;
    const-string v2, "g_flags"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1501
    const-string v2, "post_id"

    iget-wide v3, v14, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1502
    if-eqz p4, :cond_6

    .line 1503
    const-string v3, "tag"

    iget-wide v4, v14, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v15, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1505
    :cond_6
    const-string v2, "post_groups"

    const-string v3, "post_id"

    invoke-virtual {v1, v2, v3, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    const/4 v2, 0x1

    :goto_3
    add-int/2addr v13, v2

    goto :goto_2

    .line 1485
    .end local v12           #newPostGroupsCount:I
    .end local v13           #numInserted:I
    .end local v14           #post:Lco/vine/android/api/VinePost;
    .end local v15           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1505
    .restart local v12       #newPostGroupsCount:I
    .restart local v13       #numInserted:I
    .restart local v14       #post:Lco/vine/android/api/VinePost;
    .restart local v15       #values:Landroid/content/ContentValues;
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 1508
    .end local v14           #post:Lco/vine/android/api/VinePost;
    :cond_8
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1510
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1512
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$PostGroupsView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1515
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_9
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_0

    .line 1516
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted new post groups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1510
    :catchall_2
    move-exception v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
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
    .line 1374
    .local p1, users:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VineUser;>;"
    .local p4, tagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local p5, orderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 1453
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1378
    :cond_1
    :try_start_0
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_2

    .line 1379
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

    .line 1384
    :cond_2
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1385
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

    .line 1386
    .local v14, user:Lco/vine/android/api/VineUser;
    iget-wide v2, v14, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1374
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #newUserGroupsMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    .end local v14           #user:Lco/vine/android/api/VineUser;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1390
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #newUserGroupsMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1393
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p3, :cond_4

    .line 1394
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

    .line 1406
    .local v9, cursor:Landroid/database/Cursor;
    :goto_2
    if-eqz v9, :cond_0

    .line 1411
    :goto_3
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1413
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 1416
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1400
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

    .line 1416
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1419
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_6

    .line 1420
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

    .line 1423
    :cond_6
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v11

    .line 1424
    .local v11, newUserGroupsCount:I
    if-lez v11, :cond_0

    .line 1426
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1428
    :try_start_4
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1429
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1431
    if-eqz p3, :cond_7

    .line 1432
    const-string v2, "tag"

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :cond_7
    if-eqz p5, :cond_9

    const/4 v13, 0x1

    .line 1435
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

    .line 1437
    .restart local v14       #user:Lco/vine/android/api/VineUser;
    const-string v2, "g_flags"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1438
    const-string v2, "user_id"

    iget-wide v3, v14, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1439
    if-eqz v13, :cond_a

    iget-wide v2, v14, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1440
    const-string v3, "order_id"

    iget-wide v4, v14, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v15, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1444
    :cond_8
    :goto_6
    const-string v2, "user_groups"

    const-string v3, "user_id"

    invoke-virtual {v1, v2, v3, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 1448
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

    .line 1434
    .restart local v15       #values:Landroid/content/ContentValues;
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 1441
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

    .line 1442
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

    .line 1446
    .end local v14           #user:Lco/vine/android/api/VineUser;
    :cond_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1448
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1451
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

    .line 2016
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2018
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_USER:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2020
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_USER_LIKES:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2022
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_TAG:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2024
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_EDITORS_PICK:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2026
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_POPULAR_NOW:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2028
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_SINGLE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2030
    return-void
.end method

.method private declared-synchronized removePostsFromGroup(I)I
    .locals 7
    .parameter "type"

    .prologue
    .line 1084
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1087
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1088
    const-string v2, "post_groups"

    const-string v3, "post_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1090
    .local v1, numGroups:I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1091
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_0

    .line 1092
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deleting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groups "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    :cond_0
    :try_start_2
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1097
    monitor-exit p0

    return v1

    .line 1095
    .end local v1           #numGroups:I
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1084
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2039
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2040
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2042
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
    .line 874
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 876
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 878
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

    .line 881
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 882
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 883
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 884
    .local v15, currentFriendship:I
    const/4 v4, 0x1

    invoke-static {v15, v4}, Lco/vine/android/Friendships;->setFriendship(II)I

    move-result v17

    .line 887
    .local v17, newFriendship:I
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 888
    .local v16, cv:Landroid/content/ContentValues;
    const-string v4, "following_flag"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    const-string v4, "users"

    const-string v5, "user_id=?"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 893
    .local v18, result:I
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 894
    new-instance v19, Lco/vine/android/api/VineUser;

    invoke-direct/range {v19 .. v19}, Lco/vine/android/api/VineUser;-><init>()V

    .line 895
    .local v19, skeletonUser:Lco/vine/android/api/VineUser;
    move-wide/from16 v0, p1

    move-object/from16 v2, v19

    iput-wide v0, v2, Lco/vine/android/api/VineUser;->userId:J

    .line 896
    new-instance v9, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 897
    .local v9, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    const/4 v13, 0x0

    .line 899
    .local v13, orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_0

    .line 900
    new-instance v13, Ljava/util/HashMap;

    .end local v13           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v4, 0x1

    invoke-direct {v13, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 901
    .restart local v13       #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    :cond_0
    const/4 v10, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUserGroups(Ljava/util/Collection;ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 906
    if-eqz p7, :cond_1

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWING:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 909
    :cond_1
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_2

    .line 910
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

    .line 914
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

    .line 874
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
    .line 966
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 968
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

    .line 971
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 972
    .local v15, result:I
    const/4 v14, 0x0

    .line 974
    .local v14, mergeResult:I
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 977
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

    .line 980
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 981
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 982
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 983
    .local v13, cv:Landroid/content/ContentValues;
    const-string v2, "liked"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 984
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 985
    const-string v2, "posts"

    const-string v3, "post_id=?"

    invoke-virtual {v1, v2, v13, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v15, 0x1

    .line 987
    :goto_0
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_0

    .line 988
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

    .line 993
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 994
    .local v7, likes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineLike;>;"
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    move-object/from16 v0, p1

    iget-wide v8, v0, Lco/vine/android/api/VineLike;->postId:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lco/vine/android/provider/VineDatabaseHelper;->mergeLikes(Ljava/util/Collection;JII)I

    move-result v14

    .line 996
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1000
    if-gtz v15, :cond_1

    if-lez v14, :cond_2

    .line 1001
    :cond_1
    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1003
    :cond_2
    monitor-exit p0

    return v15

    .line 985
    .end local v7           #likes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineLike;>;"
    .restart local v13       #cv:Landroid/content/ContentValues;
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 998
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

    .line 966
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v14           #mergeResult:I
    .end local v15           #result:I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cleanTagSearchResults()V
    .locals 5

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 446
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 448
    .local v1, deleted:I
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 450
    const-string v2, "tag_search_results"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 452
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_0

    .line 453
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag search result rows."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :try_start_2
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 460
    if-lez v1, :cond_1

    .line 461
    iget-object v2, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$TagSearchResults;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 463
    :cond_1
    monitor-exit p0

    return-void

    .line 457
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 445
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #deleted:I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cleanUp(J)I
    .locals 7
    .parameter "timeAnchor"

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 397
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 399
    .local v1, deleted:I
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 400
    const-string v2, "DELETE FROM post_groups WHERE post_id IN (SELECT post_id FROM posts WHERE last_refresh < ?);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
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

    .line 407
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 408
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_0

    .line 409
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

    .line 413
    :cond_0
    :try_start_2
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 416
    if-lez v1, :cond_1

    .line 417
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 419
    :cond_1
    monitor-exit p0

    return v1

    .line 413
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 396
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #deleted:I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cleanUserSearchResults()V
    .locals 7

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 424
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 426
    .local v1, deleted:I
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 428
    const-string v2, "user_groups"

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 431
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_0

    .line 432
    const-string v2, "VineDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user search result rows."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :try_start_2
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 439
    if-lez v1, :cond_1

    .line 440
    iget-object v2, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_USER_SEARCH_RESULTS:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 442
    :cond_1
    monitor-exit p0

    return-void

    .line 436
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 423
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
    .line 1787
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1788
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "settings"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1789
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1790
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "activity"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1791
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "posts"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1792
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "likes"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1793
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "post_groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1794
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "comments"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1795
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "page_cursors"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1796
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "tag_search_results"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1797
    monitor-exit p0

    return-void

    .line 1787
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearCachedData()V
    .locals 4

    .prologue
    .line 1803
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1804
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1805
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "activity"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1806
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "posts"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1807
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "likes"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1808
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "post_groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1809
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "comments"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1810
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "page_cursors"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1811
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "tag_search_results"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1812
    monitor-exit p0

    return-void

    .line 1803
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteComment(Ljava/lang/String;)I
    .locals 6
    .parameter "commentId"

    .prologue
    .line 595
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 596
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "comments"

    const-string v3, "comment_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 600
    .local v1, deleted:I
    if-lez v1, :cond_0

    .line 601
    iget-object v2, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$Comments;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 602
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V

    .line 605
    :cond_0
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_1

    .line 606
    if-lez v1, :cond_2

    .line 607
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

    .line 612
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 609
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

    .line 595
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
    .line 1053
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1056
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1057
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

    .line 1059
    .local v1, deleted:I
    const/4 v2, 0x0

    .line 1060
    .local v2, deletedGroups:I
    if-lez v1, :cond_0

    .line 1061
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

    .line 1064
    :cond_0
    if-gtz v1, :cond_1

    if-lez v2, :cond_2

    .line 1065
    :cond_1
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V

    .line 1068
    :cond_2
    sget-boolean v3, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v3, :cond_3

    .line 1069
    if-lez v2, :cond_4

    .line 1070
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

    .line 1075
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    :try_start_2
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1079
    monitor-exit p0

    return v1

    .line 1072
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

    .line 1077
    .end local v1           #deleted:I
    .end local v2           #deletedGroups:I
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1053
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
    .line 1707
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1709
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p4, :cond_1

    .line 1710
    const-string v9, "previous_page"

    .line 1715
    .local v9, column:Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_0

    .line 1716
    const-string p3, ""

    .line 1719
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

    .line 1723
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1724
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1726
    :goto_1
    monitor-exit p0

    return v1

    .line 1712
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #column:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v9, "next_page"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v9       #column:Ljava/lang/String;
    goto :goto_0

    .line 1726
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 1707
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
    .line 1774
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1775
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

    .line 1779
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1780
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1782
    :goto_0
    monitor-exit p0

    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 1774
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
    .line 1741
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1743
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p4, :cond_1

    .line 1744
    const-string v9, "next_page"

    .line 1749
    .local v9, column:Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_0

    .line 1750
    const-string p3, ""

    .line 1753
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

    .line 1757
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1758
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1759
    .local v10, index:I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1761
    .end local v10           #index:I
    :goto_1
    monitor-exit p0

    return v1

    .line 1746
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #column:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v9, "previous_page"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v9       #column:Ljava/lang/String;
    goto :goto_0

    .line 1761
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 1741
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
    .line 1589
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getLastActivityRowId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1590
    .local v1, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 1606
    :goto_0
    monitor-exit p0

    return-void

    .line 1594
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1596
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_1

    .line 1597
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

    .line 1599
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1600
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1601
    const-string v4, "activity"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1603
    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1604
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

    .line 1589
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
    .line 1566
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lco/vine/android/provider/VineDatabaseHelper;->getLastPostRowId(ILjava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1567
    .local v1, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 1585
    :goto_0
    monitor-exit p0

    return-void

    .line 1571
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1573
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_1

    .line 1574
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

    .line 1577
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1578
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1579
    const-string v4, "post_groups"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1581
    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1582
    const-string v4, "post_groups"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1584
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1566
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #rowId:J
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized markLastTag()V
    .locals 9

    .prologue
    .line 1613
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getLastTagRowId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1614
    .local v1, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 1633
    :goto_0
    monitor-exit p0

    return-void

    .line 1618
    :cond_0
    :try_start_1
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_1

    .line 1619
    const-string v4, "VineDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tagging the oldest tag with row id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1625
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1626
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1627
    const-string v4, "tag_search_results"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1629
    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1630
    const-string v4, "tag_search_results"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1632
    iget-object v4, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$TagSearchResults;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1613
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
    .line 1531
    monitor-enter p0

    :try_start_0
    const-string v0, "order_id DESC"

    invoke-virtual {p0, p1, p2, v0}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1532
    monitor-exit p0

    return-void

    .line 1531
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
    .line 1542
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/provider/VineDatabaseHelper;->getLastUserRowId(ILjava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1543
    .local v1, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 1562
    :goto_0
    monitor-exit p0

    return-void

    .line 1547
    :cond_0
    :try_start_1
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_1

    .line 1548
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

    .line 1551
    :cond_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1554
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1555
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1556
    const-string v4, "user_groups"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1558
    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1559
    const-string v4, "user_groups"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1561
    iget-object v4, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1542
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
    .line 756
    .local p1, notifs:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VineNotification;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 757
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v21, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 760
    .local v21, newNotifs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineNotification;>;"
    new-instance v31, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v31

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 763
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

    .line 764
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

    .line 756
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v21           #newNotifs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineNotification;>;"
    .end local v22           #notif:Lco/vine/android/api/VineNotification;
    .end local v31           #updatedNotifs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineNotification;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 767
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

    .line 769
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 772
    :cond_1
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 773
    .local v23, notifId:J
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lco/vine/android/api/VineNotification;

    .line 774
    .restart local v22       #notif:Lco/vine/android/api/VineNotification;
    if-eqz v22, :cond_2

    .line 775
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 778
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 781
    .end local v22           #notif:Lco/vine/android/api/VineNotification;
    .end local v23           #notifId:J
    :cond_3
    const/16 v18, 0x0

    .line 782
    .local v18, inserted:I
    const/16 v30, 0x0

    .line 783
    .local v30, updated:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 784
    .local v19, lastRefresh:J
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 785
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    :try_start_2
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 788
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

    .line 789
    .restart local v22       #notif:Lco/vine/android/api/VineNotification;
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 790
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillActivityValues(Landroid/content/ContentValues;Lco/vine/android/api/VineNotification;J)V

    .line 791
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

    .line 794
    .end local v22           #notif:Lco/vine/android/api/VineNotification;
    :cond_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 796
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 799
    .end local v32           #values:Landroid/content/ContentValues;
    :cond_6
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 800
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 802
    :try_start_4
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 803
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

    .line 804
    .restart local v22       #notif:Lco/vine/android/api/VineNotification;
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 805
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillActivityValues(Landroid/content/ContentValues;Lco/vine/android/api/VineNotification;J)V

    .line 806
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

    .line 796
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

    .line 806
    .restart local v22       #notif:Lco/vine/android/api/VineNotification;
    .restart local v32       #values:Landroid/content/ContentValues;
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 810
    .end local v22           #notif:Lco/vine/android/api/VineNotification;
    :cond_8
    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 812
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 817
    .end local v32           #values:Landroid/content/ContentValues;
    :cond_9
    const/16 v16, 0x0

    .line 818
    .local v16, deleted:I
    if-lez v18, :cond_d

    .line 819
    const-string v6, "activity"

    sget-object v7, Lco/vine/android/provider/VineDatabaseSQL$TableQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 821
    .local v28, tableCursor:Landroid/database/Cursor;
    if-eqz v28, :cond_d

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 822
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v29

    .line 823
    .local v29, tableSize:I
    const/16 v6, 0x1f4

    move/from16 v0, v29

    if-le v0, v6, :cond_c

    .line 825
    :try_start_8
    const-string v6, "SELECT last_refresh FROM activity ORDER BY last_refresh DESC LIMIT 1 OFFSET 249"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 829
    .local v27, oldestNthRow:Landroid/database/Cursor;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 830
    if-eqz v27, :cond_b

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 831
    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 832
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

    .line 834
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_a

    .line 835
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

    .line 840
    :cond_a
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 842
    .end local v25           #oldestNthId:J
    :cond_b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 844
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 847
    .end local v27           #oldestNthRow:Landroid/database/Cursor;
    :cond_c
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 851
    .end local v28           #tableCursor:Landroid/database/Cursor;
    .end local v29           #tableSize:I
    :cond_d
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_e

    .line 852
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

    .line 855
    :cond_e
    if-gtz p2, :cond_f

    if-lez p3, :cond_10

    .line 856
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

    .line 859
    :cond_10
    if-gtz v18, :cond_11

    if-gtz v30, :cond_11

    if-lez v16, :cond_12

    .line 860
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$Activity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 862
    :cond_12
    monitor-exit p0

    return v18

    .line 812
    .end local v16           #deleted:I
    :catchall_2
    move-exception v6

    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 844
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
    .line 617
    .local p1, comments:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VineComment;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 620
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v30, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 622
    .local v30, newComments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineComment;>;"
    new-instance v39, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v39

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 624
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

    .line 625
    .local v41, vc:Lco/vine/android/api/VineComment;
    move-wide/from16 v0, p2

    move-object/from16 v2, v41

    iput-wide v0, v2, Lco/vine/android/api/VineComment;->postId:J

    .line 626
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

    .line 617
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v30           #newComments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineComment;>;"
    .end local v39           #updatedComments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineComment;>;"
    .end local v41           #vc:Lco/vine/android/api/VineComment;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 630
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

    .line 633
    .local v22, c:Landroid/database/Cursor;
    if-eqz v22, :cond_4

    .line 635
    :cond_1
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 636
    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 637
    .local v24, commentId:J
    const/4 v6, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 638
    .local v21, avatarUrl:Ljava/lang/String;
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lco/vine/android/api/VineComment;

    .line 639
    .local v23, comment:Lco/vine/android/api/VineComment;
    if-eqz v23, :cond_1

    if-nez v21, :cond_2

    move-object/from16 v0, v23

    iget-object v6, v0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 641
    :goto_2
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 639
    :cond_2
    move-object/from16 v0, v23

    iget-object v6, v0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 644
    .end local v21           #avatarUrl:Ljava/lang/String;
    .end local v23           #comment:Lco/vine/android/api/VineComment;
    .end local v24           #commentId:J
    :cond_3
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 647
    :cond_4
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_6

    .line 648
    const/16 v31, 0x0

    .line 750
    :cond_5
    :goto_3
    monitor-exit p0

    return v31

    .line 651
    :cond_6
    :try_start_2
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->size()I

    move-result v8

    add-int v36, v6, v8

    .line 652
    .local v36, size:I
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v36

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 653
    .local v7, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    new-instance v12, Ljava/util/HashMap;

    move/from16 v0, v36

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 654
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

    .line 655
    .restart local v41       #vc:Lco/vine/android/api/VineComment;
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_7

    .line 656
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
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

    .line 660
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

    .line 661
    .restart local v41       #vc:Lco/vine/android/api/VineComment;
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_9

    .line 662
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
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

    .line 667
    .end local v41           #vc:Lco/vine/android/api/VineComment;
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 668
    const/4 v8, 0x3

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v12}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 672
    :cond_b
    const/16 v31, 0x0

    .line 673
    .local v31, numInserted:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 674
    .local v28, lastRefresh:J
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 675
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 677
    :try_start_3
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 678
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

    .line 679
    .restart local v23       #comment:Lco/vine/android/api/VineComment;
    invoke-virtual/range {v40 .. v40}, Landroid/content/ContentValues;->clear()V

    .line 680
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v23

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillCommentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineComment;J)V

    .line 681
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

    .line 683
    .end local v23           #comment:Lco/vine/android/api/VineComment;
    :cond_d
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 685
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 689
    .end local v40           #values:Landroid/content/ContentValues;
    :cond_e
    const/16 v32, 0x0

    .line 690
    .local v32, numUpdated:I
    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    .line 691
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 693
    :try_start_5
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 694
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

    .line 695
    .restart local v23       #comment:Lco/vine/android/api/VineComment;
    invoke-virtual/range {v40 .. v40}, Landroid/content/ContentValues;->clear()V

    .line 696
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v23

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillCommentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineComment;J)V

    .line 697
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

    .line 685
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

    .line 697
    .restart local v23       #comment:Lco/vine/android/api/VineComment;
    .restart local v32       #numUpdated:I
    .restart local v40       #values:Landroid/content/ContentValues;
    :cond_f
    const/4 v6, 0x0

    goto :goto_9

    .line 700
    .end local v23           #comment:Lco/vine/android/api/VineComment;
    :cond_10
    :try_start_7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 702
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 707
    .end local v40           #values:Landroid/content/ContentValues;
    :cond_11
    const/16 v26, 0x0

    .line 708
    .local v26, deleted:I
    if-lez v31, :cond_15

    .line 709
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

    .line 711
    .local v37, tableCursor:Landroid/database/Cursor;
    if-eqz v37, :cond_15

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 712
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v38

    .line 713
    .local v38, tableSize:I
    const/16 v6, 0x1388

    move/from16 v0, v38

    if-le v0, v6, :cond_14

    .line 715
    :try_start_9
    const-string v6, "SELECT last_refresh FROM comments ORDER BY last_refresh DESC LIMIT 1 OFFSET 2500"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 719
    .local v35, oldestNthRow:Landroid/database/Cursor;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 720
    if-eqz v35, :cond_13

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 721
    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 722
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

    .line 724
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_12

    .line 725
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

    .line 730
    :cond_12
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 732
    .end local v33           #oldestNthId:J
    :cond_13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 734
    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 737
    .end local v35           #oldestNthRow:Landroid/database/Cursor;
    :cond_14
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 741
    .end local v37           #tableCursor:Landroid/database/Cursor;
    .end local v38           #tableSize:I
    :cond_15
    if-eqz p4, :cond_17

    if-gtz v31, :cond_16

    if-gtz v32, :cond_16

    if-lez v26, :cond_17

    .line 742
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lco/vine/android/provider/Vine$Comments;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 743
    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V

    .line 746
    :cond_17
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_5

    .line 747
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

    .line 702
    .end local v26           #deleted:I
    :catchall_2
    move-exception v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 734
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
    .line 467
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VineLike;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 469
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v29, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v29

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 471
    .local v29, newLikes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineLike;>;"
    new-instance v38, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v38

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 473
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

    .line 474
    .local v26, like:Lco/vine/android/api/VineLike;
    move-wide/from16 v0, p2

    move-object/from16 v2, v26

    iput-wide v0, v2, Lco/vine/android/api/VineLike;->postId:J

    .line 475
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

    .line 467
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v26           #like:Lco/vine/android/api/VineLike;
    .end local v29           #newLikes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineLike;>;"
    .end local v38           #updatedLikes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineLike;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 478
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

    .line 481
    .local v21, c:Landroid/database/Cursor;
    if-eqz v21, :cond_3

    .line 482
    :cond_1
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 483
    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 484
    .local v27, likeId:J
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lco/vine/android/api/VineLike;

    .line 485
    .restart local v26       #like:Lco/vine/android/api/VineLike;
    if-eqz v26, :cond_1

    .line 486
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 489
    .end local v26           #like:Lco/vine/android/api/VineLike;
    .end local v27           #likeId:J
    :cond_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_3
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->size()I

    move-result v8

    add-int v37, v6, v8

    .line 493
    .local v37, totalSize:I
    new-instance v12, Ljava/util/HashMap;

    move/from16 v0, v37

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 494
    .local v12, orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v37

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 496
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

    .line 497
    .local v40, vc:Lco/vine/android/api/VineLike;
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_4

    .line 498
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
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

    .line 503
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

    .line 504
    .restart local v40       #vc:Lco/vine/android/api/VineLike;
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_6

    .line 505
    move-object/from16 v0, v40

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
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

    .line 510
    .end local v40           #vc:Lco/vine/android/api/VineLike;
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 511
    const/4 v8, 0x5

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v6, p0

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v12}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 515
    :cond_8
    const/16 v30, 0x0

    .line 516
    .local v30, numInserted:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 517
    .local v24, lastRefresh:J
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 518
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :try_start_2
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 521
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

    .line 522
    .restart local v26       #like:Lco/vine/android/api/VineLike;
    invoke-virtual/range {v39 .. v39}, Landroid/content/ContentValues;->clear()V

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillLikeValues(Landroid/content/ContentValues;Lco/vine/android/api/VineLike;J)V

    .line 524
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

    .line 526
    .end local v26           #like:Lco/vine/android/api/VineLike;
    :cond_a
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 528
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 532
    .end local v39           #values:Landroid/content/ContentValues;
    :cond_b
    const/16 v31, 0x0

    .line 533
    .local v31, numUpdated:I
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 534
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 536
    :try_start_4
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 537
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

    .line 538
    .restart local v26       #like:Lco/vine/android/api/VineLike;
    invoke-virtual/range {v39 .. v39}, Landroid/content/ContentValues;->clear()V

    .line 539
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillLikeValues(Landroid/content/ContentValues;Lco/vine/android/api/VineLike;J)V

    .line 540
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

    .line 528
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

    .line 540
    .restart local v26       #like:Lco/vine/android/api/VineLike;
    .restart local v31       #numUpdated:I
    .restart local v39       #values:Landroid/content/ContentValues;
    :cond_c
    const/4 v6, 0x0

    goto :goto_7

    .line 543
    .end local v26           #like:Lco/vine/android/api/VineLike;
    :cond_d
    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 545
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 551
    .end local v39           #values:Landroid/content/ContentValues;
    :cond_e
    const/16 v22, 0x0

    .line 552
    .local v22, deleted:I
    if-lez v30, :cond_12

    .line 553
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

    .line 555
    .local v36, tableCursor:Landroid/database/Cursor;
    if-eqz v36, :cond_12

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 556
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v35

    .line 557
    .local v35, size:I
    const/16 v6, 0x1388

    move/from16 v0, v35

    if-le v0, v6, :cond_11

    .line 559
    :try_start_8
    const-string v6, "SELECT last_refresh FROM likes ORDER BY last_refresh DESC LIMIT 1 OFFSET 2500"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 563
    .local v34, oldestNthRow:Landroid/database/Cursor;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 564
    if-eqz v34, :cond_10

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 565
    const/4 v6, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 566
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

    .line 568
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_f

    .line 569
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

    .line 574
    :cond_f
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 576
    .end local v32           #oldestNthId:J
    :cond_10
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 578
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 581
    .end local v34           #oldestNthRow:Landroid/database/Cursor;
    :cond_11
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 585
    .end local v35           #size:I
    .end local v36           #tableCursor:Landroid/database/Cursor;
    :cond_12
    if-gtz v30, :cond_13

    if-gtz v31, :cond_13

    if-lez v22, :cond_14

    .line 586
    :cond_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lco/vine/android/provider/Vine$Likes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 588
    :cond_14
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_15

    .line 589
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

    .line 591
    :cond_15
    monitor-exit p0

    return v30

    .line 545
    .end local v22           #deleted:I
    :catchall_2
    move-exception v6

    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 578
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

.method public declared-synchronized mergePosts(Ljava/util/Collection;ILjava/lang/String;IIIJZ)Lco/vine/android/provider/DbResponse;
    .locals 53
    .parameter
    .parameter "groupType"
    .parameter "tag"
    .parameter "pageType"
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
            "IIIJZ)",
            "Lco/vine/android/provider/DbResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VinePost;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 152
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v34, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 153
    .local v34, newPosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    new-instance v50, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v50

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 154
    .local v50, updatedPosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    const/16 v40, 0x0

    .line 155
    .local v40, orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
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

    .line 156
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

    .line 151
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v31           #item:Lco/vine/android/api/VinePost;
    .end local v34           #newPosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    .end local v40           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v50           #updatedPosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 158
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v30       #i$:Ljava/util/Iterator;
    .restart local v34       #newPosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    .restart local v40       #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v50       #updatedPosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VinePost;>;"
    :cond_0
    const/4 v6, 0x5

    move/from16 v0, p2

    if-ne v0, v6, :cond_4

    .line 159
    :try_start_1
    new-instance v40, Ljava/util/HashMap;

    .end local v40           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    .line 161
    .restart local v40       #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    move/from16 v0, p4

    if-eq v0, v6, :cond_1

    const/4 v6, 0x2

    move/from16 v0, p4

    if-ne v0, v6, :cond_2

    .line 162
    :cond_1
    const/16 v46, 0x1

    .line 163
    .local v46, sortId:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->removePostsFromGroup(I)I

    .line 176
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lco/vine/android/api/VinePost;

    .line 177
    .restart local v31       #item:Lco/vine/android/api/VinePost;
    move-object/from16 v0, v31

    iget-wide v6, v0, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v46, v46, 0x1

    goto :goto_2

    .line 166
    .end local v31           #item:Lco/vine/android/api/VinePost;
    .end local v46           #sortId:I
    :cond_2
    const-string v6, "post_groups"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v12, "tag"

    aput-object v12, v7, v10

    const-string v8, "post_type=?"

    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "CAST (tag AS INTEGER) DESC"

    const-string v13, "1"

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 169
    .local v26, c:Landroid/database/Cursor;
    if-eqz v26, :cond_3

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 170
    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 171
    .restart local v46       #sortId:I
    add-int/lit8 v46, v46, 0x1

    goto :goto_1

    .line 173
    .end local v46           #sortId:I
    :cond_3
    const/16 v46, 0x1

    .restart local v46       #sortId:I
    goto :goto_1

    .line 182
    .end local v26           #c:Landroid/database/Cursor;
    .end local v46           #sortId:I
    :cond_4
    const/16 v27, 0x1

    .line 186
    .local v27, contiguous:Z
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x5

    move/from16 v0, p2

    if-eq v0, v6, :cond_a

    .line 187
    const-string v8, "post_type=? AND tag=?"

    .line 188
    .local v8, selectionString:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x1

    aput-object p3, v9, v6

    .line 193
    .local v9, selectionArgs:[Ljava/lang/String;
    :goto_3
    const-string v6, "post_groups_view"

    sget-object v7, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "post_id DESC"

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 195
    .restart local v26       #c:Landroid/database/Cursor;
    if-eqz v26, :cond_6

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 197
    const-wide/16 v6, 0x0

    cmp-long v6, p7, v6

    if-lez v6, :cond_5

    .line 198
    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, p7, v6

    if-gez v6, :cond_b

    .line 199
    const/16 v27, 0x1

    .line 204
    :cond_5
    :goto_4
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_6
    const-string v11, "posts"

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "post_id"

    aput-object v7, v12, v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v5

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 209
    if-eqz v26, :cond_9

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 211
    :cond_7
    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 212
    .local v42, postId:J
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lco/vine/android/api/VinePost;

    .line 213
    .local v41, post:Lco/vine/android/api/VinePost;
    if-eqz v41, :cond_8

    .line 214
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    move-object/from16 v1, v41

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_8
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 217
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 220
    .end local v41           #post:Lco/vine/android/api/VinePost;
    .end local v42           #postId:J
    :cond_9
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_c

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual/range {v50 .. v50}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 221
    const-string v6, "VineDatabaseHelper"

    const-string v7, "No new posts to merge or update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v6, Lco/vine/android/provider/DbResponse;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x2

    invoke-direct {v6, v7, v10, v12}, Lco/vine/android/provider/DbResponse;-><init>(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :goto_5
    monitor-exit p0

    return-object v6

    .line 190
    .end local v8           #selectionString:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v26           #c:Landroid/database/Cursor;
    :cond_a
    :try_start_2
    const-string v8, "post_type=?"

    .line 191
    .restart local v8       #selectionString:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 201
    .restart local v26       #c:Landroid/database/Cursor;
    :cond_b
    const/16 v27, 0x0

    goto :goto_4

    .line 225
    :cond_c
    new-instance v16, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 226
    .local v16, tagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .local v11, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_d
    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lco/vine/android/api/VinePost;

    .line 229
    .local v52, vc:Lco/vine/android/api/VinePost;
    move-object/from16 v0, v52

    iget-object v6, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_d

    .line 230
    move-object/from16 v0, v52

    iget-object v6, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    move-object/from16 v0, v52

    iget-wide v6, v0, Lco/vine/android/api/VinePost;->userId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v52

    iget-wide v12, v0, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 234
    .end local v52           #vc:Lco/vine/android/api/VinePost;
    :cond_e
    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v17}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;Ljava/util/Map;)I

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 238
    .local v32, lastRefresh:J
    const/16 v35, 0x0

    .line 239
    .local v35, numInserted:I
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    .line 240
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :try_start_3
    new-instance v51, Landroid/content/ContentValues;

    invoke-direct/range {v51 .. v51}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v51, values:Landroid/content/ContentValues;
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_f
    :goto_7
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lco/vine/android/api/VinePost;

    .line 244
    .restart local v41       #post:Lco/vine/android/api/VinePost;
    invoke-virtual/range {v51 .. v51}, Landroid/content/ContentValues;->clear()V

    .line 247
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget v6, v6, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, v41

    iput v6, v0, Lco/vine/android/api/VinePost;->likesCount:I

    .line 248
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget v6, v6, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, v41

    iput v6, v0, Lco/vine/android/api/VinePost;->commentsCount:I

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v41

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillPostValues(Landroid/content/ContentValues;Lco/vine/android/api/VinePost;J)V

    .line 251
    const-string v6, "posts"

    const/4 v7, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-lez v6, :cond_11

    const/4 v6, 0x1

    :goto_8
    add-int v35, v35, v6

    .line 252
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    .line 253
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    iget-wide v12, v0, Lco/vine/android/api/VinePost;->postId:J

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12, v13, v7}, Lco/vine/android/provider/VineDatabaseHelper;->mergeComments(Ljava/util/Collection;JZ)I

    .line 255
    :cond_10
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 256
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v0, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lco/vine/android/api/VinePost;->postId:J

    move-wide/from16 v19, v0

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v17, p0

    invoke-virtual/range {v17 .. v22}, Lco/vine/android/provider/VineDatabaseHelper;->mergeLikes(Ljava/util/Collection;JII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    .line 261
    .end local v41           #post:Lco/vine/android/api/VinePost;
    .end local v51           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v6

    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    .restart local v41       #post:Lco/vine/android/api/VinePost;
    .restart local v51       #values:Landroid/content/ContentValues;
    :cond_11
    const/4 v6, 0x0

    goto :goto_8

    .line 259
    .end local v41           #post:Lco/vine/android/api/VinePost;
    :cond_12
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 261
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 265
    .end local v51           #values:Landroid/content/ContentValues;
    :cond_13
    const/16 v36, 0x0

    .line 267
    .local v36, numUpdated:I
    invoke-virtual/range {v50 .. v50}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_18

    .line 268
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 270
    :try_start_7
    new-instance v51, Landroid/content/ContentValues;

    invoke-direct/range {v51 .. v51}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .restart local v51       #values:Landroid/content/ContentValues;
    invoke-virtual/range {v50 .. v50}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_14
    :goto_9
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lco/vine/android/api/VinePost;

    .line 272
    .restart local v41       #post:Lco/vine/android/api/VinePost;
    invoke-virtual/range {v51 .. v51}, Landroid/content/ContentValues;->clear()V

    .line 274
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget v6, v6, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, v41

    iput v6, v0, Lco/vine/android/api/VinePost;->likesCount:I

    .line 275
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget v6, v6, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, v41

    iput v6, v0, Lco/vine/android/api/VinePost;->commentsCount:I

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v41

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillPostValues(Landroid/content/ContentValues;Lco/vine/android/api/VinePost;J)V

    .line 278
    const-string v6, "posts"

    const-string v7, "post_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, v41

    iget-wide v13, v0, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    move-object/from16 v0, v51

    invoke-virtual {v5, v6, v0, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_16

    const/4 v6, 0x1

    :goto_a
    add-int v36, v36, v6

    .line 280
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    .line 281
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    iget-wide v12, v0, Lco/vine/android/api/VinePost;->postId:J

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12, v13, v7}, Lco/vine/android/provider/VineDatabaseHelper;->mergeComments(Ljava/util/Collection;JZ)I

    .line 283
    :cond_15
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_14

    .line 284
    move-object/from16 v0, v41

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v0, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lco/vine/android/api/VinePost;->postId:J

    move-wide/from16 v19, v0

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v17, p0

    invoke-virtual/range {v17 .. v22}, Lco/vine/android/provider/VineDatabaseHelper;->mergeLikes(Ljava/util/Collection;JII)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_9

    .line 289
    .end local v41           #post:Lco/vine/android/api/VinePost;
    .end local v51           #values:Landroid/content/ContentValues;
    :catchall_2
    move-exception v6

    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 278
    .restart local v41       #post:Lco/vine/android/api/VinePost;
    .restart local v51       #values:Landroid/content/ContentValues;
    :cond_16
    const/4 v6, 0x0

    goto :goto_a

    .line 287
    .end local v41           #post:Lco/vine/android/api/VinePost;
    :cond_17
    :try_start_9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 289
    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 293
    .end local v51           #values:Landroid/content/ContentValues;
    :cond_18
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_19

    .line 294
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

    .line 298
    :cond_19
    const-wide/16 v6, 0x0

    cmp-long v6, p7, v6

    if-gtz v6, :cond_1a

    if-gtz p5, :cond_1a

    if-lez p6, :cond_1b

    .line 299
    :cond_1a
    const/16 v18, 0x2

    const/16 v25, 0x0

    move-object/from16 v17, p0

    move/from16 v19, p2

    move-object/from16 v20, p3

    move/from16 v21, p5

    move/from16 v22, p6

    move-wide/from16 v23, p7

    invoke-virtual/range {v17 .. v25}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I

    .line 305
    :cond_1b
    if-eqz v27, :cond_23

    .line 306
    const/16 v44, 0x1

    .line 337
    .local v44, response:I
    :goto_b
    const/16 v28, 0x0

    .line 338
    .local v28, deleted:I
    if-lez v35, :cond_1f

    if-eqz v27, :cond_1f

    .line 339
    const-string v18, "posts"

    sget-object v19, Lco/vine/android/provider/VineDatabaseSQL$TableQuery;->PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v47

    .line 341
    .local v47, tableCursor:Landroid/database/Cursor;
    if-eqz v47, :cond_1f

    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 342
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->getCount()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v45

    .line 343
    .local v45, size:I
    const/16 v6, 0x3e8

    move/from16 v0, v45

    if-le v0, v6, :cond_1e

    .line 345
    :try_start_b
    const-string v6, "SELECT last_refresh FROM posts ORDER BY last_refresh DESC LIMIT 1 OFFSET 500"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 349
    .local v39, oldestNthRow:Landroid/database/Cursor;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 350
    if-eqz v39, :cond_1d

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 351
    const/4 v6, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 353
    .local v37, oldestNthId:J
    const-string v6, "DELETE FROM post_groups WHERE post_id IN (SELECT post_id FROM posts WHERE last_refresh < ?);"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
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

    .line 361
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_1c

    .line 362
    const-string v6, "s"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Due to reaching maximum table size ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v45

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

    .line 367
    :cond_1c
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 369
    .end local v37           #oldestNthId:J
    :cond_1d
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 371
    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 374
    .end local v39           #oldestNthRow:Landroid/database/Cursor;
    :cond_1e
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->close()V

    .line 379
    .end local v45           #size:I
    .end local v47           #tableCursor:Landroid/database/Cursor;
    :cond_1f
    if-gtz v35, :cond_20

    if-gtz v36, :cond_20

    if-lez v28, :cond_22

    :cond_20
    if-eqz p2, :cond_22

    .line 381
    const/4 v6, -0x1

    move/from16 v0, p2

    if-eq v0, v6, :cond_21

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->mergePostGroups(Ljava/util/Collection;ILjava/lang/String;Ljava/util/Map;)V

    .line 384
    :cond_21
    if-eqz p9, :cond_26

    .line 385
    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V

    .line 392
    :cond_22
    :goto_c
    new-instance v6, Lco/vine/android/provider/DbResponse;

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v44

    invoke-direct {v6, v0, v1, v2}, Lco/vine/android/provider/DbResponse;-><init>(III)V

    goto/16 :goto_5

    .line 311
    .end local v28           #deleted:I
    .end local v44           #response:I
    :cond_23
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 312
    const-string v48, "post_type=? AND tag=? AND post_id<?"

    .line 314
    .local v48, timelineSelection:Ljava/lang/String;
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v49, v0

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v49, v6

    const/4 v6, 0x1

    aput-object p3, v49, v6

    const/4 v6, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v49, v6

    .line 322
    .local v49, timelineSelectionArgs:[Ljava/lang/String;
    :goto_d
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

    .line 324
    .restart local v28       #deleted:I
    const-string v6, "post_groups"

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    .line 326
    .local v29, deletedGroups:I
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_24

    .line 327
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

    move-wide/from16 v0, p7

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

    .line 331
    :cond_24
    const/16 v44, 0x4

    .restart local v44       #response:I
    goto/16 :goto_b

    .line 317
    .end local v28           #deleted:I
    .end local v29           #deletedGroups:I
    .end local v44           #response:I
    .end local v48           #timelineSelection:Ljava/lang/String;
    .end local v49           #timelineSelectionArgs:[Ljava/lang/String;
    :cond_25
    const-string v48, "post_type=? AND post_id<?"

    .line 318
    .restart local v48       #timelineSelection:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v49, v0

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v49, v6

    const/4 v6, 0x1

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v49, v6

    .restart local v49       #timelineSelectionArgs:[Ljava/lang/String;
    goto/16 :goto_d

    .line 371
    .end local v48           #timelineSelection:Ljava/lang/String;
    .end local v49           #timelineSelectionArgs:[Ljava/lang/String;
    .restart local v28       #deleted:I
    .restart local v44       #response:I
    .restart local v45       #size:I
    .restart local v47       #tableCursor:Landroid/database/Cursor;
    :catchall_3
    move-exception v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 386
    .end local v45           #size:I
    .end local v47           #tableCursor:Landroid/database/Cursor;
    :cond_26
    if-lez v35, :cond_22

    .line 388
    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_c
.end method

.method public declared-synchronized mergeSearchedTags(Ljava/util/Collection;II)I
    .locals 23
    .parameter
    .parameter "next"
    .parameter "previous"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineTag;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 1298
    .local p1, tags:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VineTag;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1301
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v15, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1302
    .local v15, newTags:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineTag;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1303
    .local v21, updatedTags:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineTag;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lco/vine/android/api/VineTag;

    .line 1304
    .local v18, tag:Lco/vine/android/api/VineTag;
    move-object/from16 v0, v18

    iget-wide v4, v0, Lco/vine/android/api/VineTag;->tagId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v15, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1298
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #newTags:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineTag;>;"
    .end local v18           #tag:Lco/vine/android/api/VineTag;
    .end local v21           #updatedTags:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineTag;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1308
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #newTags:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineTag;>;"
    .restart local v21       #updatedTags:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineTag;>;"
    :cond_0
    :try_start_1
    const-string v4, "tag_search_results"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "tag_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1310
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 1313
    :cond_1
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1314
    const-string v4, "tag_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 1315
    .local v19, tagId:J
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lco/vine/android/api/VineTag;

    .line 1316
    .restart local v18       #tag:Lco/vine/android/api/VineTag;
    if-eqz v18, :cond_1

    .line 1317
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1320
    .end local v18           #tag:Lco/vine/android/api/VineTag;
    .end local v19           #tagId:J
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1323
    :cond_3
    const/16 v16, 0x0

    .line 1324
    .local v16, numInserted:I
    const/16 v17, 0x0

    .line 1326
    .local v17, numUpdated:I
    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1327
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1329
    :try_start_2
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1330
    .local v22, values:Landroid/content/ContentValues;
    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lco/vine/android/api/VineTag;

    .line 1331
    .restart local v18       #tag:Lco/vine/android/api/VineTag;
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 1332
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->fillTagValues(Landroid/content/ContentValues;Lco/vine/android/api/VineTag;)V

    .line 1333
    const-string v4, "tag_search_results"

    const-string v5, "tag_id"

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    const/4 v4, 0x1

    :goto_3
    add-int v16, v16, v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 1335
    .end local v18           #tag:Lco/vine/android/api/VineTag;
    :cond_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1337
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1341
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1342
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1344
    :try_start_4
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1345
    .restart local v22       #values:Landroid/content/ContentValues;
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lco/vine/android/api/VineTag;

    .line 1346
    .restart local v18       #tag:Lco/vine/android/api/VineTag;
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 1347
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->fillTagValues(Landroid/content/ContentValues;Lco/vine/android/api/VineTag;)V

    .line 1348
    const-string v4, "tag_search_results"

    const-string v5, "tag_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v18

    iget-wide v8, v0, Lco/vine/android/api/VineTag;->tagId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v4

    if-lez v4, :cond_7

    const/4 v4, 0x1

    :goto_5
    add-int v17, v17, v4

    goto :goto_4

    .line 1337
    .end local v18           #tag:Lco/vine/android/api/VineTag;
    .end local v22           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v4

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1348
    .restart local v18       #tag:Lco/vine/android/api/VineTag;
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 1351
    .end local v18           #tag:Lco/vine/android/api/VineTag;
    :cond_8
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1353
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1357
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_9
    if-gtz v16, :cond_a

    if-lez v17, :cond_d

    .line 1358
    :cond_a
    if-gtz p2, :cond_b

    if-lez p3, :cond_c

    .line 1359
    :cond_b
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v4, p0

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v12}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I

    .line 1361
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$TagSearchResults;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1364
    :cond_d
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_e

    .line 1365
    const-string v4, "VineDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inserted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and updated "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tags."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1368
    :cond_e
    monitor-exit p0

    return v16

    .line 1353
    :catchall_2
    move-exception v4

    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
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
    .line 1154
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
    .line 1169
    .local p1, users:Ljava/util/Collection;,"Ljava/util/Collection<Lco/vine/android/api/VineUser;>;"
    .local p6, tagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local p7, orderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1172
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v20, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 1173
    .local v20, newUsers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    new-instance v28, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 1174
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

    .line 1175
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

    .line 1169
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v20           #newUsers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    .end local v28           #updatedUsers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lco/vine/android/api/VineUser;>;"
    .end local v29           #user:Lco/vine/android/api/VineUser;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1179
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

    .line 1181
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    .line 1184
    :cond_1
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1185
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1186
    .local v30, userId:J
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lco/vine/android/api/VineUser;

    .line 1187
    .restart local v29       #user:Lco/vine/android/api/VineUser;
    if-eqz v29, :cond_1

    .line 1188
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1192
    .end local v29           #user:Lco/vine/android/api/VineUser;
    .end local v30           #userId:J
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1195
    :cond_3
    const/16 v21, 0x0

    .line 1196
    .local v21, numInserted:I
    const/16 v22, 0x0

    .line 1198
    .local v22, numUpdated:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1200
    .local v18, lastRefreshTime:J
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1201
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1203
    :try_start_2
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 1204
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

    .line 1205
    .restart local v29       #user:Lco/vine/android/api/VineUser;
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 1206
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillUserContentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineUser;J)V

    .line 1207
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

    .line 1209
    .end local v29           #user:Lco/vine/android/api/VineUser;
    :cond_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1211
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1215
    .end local v32           #values:Landroid/content/ContentValues;
    :cond_6
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1216
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1218
    :try_start_4
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 1219
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

    .line 1220
    .restart local v29       #user:Lco/vine/android/api/VineUser;
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 1221
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillUserContentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineUser;J)V

    .line 1222
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

    .line 1211
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

    .line 1222
    .restart local v29       #user:Lco/vine/android/api/VineUser;
    .restart local v32       #values:Landroid/content/ContentValues;
    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    .line 1225
    .end local v29           #user:Lco/vine/android/api/VineUser;
    :cond_8
    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1227
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1233
    .end local v32           #values:Landroid/content/ContentValues;
    :cond_9
    const/16 v16, 0x0

    .line 1234
    .local v16, deleted:I
    if-lez v21, :cond_d

    .line 1235
    const-string v6, "users"

    sget-object v7, Lco/vine/android/provider/VineDatabaseSQL$TableQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 1237
    .local v27, tableCursor:Landroid/database/Cursor;
    if-eqz v27, :cond_d

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1238
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v26

    .line 1239
    .local v26, size:I
    const/16 v6, 0x2710

    move/from16 v0, v26

    if-le v0, v6, :cond_c

    .line 1241
    :try_start_8
    const-string v6, "SELECT last_refresh FROM users ORDER BY last_refresh DESC LIMIT 1 OFFSET 5000"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1245
    .local v25, oldestRefreshId:Landroid/database/Cursor;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1246
    if-eqz v25, :cond_b

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1247
    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1249
    .local v23, oldestNthId:J
    const-string v6, "DELETE FROM user_groups WHERE user_id IN (SELECT user_id FROM users WHERE last_refresh < ?);"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1254
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

    .line 1256
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_a

    .line 1257
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

    .line 1262
    :cond_a
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1264
    .end local v23           #oldestNthId:J
    :cond_b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1266
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1269
    .end local v25           #oldestRefreshId:Landroid/database/Cursor;
    :cond_c
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1273
    .end local v26           #size:I
    .end local v27           #tableCursor:Landroid/database/Cursor;
    :cond_d
    if-gtz v21, :cond_e

    if-gtz v22, :cond_e

    if-lez v16, :cond_11

    .line 1274
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

    .line 1275
    invoke-direct/range {v6 .. v11}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUserGroups(Ljava/util/Collection;ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1276
    if-gtz p4, :cond_f

    if-lez p5, :cond_10

    .line 1277
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

    .line 1280
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FIND_FRIENDS_TWITTER:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FIND_FRIENDS_ADDRESS:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_LIKERS:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWERS:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWING:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_USER_SEARCH_RESULTS:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1289
    :cond_11
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_12

    .line 1290
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

    .line 1294
    :cond_12
    monitor-exit p0

    return v21

    .line 1227
    .end local v16           #deleted:I
    :catchall_2
    move-exception v6

    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 1266
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
    .line 93
    invoke-direct {p0, p1}, Lco/vine/android/provider/VineDatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 98
    sget-boolean v0, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v0, :cond_0

    .line 99
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

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lco/vine/android/provider/VineDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 102
    invoke-direct {p0, p1}, Lco/vine/android/provider/VineDatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 103
    return-void
.end method

.method public declared-synchronized removeFollow(JZZ)I
    .locals 13
    .parameter "userId"
    .parameter "deleteRow"
    .parameter "notify"

    .prologue
    .line 924
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 926
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 928
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

    .line 931
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 932
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 933
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 934
    .local v9, currentFriendship:I
    const/4 v1, 0x1

    invoke-static {v9, v1}, Lco/vine/android/Friendships;->unsetFriendship(II)I

    move-result v11

    .line 936
    .local v11, newFriendship:I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 937
    .local v10, cv:Landroid/content/ContentValues;
    const-string v1, "following_flag"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 940
    const-string v1, "users"

    const-string v2, "user_id=?"

    invoke-virtual {v0, v1, v10, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 943
    .local v12, result:I
    if-eqz p3, :cond_0

    .line 944
    const-string v1, "user_groups"

    const-string v2, "user_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 948
    :cond_0
    if-eqz p4, :cond_1

    .line 949
    iget-object v1, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWING:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 951
    :cond_1
    sget-boolean v1, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v1, :cond_2

    .line 952
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

    .line 956
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

    .line 924
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
    .line 1015
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1016
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 1017
    .local v11, result:I
    const/4 v10, 0x0

    .line 1019
    .local v10, deletes:I
    const/4 v1, 0x1

    :try_start_1
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1020
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

    .line 1023
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1024
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1025
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1026
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "liked"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1027
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1029
    sget-boolean v1, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v1, :cond_0

    .line 1030
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

    .line 1032
    :cond_0
    const-string v1, "posts"

    const-string v2, "post_id=?"

    invoke-virtual {v0, v1, v9, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    const/4 v11, 0x1

    .line 1037
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

    .line 1040
    sget-boolean v1, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v1, :cond_2

    .line 1041
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

    .line 1044
    :cond_2
    :try_start_2
    invoke-direct {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1046
    if-gtz v11, :cond_3

    if-lez v10, :cond_4

    .line 1047
    :cond_3
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1049
    :cond_4
    monitor-exit p0

    return v11

    .line 1032
    .restart local v9       #cv:Landroid/content/ContentValues;
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 1044
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

    .line 1015
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #deletes:I
    .end local v11           #result:I
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removePostsFromGroupByUser(JILjava/lang/String;)I
    .locals 18
    .parameter "userId"
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 1101
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1102
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

    .line 1106
    .local v10, c:Landroid/database/Cursor;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    .local v15, postIdsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1109
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1111
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1114
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1115
    .local v14, placeHolderString:Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1116
    .local v16, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v11, v0, :cond_3

    .line 1117
    const-string v3, "?"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    add-int/lit8 v3, v16, -0x1

    if-ge v11, v3, :cond_2

    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_2

    .line 1119
    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1116
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1124
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1126
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v12, v3, [Ljava/lang/String;

    .line 1127
    .local v12, idArray:[Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
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

    .line 1132
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

    .line 1134
    .local v13, numGroups:I
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1136
    sget-boolean v3, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v3, :cond_4

    .line 1137
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

    .line 1141
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1144
    if-lez v13, :cond_5

    .line 1145
    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1148
    :cond_5
    monitor-exit p0

    return v13

    .line 1141
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

    .line 1101
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
    .line 1521
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1522
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

    .line 1525
    .local v1, deleted:I
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_0

    .line 1526
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

    .line 1528
    :cond_0
    monitor-exit p0

    return-void

    .line 1521
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
    .line 1658
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1660
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p3, :cond_0

    .line 1661
    const-string p3, ""

    .line 1664
    :cond_0
    const-string v12, "kind=? AND type=? AND tag=?"

    .line 1665
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

    .line 1668
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v3, "page_cursors"

    sget-object v4, Lco/vine/android/provider/VineDatabaseSQL$PageCursorsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "kind=? AND type=? AND tag=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1671
    .local v10, c:Landroid/database/Cursor;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1672
    .local v13, values:Landroid/content/ContentValues;
    const-string v3, "kind"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1673
    const-string v3, "type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1674
    const-string v3, "tag"

    move-object/from16 v0, p3

    invoke-virtual {v13, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const-string v3, "next_page"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1676
    const-string v3, "previous_page"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1677
    const-string v3, "anchor"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1678
    const-string v3, "reversed"

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1680
    const/4 v11, 0x0

    .line 1681
    .local v11, num:I
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1682
    const-string v3, "page_cursors"

    const-string v4, "kind=? AND type=? AND tag=?"

    invoke-virtual {v2, v3, v13, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v11, v3

    .line 1686
    :goto_1
    sget-boolean v3, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v3, :cond_1

    .line 1687
    if-lez v11, :cond_1

    .line 1688
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

    .line 1693
    :cond_1
    monitor-exit p0

    return v11

    .line 1682
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1684
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

    .line 1658
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

    .line 1643
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1644
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

    .line 1647
    const-string v3, "name"

    invoke-virtual {p2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    const-string v3, "settings"

    const-string v4, "name"

    invoke-virtual {v0, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1653
    :goto_0
    monitor-exit p0

    return v1

    .line 1652
    :cond_0
    :try_start_1
    iget-object v1, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 1653
    goto :goto_0

    .line 1643
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
