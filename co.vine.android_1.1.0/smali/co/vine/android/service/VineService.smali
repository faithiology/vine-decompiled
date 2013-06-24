.class public Lco/vine/android/service/VineService;
.super Landroid/app/Service;
.source "VineService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/service/VineService$ExecutionRunnable;,
        Lco/vine/android/service/VineService$ResponderRunnable;,
        Lco/vine/android/service/VineService$VineServiceBinder;
    }
.end annotation


# static fields
.field public static final ACTION_CODE_CHECK_LOGIN_TWITTER:I = 0x6

.field public static final ACTION_CODE_CLEANUP:I = 0x1d

.field public static final ACTION_CODE_CLEAR_CACHE:I = 0x2a

.field public static final ACTION_CODE_CLIENT_PROFILE:I = 0x23

.field public static final ACTION_CODE_CONNECT_TWITTER:I = 0x20

.field public static final ACTION_CODE_DELETE_COMMENT:I = 0x1e

.field public static final ACTION_CODE_DELETE_POST:I = 0x1f

.field public static final ACTION_CODE_DISCONNECT_TWITTER:I = 0x21

.field public static final ACTION_CODE_FETCH_SERVER_STATUS:I = 0x26

.field public static final ACTION_CODE_FOLLOW:I = 0x12

.field public static final ACTION_CODE_GET_ACTIVITY:I = 0x14

.field public static final ACTION_CODE_GET_ADDRESS_FRIENDS:I = 0x10

.field public static final ACTION_CODE_GET_COMMENTS:I = 0xc

.field public static final ACTION_CODE_GET_FOLLOWERS:I = 0x16

.field public static final ACTION_CODE_GET_FOLLOWING:I = 0x17

.field public static final ACTION_CODE_GET_POSTS:I = 0xd

.field public static final ACTION_CODE_GET_POST_ID:I = 0x24

.field public static final ACTION_CODE_GET_POST_LIKERS:I = 0xb

.field public static final ACTION_CODE_GET_POST_SINGLE:I = 0x1c

.field public static final ACTION_CODE_GET_TWITTER_AUTH:I = 0x5

.field public static final ACTION_CODE_GET_TWITTER_FRIENDS:I = 0xf

.field public static final ACTION_CODE_GET_TWITTER_USER:I = 0x7

.field public static final ACTION_CODE_GET_TYPEAHEAD:I = 0x27

.field public static final ACTION_CODE_GET_USER:I = 0x15

.field public static final ACTION_CODE_GET_USERS_ME:I = 0xa

.field public static final ACTION_CODE_LIKE_POST:I = 0x18

.field public static final ACTION_CODE_LOGIN:I = 0x2

.field public static final ACTION_CODE_LOGOUT:I = 0x3

.field public static final ACTION_CODE_POST_COMMENT:I = 0xe

.field public static final ACTION_CODE_REFRESH_SESSION_KEY:I = 0x3e8

.field public static final ACTION_CODE_REMOVE_FOLLOW_POSTS:I = 0x22

.field public static final ACTION_CODE_REMOVE_USERS_BY_GROUP:I = 0x11

.field public static final ACTION_CODE_REPORT_POST:I = 0x1b

.field public static final ACTION_CODE_RESET_PASSWORD:I = 0x9

.field public static final ACTION_CODE_RESTART_CONNECTION_MANAGER:I = 0x1

.field public static final ACTION_CODE_SEARCH_TAGS:I = 0x29

.field public static final ACTION_CODE_SEARCH_USERS:I = 0x28

.field public static final ACTION_CODE_SEND_FACEBOOK_TOKEN:I = 0x25

.field public static final ACTION_CODE_SIGNUP:I = 0x4

.field public static final ACTION_CODE_TWITTER_XAUTH:I = 0x8

.field public static final ACTION_CODE_UNFOLLOW:I = 0x13

.field public static final ACTION_CODE_UNLIKE_POST:I = 0x19

.field public static final ACTION_CODE_UPDATE_PROFILE:I = 0x1a

.field public static final ACTION_LOGIN:Ljava/lang/String; = "LOGIN"

.field public static final ACTION_RESTART_CONNECTION_MANAGER:Ljava/lang/String; = "RESTART_CM"

.field public static final AMAZON_ERROR_CODE:I = 0x384

.field private static final EXECUTION_CODE:Ljava/lang/String; = "executionCode"

.field private static final EXECUTION_COMPLETE:I = 0x1

.field private static final EXECUTION_LOGGED_OUT:I = 0x3

.field private static final EXECUTION_SESSION_KEY_INVALID:I = 0x2

.field public static final EXTRA_ACCOUNT_EXISTS:Ljava/lang/String; = "a_exists"

.field public static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "a_name"

.field public static final EXTRA_ACTION_CODE:Ljava/lang/String; = "action_code"

.field public static final EXTRA_ANCHOR:Ljava/lang/String; = "time"

.field public static final EXTRA_AVATAR_URL:Ljava/lang/String; = "avatar_url"

.field public static final EXTRA_CALLBACK:Ljava/lang/String; = "ibinder"

.field public static final EXTRA_COMMENT:Ljava/lang/String; = "comment"

.field public static final EXTRA_COMMENT_ID:Ljava/lang/String; = "comment_id"

.field public static final EXTRA_COUNT:Ljava/lang/String; = "count"

.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "desc"

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "email"

.field public static final EXTRA_FACEBOOK_TOKEN:Ljava/lang/String; = "facebook_token"

.field public static final EXTRA_FOLLOW_ID:Ljava/lang/String; = "follow_id"

.field public static final EXTRA_ITEM_TYPE:Ljava/lang/String; = "i_type"

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final EXTRA_LOAD_URL:Ljava/lang/String; = "load_url"

.field public static final EXTRA_LOCATION:Ljava/lang/String; = "location"

.field public static final EXTRA_LOGGED_OUT:Ljava/lang/String; = "logged_out"

.field public static final EXTRA_LOGIN:Ljava/lang/String; = "login"

.field public static final EXTRA_NEXT_PAGE:Ljava/lang/String; = "next_page"

.field public static final EXTRA_NOTIFY:Ljava/lang/String; = "notify"

.field public static final EXTRA_PAGE:Ljava/lang/String; = "page"

.field public static final EXTRA_PAGE_TYPE:Ljava/lang/String; = "page_type"

.field public static final EXTRA_PASSWORD:Ljava/lang/String; = "pass"

.field public static final EXTRA_PHONE:Ljava/lang/String; = "phone"

.field public static final EXTRA_POST_ID:Ljava/lang/String; = "post_id"

.field public static final EXTRA_POST_SHARE_ID:Ljava/lang/String; = "post_share_id"

.field public static final EXTRA_PREVIOUS_PAGE:Ljava/lang/String; = "previous_page"

.field public static final EXTRA_PROFILE_ID:Ljava/lang/String; = "profile_id"

.field public static final EXTRA_QUERY:Ljava/lang/String; = "q"

.field public static final EXTRA_REASON_PHRASE:Ljava/lang/String; = "reason_phrase"

.field public static final EXTRA_REFRESH_SESSION:Ljava/lang/String; = "refresh_session"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "rid"

.field public static final EXTRA_RESPONSE_CODE:Ljava/lang/String; = "resp_code"

.field public static final EXTRA_SECRET:Ljava/lang/String; = "secret"

.field public static final EXTRA_SERVER_STATUS:Ljava/lang/String; = "server_status"

.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "s_key"

.field public static final EXTRA_SESSION_OWNER_ID:Ljava/lang/String; = "s_owner_id"

.field public static final EXTRA_SIZE:Ljava/lang/String; = "size"

.field public static final EXTRA_TAG_NAME:Ljava/lang/String; = "tag_name"

.field public static final EXTRA_TWITTER_ID:Ljava/lang/String; = "t_id"

.field public static final EXTRA_TWITTER_USER:Ljava/lang/String; = "t_user"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field public static final EXTRA_USER:Ljava/lang/String; = "user"

.field public static final EXTRA_USERNAME:Ljava/lang/String; = "username"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field public static final EXTRA_USER_INITIATED:Ljava/lang/String; = "user_init"

#the value of this static final field might be set in the static constructor
.field private static final LOGGABLE:Z = false

.field private static final PAGE_SIZE_SEARCH:I = 0x32

.field private static final PARAM_ADDRESS_BOOK:Ljava/lang/String; = "addressBook"

.field private static final PARAM_ANCHOR:Ljava/lang/String; = "anchor"

.field private static final PARAM_AUTHENTICATE:Ljava/lang/String; = "authenticate"

.field private static final PARAM_AVATAR:Ljava/lang/String; = "avatarUrl"

.field private static final PARAM_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final PARAM_EMAIL:Ljava/lang/String; = "email"

.field private static final PARAM_FACEBOOK_AUTH_TOKEN:Ljava/lang/String; = "facebookOauthToken"

.field private static final PARAM_LOCALE:Ljava/lang/String; = "locale"

.field private static final PARAM_LOCATION:Ljava/lang/String; = "location"

.field private static final PARAM_NAME:Ljava/lang/String; = "username"

.field private static final PARAM_PAGE:Ljava/lang/String; = "page"

.field private static final PARAM_PASSWORD:Ljava/lang/String; = "password"

.field private static final PARAM_PHONE:Ljava/lang/String; = "phoneNumber"

.field private static final PARAM_SIZE:Ljava/lang/String; = "size"

.field private static final PARAM_TWITTER_ID:Ljava/lang/String; = "twitterId"

.field private static final PARAM_TWITTER_SECRET:Ljava/lang/String; = "twitterOauthSecret"

.field private static final PARAM_TWITTER_TOKEN:Ljava/lang/String; = "twitterOauthToken"

.field private static final PARAM_USERNAME:Ljava/lang/String; = "username"

.field private static final REASON_PHRASE:Ljava/lang/String; = "reasonPhrase"

.field private static final STATUS_CODE:Ljava/lang/String; = "statusCode"

.field private static final TAG:Ljava/lang/String; = "VineService"

.field private static final sActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApi:Lco/vine/android/client/VineAPI;

.field private final mBinder:Landroid/os/IBinder;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMediaUtility:Lco/vine/android/util/MediaUtility;

.field private mStartIds:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 215
    const-string v0, "VineService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lco/vine/android/service/VineService;->LOGGABLE:Z

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lco/vine/android/service/VineService;->sActionMap:Ljava/util/HashMap;

    .line 238
    sget-object v0, Lco/vine/android/service/VineService;->sActionMap:Ljava/util/HashMap;

    const-string v1, "RESTART_CM"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lco/vine/android/service/VineService;->sActionMap:Ljava/util/HashMap;

    const-string v1, "LOGIN"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 227
    new-instance v0, Lco/vine/android/service/VineService$VineServiceBinder;

    invoke-direct {v0, p0}, Lco/vine/android/service/VineService$VineServiceBinder;-><init>(Lco/vine/android/service/VineService;)V

    iput-object v0, p0, Lco/vine/android/service/VineService;->mBinder:Landroid/os/IBinder;

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lco/vine/android/service/VineService;->mMainHandler:Landroid/os/Handler;

    .line 1761
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lco/vine/android/service/VineService;->LOGGABLE:Z

    return v0
.end method

.method static synthetic access$100(Lco/vine/android/service/VineService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lco/vine/android/service/VineService;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteComment(JLjava/lang/String;Ljava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;)Lco/vine/android/network/HttpOperation;
    .locals 7
    .parameter "postId"
    .parameter "commentId"
    .parameter "key"
    .parameter "dbHelper"

    .prologue
    .line 1629
    iget-object v3, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v3}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "posts"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "comments"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1631
    .local v1, url:Ljava/lang/StringBuilder;
    const/4 v3, 0x7

    invoke-static {v3}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v2

    .line 1633
    .local v2, vp:Lco/vine/android/api/VineParserReader;
    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-static {v3, v1, v4, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v0

    .line 1637
    .local v0, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v0}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1638
    invoke-virtual {p5, p3}, Lco/vine/android/provider/VineDatabaseHelper;->deleteComment(Ljava/lang/String;)I

    .line 1640
    :cond_0
    return-object v0
.end method

.method private getClientProfile()Lco/vine/android/network/HttpOperation;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1644
    iget-object v4, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v4}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "clientprofiles"

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1645
    .local v2, url:Ljava/lang/StringBuilder;
    const-string v4, "model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v4, v6}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const-string v4, "device"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2, v4, v6}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const-string v4, "sdkVersion"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2, v4, v6}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1648
    const-string v6, "memory"

    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lco/vine/android/service/VineService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v4

    invoke-static {v2, v6, v4}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1649
    const/16 v4, 0xd

    invoke-static {v4}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v3

    .line 1651
    .local v3, vp:Lco/vine/android/api/VineParserReader;
    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v4

    iget-object v6, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-static {v4, v2, v3, v6}, Lco/vine/android/network/HttpOperation;->createGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v1

    .line 1653
    .local v1, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v1}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1654
    invoke-virtual {v3}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1655
    .local v0, object:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1656
    const-string v4, "Got client profile {}."

    invoke-static {v4, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1657
    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->update(Landroid/content/Context;Lorg/json/JSONObject;)Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    .line 1664
    .end local v0           #object:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 1659
    .restart local v0       #object:Lorg/json/JSONObject;
    :cond_0
    const-string v4, "Error getting client profile."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1662
    .end local v0           #object:Lorg/json/JSONObject;
    :cond_1
    const-string v6, "Failed to update client profile: {}."

    if-eqz v1, :cond_2

    iget v4, v1, Lco/vine/android/network/HttpOperation;->statusCode:I

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method private getComments(JIILjava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;)Lco/vine/android/network/HttpOperation;
    .locals 9
    .parameter "postId"
    .parameter "page"
    .parameter "size"
    .parameter "key"
    .parameter "dbHelper"

    .prologue
    const/4 v8, 0x1

    .line 1669
    iget-object v4, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v4}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "posts"

    aput-object v7, v5, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, "comments"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1671
    .local v2, url:Ljava/lang/StringBuilder;
    const-string v4, "page"

    invoke-static {v2, v4, p3}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1672
    const-string v4, "size"

    invoke-static {v2, v4, p4}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1674
    const/4 v4, 0x6

    invoke-static {v4}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v3

    .line 1676
    .local v3, vp:Lco/vine/android/api/VineParserReader;
    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-static {v4, v2, v5, v3}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v4

    invoke-virtual {v4}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v1

    .line 1679
    .local v1, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v1}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1680
    invoke-virtual {v3}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VinePagedData;

    .line 1681
    .local v0, comments:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineComment;>;"
    iget-object v4, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {p6, v4, p1, p2, v8}, Lco/vine/android/provider/VineDatabaseHelper;->mergeComments(Ljava/util/Collection;JZ)I

    .line 1683
    .end local v0           #comments:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineComment;>;"
    :cond_0
    return-object v1
.end method

.method private getPosts(JIILjava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;JIZLandroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
    .locals 25
    .parameter "sessionOwnerId"
    .parameter "type"
    .parameter "size"
    .parameter "key"
    .parameter "dbHelper"
    .parameter "userId"
    .parameter "pageType"
    .parameter "userInitiated"
    .parameter "b"

    .prologue
    .line 1490
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v3}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v15

    .line 1492
    .local v15, base:Ljava/lang/String;
    const-string v3, "tag_name"

    move-object/from16 v0, p11

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1494
    .local v6, tag:Ljava/lang/String;
    if-nez v6, :cond_0

    const/4 v3, 0x6

    move/from16 v0, p3

    if-eq v0, v3, :cond_0

    .line 1495
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 1497
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 1536
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to fetch timeline with unsupported type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1499
    :pswitch_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "timelines"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "graph"

    aput-object v5, v3, v4

    invoke-static {v15, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1501
    .local v23, url:Ljava/lang/StringBuilder;
    const/16 v21, 0x2

    .line 1541
    .local v21, pageCursorKind:I
    :goto_0
    packed-switch p9, :pswitch_data_1

    .line 1566
    :cond_1
    :goto_1
    const-string v3, "size"

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-static {v0, v3, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1568
    const/16 v3, 0x8

    invoke-static {v3}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v24

    .line 1570
    .local v24, vp:Lco/vine/android/api/VineParserReader;
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v3, v0, v4, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v20

    .line 1573
    .local v20, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual/range {v20 .. v20}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1574
    invoke-virtual/range {v24 .. v24}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lco/vine/android/api/VinePagedData;

    .line 1577
    .local v17, feedItems:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    :try_start_0
    move-object/from16 v0, v17

    iget-object v4, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget v8, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, v17

    iget v9, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move-object/from16 v0, v17

    iget-wide v10, v0, Lco/vine/android/api/VinePagedData;->anchor:J

    move-object/from16 v3, p6

    move/from16 v5, p3

    move/from16 v7, p9

    move/from16 v12, p10

    invoke-virtual/range {v3 .. v12}, Lco/vine/android/provider/VineDatabaseHelper;->mergePosts(Ljava/util/Collection;ILjava/lang/String;IIIJZ)Lco/vine/android/provider/DbResponse;

    move-result-object v22

    .line 1582
    .local v22, response:Lco/vine/android/provider/DbResponse;
    const-string v3, "count"

    move-object/from16 v0, v17

    iget-object v4, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p11

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1584
    move-object/from16 v0, v17

    iget v3, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    if-gtz v3, :cond_2

    .line 1585
    move-object/from16 v0, p6

    move/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Lco/vine/android/provider/VineDatabaseHelper;->markLastPost(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    .end local v17           #feedItems:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    .end local v22           #response:Lco/vine/android/provider/DbResponse;
    :cond_2
    :goto_2
    return-object v20

    .line 1505
    .end local v20           #op:Lco/vine/android/network/HttpOperation;
    .end local v21           #pageCursorKind:I
    .end local v23           #url:Ljava/lang/StringBuilder;
    .end local v24           #vp:Lco/vine/android/api/VineParserReader;
    :pswitch_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "timelines"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "users"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v15, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1507
    .restart local v23       #url:Ljava/lang/StringBuilder;
    const/16 v21, 0x2

    .line 1508
    .restart local v21       #pageCursorKind:I
    goto/16 :goto_0

    .line 1511
    .end local v21           #pageCursorKind:I
    .end local v23           #url:Ljava/lang/StringBuilder;
    :pswitch_2
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "timelines"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "users"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "likes"

    aput-object v5, v3, v4

    invoke-static {v15, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1513
    .restart local v23       #url:Ljava/lang/StringBuilder;
    const/16 v21, 0x1

    .line 1514
    .restart local v21       #pageCursorKind:I
    goto/16 :goto_0

    .line 1517
    .end local v21           #pageCursorKind:I
    .end local v23           #url:Ljava/lang/StringBuilder;
    :pswitch_3
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "timelines"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "promoted"

    aput-object v5, v3, v4

    invoke-static {v15, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1519
    .restart local v23       #url:Ljava/lang/StringBuilder;
    const/16 v21, 0x2

    .line 1521
    .restart local v21       #pageCursorKind:I
    goto/16 :goto_0

    .line 1524
    .end local v21           #pageCursorKind:I
    .end local v23           #url:Ljava/lang/StringBuilder;
    :pswitch_4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "timelines"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "popular"

    aput-object v5, v3, v4

    invoke-static {v15, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1526
    .restart local v23       #url:Ljava/lang/StringBuilder;
    const/16 v21, 0x2

    .line 1527
    .restart local v21       #pageCursorKind:I
    goto/16 :goto_0

    .line 1530
    .end local v21           #pageCursorKind:I
    .end local v23           #url:Ljava/lang/StringBuilder;
    :pswitch_5
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "timelines"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "tags"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v6, v3, v4

    invoke-static {v15, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1532
    .restart local v23       #url:Ljava/lang/StringBuilder;
    const/16 v21, 0x2

    .line 1533
    .restart local v21       #pageCursorKind:I
    goto/16 :goto_0

    .line 1543
    :pswitch_6
    const-string v3, "page"

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-static {v0, v3, v4}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1549
    :pswitch_7
    const-string v3, "page"

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-static {v0, v3, v4}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1553
    :pswitch_8
    const/4 v3, 0x2

    move-object/from16 v0, p6

    move/from16 v1, p3

    invoke-virtual {v0, v3, v1, v6}, Lco/vine/android/provider/VineDatabaseHelper;->getPageAnchor(IILjava/lang/String;)J

    move-result-wide v13

    .line 1555
    .local v13, anchor:J
    const-wide/16 v3, 0x0

    cmp-long v3, v13, v3

    if-lez v3, :cond_3

    .line 1556
    const-string v3, "anchor"

    move-object/from16 v0, v23

    invoke-static {v0, v3, v13, v14}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 1558
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v21

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v6, v3}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    .line 1559
    .local v18, nextPage:J
    const-wide/16 v3, 0x0

    cmp-long v3, v18, v3

    if-lez v3, :cond_1

    .line 1560
    const-string v3, "page"

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-static {v0, v3, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 1587
    .end local v13           #anchor:J
    .end local v18           #nextPage:J
    .restart local v17       #feedItems:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    .restart local v20       #op:Lco/vine/android/network/HttpOperation;
    .restart local v24       #vp:Lco/vine/android/api/VineParserReader;
    :catch_0
    move-exception v16

    .line 1588
    .local v16, e:Ljava/io/IOException;
    sget-boolean v3, Lco/vine/android/service/VineService;->LOGGABLE:Z

    if-eqz v3, :cond_2

    .line 1589
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1541
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getUsersMe(Ljava/lang/String;Landroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
    .locals 9
    .parameter "key"
    .parameter "b"

    .prologue
    const/4 v8, 0x2

    .line 1687
    iget-object v4, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v4}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "users"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "me"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1690
    .local v1, url:Ljava/lang/StringBuilder;
    invoke-static {v8}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v3

    .line 1692
    .local v3, vp:Lco/vine/android/api/VineParserReader;
    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-static {v4, v1, v5, v3}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v4

    invoke-virtual {v4}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v0

    .line 1695
    .local v0, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v0}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1696
    invoke-virtual {v3}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VineUser;

    .line 1697
    .local v2, user:Lco/vine/android/api/VineUser;
    const-string v4, "user"

    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1699
    .end local v2           #user:Lco/vine/android/api/VineUser;
    :cond_0
    return-object v0
.end method

.method private postComment(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;)Lco/vine/android/network/HttpOperation;
    .locals 11
    .parameter "postId"
    .parameter "userId"
    .parameter "username"
    .parameter "comment"
    .parameter "avatarUrl"
    .parameter "key"
    .parameter "dbHelper"

    .prologue
    .line 1599
    iget-object v7, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v7}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "posts"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "comments"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1602
    .local v4, url:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1603
    .local v3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "userId"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "comment"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    const/4 v7, 0x7

    invoke-static {v7}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v6

    .line 1608
    .local v6, vp:Lco/vine/android/api/VineParserReader;
    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v7

    iget-object v8, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-static {v7, v4, v3, v6, v8}, Lco/vine/android/network/HttpOperation;->createSignedPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v7

    invoke-virtual {v7}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v2

    .line 1612
    .local v2, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v2}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1613
    invoke-virtual {v6}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/api/VineComment;

    .line 1614
    .local v5, vc:Lco/vine/android/api/VineComment;
    move-object/from16 v0, p6

    iput-object v0, v5, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    .line 1615
    iput-wide p1, v5, Lco/vine/android/api/VineComment;->postId:J

    .line 1616
    iput-wide p3, v5, Lco/vine/android/api/VineComment;->userId:J

    .line 1617
    move-object/from16 v0, p5

    iput-object v0, v5, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    .line 1618
    move-object/from16 v0, p7

    iput-object v0, v5, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    .line 1620
    new-instance v1, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1621
    .local v1, comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineComment;>;"
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    const/4 v7, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, p1, p2, v7}, Lco/vine/android/provider/VineDatabaseHelper;->mergeComments(Ljava/util/Collection;JZ)I

    .line 1625
    .end local v1           #comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineComment;>;"
    .end local v5           #vc:Lco/vine/android/api/VineComment;
    :cond_0
    return-object v2
.end method


# virtual methods
.method attemptStop(I)V
    .locals 6
    .parameter "startId"

    .prologue
    .line 1710
    iget-object v3, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    iget-object v3, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1714
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1724
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :goto_0
    return-void

    .line 1720
    :cond_1
    iget-object v3, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1721
    .local v2, key:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lco/vine/android/service/VineService;->stopSelf(I)V

    goto :goto_1

    .line 1723
    .end local v2           #key:Ljava/lang/Integer;
    :cond_2
    iget-object v3, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0
.end method

.method executeAction(IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)Landroid/os/Bundle;
    .locals 118
    .parameter "startId"
    .parameter "actionCode"
    .parameter "b"
    .parameter "responder"

    .prologue
    .line 295
    const-string v5, "s_key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 296
    .local v27, key:Ljava/lang/String;
    const-string v5, "a_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 297
    .local v40, accountName:Ljava/lang/String;
    const-string v5, "s_owner_id"

    const-wide/16 v15, 0x0

    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    .line 298
    .local v23, sessionOwnerId:J
    invoke-static/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;

    move-result-object v11

    .line 300
    .local v11, dbHelper:Lco/vine/android/provider/VineDatabaseHelper;
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v51

    .line 302
    .local v51, context:Landroid/content/Context;
    const/16 v96, 0x0

    .line 303
    .local v96, statusCode:I
    const/16 v87, 0x0

    .line 304
    .local v87, reasonPhrase:Ljava/lang/String;
    const/16 v76, 0x0

    .line 305
    .local v76, op:Lco/vine/android/network/HttpOperation;
    const/16 v57, 0x0

    .line 306
    .local v57, error:Lco/vine/android/api/VineError;
    const/16 v117, 0x0

    .line 308
    .local v117, vp:Lco/vine/android/api/VineParserReader;
    sparse-switch p2, :sswitch_data_0

    .line 1448
    .end local v11           #dbHelper:Lco/vine/android/provider/VineDatabaseHelper;
    :cond_0
    :goto_0
    new-instance v92, Landroid/os/Bundle;

    invoke-direct/range {v92 .. v92}, Landroid/os/Bundle;-><init>()V

    .line 1449
    .local v92, ret:Landroid/os/Bundle;
    if-eqz v76, :cond_29

    .line 1450
    move-object/from16 v0, v76

    iget v0, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    move/from16 v96, v0

    .line 1451
    const-string v5, "statusCode"

    move-object/from16 v0, v92

    move/from16 v1, v96

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1452
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-nez v5, :cond_2a

    if-eqz v117, :cond_2a

    if-nez v57, :cond_2a

    .line 1453
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v57

    .end local v57           #error:Lco/vine/android/api/VineError;
    check-cast v57, Lco/vine/android/api/VineError;

    .line 1454
    .restart local v57       #error:Lco/vine/android/api/VineError;
    if-eqz v57, :cond_2a

    .line 1455
    move-object/from16 v0, v57

    iget-object v0, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    move-object/from16 v87, v0

    .line 1456
    const-string v5, "reasonPhrase"

    move-object/from16 v0, v92

    move-object/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    move-object/from16 v0, v57

    iget v0, v0, Lco/vine/android/api/VineError;->errorCode:I

    move/from16 v58, v0

    .line 1460
    .local v58, errorCode:I
    sget-object v5, Lco/vine/android/api/VineError$VineKnownErrors;->BAD_CREDENTIALS:Lco/vine/android/api/VineError$VineKnownErrors;

    iget v5, v5, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    move/from16 v0, v58

    if-eq v0, v5, :cond_1

    sget-object v5, Lco/vine/android/api/VineError$VineKnownErrors;->REQUIRES_LOGIN:Lco/vine/android/api/VineError$VineKnownErrors;

    iget v5, v5, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    move/from16 v0, v58

    if-ne v0, v5, :cond_27

    .line 1462
    :cond_1
    const-string v5, "executionCode"

    const/4 v12, 0x3

    move-object/from16 v0, v92

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1484
    .end local v58           #errorCode:I
    :goto_1
    return-object v92

    .line 310
    .end local v92           #ret:Landroid/os/Bundle;
    .restart local v11       #dbHelper:Lco/vine/android/provider/VineDatabaseHelper;
    :sswitch_0
    const-string v5, "login"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lco/vine/android/api/VineLogin;

    .line 311
    .local v4, login:Lco/vine/android/api/VineLogin;
    const-string v5, "pass"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 312
    .local v81, password:Ljava/lang/String;
    invoke-static {}, Lco/vine/android/api/VineParserReader;->createLoginReader()Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 313
    new-instance v80, Ljava/util/ArrayList;

    invoke-direct/range {v80 .. v80}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v80, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v5, v4, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static/range {v81 .. v81}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 315
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "username"

    iget-object v15, v4, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "password"

    move-object/from16 v0, v81

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_2
    iget-object v5, v4, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-wide v15, v4, Lco/vine/android/api/VineLogin;->twitterUserId:J

    const-wide/16 v17, 0x0

    cmp-long v5, v15, v17

    if-lez v5, :cond_3

    .line 322
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    iget-object v15, v4, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    iget-object v15, v4, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterId"

    iget-wide v15, v4, Lco/vine/android/api/VineLogin;->twitterUserId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v12}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/users/authenticate"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v106

    .line 330
    .local v106, url:Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v80

    move-object/from16 v2, v117

    invoke-static {v5, v0, v1, v2, v12}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 334
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 335
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v116

    check-cast v116, Lco/vine/android/api/VineLogin;

    .line 336
    .local v116, vl:Lco/vine/android/api/VineLogin;
    move-object/from16 v0, v116

    iget-object v5, v0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    move-object/from16 v0, v116

    iput-object v5, v0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    .line 337
    iget-object v5, v4, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    move-object/from16 v0, v116

    iput-object v5, v0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    .line 338
    const-string v5, "a_name"

    move-object/from16 v0, v116

    iget-object v12, v0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v5, "login"

    move-object/from16 v0, p3

    move-object/from16 v1, v116

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    const-string v16, "me"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v114

    .line 344
    .local v114, usersMeUrl:Ljava/lang/StringBuilder;
    const/4 v5, 0x2

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 345
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v116

    iget-object v15, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, v114

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v1, v15}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 348
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 349
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lco/vine/android/api/VineUser;

    .line 350
    .local v67, me:Lco/vine/android/api/VineUser;
    const-string v5, "avatar_url"

    move-object/from16 v0, v67

    iget-object v12, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v5, "desc"

    move-object/from16 v0, v67

    iget-object v12, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    .end local v67           #me:Lco/vine/android/api/VineUser;
    .end local v114           #usersMeUrl:Ljava/lang/StringBuilder;
    .end local v116           #vl:Lco/vine/android/api/VineLogin;
    :cond_4
    new-instance v92, Landroid/os/Bundle;

    invoke-direct/range {v92 .. v92}, Landroid/os/Bundle;-><init>()V

    .line 355
    .restart local v92       #ret:Landroid/os/Bundle;
    const-string v5, "statusCode"

    move-object/from16 v0, v76

    iget v12, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    move-object/from16 v0, v92

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v57

    .end local v57           #error:Lco/vine/android/api/VineError;
    check-cast v57, Lco/vine/android/api/VineError;

    .line 357
    .restart local v57       #error:Lco/vine/android/api/VineError;
    if-eqz v57, :cond_5

    .line 358
    const-string v5, "reasonPhrase"

    move-object/from16 v0, v57

    iget-object v12, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_2
    const-string v5, "executionCode"

    const/4 v12, 0x1

    move-object/from16 v0, v92

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 360
    :cond_5
    const-string v5, "reasonPhrase"

    const v12, 0x7f070056

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v92

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 368
    .end local v4           #login:Lco/vine/android/api/VineLogin;
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v81           #password:Ljava/lang/String;
    .end local v92           #ret:Landroid/os/Bundle;
    .end local v106           #url:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {v11}, Lco/vine/android/provider/VineDatabaseHelper;->clearAllData()V

    goto/16 :goto_0

    .line 372
    :sswitch_2
    const-string v5, "a_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 373
    .local v71, name:Ljava/lang/String;
    const-string v5, "login"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 374
    .local v56, email:Ljava/lang/String;
    const-string v5, "pass"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 375
    .restart local v81       #password:Ljava/lang/String;
    const-string v5, "phone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    .line 376
    .local v82, phone:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v46

    check-cast v46, Landroid/net/Uri;

    .line 377
    .local v46, avatarFileUri:Landroid/net/Uri;
    const-string v5, "t_user"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v104

    check-cast v104, Lco/vine/android/api/TwitterUser;

    .line 379
    .local v104, twitterUser:Lco/vine/android/api/TwitterUser;
    invoke-static/range {v51 .. v51}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v83

    .line 382
    .local v83, pictureBucket:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mMediaUtility:Lco/vine/android/util/MediaUtility;

    move-object/from16 v0, v46

    move-object/from16 v1, v83

    move-object/from16 v2, v51

    invoke-virtual {v5, v0, v1, v2}, Lco/vine/android/util/MediaUtility;->getPhotoUri(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v60

    .line 389
    .local v60, filename:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v12}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/users"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v106

    .line 391
    .restart local v106       #url:Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 393
    new-instance v80, Ljava/util/ArrayList;

    invoke-direct/range {v80 .. v80}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .restart local v80       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    if-eqz v104, :cond_9

    const/16 v103, 0x1

    .line 397
    .local v103, twitterSignup:Z
    :goto_3
    const-string v5, "key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v99

    .line 398
    .local v99, token:Ljava/lang/String;
    const-string v5, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .line 399
    .local v93, secret:Ljava/lang/String;
    if-eqz v103, :cond_a

    .line 400
    move-object/from16 v0, v104

    iget-object v5, v0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 401
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "username"

    move-object/from16 v0, v104

    iget-object v15, v0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_6
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "location"

    move-object/from16 v0, v104

    iget-object v15, v0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "description"

    move-object/from16 v0, v104

    iget-object v15, v0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterId"

    move-object/from16 v0, v104

    iget-wide v15, v0, Lco/vine/android/api/TwitterUser;->userId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    move-object/from16 v0, v99

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    move-object/from16 v0, v93

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_7
    :goto_4
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "authenticate"

    const-string v15, "true"

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    if-eqz v60, :cond_8

    .line 421
    invoke-static/range {v51 .. v51}, Lco/vine/android/util/MediaUtility;->getUploadType(Landroid/content/Context;)I

    move-result v70

    .line 422
    .local v70, mode:I
    packed-switch v70, :pswitch_data_0

    .line 430
    move-object/from16 v61, v60

    .line 434
    .local v61, finalAvatarUrl:Ljava/lang/String;
    :goto_5
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "avatarUrl"

    move-object/from16 v0, v61

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .end local v61           #finalAvatarUrl:Ljava/lang/String;
    .end local v70           #mode:I
    :cond_8
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v80

    move-object/from16 v2, v117

    invoke-static {v5, v0, v1, v2, v12}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 441
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 442
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v116

    check-cast v116, Lco/vine/android/api/VineLogin;

    .line 443
    .restart local v116       #vl:Lco/vine/android/api/VineLogin;
    if-eqz v103, :cond_b

    .line 444
    move-object/from16 v0, v99

    move-object/from16 v1, v116

    iput-object v0, v1, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    .line 445
    move-object/from16 v0, v93

    move-object/from16 v1, v116

    iput-object v0, v1, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    .line 446
    move-object/from16 v0, v104

    iget-wide v15, v0, Lco/vine/android/api/TwitterUser;->userId:J

    move-object/from16 v0, v116

    iput-wide v15, v0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    .line 447
    const/4 v5, 0x2

    move-object/from16 v0, v116

    iput v5, v0, Lco/vine/android/api/VineLogin;->loginType:I

    .line 451
    :goto_6
    const-string v5, "login"

    move-object/from16 v0, p3

    move-object/from16 v1, v116

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 452
    const-string v5, "a_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    const-string v16, "me"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v114

    .line 457
    .restart local v114       #usersMeUrl:Ljava/lang/StringBuilder;
    const/4 v5, 0x2

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 458
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v116

    iget-object v15, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, v114

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v1, v15}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 461
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lco/vine/android/api/VineUser;

    .line 463
    .restart local v67       #me:Lco/vine/android/api/VineUser;
    const-string v5, "avatar_url"

    move-object/from16 v0, v67

    iget-object v12, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v5, "desc"

    move-object/from16 v0, v67

    iget-object v12, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    .end local v60           #filename:Ljava/lang/String;
    .end local v67           #me:Lco/vine/android/api/VineUser;
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v93           #secret:Ljava/lang/String;
    .end local v99           #token:Ljava/lang/String;
    .end local v103           #twitterSignup:Z
    .end local v106           #url:Ljava/lang/String;
    .end local v114           #usersMeUrl:Ljava/lang/StringBuilder;
    .end local v116           #vl:Lco/vine/android/api/VineLogin;
    :catch_0
    move-exception v55

    .line 384
    .local v55, e:Ljava/lang/Exception;
    const/16 v96, 0x384

    .line 385
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v87

    .line 386
    goto/16 :goto_0

    .line 396
    .end local v55           #e:Ljava/lang/Exception;
    .restart local v60       #filename:Ljava/lang/String;
    .restart local v80       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v106       #url:Ljava/lang/String;
    :cond_9
    const/16 v103, 0x0

    goto/16 :goto_3

    .line 410
    .restart local v93       #secret:Ljava/lang/String;
    .restart local v99       #token:Ljava/lang/String;
    .restart local v103       #twitterSignup:Z
    :cond_a
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "username"

    move-object/from16 v0, v71

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "email"

    move-object/from16 v0, v56

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "password"

    move-object/from16 v0, v81

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-static/range {v82 .. v82}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 414
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "phoneNumber"

    move-object/from16 v0, v82

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 424
    .restart local v70       #mode:I
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v12}, Lco/vine/android/client/VineAPI;->getAmazonUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    .line 426
    .restart local v61       #finalAvatarUrl:Ljava/lang/String;
    goto/16 :goto_5

    .line 449
    .end local v61           #finalAvatarUrl:Ljava/lang/String;
    .end local v70           #mode:I
    .restart local v116       #vl:Lco/vine/android/api/VineLogin;
    :cond_b
    move-object/from16 v0, v56

    move-object/from16 v1, v116

    iput-object v0, v1, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    goto/16 :goto_6

    .line 467
    .end local v116           #vl:Lco/vine/android/api/VineLogin;
    :cond_c
    new-instance v92, Landroid/os/Bundle;

    invoke-direct/range {v92 .. v92}, Landroid/os/Bundle;-><init>()V

    .line 468
    .restart local v92       #ret:Landroid/os/Bundle;
    const-string v5, "statusCode"

    move-object/from16 v0, v76

    iget v12, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    move-object/from16 v0, v92

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v57

    .end local v57           #error:Lco/vine/android/api/VineError;
    check-cast v57, Lco/vine/android/api/VineError;

    .line 470
    .restart local v57       #error:Lco/vine/android/api/VineError;
    if-eqz v57, :cond_d

    .line 471
    const-string v5, "reasonPhrase"

    move-object/from16 v0, v57

    iget-object v12, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :goto_7
    const-string v5, "executionCode"

    const/4 v12, 0x1

    move-object/from16 v0, v92

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 473
    :cond_d
    const-string v5, "reasonPhrase"

    const v12, 0x7f070056

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v92

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 481
    .end local v46           #avatarFileUri:Landroid/net/Uri;
    .end local v56           #email:Ljava/lang/String;
    .end local v60           #filename:Ljava/lang/String;
    .end local v71           #name:Ljava/lang/String;
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v81           #password:Ljava/lang/String;
    .end local v82           #phone:Ljava/lang/String;
    .end local v83           #pictureBucket:Ljava/lang/String;
    .end local v92           #ret:Landroid/os/Bundle;
    .end local v93           #secret:Ljava/lang/String;
    .end local v99           #token:Ljava/lang/String;
    .end local v103           #twitterSignup:Z
    .end local v104           #twitterUser:Lco/vine/android/api/TwitterUser;
    .end local v106           #url:Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v39

    .line 482
    .local v39, account:Landroid/accounts/Account;
    if-nez v39, :cond_e

    .line 483
    const-string v5, "email"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-static {v0, v5}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v39

    .line 485
    :cond_e
    invoke-static/range {v51 .. v51}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v44

    .line 486
    .local v44, am:Landroid/accounts/AccountManager;
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getLoginType(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v66

    .line 487
    .local v66, loginType:I
    packed-switch v66, :pswitch_data_1

    goto/16 :goto_0

    .line 489
    :pswitch_1
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v56, v0

    .line 490
    .restart local v56       #email:Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getPassword(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v81

    .line 491
    .restart local v81       #password:Ljava/lang/String;
    invoke-static {}, Lco/vine/android/api/VineParserReader;->createLoginReader()Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 493
    new-instance v80, Ljava/util/ArrayList;

    invoke-direct/range {v80 .. v80}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .restart local v80       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "username"

    move-object/from16 v0, v56

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "password"

    move-object/from16 v0, v81

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v12}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/users/authenticate"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v106

    .line 501
    .restart local v106       #url:Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v80

    move-object/from16 v2, v117

    invoke-static {v5, v0, v1, v2, v12}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 505
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 506
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v116

    check-cast v116, Lco/vine/android/api/VineLogin;

    .line 507
    .restart local v116       #vl:Lco/vine/android/api/VineLogin;
    move-object/from16 v0, v116

    iget-object v5, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-static {v0, v1, v5}, Lco/vine/android/client/VineAccountHelper;->setSessionKey(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 508
    const-string v5, "s_key"

    move-object/from16 v0, v116

    iget-object v12, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 513
    .end local v56           #email:Ljava/lang/String;
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v81           #password:Ljava/lang/String;
    .end local v106           #url:Ljava/lang/String;
    .end local v116           #vl:Lco/vine/android/api/VineLogin;
    :pswitch_2
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getTwitterToken(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v99

    .line 514
    .restart local v99       #token:Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getTwitterSecret(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v93

    .line 515
    .restart local v93       #secret:Ljava/lang/String;
    invoke-static {}, Lco/vine/android/api/VineParserReader;->createLoginReader()Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 517
    new-instance v80, Ljava/util/ArrayList;

    invoke-direct/range {v80 .. v80}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .restart local v80       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    move-object/from16 v0, v99

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    move-object/from16 v0, v93

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v12}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/users/authenticate/twitter"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v106

    .line 525
    .restart local v106       #url:Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v80

    move-object/from16 v2, v117

    invoke-static {v5, v0, v1, v2, v12}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 529
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 530
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v116

    check-cast v116, Lco/vine/android/api/VineLogin;

    .line 531
    .restart local v116       #vl:Lco/vine/android/api/VineLogin;
    move-object/from16 v0, v116

    iget-object v5, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-static {v0, v1, v5}, Lco/vine/android/client/VineAccountHelper;->setSessionKey(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 532
    const-string v5, "s_key"

    move-object/from16 v0, v116

    iget-object v12, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 540
    .end local v39           #account:Landroid/accounts/Account;
    .end local v44           #am:Landroid/accounts/AccountManager;
    .end local v66           #loginType:I
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v93           #secret:Ljava/lang/String;
    .end local v99           #token:Ljava/lang/String;
    .end local v106           #url:Ljava/lang/String;
    .end local v116           #vl:Lco/vine/android/api/VineLogin;
    :sswitch_4
    const-string v5, "key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 541
    .local v7, tokenKey:Ljava/lang/String;
    const-string v5, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 542
    .local v8, tokenSecret:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 543
    .local v49, callback:Ljava/lang/String;
    new-instance v5, Lorg/scribe/builder/ServiceBuilder;

    invoke-direct {v5}, Lorg/scribe/builder/ServiceBuilder;-><init>()V

    const-class v12, Lorg/scribe/builder/api/TwitterApi;

    invoke-virtual {v5, v12}, Lorg/scribe/builder/ServiceBuilder;->provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/scribe/builder/ServiceBuilder;->apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/scribe/builder/ServiceBuilder;->apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Lorg/scribe/builder/ServiceBuilder;->callback(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/scribe/builder/ServiceBuilder;->build()Lorg/scribe/oauth/OAuthService;

    move-result-object v94

    .line 550
    .local v94, service:Lorg/scribe/oauth/OAuthService;
    invoke-interface/range {v94 .. v94}, Lorg/scribe/oauth/OAuthService;->getRequestToken()Lorg/scribe/model/Token;

    move-result-object v99

    .line 551
    .local v99, token:Lorg/scribe/model/Token;
    move-object/from16 v0, v94

    move-object/from16 v1, v99

    invoke-interface {v0, v1}, Lorg/scribe/oauth/OAuthService;->getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object v45

    .line 552
    .local v45, authUrl:Ljava/lang/String;
    const-string v5, "load_url"

    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 556
    .end local v7           #tokenKey:Ljava/lang/String;
    .end local v8           #tokenSecret:Ljava/lang/String;
    .end local v45           #authUrl:Ljava/lang/String;
    .end local v49           #callback:Ljava/lang/String;
    .end local v94           #service:Lorg/scribe/oauth/OAuthService;
    .end local v99           #token:Lorg/scribe/model/Token;
    :sswitch_5
    const-string v5, "username"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 557
    .local v6, username:Ljava/lang/String;
    const-string v5, "key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 558
    .restart local v7       #tokenKey:Ljava/lang/String;
    const-string v5, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 559
    .restart local v8       #tokenSecret:Ljava/lang/String;
    const-string v5, "t_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 560
    .local v9, userId:J
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 561
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v50

    .line 565
    .local v50, client:Lco/vine/android/network/ThreadedHttpOperationClient;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v12}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/users/authenticate/twitter"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v106

    .line 566
    .restart local v106       #url:Ljava/lang/String;
    new-instance v80, Ljava/util/ArrayList;

    const/4 v5, 0x2

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 568
    .restart local v80       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    invoke-direct {v5, v12, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    invoke-direct {v5, v12, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    const/4 v5, 0x5

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 571
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v50

    move-object/from16 v1, v106

    move-object/from16 v2, v80

    move-object/from16 v3, v117

    invoke-static {v0, v1, v2, v3, v5}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 572
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 573
    const-string v5, "a_exists"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 577
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v116

    check-cast v116, Lco/vine/android/api/VineLogin;

    .line 578
    .restart local v116       #vl:Lco/vine/android/api/VineLogin;
    move-object/from16 v0, v116

    iput-object v6, v0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    .line 579
    move-object/from16 v0, v116

    iput-object v7, v0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    .line 580
    move-object/from16 v0, v116

    iput-object v8, v0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    .line 581
    move-object/from16 v0, v116

    iput-wide v9, v0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    .line 582
    const/4 v5, 0x2

    move-object/from16 v0, v116

    iput v5, v0, Lco/vine/android/api/VineLogin;->loginType:I

    .line 583
    const-string v5, "login"

    move-object/from16 v0, p3

    move-object/from16 v1, v116

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v12}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/users/me"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v113

    .line 587
    .local v113, usersMe:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 588
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, v113

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v116

    iget-object v15, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, v50

    move-object/from16 v1, v117

    invoke-static {v0, v5, v12, v1, v15}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 590
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 591
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Lco/vine/android/api/VineUser;

    .line 592
    .local v107, user:Lco/vine/android/api/VineUser;
    const-string v5, "user"

    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 596
    .end local v107           #user:Lco/vine/android/api/VineUser;
    .end local v113           #usersMe:Ljava/lang/String;
    .end local v116           #vl:Lco/vine/android/api/VineLogin;
    :cond_f
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v57

    .end local v57           #error:Lco/vine/android/api/VineError;
    check-cast v57, Lco/vine/android/api/VineError;

    .line 597
    .restart local v57       #error:Lco/vine/android/api/VineError;
    if-nez v57, :cond_10

    .line 598
    const v5, 0x7f070055

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;

    move-result-object v87

    .line 599
    goto/16 :goto_0

    .line 601
    :cond_10
    sget-object v5, Lco/vine/android/api/VineError$VineKnownErrors;->BAD_CREDENTIALS:Lco/vine/android/api/VineError$VineKnownErrors;

    iget v5, v5, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    move-object/from16 v0, v57

    iget v12, v0, Lco/vine/android/api/VineError;->errorCode:I

    if-ne v5, v12, :cond_11

    .line 602
    new-instance v4, Lco/vine/android/api/VineLogin;

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v10}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 604
    .restart local v4       #login:Lco/vine/android/api/VineLogin;
    const-string v5, "login"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 605
    const-string v5, "a_exists"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 607
    .end local v4           #login:Lco/vine/android/api/VineLogin;
    :cond_11
    move-object/from16 v0, v57

    iget-object v0, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    move-object/from16 v87, v0

    goto/16 :goto_0

    .line 614
    .end local v6           #username:Ljava/lang/String;
    .end local v7           #tokenKey:Ljava/lang/String;
    .end local v8           #tokenSecret:Ljava/lang/String;
    .end local v9           #userId:J
    .end local v50           #client:Lco/vine/android/network/ThreadedHttpOperationClient;
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v106           #url:Ljava/lang/String;
    :sswitch_6
    const-string v5, "login"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v115

    check-cast v115, Lco/vine/android/api/VineLogin;

    .line 615
    .local v115, v:Lco/vine/android/api/VineLogin;
    new-instance v5, Lorg/scribe/builder/ServiceBuilder;

    invoke-direct {v5}, Lorg/scribe/builder/ServiceBuilder;-><init>()V

    const-class v12, Lorg/scribe/builder/api/TwitterApi;

    invoke-virtual {v5, v12}, Lorg/scribe/builder/ServiceBuilder;->provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v5

    sget-object v12, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lorg/scribe/builder/ServiceBuilder;->apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v5

    sget-object v12, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lorg/scribe/builder/ServiceBuilder;->apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/scribe/builder/ServiceBuilder;->build()Lorg/scribe/oauth/OAuthService;

    move-result-object v94

    .line 621
    .restart local v94       #service:Lorg/scribe/oauth/OAuthService;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v12}, Lco/vine/android/client/VineAPI;->getTwitterUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/users/show.json?id="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v115

    iget-wide v15, v0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    move-wide v0, v15

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v106

    .line 622
    .restart local v106       #url:Ljava/lang/String;
    new-instance v88, Lorg/scribe/model/OAuthRequest;

    sget-object v5, Lorg/scribe/model/Verb;->GET:Lorg/scribe/model/Verb;

    move-object/from16 v0, v88

    move-object/from16 v1, v106

    invoke-direct {v0, v5, v1}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    .line 623
    .local v88, request:Lorg/scribe/model/OAuthRequest;
    new-instance v99, Lorg/scribe/model/Token;

    move-object/from16 v0, v115

    iget-object v5, v0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    move-object/from16 v0, v115

    iget-object v12, v0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    move-object/from16 v0, v99

    invoke-direct {v0, v5, v12}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .restart local v99       #token:Lorg/scribe/model/Token;
    move-object/from16 v0, v94

    move-object/from16 v1, v99

    move-object/from16 v2, v88

    invoke-interface {v0, v1, v2}, Lorg/scribe/oauth/OAuthService;->signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V

    .line 627
    :try_start_1
    invoke-virtual/range {v88 .. v88}, Lorg/scribe/model/OAuthRequest;->send()Lorg/scribe/model/Response;

    move-result-object v89

    .line 629
    .local v89, response:Lorg/scribe/model/Response;
    invoke-virtual/range {v89 .. v89}, Lorg/scribe/model/Response;->isSuccessful()Z
    :try_end_1
    .catch Lorg/scribe/exceptions/OAuthException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-eqz v5, :cond_0

    .line 631
    :try_start_2
    new-instance v5, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v5}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    invoke-virtual/range {v89 .. v89}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v77

    .line 632
    .local v77, p:Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual/range {v77 .. v77}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 633
    invoke-static/range {v77 .. v77}, Lco/vine/android/api/VineParsers;->parseTwitterUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/TwitterUser;

    move-result-object v97

    .line 635
    .local v97, tUser:Lco/vine/android/api/TwitterUser;
    const-string v5, "t_user"

    move-object/from16 v0, p3

    move-object/from16 v1, v97

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/scribe/exceptions/OAuthException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 636
    .end local v77           #p:Lcom/fasterxml/jackson/core/JsonParser;
    .end local v97           #tUser:Lco/vine/android/api/TwitterUser;
    :catch_1
    move-exception v55

    .line 637
    .local v55, e:Ljava/io/IOException;
    :try_start_3
    sget-boolean v5, Lco/vine/android/service/VineService;->LOGGABLE:Z

    if-eqz v5, :cond_0

    .line 638
    const-string v5, "Failed to parse."

    move-object/from16 v0, v55

    invoke-static {v5, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/scribe/exceptions/OAuthException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 643
    .end local v55           #e:Ljava/io/IOException;
    .end local v89           #response:Lorg/scribe/model/Response;
    :catch_2
    move-exception v75

    .line 644
    .local v75, oAuthException:Lorg/scribe/exceptions/OAuthException;
    const-string v5, "Failed to connect."

    move-object/from16 v0, v75

    invoke-static {v5, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 650
    .end local v75           #oAuthException:Lorg/scribe/exceptions/OAuthException;
    .end local v88           #request:Lorg/scribe/model/OAuthRequest;
    .end local v94           #service:Lorg/scribe/oauth/OAuthService;
    .end local v99           #token:Lorg/scribe/model/Token;
    .end local v106           #url:Ljava/lang/String;
    .end local v115           #v:Lco/vine/android/api/VineLogin;
    :sswitch_7
    const-string v5, "username"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 651
    .restart local v6       #username:Ljava/lang/String;
    const-string v5, "pass"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 653
    .restart local v81       #password:Ljava/lang/String;
    new-instance v48, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct/range {v48 .. v48}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    .line 654
    .local v48, builder:Ltwitter4j/conf/ConfigurationBuilder;
    sget-object v5, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 655
    sget-object v5, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 657
    new-instance v5, Ltwitter4j/TwitterFactory;

    invoke-virtual/range {v48 .. v48}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;

    move-result-object v12

    invoke-direct {v5, v12}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    new-instance v12, Ltwitter4j/auth/BasicAuthorization;

    move-object/from16 v0, v81

    invoke-direct {v12, v6, v0}, Ltwitter4j/auth/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v100

    .line 661
    .local v100, twitter:Ltwitter4j/Twitter;
    :try_start_4
    invoke-interface/range {v100 .. v100}, Ltwitter4j/Twitter;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v38

    .line 662
    .local v38, aToken:Ltwitter4j/auth/AccessToken;
    new-instance v4, Lco/vine/android/api/VineLogin;

    const/4 v12, 0x0

    invoke-virtual/range {v38 .. v38}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v38 .. v38}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v38 .. v38}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v38 .. v38}, Ltwitter4j/auth/AccessToken;->getUserId()J

    move-result-wide v16

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 664
    .end local v11           #dbHelper:Lco/vine/android/provider/VineDatabaseHelper;
    .restart local v4       #login:Lco/vine/android/api/VineLogin;
    const-string v5, "login"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 665
    const/16 v96, 0xc8

    .line 674
    const-string v5, "pass"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 666
    .end local v4           #login:Lco/vine/android/api/VineLogin;
    .end local v38           #aToken:Ltwitter4j/auth/AccessToken;
    :catch_3
    move-exception v55

    .line 667
    .local v55, e:Ljava/lang/Exception;
    :try_start_5
    sget-boolean v5, Lco/vine/android/service/VineService;->LOGGABLE:Z

    if-eqz v5, :cond_12

    .line 668
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Exception;->printStackTrace()V

    .line 670
    :cond_12
    const/16 v96, 0x1f4

    .line 671
    const-string v87, "Error with xauth."
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 674
    const-string v5, "pass"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v55           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    const-string v12, "pass"

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 680
    .end local v6           #username:Ljava/lang/String;
    .end local v48           #builder:Ltwitter4j/conf/ConfigurationBuilder;
    .end local v81           #password:Ljava/lang/String;
    .end local v100           #twitter:Ltwitter4j/Twitter;
    .restart local v11       #dbHelper:Lco/vine/android/provider/VineDatabaseHelper;
    :sswitch_8
    const-string v5, "login"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 681
    .restart local v56       #email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    const-string v16, "forgotPassword"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 683
    .local v106, url:Ljava/lang/StringBuilder;
    const-string v5, "email"

    move-object/from16 v0, v106

    move-object/from16 v1, v56

    invoke-static {v0, v5, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/4 v5, 0x1

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 685
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v1, v12}, Lco/vine/android/network/HttpOperation;->createGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 689
    goto/16 :goto_0

    .line 692
    .end local v56           #email:Ljava/lang/String;
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_9
    const-string v5, "post_id"

    const-wide/16 v15, 0x0

    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 693
    .local v13, postId:J
    const-string v5, "page_type"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v79

    .line 694
    .local v79, pageType:I
    const-string v5, "page"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v78

    .line 696
    .local v78, page:I
    packed-switch v79, :pswitch_data_2

    .line 722
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "posts"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "likes"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 725
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const-string v5, "page"

    move-object/from16 v0, v106

    move/from16 v1, v78

    invoke-static {v0, v5, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 726
    const-string v5, "size"

    const/16 v12, 0x14

    move-object/from16 v0, v106

    invoke-static {v0, v5, v12}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 728
    const/16 v5, 0xb

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 729
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 733
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 734
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lco/vine/android/api/VinePagedData;

    .line 735
    .local v65, likes:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineLike;>;"
    move-object/from16 v0, v65

    iget-object v12, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v0, v65

    iget v15, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, v65

    iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lco/vine/android/provider/VineDatabaseHelper;->mergeLikes(Ljava/util/Collection;JII)I

    .line 736
    const-string v5, "count"

    move-object/from16 v0, v65

    iget v12, v0, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    const-string v5, "next_page"

    move-object/from16 v0, v65

    iget v12, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 738
    const-string v5, "previous_page"

    move-object/from16 v0, v65

    iget v12, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 740
    move-object/from16 v0, v65

    iget v5, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    if-gtz v5, :cond_0

    .line 741
    const/4 v5, 0x5

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 698
    .end local v65           #likes:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineLike;>;"
    .end local v106           #url:Ljava/lang/StringBuilder;
    :pswitch_3
    const/16 v78, 0x1

    .line 699
    goto/16 :goto_8

    .line 702
    :pswitch_4
    const/4 v5, 0x1

    const/4 v12, 0x5

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I

    move-result v72

    .line 704
    .local v72, nextPage:I
    if-lez v72, :cond_13

    .line 705
    move/from16 v78, v72

    goto/16 :goto_8

    .line 710
    .end local v72           #nextPage:I
    :pswitch_5
    const/4 v5, 0x1

    const/4 v12, 0x5

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I

    move-result v85

    .line 712
    .local v85, previous:I
    if-lez v85, :cond_13

    .line 713
    move/from16 v78, v85

    goto/16 :goto_8

    .line 749
    .end local v13           #postId:J
    .end local v78           #page:I
    .end local v79           #pageType:I
    .end local v85           #previous:I
    :sswitch_a
    const-string v5, "profile_id"

    const-wide/16 v15, 0x0

    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 750
    .restart local v9       #userId:J
    const-string v5, "page_type"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v79

    .line 751
    .restart local v79       #pageType:I
    const-string v5, "page"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v78

    .line 753
    .restart local v78       #page:I
    packed-switch v79, :pswitch_data_3

    .line 779
    :cond_14
    :goto_9
    const-wide/16 v15, 0x0

    cmp-long v5, v9, v15

    if-lez v5, :cond_0

    .line 780
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "followers"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 782
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const-string v5, "page"

    move-object/from16 v0, v106

    move/from16 v1, v78

    invoke-static {v0, v5, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 783
    const-string v5, "size"

    const/16 v12, 0x14

    move-object/from16 v0, v106

    invoke-static {v0, v5, v12}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 784
    const/4 v5, 0x3

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 786
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 789
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 790
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Lco/vine/android/api/VinePagedData;

    .line 791
    .local v112, users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    move-object/from16 v0, v112

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    if-eqz v5, :cond_16

    .line 792
    new-instance v21, Ljava/util/HashMap;

    move-object/from16 v0, v112

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 794
    .local v21, orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, v112

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .local v62, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Lco/vine/android/api/VineUser;

    .line 795
    .local v105, u:Lco/vine/android/api/VineUser;
    move-object/from16 v0, v105

    iget-wide v15, v0, Lco/vine/android/api/VineUser;->userId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v105

    iget-wide v15, v0, Lco/vine/android/api/VineUser;->orderId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 755
    .end local v21           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v62           #i$:Ljava/util/Iterator;
    .end local v105           #u:Lco/vine/android/api/VineUser;
    .end local v106           #url:Ljava/lang/StringBuilder;
    .end local v112           #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    :pswitch_6
    const/16 v78, 0x1

    .line 756
    goto/16 :goto_9

    .line 759
    :pswitch_7
    const/4 v5, 0x1

    const/4 v12, 0x2

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I

    move-result v72

    .line 761
    .restart local v72       #nextPage:I
    if-lez v72, :cond_14

    .line 762
    move/from16 v78, v72

    goto/16 :goto_9

    .line 767
    .end local v72           #nextPage:I
    :pswitch_8
    const/4 v5, 0x1

    const/4 v12, 0x2

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I

    move-result v85

    .line 769
    .restart local v85       #previous:I
    if-lez v85, :cond_14

    .line 770
    move/from16 v78, v85

    goto/16 :goto_9

    .line 797
    .end local v85           #previous:I
    .restart local v21       #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v62       #i$:Ljava/util/Iterator;
    .restart local v106       #url:Ljava/lang/StringBuilder;
    .restart local v112       #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    :cond_15
    move-object/from16 v0, v112

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v112

    iget v0, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move/from16 v19, v0

    move-object/from16 v0, v112

    iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move/from16 v20, v0

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 800
    const-string v5, "count"

    move-object/from16 v0, v112

    iget v12, v0, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 801
    const-string v5, "next_page"

    move-object/from16 v0, v112

    iget v12, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 802
    const-string v5, "previous_page"

    move-object/from16 v0, v112

    iget v12, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 804
    .end local v21           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v62           #i$:Ljava/util/Iterator;
    :cond_16
    move-object/from16 v0, v112

    iget v5, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    if-gtz v5, :cond_0

    .line 805
    const/4 v5, 0x2

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const-string v15, "order_id ASC"

    invoke-virtual {v11, v5, v12, v15}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 814
    .end local v9           #userId:J
    .end local v78           #page:I
    .end local v79           #pageType:I
    .end local v106           #url:Ljava/lang/StringBuilder;
    .end local v112           #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    :sswitch_b
    const-string v5, "profile_id"

    const-wide/16 v15, 0x0

    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 815
    .restart local v9       #userId:J
    const-string v5, "page_type"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v79

    .line 816
    .restart local v79       #pageType:I
    const-string v5, "page"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v78

    .line 818
    .restart local v78       #page:I
    packed-switch v79, :pswitch_data_4

    .line 844
    :cond_17
    :goto_b
    const-wide/16 v15, 0x0

    cmp-long v5, v9, v15

    if-lez v5, :cond_0

    .line 845
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "following"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 847
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const-string v5, "page"

    move-object/from16 v0, v106

    move/from16 v1, v78

    invoke-static {v0, v5, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 848
    const-string v5, "size"

    const/16 v12, 0x14

    move-object/from16 v0, v106

    invoke-static {v0, v5, v12}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 850
    const/4 v5, 0x3

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 852
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 855
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 856
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Lco/vine/android/api/VinePagedData;

    .line 857
    .restart local v112       #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    move-object/from16 v0, v112

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    if-eqz v5, :cond_19

    .line 858
    new-instance v21, Ljava/util/HashMap;

    move-object/from16 v0, v112

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 860
    .restart local v21       #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, v112

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Lco/vine/android/api/VineUser;

    .line 861
    .restart local v105       #u:Lco/vine/android/api/VineUser;
    move-object/from16 v0, v105

    iget-wide v15, v0, Lco/vine/android/api/VineUser;->userId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v105

    iget-wide v15, v0, Lco/vine/android/api/VineUser;->orderId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 820
    .end local v21           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v62           #i$:Ljava/util/Iterator;
    .end local v105           #u:Lco/vine/android/api/VineUser;
    .end local v106           #url:Ljava/lang/StringBuilder;
    .end local v112           #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    :pswitch_9
    const/16 v78, 0x1

    .line 821
    goto/16 :goto_b

    .line 824
    :pswitch_a
    const/4 v5, 0x1

    const/4 v12, 0x1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I

    move-result v72

    .line 826
    .restart local v72       #nextPage:I
    if-lez v72, :cond_17

    .line 827
    move/from16 v78, v72

    goto/16 :goto_b

    .line 832
    .end local v72           #nextPage:I
    :pswitch_b
    const/4 v5, 0x1

    const/4 v12, 0x1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I

    move-result v85

    .line 834
    .restart local v85       #previous:I
    if-lez v85, :cond_17

    .line 835
    move/from16 v78, v85

    goto/16 :goto_b

    .line 863
    .end local v85           #previous:I
    .restart local v21       #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v62       #i$:Ljava/util/Iterator;
    .restart local v106       #url:Ljava/lang/StringBuilder;
    .restart local v112       #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    :cond_18
    move-object/from16 v0, v112

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v112

    iget v0, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move/from16 v19, v0

    move-object/from16 v0, v112

    iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move/from16 v20, v0

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 866
    const-string v5, "count"

    move-object/from16 v0, v112

    iget v12, v0, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 867
    const-string v5, "next_page"

    move-object/from16 v0, v112

    iget v12, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 868
    const-string v5, "previous_page"

    move-object/from16 v0, v112

    iget v12, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 870
    .end local v21           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v62           #i$:Ljava/util/Iterator;
    :cond_19
    move-object/from16 v0, v112

    iget v5, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    if-gtz v5, :cond_0

    .line 871
    const/4 v5, 0x1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const-string v15, "order_id ASC"

    invoke-virtual {v11, v5, v12, v15}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 880
    .end local v9           #userId:J
    .end local v78           #page:I
    .end local v79           #pageType:I
    .end local v106           #url:Ljava/lang/StringBuilder;
    .end local v112           #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    :sswitch_c
    const-string v5, "type"

    const/4 v12, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    const-string v5, "size"

    const/16 v12, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    const-string v5, "profile_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v29

    const-string v5, "page_type"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v31

    const-string v5, "user_init"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    move-object/from16 v22, p0

    move-object/from16 v28, v11

    move-object/from16 v33, p3

    invoke-direct/range {v22 .. v33}, Lco/vine/android/service/VineService;->getPosts(JIILjava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;JIZLandroid/os/Bundle;)Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 884
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;

    move-result-object v117

    .end local v117           #vp:Lco/vine/android/api/VineParserReader;
    check-cast v117, Lco/vine/android/api/VineParserReader;

    .line 885
    .restart local v117       #vp:Lco/vine/android/api/VineParserReader;
    goto/16 :goto_0

    .line 888
    :sswitch_d
    const-string v5, "post_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 889
    .restart local v13       #postId:J
    const-wide/16 v15, 0x0

    cmp-long v5, v13, v15

    if-lez v5, :cond_0

    .line 890
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "timelines"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    const-string v16, "posts"

    aput-object v16, v12, v15

    const/4 v15, 0x2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 892
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const/16 v5, 0x8

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 893
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 895
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 896
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Lco/vine/android/api/VinePagedData;

    .line 898
    .local v90, response:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    :try_start_6
    move-object/from16 v0, v90

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x7

    const-string v31, ""

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x1

    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v37}, Lco/vine/android/provider/VineDatabaseHelper;->mergePosts(Ljava/util/Collection;ILjava/lang/String;IIIJZ)Lco/vine/android/provider/DbResponse;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 901
    :catch_4
    move-exception v55

    .line 902
    .local v55, e:Ljava/io/IOException;
    sget-boolean v5, Lco/vine/android/service/VineService;->LOGGABLE:Z

    if-eqz v5, :cond_0

    .line 903
    invoke-virtual/range {v55 .. v55}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 911
    .end local v13           #postId:J
    .end local v55           #e:Ljava/io/IOException;
    .end local v90           #response:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_e
    const-string v5, "post_id"

    const-wide/16 v15, 0x0

    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v29

    const-string v5, "page"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v31

    const-string v5, "size"

    const/16 v12, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v32

    move-object/from16 v28, p0

    move-object/from16 v33, v27

    move-object/from16 v34, v11

    invoke-direct/range {v28 .. v34}, Lco/vine/android/service/VineService;->getComments(JIILjava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;)Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 915
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;

    move-result-object v117

    .end local v117           #vp:Lco/vine/android/api/VineParserReader;
    check-cast v117, Lco/vine/android/api/VineParserReader;

    .line 916
    .restart local v117       #vp:Lco/vine/android/api/VineParserReader;
    goto/16 :goto_0

    .line 919
    :sswitch_f
    const-string v5, "post_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v29

    const-string v5, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v31

    const-string v5, "username"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v5, "comment"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v5, "avatar_url"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v28, p0

    move-object/from16 v36, v27

    move-object/from16 v37, v11

    invoke-direct/range {v28 .. v37}, Lco/vine/android/service/VineService;->postComment(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;)Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 922
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;

    move-result-object v117

    .end local v117           #vp:Lco/vine/android/api/VineParserReader;
    check-cast v117, Lco/vine/android/api/VineParserReader;

    .line 923
    .restart local v117       #vp:Lco/vine/android/api/VineParserReader;
    goto/16 :goto_0

    .line 926
    :sswitch_10
    const-string v5, "post_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v5, "comment_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v15, p0

    move-object/from16 v19, v27

    move-object/from16 v20, v11

    invoke-direct/range {v15 .. v20}, Lco/vine/android/service/VineService;->deleteComment(JLjava/lang/String;Ljava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;)Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 929
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;

    move-result-object v117

    .end local v117           #vp:Lco/vine/android/api/VineParserReader;
    check-cast v117, Lco/vine/android/api/VineParserReader;

    .line 930
    .restart local v117       #vp:Lco/vine/android/api/VineParserReader;
    goto/16 :goto_0

    .line 933
    :sswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lco/vine/android/service/VineService;->getUsersMe(Ljava/lang/String;Landroid/os/Bundle;)Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 934
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;

    move-result-object v117

    .end local v117           #vp:Lco/vine/android/api/VineParserReader;
    check-cast v117, Lco/vine/android/api/VineParserReader;

    .line 935
    .restart local v117       #vp:Lco/vine/android/api/VineParserReader;
    goto/16 :goto_0

    .line 938
    :sswitch_12
    const-string v5, "key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v101

    .line 939
    .local v101, twitterKey:Ljava/lang/String;
    const-string v5, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v102

    .line 941
    .local v102, twitterSecret:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "following"

    aput-object v16, v12, v15

    const/4 v15, 0x3

    const-string v16, "suggested"

    aput-object v16, v12, v15

    const/4 v15, 0x4

    const-string v16, "twitter"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 948
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const/4 v5, 0x3

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 950
    new-instance v80, Ljava/util/ArrayList;

    const/4 v5, 0x2

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 951
    .restart local v80       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    move-object/from16 v0, v101

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    move-object/from16 v0, v102

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v80

    move-object/from16 v2, v117

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 957
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 958
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    .line 959
    .local v29, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    if-eqz v29, :cond_0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 960
    const/16 v30, 0x6

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v34}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 962
    const-string v5, "count"

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 969
    .end local v29           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v101           #twitterKey:Ljava/lang/String;
    .end local v102           #twitterSecret:Ljava/lang/String;
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_13
    const/16 v43, 0x0

    .line 971
    .local v43, addressBook:Ljava/lang/String;
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lco/vine/android/util/Util;->getAddressJson(Landroid/content/ContentResolver;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v43

    .line 976
    :goto_d
    if-nez v43, :cond_1a

    if-eqz v76, :cond_1a

    .line 977
    const/16 v5, 0x3e8

    move-object/from16 v0, v76

    iput v5, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    .line 978
    new-instance v57, Lco/vine/android/api/VineError;

    .end local v57           #error:Lco/vine/android/api/VineError;
    const/16 v5, 0x3e8

    const-string v12, "Could not create json."

    move-object/from16 v0, v57

    invoke-direct {v0, v5, v12}, Lco/vine/android/api/VineError;-><init>(ILjava/lang/String;)V

    .line 979
    .restart local v57       #error:Lco/vine/android/api/VineError;
    goto/16 :goto_0

    .line 972
    :catch_5
    move-exception v55

    .line 973
    .restart local v55       #e:Ljava/io/IOException;
    invoke-virtual/range {v55 .. v55}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 982
    .end local v55           #e:Ljava/io/IOException;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "following"

    aput-object v16, v12, v15

    const/4 v15, 0x3

    const-string v16, "suggested"

    aput-object v16, v12, v15

    const/4 v15, 0x4

    const-string v16, "contacts"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 989
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const/4 v5, 0x3

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 991
    new-instance v80, Ljava/util/ArrayList;

    invoke-direct/range {v80 .. v80}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .restart local v80       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "addressBook"

    move-object/from16 v0, v43

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v80

    move-object/from16 v2, v117

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 998
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 999
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    .line 1000
    .restart local v29       #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    if-eqz v29, :cond_0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1001
    const/16 v30, 0x7

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v34}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 1003
    const-string v5, "count"

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1009
    .end local v29           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    .end local v43           #addressBook:Ljava/lang/String;
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_14
    const-string v5, "type"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v5}, Lco/vine/android/provider/VineDatabaseHelper;->removeUsersByGroup(I)V

    goto/16 :goto_0

    .line 1013
    :sswitch_15
    const-string v5, "follow_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v108

    .line 1014
    .local v108, userIdToFollow:J
    const-string v5, "notify"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v74

    .line 1015
    .local v74, notify:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v108 .. v109}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "followers"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1018
    .restart local v106       #url:Ljava/lang/StringBuilder;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    const/4 v15, 0x0

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v15, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1022
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1025
    const/4 v5, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const-string v15, "order_id ASC"

    invoke-virtual {v11, v5, v12, v15}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1032
    .end local v74           #notify:Z
    .end local v106           #url:Ljava/lang/StringBuilder;
    .end local v108           #userIdToFollow:J
    :sswitch_16
    const-string v5, "follow_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v110

    .line 1033
    .local v110, userToUnfollow:J
    const-string v5, "profile_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v52

    .line 1034
    .local v52, currentProfileId:J
    const-string v5, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v41

    .line 1035
    .local v41, activeUserId:J
    const-string v5, "notify"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v74

    .line 1036
    .restart local v74       #notify:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v110 .. v111}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "followers"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1039
    .restart local v106       #url:Ljava/lang/StringBuilder;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1043
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1044
    cmp-long v5, v52, v41

    if-nez v5, :cond_1b

    const/16 v54, 0x1

    .line 1045
    .local v54, deleteRow:Z
    :goto_e
    move-wide/from16 v0, v110

    move/from16 v2, v54

    move/from16 v3, v74

    invoke-virtual {v11, v0, v1, v2, v3}, Lco/vine/android/provider/VineDatabaseHelper;->removeFollow(JZZ)I

    .line 1046
    const/4 v5, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const-string v15, "order_id ASC"

    invoke-virtual {v11, v5, v12, v15}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1044
    .end local v54           #deleteRow:Z
    :cond_1b
    const/16 v54, 0x0

    goto :goto_e

    .line 1053
    .end local v41           #activeUserId:J
    .end local v52           #currentProfileId:J
    .end local v74           #notify:Z
    .end local v106           #url:Ljava/lang/StringBuilder;
    .end local v110           #userToUnfollow:J
    :sswitch_17
    const-string v5, "post_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1054
    .restart local v13       #postId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "posts"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "likes"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1056
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const/16 v5, 0xa

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1057
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    const/4 v15, 0x0

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v15, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1060
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1061
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Long;

    .line 1063
    .local v64, likeId:Ljava/lang/Long;
    const-string v5, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v68

    .line 1064
    .local v68, meUserId:J
    const-string v5, "username"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1066
    .restart local v6       #username:Ljava/lang/String;
    new-instance v63, Lco/vine/android/api/VineLike;

    invoke-direct/range {v63 .. v63}, Lco/vine/android/api/VineLike;-><init>()V

    .line 1067
    .local v63, like:Lco/vine/android/api/VineLike;
    invoke-virtual/range {v64 .. v64}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-object/from16 v0, v63

    iput-wide v15, v0, Lco/vine/android/api/VineLike;->likeId:J

    .line 1068
    move-wide/from16 v0, v68

    move-object/from16 v2, v63

    iput-wide v0, v2, Lco/vine/android/api/VineLike;->userId:J

    .line 1069
    move-object/from16 v0, v63

    iput-object v6, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    .line 1070
    move-object/from16 v0, v63

    iput-wide v13, v0, Lco/vine/android/api/VineLike;->postId:J

    .line 1072
    move-object/from16 v0, v63

    invoke-virtual {v11, v0}, Lco/vine/android/provider/VineDatabaseHelper;->addLike(Lco/vine/android/api/VineLike;)I

    goto/16 :goto_0

    .line 1077
    .end local v6           #username:Ljava/lang/String;
    .end local v13           #postId:J
    .end local v63           #like:Lco/vine/android/api/VineLike;
    .end local v64           #likeId:Ljava/lang/Long;
    .end local v68           #meUserId:J
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_18
    const-string v5, "post_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1078
    .restart local v13       #postId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "posts"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "likes"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1080
    .restart local v106       #url:Ljava/lang/StringBuilder;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1083
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1084
    move-wide/from16 v0, v23

    invoke-virtual {v11, v13, v14, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->removeLike(JJ)I

    goto/16 :goto_0

    .line 1089
    .end local v13           #postId:J
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_19
    const-string v5, "page_type"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v79

    .line 1090
    .restart local v79       #pageType:I
    const/16 v78, 0x1

    .line 1091
    .restart local v78       #page:I
    packed-switch v79, :pswitch_data_5

    .line 1110
    :cond_1c
    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "notifications"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1113
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const-string v5, "page"

    move-object/from16 v0, v106

    move/from16 v1, v78

    invoke-static {v0, v5, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1114
    const-string v5, "size"

    const/16 v12, 0x14

    move-object/from16 v0, v106

    invoke-static {v0, v5, v12}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1116
    const/16 v5, 0x9

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1118
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1121
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1122
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Lco/vine/android/api/VinePagedData;

    .line 1123
    .local v91, results:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineNotification;>;"
    move-object/from16 v0, v91

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v73, v0

    .line 1124
    .local v73, notifs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineNotification;>;"
    move-object/from16 v0, v91

    iget v5, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, v91

    iget v12, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move-object/from16 v0, v73

    invoke-virtual {v11, v0, v5, v12}, Lco/vine/android/provider/VineDatabaseHelper;->mergeActivity(Ljava/util/Collection;II)I

    .line 1126
    move-object/from16 v0, v91

    iget v5, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    if-gtz v5, :cond_0

    .line 1127
    invoke-virtual {v11}, Lco/vine/android/provider/VineDatabaseHelper;->markLastActivity()V

    goto/16 :goto_0

    .line 1094
    .end local v73           #notifs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineNotification;>;"
    .end local v91           #results:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineNotification;>;"
    .end local v106           #url:Ljava/lang/StringBuilder;
    :pswitch_c
    const/16 v78, 0x1

    .line 1095
    goto :goto_f

    .line 1098
    :pswitch_d
    const/4 v5, 0x3

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I

    move-result v85

    .line 1100
    .restart local v85       #previous:I
    if-lez v85, :cond_1c

    .line 1101
    move/from16 v78, v85

    goto/16 :goto_f

    .line 1133
    .end local v78           #page:I
    .end local v79           #pageType:I
    .end local v85           #previous:I
    :sswitch_1a
    const-string v5, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1134
    .restart local v9       #userId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    const-string v16, "profiles"

    aput-object v16, v12, v15

    const/4 v15, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1137
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const/4 v5, 0x2

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1138
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1141
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1142
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Lco/vine/android/api/VineUser;

    .line 1143
    .restart local v107       #user:Lco/vine/android/api/VineUser;
    const-string v5, "user"

    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 1148
    .end local v9           #userId:J
    .end local v106           #url:Ljava/lang/StringBuilder;
    .end local v107           #user:Lco/vine/android/api/VineUser;
    :sswitch_1b
    const-string v5, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v47

    check-cast v47, Landroid/net/Uri;

    .line 1149
    .local v47, avatarUri:Landroid/net/Uri;
    const/16 v59, 0x0

    .line 1150
    .local v59, f:Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v83

    .line 1151
    .restart local v83       #pictureBucket:Ljava/lang/String;
    if-eqz v47, :cond_1d

    .line 1153
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mMediaUtility:Lco/vine/android/util/MediaUtility;

    move-object/from16 v0, v47

    move-object/from16 v1, v83

    move-object/from16 v2, v51

    invoke-virtual {v5, v0, v1, v2}, Lco/vine/android/util/MediaUtility;->getPhotoUri(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-result-object v59

    .line 1161
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1164
    .restart local v106       #url:Ljava/lang/StringBuilder;
    new-instance v80, Ljava/util/ArrayList;

    if-nez v47, :cond_21

    const/4 v5, 0x5

    :goto_10
    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1167
    .restart local v80       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "username"

    const-string v15, "a_name"

    const-string v16, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "description"

    const-string v15, "desc"

    const-string v16, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "location"

    const-string v15, "location"

    const-string v16, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    invoke-static/range {v51 .. v51}, Lco/vine/android/util/MediaUtility;->getUploadType(Landroid/content/Context;)I

    move-result v70

    .line 1173
    .restart local v70       #mode:I
    packed-switch v70, :pswitch_data_6

    .line 1181
    move-object/from16 v61, v59

    .line 1186
    .restart local v61       #finalAvatarUrl:Ljava/lang/String;
    :goto_11
    if-eqz v47, :cond_1e

    .line 1187
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "avatarUrl"

    move-object/from16 v0, v61

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    :cond_1e
    const-string v5, "email"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1191
    .restart local v56       #email:Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1192
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "email"

    move-object/from16 v0, v56

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    :cond_1f
    const-string v5, "phone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    .line 1196
    .restart local v82       #phone:Ljava/lang/String;
    invoke-static/range {v82 .. v82}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 1197
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "phoneNumber"

    const-string v15, "phone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_20
    const/4 v5, 0x2

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1201
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v80

    move-object/from16 v2, v117

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1204
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1205
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Lco/vine/android/api/VineUser;

    .line 1206
    .restart local v107       #user:Lco/vine/android/api/VineUser;
    const-string v5, "avatar_url"

    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v5, "user"

    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 1154
    .end local v56           #email:Ljava/lang/String;
    .end local v61           #finalAvatarUrl:Ljava/lang/String;
    .end local v70           #mode:I
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v82           #phone:Ljava/lang/String;
    .end local v106           #url:Ljava/lang/StringBuilder;
    .end local v107           #user:Lco/vine/android/api/VineUser;
    :catch_6
    move-exception v55

    .line 1155
    .local v55, e:Ljava/lang/Exception;
    const/16 v96, 0x384

    .line 1156
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v87

    .line 1157
    goto/16 :goto_0

    .line 1164
    .end local v55           #e:Ljava/lang/Exception;
    .restart local v106       #url:Ljava/lang/StringBuilder;
    :cond_21
    const/4 v5, 0x6

    goto/16 :goto_10

    .line 1175
    .restart local v70       #mode:I
    .restart local v80       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :pswitch_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v12}, Lco/vine/android/client/VineAPI;->getAmazonUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    .line 1177
    .restart local v61       #finalAvatarUrl:Ljava/lang/String;
    goto/16 :goto_11

    .line 1212
    .end local v47           #avatarUri:Landroid/net/Uri;
    .end local v59           #f:Ljava/lang/String;
    .end local v61           #finalAvatarUrl:Ljava/lang/String;
    .end local v70           #mode:I
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v83           #pictureBucket:Ljava/lang/String;
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_1c
    const-string v5, "post_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1213
    .restart local v13       #postId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "posts"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "complaints"

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1215
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1217
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    const/4 v15, 0x0

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v15, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1220
    goto/16 :goto_0

    .line 1223
    .end local v13           #postId:J
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_1d
    const-string v5, "time"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide v0, v15

    invoke-virtual {v11, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->cleanUp(J)I

    goto/16 :goto_0

    .line 1227
    :sswitch_1e
    const-string v5, "post_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1228
    .restart local v13       #postId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "posts"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1230
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1231
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1234
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1235
    invoke-virtual {v11, v13, v14}, Lco/vine/android/provider/VineDatabaseHelper;->deletePost(J)I

    goto/16 :goto_0

    .line 1240
    .end local v13           #postId:J
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_1f
    const-string v5, "key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v99

    .line 1241
    .local v99, token:Ljava/lang/String;
    const-string v5, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .line 1242
    .restart local v93       #secret:Ljava/lang/String;
    const-string v5, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1243
    .restart local v9       #userId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1245
    .restart local v106       #url:Ljava/lang/StringBuilder;
    new-instance v80, Ljava/util/ArrayList;

    const/4 v5, 0x3

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1246
    .restart local v80       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    move-object/from16 v0, v99

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    move-object/from16 v0, v93

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterId"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    const/4 v5, 0x1

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1251
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v80

    move-object/from16 v2, v117

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1253
    goto/16 :goto_0

    .line 1256
    .end local v9           #userId:J
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v93           #secret:Ljava/lang/String;
    .end local v99           #token:Ljava/lang/String;
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1258
    .restart local v106       #url:Ljava/lang/StringBuilder;
    new-instance v80, Ljava/util/ArrayList;

    const/4 v5, 0x3

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1259
    .restart local v80       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    const-string v15, ""

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    const-string v15, ""

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterId"

    const-string v15, ""

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    const/4 v5, 0x1

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1263
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v80

    move-object/from16 v2, v117

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1265
    goto/16 :goto_0

    .line 1268
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_21
    const-string v5, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1269
    .restart local v9       #userId:J
    const/4 v5, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v9, v10, v5, v12}, Lco/vine/android/provider/VineDatabaseHelper;->removePostsFromGroupByUser(JILjava/lang/String;)I

    goto/16 :goto_0

    .line 1274
    .end local v9           #userId:J
    :sswitch_22
    invoke-direct/range {p0 .. p0}, Lco/vine/android/service/VineService;->getClientProfile()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1275
    goto/16 :goto_0

    .line 1278
    :sswitch_23
    const-string v5, "post_share_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .line 1279
    .local v84, postShareId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "timelines"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    const-string v16, "posts"

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "s"

    aput-object v16, v12, v15

    const/4 v15, 0x3

    aput-object v84, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1282
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const/16 v5, 0x8

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1283
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v12, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1287
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1288
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Lco/vine/android/api/VinePagedData;

    .line 1289
    .restart local v90       #response:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    const-string v5, "post_id"

    move-object/from16 v0, v90

    iget-wide v15, v0, Lco/vine/android/api/VinePagedData;->anchor:J

    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1294
    .end local v84           #postShareId:Ljava/lang/String;
    .end local v90           #response:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1297
    .restart local v106       #url:Ljava/lang/StringBuilder;
    new-instance v80, Ljava/util/ArrayList;

    const/4 v5, 0x3

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1298
    .restart local v80       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "facebookOauthToken"

    const-string v15, "facebook_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    const/4 v5, 0x1

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1302
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v80

    move-object/from16 v2, v117

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1306
    const-string v12, "Send facebook token result {}."

    if-eqz v76, :cond_22

    move-object/from16 v0, v76

    iget v5, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_12
    invoke-static {v12, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1308
    if-eqz v76, :cond_0

    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1309
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lco/vine/android/client/AppController;->setPendingFacebookToken(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    move-object/from16 v5, v76

    .line 1306
    goto :goto_12

    .line 1314
    .end local v80           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_25
    new-instance v106, Ljava/lang/StringBuilder;

    invoke-static/range {v51 .. v51}, Lco/vine/android/util/EnvUtil;->get(Landroid/content/Context;)Lco/vine/android/util/EnvUtil;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/util/EnvUtil;->getStatusUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v106

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1315
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const/16 v5, 0xf

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1316
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-static {v5, v0, v1, v12}, Lco/vine/android/network/HttpOperation;->createGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1318
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1319
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Lco/vine/android/api/ServerStatus;

    .line 1320
    .local v95, ss:Lco/vine/android/api/ServerStatus;
    const-string v5, "server_status"

    move-object/from16 v0, p3

    move-object/from16 v1, v95

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 1325
    .end local v95           #ss:Lco/vine/android/api/ServerStatus;
    .end local v106           #url:Ljava/lang/StringBuilder;
    :sswitch_26
    const-string v5, "q"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 1326
    .local v86, query:Ljava/lang/String;
    const-string v5, "page_type"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v79

    .line 1327
    .restart local v79       #pageType:I
    const-string v5, "page"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v78

    .line 1329
    .restart local v78       #page:I
    packed-switch v79, :pswitch_data_7

    .line 1355
    :cond_23
    :goto_13
    invoke-static/range {v86 .. v86}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1357
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    const-string v16, "search"

    aput-object v16, v12, v15

    const/4 v15, 0x2

    aput-object v86, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1359
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const-string v5, "page"

    move-object/from16 v0, v106

    move/from16 v1, v78

    invoke-static {v0, v5, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1360
    const-string v5, "size"

    const/16 v12, 0x32

    move-object/from16 v0, v106

    invoke-static {v0, v5, v12}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1362
    const/4 v5, 0x3

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1363
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    move-object/from16 v2, v27

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1367
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1368
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Lco/vine/android/api/VinePagedData;

    .line 1369
    .restart local v112       #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    move-object/from16 v0, v112

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    if-eqz v5, :cond_24

    .line 1370
    move-object/from16 v0, v112

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, v112

    iget v0, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move/from16 v34, v0

    move-object/from16 v0, v112

    iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v30, v11

    invoke-virtual/range {v30 .. v36}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 1372
    const-string v5, "count"

    move-object/from16 v0, v112

    iget v12, v0, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1373
    const-string v5, "next_page"

    move-object/from16 v0, v112

    iget v12, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1374
    const-string v5, "previous_page"

    move-object/from16 v0, v112

    iget v12, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1376
    :cond_24
    move-object/from16 v0, v112

    iget v5, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    if-gtz v5, :cond_0

    .line 1377
    const/16 v5, 0x8

    const/4 v12, 0x0

    const-string v15, "_id DESC"

    invoke-virtual {v11, v5, v12, v15}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1331
    .end local v106           #url:Ljava/lang/StringBuilder;
    .end local v112           #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    :pswitch_f
    const/16 v78, 0x1

    .line 1332
    goto/16 :goto_13

    .line 1335
    :pswitch_10
    const/4 v5, 0x1

    const/16 v12, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I

    move-result v72

    .line 1337
    .restart local v72       #nextPage:I
    if-lez v72, :cond_23

    .line 1338
    move/from16 v78, v72

    goto/16 :goto_13

    .line 1343
    .end local v72           #nextPage:I
    :pswitch_11
    const/4 v5, 0x1

    const/16 v12, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I

    move-result v85

    .line 1345
    .restart local v85       #previous:I
    if-lez v85, :cond_23

    .line 1346
    move/from16 v78, v85

    goto/16 :goto_13

    .line 1384
    .end local v78           #page:I
    .end local v79           #pageType:I
    .end local v85           #previous:I
    .end local v86           #query:Ljava/lang/String;
    :sswitch_27
    const-string v5, "q"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 1385
    .restart local v86       #query:Ljava/lang/String;
    const-string v5, "page_type"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v79

    .line 1386
    .restart local v79       #pageType:I
    const-string v5, "page"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v78

    .line 1388
    .restart local v78       #page:I
    packed-switch v79, :pswitch_data_8

    .line 1412
    :cond_25
    :goto_14
    invoke-static/range {v86 .. v86}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1414
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "tags"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    const-string v16, "search"

    aput-object v16, v12, v15

    const/4 v15, 0x2

    aput-object v86, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v106

    .line 1416
    .restart local v106       #url:Ljava/lang/StringBuilder;
    const-string v5, "page"

    move-object/from16 v0, v106

    move/from16 v1, v78

    invoke-static {v0, v5, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1417
    const-string v5, "size"

    const/16 v12, 0x32

    move-object/from16 v0, v106

    invoke-static {v0, v5, v12}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1419
    const/16 v5, 0xe

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v117

    .line 1420
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    move-object/from16 v2, v27

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v76

    .line 1424
    invoke-virtual/range {v76 .. v76}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1425
    invoke-virtual/range {v117 .. v117}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Lco/vine/android/api/VinePagedData;

    .line 1426
    .local v98, tags:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineTag;>;"
    move-object/from16 v0, v98

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    if-eqz v5, :cond_26

    .line 1427
    move-object/from16 v0, v98

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v0, v98

    iget v12, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, v98

    iget v15, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    invoke-virtual {v11, v5, v12, v15}, Lco/vine/android/provider/VineDatabaseHelper;->mergeSearchedTags(Ljava/util/Collection;II)I

    .line 1428
    const-string v5, "count"

    move-object/from16 v0, v98

    iget v12, v0, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1429
    const-string v5, "next_page"

    move-object/from16 v0, v98

    iget v12, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1430
    const-string v5, "previous_page"

    move-object/from16 v0, v98

    iget v12, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1432
    :cond_26
    move-object/from16 v0, v98

    iget v5, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    if-gtz v5, :cond_0

    .line 1433
    invoke-virtual {v11}, Lco/vine/android/provider/VineDatabaseHelper;->markLastTag()V

    goto/16 :goto_0

    .line 1390
    .end local v98           #tags:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineTag;>;"
    .end local v106           #url:Ljava/lang/StringBuilder;
    :pswitch_12
    const/16 v78, 0x1

    .line 1391
    goto/16 :goto_14

    .line 1394
    :pswitch_13
    const/4 v5, 0x4

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I

    move-result v72

    .line 1395
    .restart local v72       #nextPage:I
    if-lez v72, :cond_25

    .line 1396
    move/from16 v78, v72

    goto/16 :goto_14

    .line 1401
    .end local v72           #nextPage:I
    :pswitch_14
    const/4 v5, 0x4

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I

    move-result v85

    .line 1402
    .restart local v85       #previous:I
    if-lez v85, :cond_25

    .line 1403
    move/from16 v78, v85

    goto/16 :goto_14

    .line 1439
    .end local v78           #page:I
    .end local v79           #pageType:I
    .end local v85           #previous:I
    .end local v86           #query:Ljava/lang/String;
    :sswitch_28
    invoke-virtual {v11}, Lco/vine/android/provider/VineDatabaseHelper;->clearCachedData()V

    .line 1440
    const/16 v96, 0xc8

    .line 1441
    goto/16 :goto_0

    .line 1465
    .end local v11           #dbHelper:Lco/vine/android/provider/VineDatabaseHelper;
    .restart local v58       #errorCode:I
    .restart local v92       #ret:Landroid/os/Bundle;
    :cond_27
    sget-object v5, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;

    iget v5, v5, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    move/from16 v0, v58

    if-eq v0, v5, :cond_28

    sget-object v5, Lco/vine/android/api/VineError$VineKnownErrors;->EXPIRED_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;

    iget v5, v5, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    move/from16 v0, v58

    if-ne v0, v5, :cond_2a

    .line 1467
    :cond_28
    const-string v5, "executionCode"

    const/4 v12, 0x2

    move-object/from16 v0, v92

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1473
    .end local v58           #errorCode:I
    :cond_29
    const-string v5, "statusCode"

    move-object/from16 v0, v92

    move/from16 v1, v96

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1474
    invoke-static/range {v87 .. v87}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1475
    const-string v5, "reasonPhrase"

    move-object/from16 v0, v92

    move-object/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    :cond_2a
    sget-boolean v5, Lco/vine/android/service/VineService;->LOGGABLE:Z

    if-eqz v5, :cond_2b

    .line 1480
    const-string v5, "VineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Action complete: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v96

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v15, 0x20

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v87

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_2b
    const-string v5, "executionCode"

    const/4 v12, 0x1

    move-object/from16 v0, v92

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_11
        0xb -> :sswitch_9
        0xc -> :sswitch_e
        0xd -> :sswitch_c
        0xe -> :sswitch_f
        0xf -> :sswitch_12
        0x10 -> :sswitch_13
        0x11 -> :sswitch_14
        0x12 -> :sswitch_15
        0x13 -> :sswitch_16
        0x14 -> :sswitch_19
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_a
        0x17 -> :sswitch_b
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_1b
        0x1b -> :sswitch_1c
        0x1c -> :sswitch_d
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_10
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x28 -> :sswitch_26
        0x29 -> :sswitch_27
        0x2a -> :sswitch_28
        0x3e8 -> :sswitch_3
    .end sparse-switch

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 487
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 696
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 753
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 818
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 1091
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 1173
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch

    .line 1329
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 1388
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 245
    iget-object v0, p0, Lco/vine/android/service/VineService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 251
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/service/VineService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 252
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x32

    const/high16 v2, 0x4248

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput-object v0, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;

    .line 253
    invoke-static {p0}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    .line 254
    new-instance v0, Lco/vine/android/util/MediaUtility;

    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/vine/android/util/MediaUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/vine/android/service/VineService;->mMediaUtility:Lco/vine/android/util/MediaUtility;

    .line 255
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 260
    .local v4, bundle:Landroid/os/Bundle;
    const-string v0, "ibinder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lco/vine/android/service/VineServiceCallback;

    .line 262
    .local v7, cb:Lco/vine/android/service/VineServiceCallback;
    if-eqz v7, :cond_1

    .line 263
    invoke-virtual {v7}, Lco/vine/android/service/VineServiceCallback;->getResponder()Lco/vine/android/service/VineServiceResponder;

    move-result-object v5

    .line 267
    .local v5, responder:Lco/vine/android/service/VineServiceResponder;
    :goto_0
    sget-object v0, Lco/vine/android/service/VineService;->sActionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 268
    .local v6, action:Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 269
    sget-boolean v0, Lco/vine/android/service/VineService;->LOGGABLE:Z

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "VineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    :goto_1
    const/4 v0, 0x2

    return v0

    .line 265
    .end local v5           #responder:Lco/vine/android/service/VineServiceResponder;
    .end local v6           #action:Ljava/lang/Integer;
    :cond_1
    const/4 v5, 0x0

    .restart local v5       #responder:Lco/vine/android/service/VineServiceResponder;
    goto :goto_0

    .line 272
    .restart local v6       #action:Ljava/lang/Integer;
    :cond_2
    if-nez v4, :cond_3

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent must contain extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_3
    iget-object v8, p0, Lco/vine/android/service/VineService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lco/vine/android/service/VineService$ExecutionRunnable;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lco/vine/android/service/VineService$ExecutionRunnable;-><init>(Lco/vine/android/service/VineService;IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 276
    iget-object v0, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public postAction(Lco/vine/android/service/PendingAction;)V
    .locals 7
    .parameter "action"

    .prologue
    .line 282
    iget-object v6, p0, Lco/vine/android/service/VineService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lco/vine/android/service/VineService$ExecutionRunnable;

    const/4 v2, 0x0

    iget v3, p1, Lco/vine/android/service/PendingAction;->actionCode:I

    iget-object v4, p1, Lco/vine/android/service/PendingAction;->bundle:Landroid/os/Bundle;

    iget-object v5, p1, Lco/vine/android/service/PendingAction;->responder:Lco/vine/android/service/VineServiceResponder;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lco/vine/android/service/VineService$ExecutionRunnable;-><init>(Lco/vine/android/service/VineService;IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method
