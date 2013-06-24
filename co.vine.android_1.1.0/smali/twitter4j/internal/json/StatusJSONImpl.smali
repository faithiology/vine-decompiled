.class final Ltwitter4j/internal/json/StatusJSONImpl;
.super Ltwitter4j/internal/json/TwitterResponseImpl;
.source "StatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/Status;
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ltwitter4j/internal/logging/Logger; = null

.field private static final serialVersionUID:J = 0x68c214e4e0c8cc29L


# instance fields
.field private contributorsIDs:[J

.field private createdAt:Ljava/util/Date;

.field private currentUserRetweetId:J

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToUserId:J

.field private isFavorited:Z

.field private isPossiblySensitive:Z

.field private isTruncated:Z

.field private mediaEntities:[Ltwitter4j/MediaEntity;

.field private place:Ltwitter4j/Place;

.field private retweetCount:J

.field private retweetedStatus:Ltwitter4j/Status;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private user:Ltwitter4j/User;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Ltwitter4j/internal/json/StatusJSONImpl;

    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/internal/json/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 50
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 51
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    .line 285
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 90
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 4
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 50
    iput-object v3, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 51
    iput-object v3, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 62
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    .line 285
    iput-object v3, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 66
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 67
    .local v0, json:Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/internal/json/StatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 68
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 70
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 50
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 51
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    .line 285
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 84
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/StatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 85
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/conf/Configuration;)V
    .locals 3
    .parameter "json"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 50
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 51
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    .line 285
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 76
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/StatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 77
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0, p1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    return-void
.end method

.method static createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 8
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 378
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 379
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 381
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    .line 382
    .local v3, list:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 383
    .local v4, size:I
    new-instance v6, Ltwitter4j/internal/json/ResponseListImpl;

    invoke-direct {v6, v4, p0}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 384
    .local v6, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 385
    invoke-virtual {v3, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 386
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    new-instance v5, Ltwitter4j/internal/json/StatusJSONImpl;

    invoke-direct {v5, v1}, Ltwitter4j/internal/json/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 387
    .local v5, status:Ltwitter4j/Status;
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 388
    invoke-static {v5, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_1
    invoke-interface {v6, v5}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    .end local v5           #status:Ltwitter4j/Status;
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 393
    invoke-static {v6, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_3
    return-object v6

    .line 396
    .end local v0           #i:I
    .end local v3           #list:Ltwitter4j/internal/org/json/JSONArray;
    .end local v4           #size:I
    .end local v6           #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :catch_0
    move-exception v2

    .line 397
    .local v2, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v7, Ltwitter4j/TwitterException;

    invoke-direct {v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 14
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 93
    const-string v9, "id"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v9

    iput-wide v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->id:J

    .line 94
    const-string v9, "source"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->source:Ljava/lang/String;

    .line 95
    const-string v9, "created_at"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->createdAt:Ljava/util/Date;

    .line 96
    const-string v9, "truncated"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v9

    iput-boolean v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isTruncated:Z

    .line 97
    const-string v9, "in_reply_to_status_id"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v9

    iput-wide v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToStatusId:J

    .line 98
    const-string v9, "in_reply_to_user_id"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v9

    iput-wide v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToUserId:J

    .line 99
    const-string v9, "favorited"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v9

    iput-boolean v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isFavorited:Z

    .line 100
    const-string v9, "in_reply_to_screen_name"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    .line 101
    const-string v9, "retweet_count"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v9

    iput-wide v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetCount:J

    .line 102
    const-string v9, "possibly_sensitive"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v9

    iput-boolean v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isPossiblySensitive:Z

    .line 104
    :try_start_0
    const-string v9, "user"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 105
    new-instance v9, Ltwitter4j/internal/json/UserJSONImpl;

    const-string v10, "user"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Ltwitter4j/internal/json/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 107
    :cond_0
    invoke-static {p1}, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->createGeoLocation(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 108
    const-string v9, "place"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 109
    new-instance v9, Ltwitter4j/internal/json/PlaceJSONImpl;

    const-string v10, "place"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Ltwitter4j/internal/json/PlaceJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 112
    :cond_1
    const-string v9, "retweeted_status"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 113
    new-instance v9, Ltwitter4j/internal/json/StatusJSONImpl;

    const-string v10, "retweeted_status"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Ltwitter4j/internal/json/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    .line 115
    :cond_2
    const-string v9, "contributors"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 116
    const-string v9, "contributors"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 117
    .local v0, contributorsArray:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v9

    new-array v9, v9, [J

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->contributorsIDs:[J

    .line 118
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 119
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->contributorsIDs:[J

    invoke-virtual {v0, v3}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v9, v3

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    .end local v0           #contributorsArray:Ltwitter4j/internal/org/json/JSONArray;
    .end local v3           #i:I
    :cond_3
    const/4 v9, 0x0

    new-array v9, v9, [J

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->contributorsIDs:[J

    .line 124
    :cond_4
    const-string v9, "entities"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 125
    const-string v9, "entities"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 127
    .local v1, entities:Ltwitter4j/internal/org/json/JSONObject;
    const-string v9, "user_mentions"

    invoke-virtual {v1, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 128
    const-string v9, "user_mentions"

    invoke-virtual {v1, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v8

    .line 129
    .local v8, userMentionsArray:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v8}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    .line 130
    .local v5, len:I
    new-array v9, v5, [Ltwitter4j/UserMentionEntity;

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 131
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v5, :cond_5

    .line 132
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    new-instance v10, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;

    invoke-virtual {v8, v3}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v10, v9, v3

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    .end local v3           #i:I
    .end local v5           #len:I
    .end local v8           #userMentionsArray:Ltwitter4j/internal/org/json/JSONArray;
    :cond_5
    const-string v9, "urls"

    invoke-virtual {v1, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 136
    const-string v9, "urls"

    invoke-virtual {v1, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v7

    .line 137
    .local v7, urlsArray:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v7}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    .line 138
    .restart local v5       #len:I
    new-array v9, v5, [Ltwitter4j/URLEntity;

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 139
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v5, :cond_6

    .line 140
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    new-instance v10, Ltwitter4j/internal/json/URLEntityJSONImpl;

    invoke-virtual {v7, v3}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/internal/json/URLEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v10, v9, v3

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 144
    .end local v3           #i:I
    .end local v5           #len:I
    .end local v7           #urlsArray:Ltwitter4j/internal/org/json/JSONArray;
    :cond_6
    const-string v9, "hashtags"

    invoke-virtual {v1, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 145
    const-string v9, "hashtags"

    invoke-virtual {v1, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    .line 146
    .local v2, hashtagsArray:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    .line 147
    .restart local v5       #len:I
    new-array v9, v5, [Ltwitter4j/HashtagEntity;

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 148
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v5, :cond_7

    .line 149
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    new-instance v10, Ltwitter4j/internal/json/HashtagEntityJSONImpl;

    invoke-virtual {v2, v3}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/internal/json/HashtagEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v10, v9, v3

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 153
    .end local v2           #hashtagsArray:Ltwitter4j/internal/org/json/JSONArray;
    .end local v3           #i:I
    .end local v5           #len:I
    :cond_7
    const-string v9, "media"

    invoke-virtual {v1, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 154
    const-string v9, "media"

    invoke-virtual {v1, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v6

    .line 155
    .local v6, mediaArray:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v6}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    .line 156
    .restart local v5       #len:I
    new-array v9, v5, [Ltwitter4j/MediaEntity;

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 157
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v5, :cond_8

    .line 158
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    new-instance v10, Ltwitter4j/internal/json/MediaEntityJSONImpl;

    invoke-virtual {v6, v3}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/internal/json/MediaEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v10, v9, v3

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 162
    .end local v1           #entities:Ltwitter4j/internal/org/json/JSONObject;
    .end local v3           #i:I
    .end local v5           #len:I
    .end local v6           #mediaArray:Ltwitter4j/internal/org/json/JSONArray;
    :cond_8
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v9, :cond_a

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/UserMentionEntity;

    :goto_5
    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 163
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v9, :cond_b

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/URLEntity;

    :goto_6
    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 164
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v9, :cond_c

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/HashtagEntity;

    :goto_7
    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 165
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    if-nez v9, :cond_d

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/MediaEntity;

    :goto_8
    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 166
    const-string v9, "text"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    iget-object v11, p0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    iget-object v12, p0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    iget-object v13, p0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v9, v10, v11, v12, v13}, Ltwitter4j/internal/json/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->text:Ljava/lang/String;

    .line 168
    const-string v9, "current_user_retweet"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 169
    const-string v9, "current_user_retweet"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {v9, v10}, Ltwitter4j/internal/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    .line 174
    :cond_9
    return-void

    .line 162
    :cond_a
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    goto :goto_5

    .line 163
    :cond_b
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    goto :goto_6

    .line 164
    :cond_c
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    goto :goto_7

    .line 165
    :cond_d
    iget-object v9, p0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 171
    :catch_0
    move-exception v4

    .line 172
    .local v4, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v9, Ltwitter4j/TwitterException;

    invoke-direct {v9, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v9
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Ltwitter4j/Status;

    .end local p1
    invoke-virtual {p0, p1}, Ltwitter4j/internal/json/StatusJSONImpl;->compareTo(Ltwitter4j/Status;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Status;)I
    .locals 6
    .parameter "that"

    .prologue
    .line 178
    iget-wide v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 179
    .local v0, delta:J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 180
    const/high16 v2, -0x8000

    .line 184
    :goto_0
    return v2

    .line 181
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 182
    const v2, 0x7fffffff

    goto :goto_0

    .line 184
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 408
    if-nez p1, :cond_1

    move v0, v1

    .line 414
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 411
    .restart local p1
    :cond_1
    if-eq p0, p1, :cond_0

    .line 414
    instance-of v2, p1, Ltwitter4j/Status;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/Status;

    .end local p1
    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/internal/json/StatusJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getContributors()[J
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->contributorsIDs:[J

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getCurrentUserRetweetId()J
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    return-wide v0
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->id:J

    return-wide v0
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getInReplyToUserId()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToUserId:J

    return-wide v0
.end method

.method public getMediaEntities()[Ltwitter4j/MediaEntity;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    return-object v0
.end method

.method public getPlace()Ltwitter4j/Place;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    return-object v0
.end method

.method public getRetweetCount()J
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetCount:J

    return-wide v0
.end method

.method public getRetweetedStatus()Ltwitter4j/Status;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURLEntities()[Ltwitter4j/URLEntity;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getUser()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 403
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isFavorited:Z

    return v0
.end method

.method public isPossiblySensitive()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isPossiblySensitive:Z

    return v0
.end method

.method public isRetweet()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetweetedByMe()Z
    .locals 4

    .prologue
    .line 324
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isTruncated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    const/4 v1, 0x0

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusJSONImpl{createdAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isTruncated="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isTruncated:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", inReplyToStatusId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToStatusId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", inReplyToUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToUserId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isFavorited="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isFavorited:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", inReplyToScreenName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", geoLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", place="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", retweetCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isPossiblySensitive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isPossiblySensitive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", contributorsIDs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->contributorsIDs:[J

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", retweetedStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", userMentionEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", urlEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hashtagEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mediaEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    if-nez v2, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentUserRetweetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3
.end method
