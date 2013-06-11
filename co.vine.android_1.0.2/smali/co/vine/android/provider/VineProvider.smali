.class public Lco/vine/android/provider/VineProvider;
.super Landroid/content/ContentProvider;
.source "VineProvider.java"


# static fields
.field private static final ACTIVITY:I = 0x7

.field private static final COMMENTS:I = 0x4

.field private static final LIKES:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final LOGGABLE:Z = false

.field private static final POSTS:I = 0x6

.field private static final POST_GROUPS_VIEW_ALL_TIMELINE:I = 0x17

.field private static final POST_GROUPS_VIEW_ALL_TIMELINE_EDITORS_PICK:I = 0x1a

.field private static final POST_GROUPS_VIEW_ALL_TIMELINE_POPULAR_NOW:I = 0x1b

.field private static final POST_GROUPS_VIEW_ALL_TIMELINE_SINGLE:I = 0x1d

.field private static final POST_GROUPS_VIEW_ALL_TIMELINE_TAG:I = 0x1c

.field private static final POST_GROUPS_VIEW_ALL_TIMELINE_USER:I = 0x18

.field private static final POST_GROUPS_VIEW_ALL_TIMELINE_USER_LIKES:I = 0x19

.field private static final POST_GROUPS_VIEW_TIMELINE:I = 0x14

.field private static final POST_GROUPS_VIEW_TIMELINE_USER:I = 0x15

.field private static final POST_GROUPS_VIEW_TIMELINE_USER_LIKES:I = 0x16

.field private static final SETTINGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VineProvider"

.field private static final USER:I = 0x1

.field private static final USER_GROUPS_VIEW_FIND_FRIENDS_ADDRESS:I = 0x66

.field private static final USER_GROUPS_VIEW_FIND_FRIENDS_TWITTER:I = 0x67

.field private static final USER_GROUPS_VIEW_FOLLOWERS:I = 0x65

.field private static final USER_GROUPS_VIEW_FOLLOWING:I = 0x64

.field private static final USER_GROUPS_VIEW_LIKERS:I = 0x68

.field private static final USER_ID:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 30
    const-string v0, "VineProvider"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lco/vine/android/provider/VineProvider;->LOGGABLE:Z

    .line 57
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 60
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "users"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "users/id/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "comments"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "likes"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "posts"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "user_groups_view/following/#"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "user_groups_view/followers/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "user_groups_view/find_friends_twitter/#"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "user_groups_view/find_friends_address/#"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "user_groups_view/likers/#"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "post_groups_view/timeline/#"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "post_groups_view/user_profile/#"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "post_groups_view/user_likes/#"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "post_comments_likes_view/all_timeline/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "post_comments_likes_view/all_timeline_user/#"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "post_comments_likes_view/all_timeline_user_likes/#"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "post_comments_likes_view/all_timeline_editor/#"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "post_comments_likes_view/all_timeline_popular/#"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "post_comments_likes_view/all_timeline_tag/#"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "post_comments_likes_view/post/#"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "co.vine.android.provider.VineProvider"

    const-string v2, "activity"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "s"
    .parameter "strings"

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 362
    sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.vine.android.users"

    .line 377
    :goto_0
    return-object v0

    .line 367
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.vine.android.users"

    goto :goto_0

    .line 370
    :sswitch_2
    const-string v0, "vnd.android.cursor.item/vnd.vine.android.settings"

    goto :goto_0

    .line 374
    :sswitch_3
    const-string v0, "vnd.android.cursor.dir/vnd.vine.android.users.groups"

    goto :goto_0

    .line 377
    :sswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.vine.android.activities"

    goto :goto_0

    .line 362
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x7 -> :sswitch_4
        0x64 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "contentValues"

    .prologue
    .line 387
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selArgs"
    .parameter "sortOrder"

    .prologue
    .line 114
    const/4 v13, 0x0

    .line 115
    .local v13, orderBy:Ljava/lang/String;
    const/4 v6, 0x0

    .line 117
    .local v6, groupBy:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 120
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 121
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-boolean v3, Lco/vine/android/provider/VineProvider;->LOGGABLE:Z

    if-eqz v3, :cond_0

    .line 122
    const-string v3, "VineProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QUERY: uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    sget-object v3, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 127
    .local v12, match:I
    sparse-switch v12, :sswitch_data_0

    move-object v8, v13

    .line 342
    .end local v13           #orderBy:Ljava/lang/String;
    .local v8, orderBy:Ljava/lang/String;
    :goto_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 343
    move-object/from16 v8, p5

    .line 346
    :cond_1
    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    :try_start_0
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 349
    .local v9, c:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v9, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v9

    .line 350
    .end local v6           #groupBy:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    :goto_1
    return-object v10

    .line 129
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v6       #groupBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_0
    const-string v3, "users"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 130
    const-string v8, "username ASC"

    .line 131
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto :goto_0

    .line 134
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_1
    const-string v3, "users"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 136
    const-string v8, "username ASC"

    .line 137
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto :goto_0

    .line 140
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_2
    const-string v3, "settings"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v8, v13

    .line 141
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_3
    const-string v3, "posts"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v8, v13

    .line 145
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto :goto_0

    .line 148
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_4
    const-string v3, "likes"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v8, v13

    .line 149
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_5
    const-string v3, "comments"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 153
    const-string v8, "comment_id ASC"

    .line 154
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto :goto_0

    .line 157
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_6
    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 158
    const-string v8, "notification_id DESC"

    .line 159
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_7
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 167
    const-string v8, "_id ASC"

    .line 168
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_0

    .line 171
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_8
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 176
    const-string v8, "_id ASC"

    .line 177
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_0

    .line 180
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_9
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 185
    const-string v8, "_id ASC"

    .line 186
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_0

    .line 189
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_a
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 194
    const-string v8, "_id ASC"

    .line 195
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_0

    .line 198
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_b
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 203
    const-string v8, "order_id ASC"

    .line 204
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_0

    .line 207
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_c
    const-string v3, "post_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "post_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 212
    const-string v8, "timestamp DESC"

    .line 213
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_0

    .line 216
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_d
    const-string v3, "post_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "post_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 221
    const-string v8, "timestamp DESC"

    .line 222
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_0

    .line 225
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_e
    const-string v3, "post_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "post_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 230
    const-string v8, "timestamp DESC"

    .line 231
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_0

    .line 234
    .end local v8           #orderBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_f
    const-string v3, "post_comments_likes_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 235
    new-instance v10, Lco/vine/android/provider/PostCursor;

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "tag=? AND post_type = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v7, 0x1

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "post_id DESC, comment_id ASC, like_id"

    .end local v6           #groupBy:Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v10, v3}, Lco/vine/android/provider/PostCursor;-><init>(Landroid/database/Cursor;)V

    .line 244
    .local v10, cursor:Lco/vine/android/provider/PostCursor;
    invoke-virtual {v10}, Lco/vine/android/provider/PostCursor;->prepare()V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Lco/vine/android/provider/PostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v8, v13

    .line 246
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_1

    .line 249
    .end local v8           #orderBy:Ljava/lang/String;
    .end local v10           #cursor:Lco/vine/android/provider/PostCursor;
    .restart local v6       #groupBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_10
    const-string v3, "post_comments_likes_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 250
    new-instance v10, Lco/vine/android/provider/PostCursor;

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "tag=? AND post_type = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v7, 0x1

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "post_id DESC, comment_id ASC, like_id"

    .end local v6           #groupBy:Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v10, v3}, Lco/vine/android/provider/PostCursor;-><init>(Landroid/database/Cursor;)V

    .line 259
    .restart local v10       #cursor:Lco/vine/android/provider/PostCursor;
    invoke-virtual {v10}, Lco/vine/android/provider/PostCursor;->prepare()V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Lco/vine/android/provider/PostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v8, v13

    .line 261
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_1

    .line 264
    .end local v8           #orderBy:Ljava/lang/String;
    .end local v10           #cursor:Lco/vine/android/provider/PostCursor;
    .restart local v6       #groupBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_11
    const-string v3, "post_comments_likes_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 265
    new-instance v10, Lco/vine/android/provider/PostCursor;

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "tag=? AND post_type = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v7, 0x1

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "post_id DESC, comment_id ASC, like_id"

    .end local v6           #groupBy:Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v10, v3}, Lco/vine/android/provider/PostCursor;-><init>(Landroid/database/Cursor;)V

    .line 274
    .restart local v10       #cursor:Lco/vine/android/provider/PostCursor;
    invoke-virtual {v10}, Lco/vine/android/provider/PostCursor;->prepare()V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Lco/vine/android/provider/PostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v8, v13

    .line 276
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_1

    .line 279
    .end local v8           #orderBy:Ljava/lang/String;
    .end local v10           #cursor:Lco/vine/android/provider/PostCursor;
    .restart local v6       #groupBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_12
    const-string v3, "post_comments_likes_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 280
    new-instance v10, Lco/vine/android/provider/PostCursor;

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "tag=? AND post_type = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v7, 0x1

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "post_id DESC, comment_id ASC, like_id"

    .end local v6           #groupBy:Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v10, v3}, Lco/vine/android/provider/PostCursor;-><init>(Landroid/database/Cursor;)V

    .line 289
    .restart local v10       #cursor:Lco/vine/android/provider/PostCursor;
    invoke-virtual {v10}, Lco/vine/android/provider/PostCursor;->prepare()V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Lco/vine/android/provider/PostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v8, v13

    .line 291
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_1

    .line 294
    .end local v8           #orderBy:Ljava/lang/String;
    .end local v10           #cursor:Lco/vine/android/provider/PostCursor;
    .restart local v6       #groupBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_13
    const-string v3, "post_comments_likes_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 295
    new-instance v10, Lco/vine/android/provider/PostCursor;

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "tag=? AND post_type = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v7, 0x1

    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "post_id DESC, comment_id ASC, like_id"

    .end local v6           #groupBy:Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v10, v3}, Lco/vine/android/provider/PostCursor;-><init>(Landroid/database/Cursor;)V

    .line 304
    .restart local v10       #cursor:Lco/vine/android/provider/PostCursor;
    invoke-virtual {v10}, Lco/vine/android/provider/PostCursor;->prepare()V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Lco/vine/android/provider/PostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v8, v13

    .line 306
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_1

    .line 309
    .end local v8           #orderBy:Ljava/lang/String;
    .end local v10           #cursor:Lco/vine/android/provider/PostCursor;
    .restart local v6       #groupBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_14
    const-string v3, "post_comments_likes_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 310
    const-string v3, "tag_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 311
    .local v15, tag:Ljava/lang/String;
    new-instance v10, Lco/vine/android/provider/PostCursor;

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "tag=? AND post_type = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v15, v5, v7

    const/4 v7, 0x1

    const/16 v16, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "post_id DESC, comment_id ASC, like_id"

    .end local v6           #groupBy:Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v10, v3}, Lco/vine/android/provider/PostCursor;-><init>(Landroid/database/Cursor;)V

    .line 320
    .restart local v10       #cursor:Lco/vine/android/provider/PostCursor;
    invoke-virtual {v10}, Lco/vine/android/provider/PostCursor;->prepare()V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Lco/vine/android/provider/PostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v8, v13

    .line 322
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_1

    .line 325
    .end local v8           #orderBy:Ljava/lang/String;
    .end local v10           #cursor:Lco/vine/android/provider/PostCursor;
    .end local v15           #tag:Ljava/lang/String;
    .restart local v6       #groupBy:Ljava/lang/String;
    .restart local v13       #orderBy:Ljava/lang/String;
    :sswitch_15
    const-string v3, "post_comments_likes_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 327
    .local v14, postId:Ljava/lang/String;
    new-instance v10, Lco/vine/android/provider/PostCursor;

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "post_id=? AND post_type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v14, v5, v7

    const/4 v7, 0x1

    const/16 v16, 0x7

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "post_id DESC, comment_id ASC, like_id"

    .end local v6           #groupBy:Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v10, v3}, Lco/vine/android/provider/PostCursor;-><init>(Landroid/database/Cursor;)V

    .line 335
    .restart local v10       #cursor:Lco/vine/android/provider/PostCursor;
    invoke-virtual {v10}, Lco/vine/android/provider/PostCursor;->prepare()V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Lco/vine/android/provider/PostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v8, v13

    .line 337
    .end local v13           #orderBy:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    goto/16 :goto_1

    .line 351
    .end local v10           #cursor:Lco/vine/android/provider/PostCursor;
    .end local v14           #postId:Ljava/lang/String;
    .restart local v6       #groupBy:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 352
    .local v11, e:Ljava/lang/Exception;
    sget-boolean v3, Lco/vine/android/provider/VineProvider;->LOGGABLE:Z

    if-eqz v3, :cond_2

    .line 353
    const-string v3, "Cannot execute {} {}  {} {} {} {}"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_6
        0x14 -> :sswitch_c
        0x15 -> :sswitch_d
        0x16 -> :sswitch_e
        0x17 -> :sswitch_f
        0x18 -> :sswitch_10
        0x19 -> :sswitch_11
        0x1a -> :sswitch_12
        0x1b -> :sswitch_13
        0x1c -> :sswitch_14
        0x1d -> :sswitch_15
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_a
        0x67 -> :sswitch_9
        0x68 -> :sswitch_b
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "contentValues"
    .parameter "s"
    .parameter "strings"

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method
