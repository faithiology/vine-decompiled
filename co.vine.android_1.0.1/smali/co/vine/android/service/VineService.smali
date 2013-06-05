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

.field public static final ACTION_CODE_CLIENT_PROFILE:I = 0x23

.field public static final ACTION_CODE_CONNECT_TWITTER:I = 0x20

.field public static final ACTION_CODE_DELETE_COMMENT:I = 0x1e

.field public static final ACTION_CODE_DELETE_POST:I = 0x1f

.field public static final ACTION_CODE_DISCONNECT_TWITTER:I = 0x21

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

.field public static final EXTRA_FOLLOW_ID:Ljava/lang/String; = "follow_id"

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

.field public static final EXTRA_REASON_PHRASE:Ljava/lang/String; = "reason_phrase"

.field public static final EXTRA_REFRESH_SESSION:Ljava/lang/String; = "refresh_session"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "rid"

.field public static final EXTRA_RESPONSE_CODE:Ljava/lang/String; = "resp_code"

.field public static final EXTRA_SECRET:Ljava/lang/String; = "secret"

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

.field private static final PARAM_ADDRESS_BOOK:Ljava/lang/String; = "addressBook"

.field private static final PARAM_ANCHOR:Ljava/lang/String; = "anchor"

.field private static final PARAM_AUTHENTICATE:Ljava/lang/String; = "authenticate"

.field private static final PARAM_AVATAR:Ljava/lang/String; = "avatarUrl"

.field private static final PARAM_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final PARAM_EMAIL:Ljava/lang/String; = "email"

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
.field private final mAmazonS3Utility:Lco/vine/android/util/AmazonS3Utility;

.field private mApi:Lco/vine/android/client/VineAPI;

.field private final mBinder:Landroid/os/IBinder;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMainHandler:Landroid/os/Handler;

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

    .line 195
    const-string v0, "VineService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lco/vine/android/service/VineService;->LOGGABLE:Z

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lco/vine/android/service/VineService;->sActionMap:Ljava/util/HashMap;

    .line 219
    sget-object v0, Lco/vine/android/service/VineService;->sActionMap:Ljava/util/HashMap;

    const-string v1, "RESTART_CM"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lco/vine/android/service/VineService;->sActionMap:Ljava/util/HashMap;

    const-string v1, "LOGIN"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 208
    new-instance v0, Lco/vine/android/service/VineService$VineServiceBinder;

    invoke-direct {v0, p0}, Lco/vine/android/service/VineService$VineServiceBinder;-><init>(Lco/vine/android/service/VineService;)V

    iput-object v0, p0, Lco/vine/android/service/VineService;->mBinder:Landroid/os/IBinder;

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lco/vine/android/service/VineService;->mMainHandler:Landroid/os/Handler;

    .line 212
    new-instance v0, Lco/vine/android/util/AmazonS3Utility;

    invoke-direct {v0}, Lco/vine/android/util/AmazonS3Utility;-><init>()V

    iput-object v0, p0, Lco/vine/android/service/VineService;->mAmazonS3Utility:Lco/vine/android/util/AmazonS3Utility;

    .line 1567
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lco/vine/android/service/VineService;->LOGGABLE:Z

    return v0
.end method

.method static synthetic access$100(Lco/vine/android/service/VineService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
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
    .line 1435
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

    .line 1437
    .local v1, url:Ljava/lang/StringBuilder;
    const/4 v3, 0x7

    invoke-static {v3}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v2

    .line 1439
    .local v2, vp:Lco/vine/android/api/VineParserReader;
    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-static {v3, v1, v4, v2, p4}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v0

    .line 1443
    .local v0, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v0}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1444
    invoke-virtual {p5, p3}, Lco/vine/android/provider/VineDatabaseHelper;->deleteComment(Ljava/lang/String;)I

    .line 1446
    :cond_0
    return-object v0
.end method

.method private getClientProfile()Lco/vine/android/network/HttpOperation;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1450
    iget-object v4, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v4}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "clientprofiles"

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1451
    .local v2, url:Ljava/lang/StringBuilder;
    const-string v4, "model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v4, v6}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const-string v4, "device"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2, v4, v6}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-string v4, "sdkVersion"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2, v4, v6}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1454
    const-string v6, "memory"

    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lco/vine/android/service/VineService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v4

    invoke-static {v2, v6, v4}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1455
    const/16 v4, 0xd

    invoke-static {v4}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v3

    .line 1457
    .local v3, vp:Lco/vine/android/api/VineParserReader;
    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v4

    iget-object v6, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-static {v4, v2, v3, v6}, Lco/vine/android/network/HttpOperation;->createGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v4

    invoke-virtual {v4}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v1

    .line 1459
    .local v1, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v1}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1460
    invoke-virtual {v3}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1461
    .local v0, object:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1462
    const-string v4, "Got client profile {}."

    invoke-static {v4, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1463
    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->update(Landroid/content/Context;Lorg/json/JSONObject;)Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    .line 1470
    .end local v0           #object:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 1465
    .restart local v0       #object:Lorg/json/JSONObject;
    :cond_0
    const-string v4, "Error getting client profile."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1468
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

    .line 1475
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

    .line 1477
    .local v2, url:Ljava/lang/StringBuilder;
    const-string v4, "page"

    invoke-static {v2, v4, p3}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1478
    const-string v4, "size"

    invoke-static {v2, v4, p4}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1480
    const/4 v4, 0x6

    invoke-static {v4}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v3

    .line 1482
    .local v3, vp:Lco/vine/android/api/VineParserReader;
    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-static {v4, v2, v5, v3, p5}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v4

    invoke-virtual {v4}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v1

    .line 1485
    .local v1, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v1}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1486
    invoke-virtual {v3}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VinePagedData;

    .line 1487
    .local v0, comments:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineComment;>;"
    iget-object v4, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {p6, v4, p1, p2, v8}, Lco/vine/android/provider/VineDatabaseHelper;->mergeComments(Ljava/util/Collection;JZ)I

    .line 1489
    .end local v0           #comments:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineComment;>;"
    :cond_0
    return-object v1
.end method

.method private getPosts(JIILjava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;JIZLandroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
    .locals 24
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
    .line 1299
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v3}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v14

    .line 1301
    .local v14, base:Ljava/lang/String;
    const-string v3, "tag_name"

    move-object/from16 v0, p11

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1303
    .local v6, tag:Ljava/lang/String;
    if-nez v6, :cond_0

    const/4 v3, 0x6

    move/from16 v0, p3

    if-eq v0, v3, :cond_0

    .line 1304
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 1306
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 1345
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

    .line 1308
    :pswitch_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "timelines"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "graph"

    aput-object v5, v3, v4

    invoke-static {v14, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1310
    .local v22, url:Ljava/lang/StringBuilder;
    const/16 v20, 0x2

    .line 1350
    .local v20, pageCursorKind:I
    :goto_0
    packed-switch p9, :pswitch_data_1

    .line 1375
    :cond_1
    :goto_1
    const-string v3, "size"

    move-object/from16 v0, v22

    move/from16 v1, p4

    invoke-static {v0, v3, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1377
    const/16 v3, 0x8

    invoke-static {v3}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v23

    .line 1379
    .local v23, vp:Lco/vine/android/api/VineParserReader;
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    invoke-static {v3, v0, v4, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v19

    .line 1382
    .local v19, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1383
    invoke-virtual/range {v23 .. v23}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lco/vine/android/api/VinePagedData;

    .line 1385
    .local v16, feedItems:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    :try_start_0
    move-object/from16 v0, v16

    iget-object v4, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget v7, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, v16

    iget v8, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move-object/from16 v0, v16

    iget-wide v9, v0, Lco/vine/android/api/VinePagedData;->anchor:J

    move-object/from16 v3, p6

    move/from16 v5, p3

    move/from16 v11, p10

    invoke-virtual/range {v3 .. v11}, Lco/vine/android/provider/VineDatabaseHelper;->mergePosts(Ljava/util/Collection;ILjava/lang/String;IIJZ)Lco/vine/android/provider/DbResponse;

    move-result-object v21

    .line 1388
    .local v21, response:Lco/vine/android/provider/DbResponse;
    const-string v3, "count"

    move-object/from16 v0, v16

    iget-object v4, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p11

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1390
    move-object/from16 v0, v16

    iget v3, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    if-gtz v3, :cond_2

    .line 1391
    move-object/from16 v0, p6

    move/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Lco/vine/android/provider/VineDatabaseHelper;->markLastPost(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    .end local v16           #feedItems:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    .end local v21           #response:Lco/vine/android/provider/DbResponse;
    :cond_2
    :goto_2
    return-object v19

    .line 1314
    .end local v19           #op:Lco/vine/android/network/HttpOperation;
    .end local v20           #pageCursorKind:I
    .end local v22           #url:Ljava/lang/StringBuilder;
    .end local v23           #vp:Lco/vine/android/api/VineParserReader;
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

    invoke-static {v14, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1316
    .restart local v22       #url:Ljava/lang/StringBuilder;
    const/16 v20, 0x2

    .line 1317
    .restart local v20       #pageCursorKind:I
    goto/16 :goto_0

    .line 1320
    .end local v20           #pageCursorKind:I
    .end local v22           #url:Ljava/lang/StringBuilder;
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

    invoke-static {v14, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1322
    .restart local v22       #url:Ljava/lang/StringBuilder;
    const/16 v20, 0x1

    .line 1323
    .restart local v20       #pageCursorKind:I
    goto/16 :goto_0

    .line 1326
    .end local v20           #pageCursorKind:I
    .end local v22           #url:Ljava/lang/StringBuilder;
    :pswitch_3
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "timelines"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "promoted"

    aput-object v5, v3, v4

    invoke-static {v14, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1328
    .restart local v22       #url:Ljava/lang/StringBuilder;
    const/16 v20, 0x2

    .line 1330
    .restart local v20       #pageCursorKind:I
    goto/16 :goto_0

    .line 1333
    .end local v20           #pageCursorKind:I
    .end local v22           #url:Ljava/lang/StringBuilder;
    :pswitch_4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "timelines"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "popular"

    aput-object v5, v3, v4

    invoke-static {v14, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1335
    .restart local v22       #url:Ljava/lang/StringBuilder;
    const/16 v20, 0x2

    .line 1336
    .restart local v20       #pageCursorKind:I
    goto/16 :goto_0

    .line 1339
    .end local v20           #pageCursorKind:I
    .end local v22           #url:Ljava/lang/StringBuilder;
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

    invoke-static {v14, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1341
    .restart local v22       #url:Ljava/lang/StringBuilder;
    const/16 v20, 0x2

    .line 1342
    .restart local v20       #pageCursorKind:I
    goto/16 :goto_0

    .line 1352
    :pswitch_6
    const-string v3, "page"

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-static {v0, v3, v4}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1358
    :pswitch_7
    const-string v3, "page"

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-static {v0, v3, v4}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1362
    :pswitch_8
    const/4 v3, 0x2

    move-object/from16 v0, p6

    move/from16 v1, p3

    invoke-virtual {v0, v3, v1, v6}, Lco/vine/android/provider/VineDatabaseHelper;->getPageAnchor(IILjava/lang/String;)J

    move-result-wide v12

    .line 1364
    .local v12, anchor:J
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-lez v3, :cond_3

    .line 1365
    const-string v3, "anchor"

    move-object/from16 v0, v22

    invoke-static {v0, v3, v12, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 1367
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v20

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v6, v3}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v17, v0

    .line 1368
    .local v17, nextPage:J
    const-wide/16 v3, 0x0

    cmp-long v3, v17, v3

    if-lez v3, :cond_1

    .line 1369
    const-string v3, "page"

    move-object/from16 v0, v22

    move-wide/from16 v1, v17

    invoke-static {v0, v3, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 1393
    .end local v12           #anchor:J
    .end local v17           #nextPage:J
    .restart local v16       #feedItems:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    .restart local v19       #op:Lco/vine/android/network/HttpOperation;
    .restart local v23       #vp:Lco/vine/android/api/VineParserReader;
    :catch_0
    move-exception v15

    .line 1394
    .local v15, e:Ljava/io/IOException;
    sget-boolean v3, Lco/vine/android/service/VineService;->LOGGABLE:Z

    if-eqz v3, :cond_2

    .line 1395
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1306
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

    .line 1350
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

    .line 1493
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

    .line 1496
    .local v1, url:Ljava/lang/StringBuilder;
    invoke-static {v8}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v3

    .line 1498
    .local v3, vp:Lco/vine/android/api/VineParserReader;
    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-static {v4, v1, v5, v3, p1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v4

    invoke-virtual {v4}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v0

    .line 1501
    .local v0, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v0}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1502
    invoke-virtual {v3}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VineUser;

    .line 1503
    .local v2, user:Lco/vine/android/api/VineUser;
    const-string v4, "user"

    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1505
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
    .line 1405
    iget-object v1, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v1}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v10, "posts"

    aput-object v10, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v5, v6

    const/4 v6, 0x2

    const-string v10, "comments"

    aput-object v10, v5, v6

    invoke-static {v1, v5}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1408
    .local v2, url:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    .local v3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "userId"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "comment"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    const/4 v1, 0x7

    invoke-static {v1}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v4

    .line 1414
    .local v4, vp:Lco/vine/android/api/VineParserReader;
    invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v1

    iget-object v5, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v6, p8

    invoke-static/range {v1 .. v6}, Lco/vine/android/network/HttpOperation;->createSignedPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v8

    .line 1418
    .local v8, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v8}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    invoke-virtual {v4}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/vine/android/api/VineComment;

    .line 1420
    .local v9, vc:Lco/vine/android/api/VineComment;
    move-object/from16 v0, p6

    iput-object v0, v9, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    .line 1421
    iput-wide p1, v9, Lco/vine/android/api/VineComment;->postId:J

    .line 1422
    iput-wide p3, v9, Lco/vine/android/api/VineComment;->userId:J

    .line 1423
    move-object/from16 v0, p5

    iput-object v0, v9, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    .line 1424
    move-object/from16 v0, p7

    iput-object v0, v9, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    .line 1426
    new-instance v7, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1427
    .local v7, comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineComment;>;"
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1428
    const/4 v1, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v7, p1, p2, v1}, Lco/vine/android/provider/VineDatabaseHelper;->mergeComments(Ljava/util/Collection;JZ)I

    .line 1431
    .end local v7           #comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineComment;>;"
    .end local v9           #vc:Lco/vine/android/api/VineComment;
    :cond_0
    return-object v8
.end method


# virtual methods
.method attemptStop(I)V
    .locals 6
    .parameter "startId"

    .prologue
    .line 1516
    iget-object v3, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
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

    .line 1520
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1530
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :goto_0
    return-void

    .line 1526
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

    .line 1527
    .local v2, key:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lco/vine/android/service/VineService;->stopSelf(I)V

    goto :goto_1

    .line 1529
    .end local v2           #key:Ljava/lang/Integer;
    :cond_2
    iget-object v3, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0
.end method

.method executeAction(IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)Landroid/os/Bundle;
    .locals 112
    .parameter "startId"
    .parameter "actionCode"
    .parameter "b"
    .parameter "responder"

    .prologue
    .line 275
    const-string v5, "s_key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 276
    .local v27, key:Ljava/lang/String;
    const-string v5, "a_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 277
    .local v40, accountName:Ljava/lang/String;
    const-string v5, "s_owner_id"

    const-wide/16 v25, 0x0

    move-object/from16 v0, p3

    move-wide/from16 v1, v25

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    .line 278
    .local v23, sessionOwnerId:J
    invoke-static/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;

    move-result-object v11

    .line 280
    .local v11, dbHelper:Lco/vine/android/provider/VineDatabaseHelper;
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v51

    .line 282
    .local v51, context:Landroid/content/Context;
    const/16 v92, 0x0

    .line 283
    .local v92, statusCode:I
    const/16 v84, 0x0

    .line 284
    .local v84, reasonPhrase:Ljava/lang/String;
    const/16 v75, 0x0

    .line 285
    .local v75, op:Lco/vine/android/network/HttpOperation;
    const/16 v57, 0x0

    .line 286
    .local v57, error:Lco/vine/android/api/VineError;
    const/16 v19, 0x0

    .line 288
    .local v19, vp:Lco/vine/android/api/VineParserReader;
    sparse-switch p2, :sswitch_data_0

    .line 1257
    .end local v11           #dbHelper:Lco/vine/android/provider/VineDatabaseHelper;
    :cond_0
    :goto_0
    new-instance v89, Landroid/os/Bundle;

    invoke-direct/range {v89 .. v89}, Landroid/os/Bundle;-><init>()V

    .line 1258
    .local v89, ret:Landroid/os/Bundle;
    if-eqz v75, :cond_26

    .line 1259
    move-object/from16 v0, v75

    iget v0, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    move/from16 v92, v0

    .line 1260
    const-string v5, "statusCode"

    move-object/from16 v0, v89

    move/from16 v1, v92

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1261
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-nez v5, :cond_27

    if-eqz v19, :cond_27

    if-nez v57, :cond_27

    .line 1262
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v57

    .end local v57           #error:Lco/vine/android/api/VineError;
    check-cast v57, Lco/vine/android/api/VineError;

    .line 1263
    .restart local v57       #error:Lco/vine/android/api/VineError;
    if-eqz v57, :cond_27

    .line 1264
    move-object/from16 v0, v57

    iget-object v0, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    move-object/from16 v84, v0

    .line 1267
    move-object/from16 v0, v57

    iget v0, v0, Lco/vine/android/api/VineError;->errorCode:I

    move/from16 v58, v0

    .line 1268
    .local v58, errorCode:I
    sget-object v5, Lco/vine/android/api/VineError$VineKnownErrors;->BAD_CREDENTIALS:Lco/vine/android/api/VineError$VineKnownErrors;

    iget v5, v5, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    move/from16 v0, v58

    if-eq v0, v5, :cond_1

    sget-object v5, Lco/vine/android/api/VineError$VineKnownErrors;->REQUIRES_LOGIN:Lco/vine/android/api/VineError$VineKnownErrors;

    iget v5, v5, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    move/from16 v0, v58

    if-ne v0, v5, :cond_24

    .line 1271
    :cond_1
    const-string v5, "executionCode"

    const/4 v12, 0x3

    move-object/from16 v0, v89

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1272
    const-string v5, "reasonPhrase"

    move-object/from16 v0, v89

    move-object/from16 v1, v84

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    .end local v58           #errorCode:I
    :goto_1
    return-object v89

    .line 290
    .end local v89           #ret:Landroid/os/Bundle;
    .restart local v11       #dbHelper:Lco/vine/android/provider/VineDatabaseHelper;
    :sswitch_0
    const-string v5, "login"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lco/vine/android/api/VineLogin;

    .line 291
    .local v4, login:Lco/vine/android/api/VineLogin;
    const-string v5, "pass"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .line 292
    .local v79, password:Ljava/lang/String;
    invoke-static {}, Lco/vine/android/api/VineParserReader;->createLoginReader()Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 293
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v18, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v5, v4, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static/range {v79 .. v79}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 295
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "username"

    iget-object v15, v4, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "password"

    move-object/from16 v0, v79

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_2
    iget-object v5, v4, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-wide v0, v4, Lco/vine/android/api/VineLogin;->twitterUserId:J

    move-wide/from16 v25, v0

    const-wide/16 v30, 0x0

    cmp-long v5, v25, v30

    if-lez v5, :cond_3

    .line 302
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    iget-object v15, v4, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    iget-object v15, v4, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterId"

    iget-wide v0, v4, Lco/vine/android/api/VineLogin;->twitterUserId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
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

    move-result-object v16

    .line 310
    .local v16, url:Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v5, v0, v1, v2, v12}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 314
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 315
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Lco/vine/android/api/VineLogin;

    .line 316
    .local v110, vl:Lco/vine/android/api/VineLogin;
    move-object/from16 v0, v110

    iget-object v5, v0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    move-object/from16 v0, v110

    iput-object v5, v0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    .line 317
    iget-object v5, v4, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    move-object/from16 v0, v110

    iput-object v5, v0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    .line 318
    const-string v5, "a_name"

    move-object/from16 v0, v110

    iget-object v12, v0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v5, "login"

    move-object/from16 v0, p3

    move-object/from16 v1, v110

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    const-string v17, "me"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v108

    .line 324
    .local v108, usersMeUrl:Ljava/lang/StringBuilder;
    const/4 v5, 0x2

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 325
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v110

    iget-object v15, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, v108

    move-object/from16 v1, v19

    invoke-static {v5, v0, v12, v1, v15}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 328
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lco/vine/android/api/VineUser;

    .line 330
    .local v67, me:Lco/vine/android/api/VineUser;
    const-string v5, "avatar_url"

    move-object/from16 v0, v67

    iget-object v12, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v5, "desc"

    move-object/from16 v0, v67

    iget-object v12, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
    .end local v67           #me:Lco/vine/android/api/VineUser;
    .end local v108           #usersMeUrl:Ljava/lang/StringBuilder;
    .end local v110           #vl:Lco/vine/android/api/VineLogin;
    :cond_4
    new-instance v89, Landroid/os/Bundle;

    invoke-direct/range {v89 .. v89}, Landroid/os/Bundle;-><init>()V

    .line 335
    .restart local v89       #ret:Landroid/os/Bundle;
    const-string v5, "statusCode"

    move-object/from16 v0, v75

    iget v12, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    move-object/from16 v0, v89

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v57

    .end local v57           #error:Lco/vine/android/api/VineError;
    check-cast v57, Lco/vine/android/api/VineError;

    .line 337
    .restart local v57       #error:Lco/vine/android/api/VineError;
    if-eqz v57, :cond_5

    .line 338
    const-string v5, "reasonPhrase"

    move-object/from16 v0, v57

    iget-object v12, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    move-object/from16 v0, v89

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :goto_2
    const-string v5, "executionCode"

    const/4 v12, 0x1

    move-object/from16 v0, v89

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 340
    :cond_5
    const-string v5, "reasonPhrase"

    const v12, 0x7f080048

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v89

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 348
    .end local v4           #login:Lco/vine/android/api/VineLogin;
    .end local v16           #url:Ljava/lang/String;
    .end local v18           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v79           #password:Ljava/lang/String;
    .end local v89           #ret:Landroid/os/Bundle;
    :sswitch_1
    invoke-virtual {v11}, Lco/vine/android/provider/VineDatabaseHelper;->clearAllData()V

    goto/16 :goto_0

    .line 352
    :sswitch_2
    const-string v5, "a_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 353
    .local v70, name:Ljava/lang/String;
    const-string v5, "login"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 354
    .local v56, email:Ljava/lang/String;
    const-string v5, "pass"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .line 355
    .restart local v79       #password:Ljava/lang/String;
    const-string v5, "phone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 356
    .local v80, phone:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v46

    check-cast v46, Landroid/net/Uri;

    .line 357
    .local v46, avatarFileUri:Landroid/net/Uri;
    const-string v5, "t_user"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v99

    check-cast v99, Lco/vine/android/api/TwitterUser;

    .line 359
    .local v99, twitterUser:Lco/vine/android/api/TwitterUser;
    invoke-static/range {v51 .. v51}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v81

    .line 362
    .local v81, pictureBucket:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mAmazonS3Utility:Lco/vine/android/util/AmazonS3Utility;

    move-object/from16 v0, v46

    move-object/from16 v1, v81

    move-object/from16 v2, v51

    invoke-virtual {v5, v0, v1, v2}, Lco/vine/android/util/AmazonS3Utility;->getPhotoUri(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v60

    .line 369
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

    move-result-object v16

    .line 371
    .restart local v16       #url:Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 373
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .restart local v18       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    if-eqz v99, :cond_9

    const/16 v98, 0x1

    .line 377
    .local v98, twitterSignup:Z
    :goto_3
    const-string v5, "key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 378
    .local v94, token:Ljava/lang/String;
    const-string v5, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v90

    .line 379
    .local v90, secret:Ljava/lang/String;
    if-eqz v98, :cond_a

    .line 380
    move-object/from16 v0, v99

    iget-object v5, v0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 381
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "username"

    move-object/from16 v0, v99

    iget-object v15, v0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_6
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "location"

    move-object/from16 v0, v99

    iget-object v15, v0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "description"

    move-object/from16 v0, v99

    iget-object v15, v0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterId"

    move-object/from16 v0, v99

    iget-wide v0, v0, Lco/vine/android/api/TwitterUser;->userId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    move-object/from16 v0, v94

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    move-object/from16 v0, v90

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_7
    :goto_4
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "authenticate"

    const-string v15, "true"

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    if-eqz v60, :cond_8

    .line 400
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "avatarUrl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/client/VineAPI;->getAmazonUrl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v81

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v60

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_8
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v5, v0, v1, v2, v12}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 408
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 409
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Lco/vine/android/api/VineLogin;

    .line 410
    .restart local v110       #vl:Lco/vine/android/api/VineLogin;
    if-eqz v98, :cond_b

    .line 411
    move-object/from16 v0, v94

    move-object/from16 v1, v110

    iput-object v0, v1, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    .line 412
    move-object/from16 v0, v90

    move-object/from16 v1, v110

    iput-object v0, v1, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    .line 413
    move-object/from16 v0, v99

    iget-wide v0, v0, Lco/vine/android/api/TwitterUser;->userId:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, v110

    iput-wide v0, v2, Lco/vine/android/api/VineLogin;->twitterUserId:J

    .line 414
    const/4 v5, 0x2

    move-object/from16 v0, v110

    iput v5, v0, Lco/vine/android/api/VineLogin;->loginType:I

    .line 418
    :goto_5
    const-string v5, "login"

    move-object/from16 v0, p3

    move-object/from16 v1, v110

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 419
    const-string v5, "a_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v70

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    const-string v17, "me"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v108

    .line 424
    .restart local v108       #usersMeUrl:Ljava/lang/StringBuilder;
    const/4 v5, 0x2

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 425
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v110

    iget-object v15, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, v108

    move-object/from16 v1, v19

    invoke-static {v5, v0, v12, v1, v15}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 428
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 429
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lco/vine/android/api/VineUser;

    .line 430
    .restart local v67       #me:Lco/vine/android/api/VineUser;
    const-string v5, "avatar_url"

    move-object/from16 v0, v67

    iget-object v12, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v5, "desc"

    move-object/from16 v0, v67

    iget-object v12, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    .end local v16           #url:Ljava/lang/String;
    .end local v18           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v60           #filename:Ljava/lang/String;
    .end local v67           #me:Lco/vine/android/api/VineUser;
    .end local v90           #secret:Ljava/lang/String;
    .end local v94           #token:Ljava/lang/String;
    .end local v98           #twitterSignup:Z
    .end local v108           #usersMeUrl:Ljava/lang/StringBuilder;
    .end local v110           #vl:Lco/vine/android/api/VineLogin;
    :catch_0
    move-exception v55

    .line 364
    .local v55, e:Ljava/lang/Exception;
    const/16 v92, 0x384

    .line 365
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v84

    .line 366
    goto/16 :goto_0

    .line 376
    .end local v55           #e:Ljava/lang/Exception;
    .restart local v16       #url:Ljava/lang/String;
    .restart local v18       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v60       #filename:Ljava/lang/String;
    :cond_9
    const/16 v98, 0x0

    goto/16 :goto_3

    .line 390
    .restart local v90       #secret:Ljava/lang/String;
    .restart local v94       #token:Ljava/lang/String;
    .restart local v98       #twitterSignup:Z
    :cond_a
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "username"

    move-object/from16 v0, v70

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "email"

    move-object/from16 v0, v56

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "password"

    move-object/from16 v0, v79

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-static/range {v80 .. v80}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 394
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "phoneNumber"

    move-object/from16 v0, v80

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 416
    .restart local v110       #vl:Lco/vine/android/api/VineLogin;
    :cond_b
    move-object/from16 v0, v56

    move-object/from16 v1, v110

    iput-object v0, v1, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    goto/16 :goto_5

    .line 434
    .end local v110           #vl:Lco/vine/android/api/VineLogin;
    :cond_c
    new-instance v89, Landroid/os/Bundle;

    invoke-direct/range {v89 .. v89}, Landroid/os/Bundle;-><init>()V

    .line 435
    .restart local v89       #ret:Landroid/os/Bundle;
    const-string v5, "statusCode"

    move-object/from16 v0, v75

    iget v12, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    move-object/from16 v0, v89

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v57

    .end local v57           #error:Lco/vine/android/api/VineError;
    check-cast v57, Lco/vine/android/api/VineError;

    .line 437
    .restart local v57       #error:Lco/vine/android/api/VineError;
    if-eqz v57, :cond_d

    .line 438
    const-string v5, "reasonPhrase"

    move-object/from16 v0, v57

    iget-object v12, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    move-object/from16 v0, v89

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_6
    const-string v5, "executionCode"

    const/4 v12, 0x1

    move-object/from16 v0, v89

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 440
    :cond_d
    const-string v5, "reasonPhrase"

    const v12, 0x7f080048

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v89

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 448
    .end local v16           #url:Ljava/lang/String;
    .end local v18           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v46           #avatarFileUri:Landroid/net/Uri;
    .end local v56           #email:Ljava/lang/String;
    .end local v60           #filename:Ljava/lang/String;
    .end local v70           #name:Ljava/lang/String;
    .end local v79           #password:Ljava/lang/String;
    .end local v80           #phone:Ljava/lang/String;
    .end local v81           #pictureBucket:Ljava/lang/String;
    .end local v89           #ret:Landroid/os/Bundle;
    .end local v90           #secret:Ljava/lang/String;
    .end local v94           #token:Ljava/lang/String;
    .end local v98           #twitterSignup:Z
    .end local v99           #twitterUser:Lco/vine/android/api/TwitterUser;
    :sswitch_3
    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v39

    .line 449
    .local v39, account:Landroid/accounts/Account;
    if-nez v39, :cond_e

    .line 450
    const-string v5, "email"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-static {v0, v5}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v39

    .line 452
    :cond_e
    invoke-static/range {v51 .. v51}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v44

    .line 453
    .local v44, am:Landroid/accounts/AccountManager;
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getLoginType(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v66

    .line 454
    .local v66, loginType:I
    packed-switch v66, :pswitch_data_0

    goto/16 :goto_0

    .line 456
    :pswitch_0
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v56, v0

    .line 457
    .restart local v56       #email:Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getPassword(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v79

    .line 458
    .restart local v79       #password:Ljava/lang/String;
    invoke-static {}, Lco/vine/android/api/VineParserReader;->createLoginReader()Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 460
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .restart local v18       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "username"

    move-object/from16 v0, v56

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "password"

    move-object/from16 v0, v79

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
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

    move-result-object v16

    .line 468
    .restart local v16       #url:Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v5, v0, v1, v2, v12}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 472
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 473
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Lco/vine/android/api/VineLogin;

    .line 474
    .restart local v110       #vl:Lco/vine/android/api/VineLogin;
    move-object/from16 v0, v110

    iget-object v5, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-static {v0, v1, v5}, Lco/vine/android/client/VineAccountHelper;->setSessionKey(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 475
    const-string v5, "s_key"

    move-object/from16 v0, v110

    iget-object v12, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    .end local v16           #url:Ljava/lang/String;
    .end local v18           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v56           #email:Ljava/lang/String;
    .end local v79           #password:Ljava/lang/String;
    .end local v110           #vl:Lco/vine/android/api/VineLogin;
    :pswitch_1
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getTwitterToken(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v94

    .line 481
    .restart local v94       #token:Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getTwitterSecret(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v90

    .line 482
    .restart local v90       #secret:Ljava/lang/String;
    invoke-static {}, Lco/vine/android/api/VineParserReader;->createLoginReader()Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 484
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .restart local v18       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    move-object/from16 v0, v94

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    move-object/from16 v0, v90

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
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

    move-result-object v16

    .line 492
    .restart local v16       #url:Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v5, v0, v1, v2, v12}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 496
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 497
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Lco/vine/android/api/VineLogin;

    .line 498
    .restart local v110       #vl:Lco/vine/android/api/VineLogin;
    move-object/from16 v0, v110

    iget-object v5, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-static {v0, v1, v5}, Lco/vine/android/client/VineAccountHelper;->setSessionKey(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 499
    const-string v5, "s_key"

    move-object/from16 v0, v110

    iget-object v12, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    .end local v16           #url:Ljava/lang/String;
    .end local v18           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v39           #account:Landroid/accounts/Account;
    .end local v44           #am:Landroid/accounts/AccountManager;
    .end local v66           #loginType:I
    .end local v90           #secret:Ljava/lang/String;
    .end local v94           #token:Ljava/lang/String;
    .end local v110           #vl:Lco/vine/android/api/VineLogin;
    :sswitch_4
    const-string v5, "key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 508
    .local v7, tokenKey:Ljava/lang/String;
    const-string v5, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 509
    .local v8, tokenSecret:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 510
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

    move-result-object v91

    .line 517
    .local v91, service:Lorg/scribe/oauth/OAuthService;
    invoke-interface/range {v91 .. v91}, Lorg/scribe/oauth/OAuthService;->getRequestToken()Lorg/scribe/model/Token;

    move-result-object v94

    .line 518
    .local v94, token:Lorg/scribe/model/Token;
    move-object/from16 v0, v91

    move-object/from16 v1, v94

    invoke-interface {v0, v1}, Lorg/scribe/oauth/OAuthService;->getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object v45

    .line 519
    .local v45, authUrl:Ljava/lang/String;
    const-string v5, "load_url"

    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 523
    .end local v7           #tokenKey:Ljava/lang/String;
    .end local v8           #tokenSecret:Ljava/lang/String;
    .end local v45           #authUrl:Ljava/lang/String;
    .end local v49           #callback:Ljava/lang/String;
    .end local v91           #service:Lorg/scribe/oauth/OAuthService;
    .end local v94           #token:Lorg/scribe/model/Token;
    :sswitch_5
    const-string v5, "username"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 524
    .local v6, username:Ljava/lang/String;
    const-string v5, "key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 525
    .restart local v7       #tokenKey:Ljava/lang/String;
    const-string v5, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 526
    .restart local v8       #tokenSecret:Ljava/lang/String;
    const-string v5, "t_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 527
    .local v9, userId:J
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 528
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v50

    .line 532
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

    move-result-object v16

    .line 533
    .restart local v16       #url:Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 535
    .restart local v18       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    invoke-direct {v5, v12, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    invoke-direct {v5, v12, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    const/4 v5, 0x5

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 538
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v50

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v5}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 539
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 540
    const-string v5, "a_exists"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 544
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Lco/vine/android/api/VineLogin;

    .line 545
    .restart local v110       #vl:Lco/vine/android/api/VineLogin;
    move-object/from16 v0, v110

    iput-object v6, v0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    .line 546
    move-object/from16 v0, v110

    iput-object v7, v0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    .line 547
    move-object/from16 v0, v110

    iput-object v8, v0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    .line 548
    move-object/from16 v0, v110

    iput-wide v9, v0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    .line 549
    const/4 v5, 0x2

    move-object/from16 v0, v110

    iput v5, v0, Lco/vine/android/api/VineLogin;->loginType:I

    .line 550
    const-string v5, "login"

    move-object/from16 v0, p3

    move-object/from16 v1, v110

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 553
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

    move-result-object v107

    .line 554
    .local v107, usersMe:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, v107

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v110

    iget-object v15, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    move-object/from16 v0, v50

    move-object/from16 v1, v19

    invoke-static {v0, v5, v12, v1, v15}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 557
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 558
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Lco/vine/android/api/VineUser;

    .line 559
    .local v101, user:Lco/vine/android/api/VineUser;
    const-string v5, "user"

    move-object/from16 v0, p3

    move-object/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 563
    .end local v101           #user:Lco/vine/android/api/VineUser;
    .end local v107           #usersMe:Ljava/lang/String;
    .end local v110           #vl:Lco/vine/android/api/VineLogin;
    :cond_f
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v57

    .end local v57           #error:Lco/vine/android/api/VineError;
    check-cast v57, Lco/vine/android/api/VineError;

    .line 564
    .restart local v57       #error:Lco/vine/android/api/VineError;
    if-nez v57, :cond_10

    .line 565
    const v5, 0x7f080047

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;

    move-result-object v84

    .line 566
    goto/16 :goto_0

    .line 568
    :cond_10
    sget-object v5, Lco/vine/android/api/VineError$VineKnownErrors;->BAD_CREDENTIALS:Lco/vine/android/api/VineError$VineKnownErrors;

    iget v5, v5, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    move-object/from16 v0, v57

    iget v12, v0, Lco/vine/android/api/VineError;->errorCode:I

    if-ne v5, v12, :cond_11

    .line 569
    new-instance v4, Lco/vine/android/api/VineLogin;

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v10}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 571
    .restart local v4       #login:Lco/vine/android/api/VineLogin;
    const-string v5, "login"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 572
    const-string v5, "a_exists"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 574
    .end local v4           #login:Lco/vine/android/api/VineLogin;
    :cond_11
    move-object/from16 v0, v57

    iget-object v0, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    move-object/from16 v84, v0

    goto/16 :goto_0

    .line 581
    .end local v6           #username:Ljava/lang/String;
    .end local v7           #tokenKey:Ljava/lang/String;
    .end local v8           #tokenSecret:Ljava/lang/String;
    .end local v9           #userId:J
    .end local v16           #url:Ljava/lang/String;
    .end local v18           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v50           #client:Lco/vine/android/network/ThreadedHttpOperationClient;
    :sswitch_6
    const-string v5, "login"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v109

    check-cast v109, Lco/vine/android/api/VineLogin;

    .line 582
    .local v109, v:Lco/vine/android/api/VineLogin;
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

    move-result-object v91

    .line 588
    .restart local v91       #service:Lorg/scribe/oauth/OAuthService;
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

    move-object/from16 v0, v109

    iget-wide v0, v0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 589
    .restart local v16       #url:Ljava/lang/String;
    new-instance v85, Lorg/scribe/model/OAuthRequest;

    sget-object v5, Lorg/scribe/model/Verb;->GET:Lorg/scribe/model/Verb;

    move-object/from16 v0, v85

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    .line 590
    .local v85, request:Lorg/scribe/model/OAuthRequest;
    new-instance v94, Lorg/scribe/model/Token;

    move-object/from16 v0, v109

    iget-object v5, v0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    move-object/from16 v0, v109

    iget-object v12, v0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    move-object/from16 v0, v94

    invoke-direct {v0, v5, v12}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .restart local v94       #token:Lorg/scribe/model/Token;
    move-object/from16 v0, v91

    move-object/from16 v1, v94

    move-object/from16 v2, v85

    invoke-interface {v0, v1, v2}, Lorg/scribe/oauth/OAuthService;->signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V

    .line 594
    :try_start_1
    invoke-virtual/range {v85 .. v85}, Lorg/scribe/model/OAuthRequest;->send()Lorg/scribe/model/Response;

    move-result-object v86

    .line 596
    .local v86, response:Lorg/scribe/model/Response;
    invoke-virtual/range {v86 .. v86}, Lorg/scribe/model/Response;->isSuccessful()Z
    :try_end_1
    .catch Lorg/scribe/exceptions/OAuthException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-eqz v5, :cond_0

    .line 598
    :try_start_2
    new-instance v5, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v5}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    invoke-virtual/range {v86 .. v86}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v76

    .line 599
    .local v76, p:Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual/range {v76 .. v76}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 600
    invoke-static/range {v76 .. v76}, Lco/vine/android/api/VineParsers;->parseTwitterUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/TwitterUser;

    move-result-object v93

    .line 602
    .local v93, tUser:Lco/vine/android/api/TwitterUser;
    const-string v5, "t_user"

    move-object/from16 v0, p3

    move-object/from16 v1, v93

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/scribe/exceptions/OAuthException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 603
    .end local v76           #p:Lcom/fasterxml/jackson/core/JsonParser;
    .end local v93           #tUser:Lco/vine/android/api/TwitterUser;
    :catch_1
    move-exception v55

    .line 604
    .local v55, e:Ljava/io/IOException;
    :try_start_3
    sget-boolean v5, Lco/vine/android/service/VineService;->LOGGABLE:Z

    if-eqz v5, :cond_0

    .line 605
    const-string v5, "Failed to parse."

    move-object/from16 v0, v55

    invoke-static {v5, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/scribe/exceptions/OAuthException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 610
    .end local v55           #e:Ljava/io/IOException;
    .end local v86           #response:Lorg/scribe/model/Response;
    :catch_2
    move-exception v74

    .line 611
    .local v74, oAuthException:Lorg/scribe/exceptions/OAuthException;
    const-string v5, "Failed to connect."

    move-object/from16 v0, v74

    invoke-static {v5, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 617
    .end local v16           #url:Ljava/lang/String;
    .end local v74           #oAuthException:Lorg/scribe/exceptions/OAuthException;
    .end local v85           #request:Lorg/scribe/model/OAuthRequest;
    .end local v91           #service:Lorg/scribe/oauth/OAuthService;
    .end local v94           #token:Lorg/scribe/model/Token;
    .end local v109           #v:Lco/vine/android/api/VineLogin;
    :sswitch_7
    const-string v5, "username"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 618
    .restart local v6       #username:Ljava/lang/String;
    const-string v5, "pass"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .line 620
    .restart local v79       #password:Ljava/lang/String;
    new-instance v48, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct/range {v48 .. v48}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    .line 621
    .local v48, builder:Ltwitter4j/conf/ConfigurationBuilder;
    sget-object v5, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 622
    sget-object v5, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 624
    new-instance v5, Ltwitter4j/TwitterFactory;

    invoke-virtual/range {v48 .. v48}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;

    move-result-object v12

    invoke-direct {v5, v12}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    new-instance v12, Ltwitter4j/auth/BasicAuthorization;

    move-object/from16 v0, v79

    invoke-direct {v12, v6, v0}, Ltwitter4j/auth/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v95

    .line 628
    .local v95, twitter:Ltwitter4j/Twitter;
    :try_start_4
    invoke-interface/range {v95 .. v95}, Ltwitter4j/Twitter;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v38

    .line 629
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

    .line 631
    .end local v11           #dbHelper:Lco/vine/android/provider/VineDatabaseHelper;
    .restart local v4       #login:Lco/vine/android/api/VineLogin;
    const-string v5, "login"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 632
    const/16 v92, 0xc8

    .line 641
    const-string v5, "pass"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 633
    .end local v4           #login:Lco/vine/android/api/VineLogin;
    .end local v38           #aToken:Ltwitter4j/auth/AccessToken;
    :catch_3
    move-exception v55

    .line 634
    .local v55, e:Ljava/lang/Exception;
    :try_start_5
    sget-boolean v5, Lco/vine/android/service/VineService;->LOGGABLE:Z

    if-eqz v5, :cond_12

    .line 635
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Exception;->printStackTrace()V

    .line 637
    :cond_12
    const/16 v92, 0x1f4

    .line 638
    const-string v84, "Error with xauth."
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 641
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

    .line 647
    .end local v6           #username:Ljava/lang/String;
    .end local v48           #builder:Ltwitter4j/conf/ConfigurationBuilder;
    .end local v79           #password:Ljava/lang/String;
    .end local v95           #twitter:Ltwitter4j/Twitter;
    .restart local v11       #dbHelper:Lco/vine/android/provider/VineDatabaseHelper;
    :sswitch_8
    const-string v5, "login"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 648
    .restart local v56       #email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    const-string v17, "forgotPassword"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 650
    .local v16, url:Ljava/lang/StringBuilder;
    const-string v5, "email"

    move-object/from16 v0, v16

    move-object/from16 v1, v56

    invoke-static {v0, v5, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const/4 v5, 0x1

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 652
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v5, v0, v1, v12}, Lco/vine/android/network/HttpOperation;->createGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 656
    goto/16 :goto_0

    .line 659
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v56           #email:Ljava/lang/String;
    :sswitch_9
    const-string v5, "post_id"

    const-wide/16 v25, 0x0

    move-object/from16 v0, p3

    move-wide/from16 v1, v25

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 660
    .local v13, postId:J
    const-string v5, "page_type"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v78

    .line 661
    .local v78, pageType:I
    const-string v5, "page"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v77

    .line 663
    .local v77, page:I
    packed-switch v78, :pswitch_data_1

    .line 689
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "posts"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    const/4 v15, 0x2

    const-string v17, "likes"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 692
    .restart local v16       #url:Ljava/lang/StringBuilder;
    const-string v5, "page"

    move-object/from16 v0, v16

    move/from16 v1, v77

    invoke-static {v0, v5, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 693
    const-string v5, "size"

    const/16 v12, 0x14

    move-object/from16 v0, v16

    invoke-static {v0, v5, v12}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 695
    const/16 v5, 0xb

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 696
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 700
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 701
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lco/vine/android/api/VinePagedData;

    .line 702
    .local v65, likes:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineLike;>;"
    move-object/from16 v0, v65

    iget-object v12, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v0, v65

    iget v15, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, v65

    iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move/from16 v16, v0

    .end local v16           #url:Ljava/lang/StringBuilder;
    invoke-virtual/range {v11 .. v16}, Lco/vine/android/provider/VineDatabaseHelper;->mergeLikes(Ljava/util/Collection;JII)I

    .line 703
    const-string v5, "count"

    move-object/from16 v0, v65

    iget v12, v0, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 704
    const-string v5, "next_page"

    move-object/from16 v0, v65

    iget v12, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 705
    const-string v5, "previous_page"

    move-object/from16 v0, v65

    iget v12, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 707
    move-object/from16 v0, v65

    iget v5, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    if-gtz v5, :cond_0

    .line 708
    const/4 v5, 0x5

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 665
    .end local v65           #likes:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineLike;>;"
    :pswitch_2
    const/16 v77, 0x1

    .line 666
    goto/16 :goto_7

    .line 669
    :pswitch_3
    const/4 v5, 0x1

    const/4 v12, 0x5

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I

    move-result v71

    .line 671
    .local v71, nextPage:I
    if-lez v71, :cond_13

    .line 672
    move/from16 v77, v71

    goto/16 :goto_7

    .line 677
    .end local v71           #nextPage:I
    :pswitch_4
    const/4 v5, 0x1

    const/4 v12, 0x5

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I

    move-result v83

    .line 679
    .local v83, previous:I
    if-lez v83, :cond_13

    .line 680
    move/from16 v77, v83

    goto/16 :goto_7

    .line 716
    .end local v13           #postId:J
    .end local v77           #page:I
    .end local v78           #pageType:I
    .end local v83           #previous:I
    :sswitch_a
    const-string v5, "profile_id"

    const-wide/16 v25, 0x0

    move-object/from16 v0, p3

    move-wide/from16 v1, v25

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 717
    .restart local v9       #userId:J
    const-string v5, "page_type"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v78

    .line 718
    .restart local v78       #pageType:I
    const-string v5, "page"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v77

    .line 720
    .restart local v77       #page:I
    packed-switch v78, :pswitch_data_2

    .line 746
    :cond_14
    :goto_8
    const-wide/16 v25, 0x0

    cmp-long v5, v9, v25

    if-lez v5, :cond_0

    .line 747
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    const/4 v15, 0x2

    const-string v17, "followers"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 749
    .restart local v16       #url:Ljava/lang/StringBuilder;
    const-string v5, "page"

    move-object/from16 v0, v16

    move/from16 v1, v77

    invoke-static {v0, v5, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 750
    const-string v5, "size"

    const/16 v12, 0x14

    move-object/from16 v0, v16

    invoke-static {v0, v5, v12}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 751
    const/4 v5, 0x3

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v111

    .line 753
    .end local v19           #vp:Lco/vine/android/api/VineParserReader;
    .local v111, vp:Lco/vine/android/api/VineParserReader;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v111

    move-object/from16 v2, v27

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 756
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 757
    invoke-virtual/range {v111 .. v111}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Lco/vine/android/api/VinePagedData;

    .line 758
    .local v106, users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    move-object/from16 v0, v106

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    if-eqz v5, :cond_16

    .line 759
    new-instance v21, Ljava/util/HashMap;

    move-object/from16 v0, v106

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 761
    .local v21, orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, v106

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .local v62, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v100

    check-cast v100, Lco/vine/android/api/VineUser;

    .line 762
    .local v100, u:Lco/vine/android/api/VineUser;
    move-object/from16 v0, v100

    iget-wide v0, v0, Lco/vine/android/api/VineUser;->userId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v100

    iget-wide v0, v0, Lco/vine/android/api/VineUser;->orderId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 722
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v21           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v62           #i$:Ljava/util/Iterator;
    .end local v100           #u:Lco/vine/android/api/VineUser;
    .end local v106           #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    .end local v111           #vp:Lco/vine/android/api/VineParserReader;
    .restart local v19       #vp:Lco/vine/android/api/VineParserReader;
    :pswitch_5
    const/16 v77, 0x1

    .line 723
    goto/16 :goto_8

    .line 726
    :pswitch_6
    const/4 v5, 0x1

    const/4 v12, 0x2

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I

    move-result v71

    .line 728
    .restart local v71       #nextPage:I
    if-lez v71, :cond_14

    .line 729
    move/from16 v77, v71

    goto/16 :goto_8

    .line 734
    .end local v71           #nextPage:I
    :pswitch_7
    const/4 v5, 0x1

    const/4 v12, 0x2

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I

    move-result v83

    .line 736
    .restart local v83       #previous:I
    if-lez v83, :cond_14

    .line 737
    move/from16 v77, v83

    goto/16 :goto_8

    .line 764
    .end local v19           #vp:Lco/vine/android/api/VineParserReader;
    .end local v83           #previous:I
    .restart local v16       #url:Ljava/lang/StringBuilder;
    .restart local v21       #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v62       #i$:Ljava/util/Iterator;
    .restart local v106       #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    .restart local v111       #vp:Lco/vine/android/api/VineParserReader;
    :cond_15
    move-object/from16 v0, v106

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .end local v16           #url:Ljava/lang/StringBuilder;
    const/16 v17, 0x2

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v106

    iget v0, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move/from16 v19, v0

    move-object/from16 v0, v106

    iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move/from16 v20, v0

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 767
    const-string v5, "count"

    move-object/from16 v0, v106

    iget v12, v0, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    const-string v5, "next_page"

    move-object/from16 v0, v106

    iget v12, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 769
    const-string v5, "previous_page"

    move-object/from16 v0, v106

    iget v12, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 771
    .end local v21           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v62           #i$:Ljava/util/Iterator;
    :cond_16
    move-object/from16 v0, v106

    iget v5, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    if-gtz v5, :cond_17

    .line 772
    const/4 v5, 0x2

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const-string v15, "order_id ASC"

    invoke-virtual {v11, v5, v12, v15}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V

    .end local v106           #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    :cond_17
    move-object/from16 v19, v111

    .line 777
    .end local v111           #vp:Lco/vine/android/api/VineParserReader;
    .restart local v19       #vp:Lco/vine/android/api/VineParserReader;
    goto/16 :goto_0

    .line 781
    .end local v9           #userId:J
    .end local v77           #page:I
    .end local v78           #pageType:I
    :sswitch_b
    const-string v5, "profile_id"

    const-wide/16 v25, 0x0

    move-object/from16 v0, p3

    move-wide/from16 v1, v25

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 782
    .restart local v9       #userId:J
    const-string v5, "page_type"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v78

    .line 783
    .restart local v78       #pageType:I
    const-string v5, "page"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v77

    .line 785
    .restart local v77       #page:I
    packed-switch v78, :pswitch_data_3

    .line 811
    :cond_18
    :goto_a
    const-wide/16 v25, 0x0

    cmp-long v5, v9, v25

    if-lez v5, :cond_0

    .line 812
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    const/4 v15, 0x2

    const-string v17, "following"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 814
    .restart local v16       #url:Ljava/lang/StringBuilder;
    const-string v5, "page"

    move-object/from16 v0, v16

    move/from16 v1, v77

    invoke-static {v0, v5, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 815
    const-string v5, "size"

    const/16 v12, 0x14

    move-object/from16 v0, v16

    invoke-static {v0, v5, v12}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 817
    const/4 v5, 0x3

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v111

    .line 819
    .end local v19           #vp:Lco/vine/android/api/VineParserReader;
    .restart local v111       #vp:Lco/vine/android/api/VineParserReader;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v111

    move-object/from16 v2, v27

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 822
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 823
    invoke-virtual/range {v111 .. v111}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Lco/vine/android/api/VinePagedData;

    .line 824
    .restart local v106       #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    move-object/from16 v0, v106

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    if-eqz v5, :cond_1a

    .line 825
    new-instance v21, Ljava/util/HashMap;

    move-object/from16 v0, v106

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 827
    .restart local v21       #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, v106

    iget-object v5, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v100

    check-cast v100, Lco/vine/android/api/VineUser;

    .line 828
    .restart local v100       #u:Lco/vine/android/api/VineUser;
    move-object/from16 v0, v100

    iget-wide v0, v0, Lco/vine/android/api/VineUser;->userId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v100

    iget-wide v0, v0, Lco/vine/android/api/VineUser;->orderId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 787
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v21           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v62           #i$:Ljava/util/Iterator;
    .end local v100           #u:Lco/vine/android/api/VineUser;
    .end local v106           #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    .end local v111           #vp:Lco/vine/android/api/VineParserReader;
    .restart local v19       #vp:Lco/vine/android/api/VineParserReader;
    :pswitch_8
    const/16 v77, 0x1

    .line 788
    goto/16 :goto_a

    .line 791
    :pswitch_9
    const/4 v5, 0x1

    const/4 v12, 0x1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I

    move-result v71

    .line 793
    .restart local v71       #nextPage:I
    if-lez v71, :cond_18

    .line 794
    move/from16 v77, v71

    goto/16 :goto_a

    .line 799
    .end local v71           #nextPage:I
    :pswitch_a
    const/4 v5, 0x1

    const/4 v12, 0x1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I

    move-result v83

    .line 801
    .restart local v83       #previous:I
    if-lez v83, :cond_18

    .line 802
    move/from16 v77, v83

    goto/16 :goto_a

    .line 830
    .end local v19           #vp:Lco/vine/android/api/VineParserReader;
    .end local v83           #previous:I
    .restart local v16       #url:Ljava/lang/StringBuilder;
    .restart local v21       #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v62       #i$:Ljava/util/Iterator;
    .restart local v106       #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    .restart local v111       #vp:Lco/vine/android/api/VineParserReader;
    :cond_19
    move-object/from16 v0, v106

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .end local v16           #url:Ljava/lang/StringBuilder;
    const/16 v17, 0x1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v106

    iget v0, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move/from16 v19, v0

    move-object/from16 v0, v106

    iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move/from16 v20, v0

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 833
    const-string v5, "count"

    move-object/from16 v0, v106

    iget v12, v0, Lco/vine/android/api/VinePagedData;->count:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 834
    const-string v5, "next_page"

    move-object/from16 v0, v106

    iget v12, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 835
    const-string v5, "previous_page"

    move-object/from16 v0, v106

    iget v12, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 837
    .end local v21           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v62           #i$:Ljava/util/Iterator;
    :cond_1a
    move-object/from16 v0, v106

    iget v5, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    if-gtz v5, :cond_1b

    .line 838
    const/4 v5, 0x1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const-string v15, "order_id ASC"

    invoke-virtual {v11, v5, v12, v15}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V

    .end local v106           #users:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineUser;>;"
    :cond_1b
    move-object/from16 v19, v111

    .line 843
    .end local v111           #vp:Lco/vine/android/api/VineParserReader;
    .restart local v19       #vp:Lco/vine/android/api/VineParserReader;
    goto/16 :goto_0

    .line 847
    .end local v9           #userId:J
    .end local v77           #page:I
    .end local v78           #pageType:I
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

    move-result-object v75

    .line 851
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;

    move-result-object v19

    .end local v19           #vp:Lco/vine/android/api/VineParserReader;
    check-cast v19, Lco/vine/android/api/VineParserReader;

    .line 852
    .restart local v19       #vp:Lco/vine/android/api/VineParserReader;
    goto/16 :goto_0

    .line 855
    :sswitch_d
    const-string v5, "post_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 856
    .restart local v13       #postId:J
    const-wide/16 v25, 0x0

    cmp-long v5, v13, v25

    if-lez v5, :cond_0

    .line 857
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "timelines"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    const-string v17, "posts"

    aput-object v17, v12, v15

    const/4 v15, 0x2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 859
    .restart local v16       #url:Ljava/lang/StringBuilder;
    const/16 v5, 0x8

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 860
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 862
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 863
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Lco/vine/android/api/VinePagedData;

    .line 865
    .local v87, response:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    :try_start_6
    move-object/from16 v0, v87

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x7

    const-string v31, ""

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x1

    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v36}, Lco/vine/android/provider/VineDatabaseHelper;->mergePosts(Ljava/util/Collection;ILjava/lang/String;IIJZ)Lco/vine/android/provider/DbResponse;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 867
    :catch_4
    move-exception v55

    .line 868
    .local v55, e:Ljava/io/IOException;
    sget-boolean v5, Lco/vine/android/service/VineService;->LOGGABLE:Z

    if-eqz v5, :cond_0

    .line 869
    invoke-virtual/range {v55 .. v55}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 877
    .end local v13           #postId:J
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v55           #e:Ljava/io/IOException;
    .end local v87           #response:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    :sswitch_e
    const-string v5, "post_id"

    const-wide/16 v25, 0x0

    move-object/from16 v0, p3

    move-wide/from16 v1, v25

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

    move-result-object v75

    .line 881
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;

    move-result-object v19

    .end local v19           #vp:Lco/vine/android/api/VineParserReader;
    check-cast v19, Lco/vine/android/api/VineParserReader;

    .line 882
    .restart local v19       #vp:Lco/vine/android/api/VineParserReader;
    goto/16 :goto_0

    .line 885
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

    move-result-object v75

    .line 888
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;

    move-result-object v19

    .end local v19           #vp:Lco/vine/android/api/VineParserReader;
    check-cast v19, Lco/vine/android/api/VineParserReader;

    .line 889
    .restart local v19       #vp:Lco/vine/android/api/VineParserReader;
    goto/16 :goto_0

    .line 892
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

    .end local v19           #vp:Lco/vine/android/api/VineParserReader;
    move-result-object v75

    .line 895
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;

    move-result-object v19

    check-cast v19, Lco/vine/android/api/VineParserReader;

    .line 896
    .restart local v19       #vp:Lco/vine/android/api/VineParserReader;
    goto/16 :goto_0

    .line 899
    :sswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lco/vine/android/service/VineService;->getUsersMe(Ljava/lang/String;Landroid/os/Bundle;)Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 900
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;

    move-result-object v19

    .end local v19           #vp:Lco/vine/android/api/VineParserReader;
    check-cast v19, Lco/vine/android/api/VineParserReader;

    .line 901
    .restart local v19       #vp:Lco/vine/android/api/VineParserReader;
    goto/16 :goto_0

    .line 904
    :sswitch_12
    const-string v5, "key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    .line 905
    .local v96, twitterKey:Ljava/lang/String;
    const-string v5, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v97

    .line 907
    .local v97, twitterSecret:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    const/4 v15, 0x2

    const-string v17, "following"

    aput-object v17, v12, v15

    const/4 v15, 0x3

    const-string v17, "suggested"

    aput-object v17, v12, v15

    const/4 v15, 0x4

    const-string v17, "twitter"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 914
    .restart local v16       #url:Ljava/lang/StringBuilder;
    const/4 v5, 0x3

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 916
    new-instance v18, Ljava/util/ArrayList;

    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 917
    .restart local v18       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    move-object/from16 v0, v96

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    move-object/from16 v0, v97

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v17, v0

    move-object/from16 v20, v27

    invoke-static/range {v15 .. v20}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 924
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 925
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    .line 926
    .local v29, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    if-eqz v29, :cond_0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 927
    const/16 v30, 0x6

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v34}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 929
    const-string v5, "count"

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 936
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v18           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v29           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    .end local v96           #twitterKey:Ljava/lang/String;
    .end local v97           #twitterSecret:Ljava/lang/String;
    :sswitch_13
    const/16 v43, 0x0

    .line 938
    .local v43, addressBook:Ljava/lang/String;
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lco/vine/android/util/Util;->getAddressJson(Landroid/content/ContentResolver;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v43

    .line 943
    :goto_c
    if-nez v43, :cond_1c

    if-eqz v75, :cond_1c

    .line 944
    const/16 v5, 0x3e8

    move-object/from16 v0, v75

    iput v5, v0, Lco/vine/android/network/HttpOperation;->statusCode:I

    .line 945
    new-instance v57, Lco/vine/android/api/VineError;

    .end local v57           #error:Lco/vine/android/api/VineError;
    const/16 v5, 0x3e8

    const-string v12, "Could not create json."

    move-object/from16 v0, v57

    invoke-direct {v0, v5, v12}, Lco/vine/android/api/VineError;-><init>(ILjava/lang/String;)V

    .line 946
    .restart local v57       #error:Lco/vine/android/api/VineError;
    goto/16 :goto_0

    .line 939
    :catch_5
    move-exception v55

    .line 940
    .restart local v55       #e:Ljava/io/IOException;
    invoke-virtual/range {v55 .. v55}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 949
    .end local v55           #e:Ljava/io/IOException;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    const/4 v15, 0x2

    const-string v17, "following"

    aput-object v17, v12, v15

    const/4 v15, 0x3

    const-string v17, "suggested"

    aput-object v17, v12, v15

    const/4 v15, 0x4

    const-string v17, "contacts"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 956
    .restart local v16       #url:Ljava/lang/StringBuilder;
    const/4 v5, 0x3

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 958
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .restart local v18       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "addressBook"

    move-object/from16 v0, v43

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v17, v0

    move-object/from16 v20, v27

    invoke-static/range {v15 .. v20}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 966
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 967
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    .line 968
    .restart local v29       #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    if-eqz v29, :cond_0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 969
    const/16 v30, 0x7

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v34}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILjava/util/Map;)I

    .line 971
    const-string v5, "count"

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 977
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v18           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v29           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    .end local v43           #addressBook:Ljava/lang/String;
    :sswitch_14
    const-string v5, "type"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v5}, Lco/vine/android/provider/VineDatabaseHelper;->removeUsersByGroup(I)V

    goto/16 :goto_0

    .line 981
    :sswitch_15
    const-string v5, "follow_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v102

    .line 982
    .local v102, userIdToFollow:J
    const-string v5, "notify"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v73

    .line 983
    .local v73, notify:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v102 .. v103}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    const/4 v15, 0x2

    const-string v17, "followers"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 986
    .restart local v16       #url:Ljava/lang/StringBuilder;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v31, v16

    move-object/from16 v34, v19

    move-object/from16 v35, v27

    invoke-static/range {v30 .. v35}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 990
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 993
    const/4 v5, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const-string v15, "order_id ASC"

    invoke-virtual {v11, v5, v12, v15}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1000
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v73           #notify:Z
    .end local v102           #userIdToFollow:J
    :sswitch_16
    const-string v5, "follow_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v104

    .line 1001
    .local v104, userToUnfollow:J
    const-string v5, "profile_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v52

    .line 1002
    .local v52, currentProfileId:J
    const-string v5, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v41

    .line 1003
    .local v41, activeUserId:J
    const-string v5, "notify"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v73

    .line 1004
    .restart local v73       #notify:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v104 .. v105}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    const/4 v15, 0x2

    const-string v17, "followers"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1007
    .restart local v16       #url:Ljava/lang/StringBuilder;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 1011
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1012
    cmp-long v5, v52, v41

    if-nez v5, :cond_1d

    const/16 v54, 0x1

    .line 1013
    .local v54, deleteRow:Z
    :goto_d
    move-wide/from16 v0, v104

    move/from16 v2, v54

    move/from16 v3, v73

    invoke-virtual {v11, v0, v1, v2, v3}, Lco/vine/android/provider/VineDatabaseHelper;->removeFollow(JZZ)I

    .line 1014
    const/4 v5, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const-string v15, "order_id ASC"

    invoke-virtual {v11, v5, v12, v15}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1012
    .end local v54           #deleteRow:Z
    :cond_1d
    const/16 v54, 0x0

    goto :goto_d

    .line 1021
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v41           #activeUserId:J
    .end local v52           #currentProfileId:J
    .end local v73           #notify:Z
    .end local v104           #userToUnfollow:J
    :sswitch_17
    const-string v5, "post_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1022
    .restart local v13       #postId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "posts"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    const/4 v15, 0x2

    const-string v17, "likes"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1024
    .restart local v16       #url:Ljava/lang/StringBuilder;
    const/16 v5, 0xa

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 1025
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v31, v16

    move-object/from16 v34, v19

    move-object/from16 v35, v27

    invoke-static/range {v30 .. v35}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 1028
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1029
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Long;

    .line 1031
    .local v64, likeId:Ljava/lang/Long;
    const-string v5, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v68

    .line 1032
    .local v68, meUserId:J
    const-string v5, "username"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1034
    .restart local v6       #username:Ljava/lang/String;
    new-instance v63, Lco/vine/android/api/VineLike;

    invoke-direct/range {v63 .. v63}, Lco/vine/android/api/VineLike;-><init>()V

    .line 1035
    .local v63, like:Lco/vine/android/api/VineLike;
    invoke-virtual/range {v64 .. v64}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v63

    iput-wide v0, v2, Lco/vine/android/api/VineLike;->likeId:J

    .line 1036
    move-wide/from16 v0, v68

    move-object/from16 v2, v63

    iput-wide v0, v2, Lco/vine/android/api/VineLike;->userId:J

    .line 1037
    move-object/from16 v0, v63

    iput-object v6, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    .line 1038
    move-object/from16 v0, v63

    iput-wide v13, v0, Lco/vine/android/api/VineLike;->postId:J

    .line 1040
    move-object/from16 v0, v63

    invoke-virtual {v11, v0}, Lco/vine/android/provider/VineDatabaseHelper;->addLike(Lco/vine/android/api/VineLike;)I

    goto/16 :goto_0

    .line 1045
    .end local v6           #username:Ljava/lang/String;
    .end local v13           #postId:J
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v63           #like:Lco/vine/android/api/VineLike;
    .end local v64           #likeId:Ljava/lang/Long;
    .end local v68           #meUserId:J
    :sswitch_18
    const-string v5, "post_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1046
    .restart local v13       #postId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "posts"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    const/4 v15, 0x2

    const-string v17, "likes"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1048
    .restart local v16       #url:Ljava/lang/StringBuilder;
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 1051
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1052
    move-wide/from16 v0, v23

    invoke-virtual {v11, v13, v14, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->removeLike(JJ)I

    goto/16 :goto_0

    .line 1057
    .end local v13           #postId:J
    .end local v16           #url:Ljava/lang/StringBuilder;
    :sswitch_19
    const-string v5, "page_type"

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v78

    .line 1058
    .restart local v78       #pageType:I
    const/16 v77, 0x1

    .line 1059
    .restart local v77       #page:I
    packed-switch v78, :pswitch_data_4

    .line 1078
    :cond_1e
    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    const/4 v15, 0x2

    const-string v17, "notifications"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1081
    .restart local v16       #url:Ljava/lang/StringBuilder;
    const-string v5, "page"

    move-object/from16 v0, v16

    move/from16 v1, v77

    invoke-static {v0, v5, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1082
    const-string v5, "size"

    const/16 v12, 0x14

    move-object/from16 v0, v16

    invoke-static {v0, v5, v12}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1084
    const/16 v5, 0x9

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 1086
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 1090
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1091
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Lco/vine/android/api/VinePagedData;

    .line 1092
    .local v88, results:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineNotification;>;"
    move-object/from16 v0, v88

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v72, v0

    .line 1093
    .local v72, notifs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineNotification;>;"
    move-object/from16 v0, v88

    iget v5, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    move-object/from16 v0, v88

    iget v12, v0, Lco/vine/android/api/VinePagedData;->previousPage:I

    move-object/from16 v0, v72

    invoke-virtual {v11, v0, v5, v12}, Lco/vine/android/provider/VineDatabaseHelper;->mergeActivity(Ljava/util/Collection;II)I

    .line 1095
    move-object/from16 v0, v88

    iget v5, v0, Lco/vine/android/api/VinePagedData;->nextPage:I

    if-gtz v5, :cond_0

    .line 1096
    invoke-virtual {v11}, Lco/vine/android/provider/VineDatabaseHelper;->markLastActivity()V

    goto/16 :goto_0

    .line 1062
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v72           #notifs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineNotification;>;"
    .end local v88           #results:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineNotification;>;"
    :pswitch_b
    const/16 v77, 0x1

    .line 1063
    goto :goto_e

    .line 1066
    :pswitch_c
    const/4 v5, 0x3

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v5, v12, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I

    move-result v83

    .line 1068
    .restart local v83       #previous:I
    if-lez v83, :cond_1e

    .line 1069
    move/from16 v77, v83

    goto/16 :goto_e

    .line 1102
    .end local v77           #page:I
    .end local v78           #pageType:I
    .end local v83           #previous:I
    :sswitch_1a
    const-string v5, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1103
    .restart local v9       #userId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    const-string v17, "profiles"

    aput-object v17, v12, v15

    const/4 v15, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1106
    .restart local v16       #url:Ljava/lang/StringBuilder;
    const/4 v5, 0x2

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 1107
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 1110
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1111
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Lco/vine/android/api/VineUser;

    .line 1112
    .restart local v101       #user:Lco/vine/android/api/VineUser;
    const-string v5, "user"

    move-object/from16 v0, p3

    move-object/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 1117
    .end local v9           #userId:J
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v101           #user:Lco/vine/android/api/VineUser;
    :sswitch_1b
    const-string v5, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v47

    check-cast v47, Landroid/net/Uri;

    .line 1118
    .local v47, avatarUri:Landroid/net/Uri;
    const/16 v59, 0x0

    .line 1119
    .local v59, f:Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v81

    .line 1120
    .restart local v81       #pictureBucket:Ljava/lang/String;
    if-eqz v47, :cond_1f

    .line 1122
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mAmazonS3Utility:Lco/vine/android/util/AmazonS3Utility;

    move-object/from16 v0, v47

    move-object/from16 v1, v81

    move-object/from16 v2, v51

    invoke-virtual {v5, v0, v1, v2}, Lco/vine/android/util/AmazonS3Utility;->getPhotoUri(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-result-object v59

    .line 1130
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1133
    .restart local v16       #url:Ljava/lang/StringBuilder;
    new-instance v18, Ljava/util/ArrayList;

    if-nez v47, :cond_23

    const/4 v5, 0x5

    :goto_f
    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1136
    .restart local v18       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "username"

    const-string v15, "a_name"

    const-string v17, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "description"

    const-string v15, "desc"

    const-string v17, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "location"

    const-string v15, "location"

    const-string v17, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
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

    move-object/from16 v0, v81

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

    .line 1143
    .local v61, finalAvatarUrl:Ljava/lang/String;
    if-eqz v47, :cond_20

    .line 1144
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "avatarUrl"

    move-object/from16 v0, v61

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    :cond_20
    const-string v5, "email"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1148
    .restart local v56       #email:Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 1149
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "email"

    move-object/from16 v0, v56

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    :cond_21
    const-string v5, "phone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 1153
    .restart local v80       #phone:Ljava/lang/String;
    invoke-static/range {v80 .. v80}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 1154
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "phoneNumber"

    const-string v15, "phone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_22
    const/4 v5, 0x2

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 1158
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v17, v0

    move-object/from16 v20, v27

    invoke-static/range {v15 .. v20}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 1161
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1162
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Lco/vine/android/api/VineUser;

    .line 1163
    .restart local v101       #user:Lco/vine/android/api/VineUser;
    const-string v5, "avatar_url"

    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const-string v5, "user"

    move-object/from16 v0, p3

    move-object/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 1123
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v18           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v56           #email:Ljava/lang/String;
    .end local v61           #finalAvatarUrl:Ljava/lang/String;
    .end local v80           #phone:Ljava/lang/String;
    .end local v101           #user:Lco/vine/android/api/VineUser;
    :catch_6
    move-exception v55

    .line 1124
    .local v55, e:Ljava/lang/Exception;
    const/16 v92, 0x384

    .line 1125
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v84

    .line 1126
    goto/16 :goto_0

    .line 1133
    .end local v55           #e:Ljava/lang/Exception;
    .restart local v16       #url:Ljava/lang/StringBuilder;
    :cond_23
    const/4 v5, 0x6

    goto/16 :goto_f

    .line 1169
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v47           #avatarUri:Landroid/net/Uri;
    .end local v59           #f:Ljava/lang/String;
    .end local v81           #pictureBucket:Ljava/lang/String;
    :sswitch_1c
    const-string v5, "post_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1170
    .restart local v13       #postId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "posts"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    const/4 v15, 0x2

    const-string v17, "complaints"

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1172
    .restart local v16       #url:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 1174
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v31, v16

    move-object/from16 v34, v19

    move-object/from16 v35, v27

    invoke-static/range {v30 .. v35}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 1177
    goto/16 :goto_0

    .line 1180
    .end local v13           #postId:J
    .end local v16           #url:Ljava/lang/StringBuilder;
    :sswitch_1d
    const-string v5, "time"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v11, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->cleanUp(J)I

    goto/16 :goto_0

    .line 1184
    :sswitch_1e
    const-string v5, "post_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1185
    .restart local v13       #postId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "posts"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1187
    .restart local v16       #url:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 1188
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 1191
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1192
    invoke-virtual {v11, v13, v14}, Lco/vine/android/provider/VineDatabaseHelper;->deletePost(J)I

    goto/16 :goto_0

    .line 1197
    .end local v13           #postId:J
    .end local v16           #url:Ljava/lang/StringBuilder;
    :sswitch_1f
    const-string v5, "key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 1198
    .local v94, token:Ljava/lang/String;
    const-string v5, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v90

    .line 1199
    .restart local v90       #secret:Ljava/lang/String;
    const-string v5, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1200
    .restart local v9       #userId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1202
    .restart local v16       #url:Ljava/lang/StringBuilder;
    new-instance v18, Ljava/util/ArrayList;

    const/4 v5, 0x3

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1203
    .restart local v18       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    move-object/from16 v0, v94

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    move-object/from16 v0, v90

    invoke-direct {v5, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterId"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    const/4 v5, 0x1

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 1208
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v17, v0

    move-object/from16 v20, v27

    invoke-static/range {v15 .. v20}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 1211
    goto/16 :goto_0

    .line 1214
    .end local v9           #userId:J
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v18           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v90           #secret:Ljava/lang/String;
    .end local v94           #token:Ljava/lang/String;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "users"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1216
    .restart local v16       #url:Ljava/lang/StringBuilder;
    new-instance v18, Ljava/util/ArrayList;

    const/4 v5, 0x3

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1217
    .restart local v18       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthToken"

    const-string v15, ""

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterOauthSecret"

    const-string v15, ""

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "twitterId"

    const-string v15, ""

    invoke-direct {v5, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    const/4 v5, 0x1

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 1221
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v17, v0

    move-object/from16 v20, v27

    invoke-static/range {v15 .. v20}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 1224
    goto/16 :goto_0

    .line 1227
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v18           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :sswitch_21
    const-string v5, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1228
    .restart local v9       #userId:J
    const/4 v5, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v9, v10, v5, v12}, Lco/vine/android/provider/VineDatabaseHelper;->removePostsFromGroup(JILjava/lang/String;)I

    goto/16 :goto_0

    .line 1233
    .end local v9           #userId:J
    :sswitch_22
    invoke-direct/range {p0 .. p0}, Lco/vine/android/service/VineService;->getClientProfile()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 1234
    goto/16 :goto_0

    .line 1237
    :sswitch_23
    const-string v5, "post_share_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    .line 1238
    .local v82, postShareId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v17, "timelines"

    aput-object v17, v12, v15

    const/4 v15, 0x1

    const-string v17, "posts"

    aput-object v17, v12, v15

    const/4 v15, 0x2

    const-string v17, "s"

    aput-object v17, v12, v15

    const/4 v15, 0x3

    aput-object v82, v12, v15

    invoke-static {v5, v12}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1241
    .restart local v16       #url:Ljava/lang/StringBuilder;
    const/16 v5, 0x8

    invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;

    move-result-object v19

    .line 1242
    invoke-static/range {v51 .. v51}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-static {v5, v0, v12, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v75

    .line 1246
    invoke-virtual/range {v75 .. v75}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1247
    invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Lco/vine/android/api/VinePagedData;

    .line 1248
    .restart local v87       #response:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    const-string v5, "post_id"

    move-object/from16 v0, v87

    iget-wide v0, v0, Lco/vine/android/api/VinePagedData;->anchor:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p3

    move-wide/from16 v1, v25

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1275
    .end local v11           #dbHelper:Lco/vine/android/provider/VineDatabaseHelper;
    .end local v16           #url:Ljava/lang/StringBuilder;
    .end local v82           #postShareId:Ljava/lang/String;
    .end local v87           #response:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VinePost;>;"
    .restart local v58       #errorCode:I
    .restart local v89       #ret:Landroid/os/Bundle;
    :cond_24
    sget-object v5, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;

    iget v5, v5, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    move/from16 v0, v58

    if-eq v0, v5, :cond_25

    sget-object v5, Lco/vine/android/api/VineError$VineKnownErrors;->EXPIRED_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;

    iget v5, v5, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    move/from16 v0, v58

    if-ne v0, v5, :cond_27

    .line 1278
    :cond_25
    const-string v5, "executionCode"

    const/4 v12, 0x2

    move-object/from16 v0, v89

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1279
    const-string v5, "reasonPhrase"

    move-object/from16 v0, v89

    move-object/from16 v1, v84

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1285
    .end local v58           #errorCode:I
    :cond_26
    const-string v5, "statusCode"

    move-object/from16 v0, v89

    move/from16 v1, v92

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1288
    :cond_27
    sget-boolean v5, Lco/vine/android/service/VineService;->LOGGABLE:Z

    if-eqz v5, :cond_28

    .line 1289
    const-string v5, "VineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Action complete: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v92

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v15, 0x20

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v84

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_28
    const-string v5, "executionCode"

    const/4 v12, 0x1

    move-object/from16 v0, v89

    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 288
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
        0x3e8 -> :sswitch_3
    .end sparse-switch

    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 663
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 720
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 785
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1059
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 226
    iget-object v0, p0, Lco/vine/android/service/VineService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 232
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/service/VineService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 233
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x32

    const/high16 v2, 0x4248

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput-object v0, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;

    .line 234
    invoke-static {p0}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;

    .line 235
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 240
    .local v4, bundle:Landroid/os/Bundle;
    const-string v0, "ibinder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lco/vine/android/service/VineServiceCallback;

    .line 242
    .local v7, cb:Lco/vine/android/service/VineServiceCallback;
    if-eqz v7, :cond_1

    .line 243
    invoke-virtual {v7}, Lco/vine/android/service/VineServiceCallback;->getResponder()Lco/vine/android/service/VineServiceResponder;

    move-result-object v5

    .line 247
    .local v5, responder:Lco/vine/android/service/VineServiceResponder;
    :goto_0
    sget-object v0, Lco/vine/android/service/VineService;->sActionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 248
    .local v6, action:Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 249
    sget-boolean v0, Lco/vine/android/service/VineService;->LOGGABLE:Z

    if-eqz v0, :cond_0

    .line 250
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

    .line 258
    :cond_0
    :goto_1
    const/4 v0, 0x2

    return v0

    .line 245
    .end local v5           #responder:Lco/vine/android/service/VineServiceResponder;
    .end local v6           #action:Ljava/lang/Integer;
    :cond_1
    const/4 v5, 0x0

    .restart local v5       #responder:Lco/vine/android/service/VineServiceResponder;
    goto :goto_0

    .line 252
    .restart local v6       #action:Ljava/lang/Integer;
    :cond_2
    if-nez v4, :cond_3

    .line 253
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

    .line 255
    :cond_3
    iget-object v8, p0, Lco/vine/android/service/VineService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lco/vine/android/service/VineService$ExecutionRunnable;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lco/vine/android/service/VineService$ExecutionRunnable;-><init>(Lco/vine/android/service/VineService;IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 256
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
    .line 262
    iget-object v6, p0, Lco/vine/android/service/VineService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lco/vine/android/service/VineService$ExecutionRunnable;

    const/4 v2, 0x0

    iget v3, p1, Lco/vine/android/service/PendingAction;->actionCode:I

    iget-object v4, p1, Lco/vine/android/service/PendingAction;->bundle:Landroid/os/Bundle;

    iget-object v5, p1, Lco/vine/android/service/PendingAction;->responder:Lco/vine/android/service/VineServiceResponder;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lco/vine/android/service/VineService$ExecutionRunnable;-><init>(Lco/vine/android/service/VineService;IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method
