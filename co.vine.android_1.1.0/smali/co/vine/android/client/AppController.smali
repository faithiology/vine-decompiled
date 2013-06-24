.class public Lco/vine/android/client/AppController;
.super Ljava/lang/Object;
.source "AppController.java"

# interfaces
.implements Lco/vine/android/util/image/PhotoImagesListener;
.implements Lco/vine/android/util/video/VideoListener;
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/client/AppController$VineServiceConnection;,
        Lco/vine/android/client/AppController$ServerStatusRunnable;
    }
.end annotation


# static fields
.field private static final CLEANUP_INTERVAL:J = 0x36ee80L

.field private static final DEFAULT_TYPEAHEAD_THROTTLE:J = 0xfaL

.field private static final KEY_FACEBOOK_TOKEN:Ljava/lang/String; = "KEY_FACEBOOK_TOKEN"

.field private static final PREF_TYPEAHEAD_THROTTLE:Ljava/lang/String; = "typeahead_throttle"

.field private static final PUBLISH_ACTIONS:Ljava/lang/String; = "publish_actions"

.field private static final SERVER_REFRESH_INTERVAL:J = 0x36ee80L

.field private static sInstance:Lco/vine/android/client/AppController;


# instance fields
.field private mActiveSession:Lco/vine/android/client/Session;

.field final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/client/AppSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoImagesCache:Lco/vine/android/util/image/PhotoImagesCache;

.field private mServerStatusRunnable:Lco/vine/android/client/AppController$ServerStatusRunnable;

.field private final mServiceConnection:Lco/vine/android/client/AppController$VineServiceConnection;

.field private final mServiceResponder:Lco/vine/android/service/VineServiceResponder;

.field private final mTwitter:Lcom/twitter/android/sdk/Twitter;

.field private final mVideoCache:Lco/vine/android/util/video/VideoCache;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v3, Lco/vine/android/client/AppController$VineServiceConnection;

    invoke-direct {v3}, Lco/vine/android/client/AppController$VineServiceConnection;-><init>()V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/client/AppController$VineServiceConnection;

    .line 110
    iput-object p1, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    .line 111
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    .line 114
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 116
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 117
    .local v2, p:Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 118
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 119
    .local v1, maxImageSize:I
    new-instance v3, Lco/vine/android/util/image/PhotoImagesCache;

    const/high16 v4, 0x1e0

    invoke-direct {v3, p1, v1, v4}, Lco/vine/android/util/image/PhotoImagesCache;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mPhotoImagesCache:Lco/vine/android/util/image/PhotoImagesCache;

    .line 120
    iget-object v3, p0, Lco/vine/android/client/AppController;->mPhotoImagesCache:Lco/vine/android/util/image/PhotoImagesCache;

    invoke-virtual {v3, p0}, Lco/vine/android/util/image/PhotoImagesCache;->addListener(Lco/vine/android/util/image/PhotoImagesListener;)V

    .line 121
    new-instance v3, Lco/vine/android/util/video/VideoCache;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lco/vine/android/util/video/VideoCache;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;

    .line 122
    iget-object v3, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;

    invoke-virtual {v3, p0}, Lco/vine/android/util/video/VideoCache;->addListener(Lco/vine/android/util/video/VideoListener;)V

    .line 123
    new-instance v3, Lcom/twitter/android/sdk/Twitter;

    sget-object v4, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;

    sget-object v5, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/twitter/android/sdk/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    .line 125
    new-instance v3, Lco/vine/android/client/AppController$1;

    invoke-direct {v3, p0}, Lco/vine/android/client/AppController$1;-><init>(Lco/vine/android/client/AppController;)V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mServiceResponder:Lco/vine/android/service/VineServiceResponder;

    .line 133
    new-instance v3, Lco/vine/android/client/AppController$ServerStatusRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lco/vine/android/client/AppController$ServerStatusRunnable;-><init>(Lco/vine/android/client/AppController;Lco/vine/android/client/AppController$1;)V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mServerStatusRunnable:Lco/vine/android/client/AppController$ServerStatusRunnable;

    .line 135
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lco/vine/android/service/VineService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/client/AppController$VineServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 137
    return-void
.end method

.method private createServiceBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1101
    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
    .locals 4
    .parameter "session"

    .prologue
    .line 1106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1107
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "s_key"

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getSessionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const-string v1, "s_owner_id"

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1109
    const-string v1, "a_name"

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v1, "email"

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    return-object v0
.end method

.method private createSession()Lco/vine/android/client/Session;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1072
    new-instance v0, Lco/vine/android/client/Session;

    const-wide/16 v2, 0x0

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lco/vine/android/client/Session;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createSession(Landroid/accounts/Account;Ljava/lang/String;)Lco/vine/android/client/Session;
    .locals 7
    .parameter "account"
    .parameter "accountName"

    .prologue
    .line 1064
    iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    .line 1065
    .local v6, am:Landroid/accounts/AccountManager;
    invoke-static {v6, p1}, Lco/vine/android/client/VineAccountHelper;->getUserId(Landroid/accounts/AccountManager;Landroid/accounts/Account;)J

    move-result-wide v2

    .line 1066
    .local v2, userId:J
    new-instance v0, Lco/vine/android/client/Session;

    invoke-static {v6, p1}, Lco/vine/android/client/VineAccountHelper;->getSessionKey(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, p1}, Lco/vine/android/client/VineAccountHelper;->getName(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, p1}, Lco/vine/android/client/VineAccountHelper;->getAvatarUrl(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lco/vine/android/client/Session;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .parameter "actionCode"
    .parameter "bundle"

    .prologue
    .line 1096
    const-string v0, "Last Service Action Code"

    invoke-static {v0, p1}, Lcom/crashlytics/android/Crashlytics;->setInt(Ljava/lang/String;I)V

    .line 1097
    iget-object v0, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/client/AppController$VineServiceConnection;

    iget-object v1, p0, Lco/vine/android/client/AppController;->mServiceResponder:Lco/vine/android/service/VineServiceResponder;

    invoke-virtual {v0, p1, p2, v1}, Lco/vine/android/client/AppController$VineServiceConnection;->queueAndExecute(ILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
    .locals 3
    .parameter "context"

    .prologue
    .line 103
    const-class v1, Lco/vine/android/client/AppController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lco/vine/android/client/AppController;->sInstance:Lco/vine/android/client/AppController;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lco/vine/android/client/AppController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lco/vine/android/client/AppController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/vine/android/client/AppController;->sInstance:Lco/vine/android/client/AppController;

    .line 106
    :cond_0
    sget-object v0, Lco/vine/android/client/AppController;->sInstance:Lco/vine/android/client/AppController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private performCleanup(Lco/vine/android/client/Session;J)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "timeAnchor"

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 1028
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "time"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1029
    const/16 v1, 0x1d

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setPendingFacebookToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "token"

    .prologue
    .line 909
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_FACEBOOK_TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 910
    return-void
.end method


# virtual methods
.method public addListener(Lco/vine/android/client/AppSessionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1053
    iget-object v0, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public attemptCancelVideoFetchRequest(Lco/vine/android/util/video/VideoKey;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 529
    iget-object v0, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;

    invoke-virtual {v0, p1}, Lco/vine/android/util/video/VideoCache;->cancel(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4
    .parameter "session"
    .parameter "state"
    .parameter "exception"

    .prologue
    .line 192
    const-string v2, "Session state has changed: {}."

    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 193
    iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    .line 194
    .local v1, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/client/AppSessionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 195
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v2, p1, p2, p3}, Lco/vine/android/client/AppSessionListener;->onFacebookSessionChanged(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 194
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method public clearCache()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1082
    const/16 v0, 0x2a

    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public connectToFacebook(Lco/vine/android/BaseFragment;)V
    .locals 6
    .parameter "fragment"

    .prologue
    .line 175
    iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    .line 176
    .local v0, context:Landroid/content/Context;
    new-instance v4, Lcom/facebook/Session$Builder;

    invoke-direct {v4, v0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070005

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v4

    new-instance v5, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-direct {v5, v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v3

    .line 178
    .local v3, session:Lcom/facebook/Session;
    invoke-static {v3}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 179
    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v2, permissions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "publish_actions"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 183
    .local v1, openRequest:Lcom/facebook/Session$OpenRequest;
    sget-object v4, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v1, v4}, Lcom/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;

    .line 184
    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 185
    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v1, v4}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    .line 186
    invoke-virtual {v3, v1}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    .line 188
    .end local v1           #openRequest:Lcom/facebook/Session$OpenRequest;
    .end local v2           #permissions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "username"
    .parameter "token"
    .parameter "secret"
    .parameter "userId"

    .prologue
    .line 950
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 951
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v1, "key"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v1, "secret"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 955
    const/16 v1, 0x20

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public deleteComment(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "postId"
    .parameter "commentId"

    .prologue
    .line 880
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 881
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 882
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public deletePost(Lco/vine/android/client/Session;J)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "postId"

    .prologue
    .line 893
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 894
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 895
    const/16 v1, 0x1f

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public determineCleanup(Lco/vine/android/client/Session;)V
    .locals 11
    .parameter "session"

    .prologue
    const-wide/16 v8, 0x0

    .line 1001
    iget-object v7, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1002
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v7, "last_cleanup"

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1003
    .local v4, lastCleanupTime:J
    cmp-long v7, v4, v8

    if-lez v7, :cond_1

    .line 1004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    const-wide/32 v9, 0x36ee80

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 1005
    new-instance v3, Landroid/os/Handler;

    iget-object v7, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1006
    .local v3, h:Landroid/os/Handler;
    invoke-direct {p0, p1, v4, v5}, Lco/vine/android/client/AppController;->performCleanup(Lco/vine/android/client/Session;J)Ljava/lang/String;

    .line 1016
    .end local v3           #h:Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1012
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1013
    .local v0, cleanupTime:J
    const-string v7, "last_cleanup"

    invoke-interface {v2, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1014
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public determineServerStatus()V
    .locals 13

    .prologue
    const-wide/32 v7, 0x36ee80

    const-wide/16 v11, 0x0

    .line 967
    iget-object v9, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 968
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v9, "server_upload_last_refresh"

    invoke-interface {v4, v9, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 969
    .local v2, lastRefresh:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v0, v9, v2

    .line 970
    .local v0, elapsedTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v5, v9, v0

    .line 971
    .local v5, remainingTime:J
    cmp-long v9, v2, v11

    if-lez v9, :cond_0

    cmp-long v9, v0, v7

    if-lez v9, :cond_2

    .line 972
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/client/AppController;->fetchServerStatus()Ljava/lang/String;

    .line 973
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "server_upload_last_refresh"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 975
    iget-object v9, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;

    if-eqz v9, :cond_1

    .line 976
    iget-object v9, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lco/vine/android/client/AppController;->mServerStatusRunnable:Lco/vine/android/client/AppController$ServerStatusRunnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 977
    iget-object v9, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lco/vine/android/client/AppController;->mServerStatusRunnable:Lco/vine/android/client/AppController$ServerStatusRunnable;

    invoke-virtual {v9, v10, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 986
    .end local v5           #remainingTime:J
    :cond_1
    :goto_0
    return-void

    .line 980
    .restart local v5       #remainingTime:J
    :cond_2
    iget-object v9, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;

    if-eqz v9, :cond_1

    .line 981
    iget-object v9, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lco/vine/android/client/AppController;->mServerStatusRunnable:Lco/vine/android/client/AppController$ServerStatusRunnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 982
    iget-object v9, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lco/vine/android/client/AppController;->mServerStatusRunnable:Lco/vine/android/client/AppController$ServerStatusRunnable;

    cmp-long v11, v5, v11

    if-lez v11, :cond_3

    .end local v5           #remainingTime:J
    :goto_1
    invoke-virtual {v9, v10, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .restart local v5       #remainingTime:J
    :cond_3
    move-wide v5, v7

    goto :goto_1
.end method

.method public disconnectTwitter(Lco/vine/android/client/Session;)Ljava/lang/String;
    .locals 2
    .parameter "session"

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 960
    .local v0, b:Landroid/os/Bundle;
    const/16 v1, 0x21

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchActivity(Lco/vine/android/client/Session;I)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "pageType"

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 631
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "page_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 632
    const/16 v1, 0x14

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchAddressFriends(Lco/vine/android/client/Session;)Ljava/lang/String;
    .locals 2
    .parameter "session"

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 939
    .local v0, b:Landroid/os/Bundle;
    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchComments(JII)Ljava/lang/String;
    .locals 2
    .parameter "postId"
    .parameter "page"
    .parameter "size"

    .prologue
    .line 857
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 858
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 859
    const-string v1, "page"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 860
    const-string v1, "size"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 861
    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchFollowers(JI)Ljava/lang/String;
    .locals 2
    .parameter "userId"
    .parameter "pageType"

    .prologue
    .line 609
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 610
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "profile_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 611
    const-string v1, "page_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 612
    const/16 v1, 0x16

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchFollowing(JI)Ljava/lang/String;
    .locals 2
    .parameter "userId"
    .parameter "pageType"

    .prologue
    .line 616
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 617
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "profile_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 618
    const-string v1, "page_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 619
    const/16 v1, 0x17

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchPost(Lco/vine/android/client/Session;J)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "postId"

    .prologue
    .line 845
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 846
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 847
    const/16 v1, 0x1c

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchPostId(Lco/vine/android/client/Session;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "shareId"

    .prologue
    .line 851
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 852
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_share_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const/16 v1, 0x24

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchPostLikers(Lco/vine/android/client/Session;JI)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "postId"
    .parameter "pageType"

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 624
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 625
    const-string v1, "page_type"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchPosts(Lco/vine/android/client/Session;IJILjava/lang/String;IZ)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "size"
    .parameter "userId"
    .parameter "type"
    .parameter "tag"
    .parameter "pageType"
    .parameter "userInitiated"

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 835
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "size"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 836
    const-string v1, "type"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 837
    const-string v1, "page_type"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 838
    const-string v1, "profile_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 839
    const-string v1, "tag_name"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v1, "user_init"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 841
    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchServerStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 676
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 677
    .local v0, b:Landroid/os/Bundle;
    const/16 v1, 0x26

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchTwitterFriends(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "key"
    .parameter "secret"

    .prologue
    .line 931
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 932
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v1, "secret"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchTwitterUser(Lco/vine/android/api/VineLogin;)Ljava/lang/String;
    .locals 2
    .parameter "mLogin"

    .prologue
    .line 820
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 821
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "login"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 822
    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchTypeahead(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "query"
    .parameter "type"
    .parameter "count"

    .prologue
    .line 1155
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 1156
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "i_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1157
    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1159
    const/16 v1, 0x27

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchUser(J)Ljava/lang/String;
    .locals 2
    .parameter "userId"

    .prologue
    .line 603
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 604
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 605
    const/16 v1, 0x15

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchUsersMe(J)Ljava/lang/String;
    .locals 2
    .parameter "userId"

    .prologue
    .line 583
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 584
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "s_owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 585
    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public followUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "userIdToFollow"
    .parameter "notify"

    .prologue
    .line 636
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 637
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "follow_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 638
    const-string v1, "notify"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 639
    const/16 v1, 0x12

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActiveId()J
    .locals 2

    .prologue
    .line 719
    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveSession()Lco/vine/android/client/Session;
    .locals 9

    .prologue
    .line 682
    iget-object v7, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    .line 683
    .local v7, session:Lco/vine/android/client/Session;
    if-nez v7, :cond_3

    .line 684
    iget-object v8, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 685
    .local v3, am:Landroid/accounts/AccountManager;
    const-string v8, "co.vine.android.auth"

    invoke-virtual {v3, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 687
    .local v2, accounts:[Landroid/accounts/Account;
    array-length v8, v2

    if-lez v8, :cond_2

    .line 689
    iget-object v8, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lco/vine/android/provider/SettingsManager;->getCurrentAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, accountName:Ljava/lang/String;
    move-object v4, v2

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, v4, v5

    .line 693
    .local v0, account:Landroid/accounts/Account;
    if-eqz v1, :cond_0

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 696
    :cond_0
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lco/vine/android/client/AppController;->getSession(Ljava/lang/String;)Lco/vine/android/client/Session;

    move-result-object v7

    .line 697
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lco/vine/android/client/Session;->setLoginEmail(Ljava/lang/String;)V

    .line 698
    sget-object v8, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;

    invoke-virtual {v7, v8}, Lco/vine/android/client/Session;->setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V

    .line 699
    invoke-virtual {p0, v7}, Lco/vine/android/client/AppController;->setActiveSession(Lco/vine/android/client/Session;)V

    .line 700
    iput-object v7, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    move-object v8, v7

    .line 715
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accounts:[Landroid/accounts/Account;
    .end local v3           #am:Landroid/accounts/AccountManager;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :goto_1
    return-object v8

    .line 692
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #accountName:Ljava/lang/String;
    .restart local v2       #accounts:[Landroid/accounts/Account;
    .restart local v3       #am:Landroid/accounts/AccountManager;
    .restart local v4       #arr$:[Landroid/accounts/Account;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 708
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_2
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createSession()Lco/vine/android/client/Session;

    move-result-object v7

    .line 711
    invoke-virtual {p0, v7}, Lco/vine/android/client/AppController;->setActiveSession(Lco/vine/android/client/Session;)V

    .line 712
    iput-object v7, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    .line 715
    .end local v2           #accounts:[Landroid/accounts/Account;
    .end local v3           #am:Landroid/accounts/AccountManager;
    :cond_3
    iget-object v8, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    goto :goto_1
.end method

.method public getLoginStatus()Lco/vine/android/client/Session$LoginStatus;
    .locals 1

    .prologue
    .line 1039
    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getLoginStatus()Lco/vine/android/client/Session$LoginStatus;

    move-result-object v0

    return-object v0
.end method

.method public getPendingFacebookToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 905
    iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_FACEBOOK_TOKEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "key"

    .prologue
    .line 509
    iget-object v0, p0, Lco/vine/android/client/AppController;->mPhotoImagesCache:Lco/vine/android/util/image/PhotoImagesCache;

    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lco/vine/android/util/image/PhotoImagesCache;->getBitmap(JLco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Lco/vine/android/client/Session;
    .locals 2
    .parameter "accountName"

    .prologue
    .line 744
    if-nez p1, :cond_0

    .line 745
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createSession()Lco/vine/android/client/Session;

    move-result-object v1

    .line 755
    :goto_0
    return-object v1

    .line 747
    :cond_0
    iget-object v1, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    if-nez v1, :cond_1

    .line 748
    iget-object v1, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 749
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_2

    .line 750
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createSession()Lco/vine/android/client/Session;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    .line 755
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    :goto_1
    iget-object v1, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    goto :goto_0

    .line 752
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_2
    invoke-direct {p0, v0, p1}, Lco/vine/android/client/AppController;->createSession(Landroid/accounts/Account;Ljava/lang/String;)Lco/vine/android/client/Session;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    goto :goto_1
.end method

.method public getTwitter()Lcom/twitter/android/sdk/Twitter;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lco/vine/android/client/AppController;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    return-object v0
.end method

.method public getTwitterAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "callback"
    .parameter "key"
    .parameter "secret"

    .prologue
    .line 806
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 807
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v1, "secret"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTypeaheadThrottle()J
    .locals 2

    .prologue
    .line 1151
    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public getValidFacebookSession(Landroid/app/Activity;)Lcom/facebook/Session;
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 145
    .local v0, session:Lcom/facebook/Session;
    if-nez v0, :cond_0

    .line 146
    const/4 v3, 0x0

    invoke-static {p1, v3, p0}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    move-result-object v0

    .line 148
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    :cond_1
    const-string v3, "There were no Facebook session."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    move-object v0, v2

    .line 169
    .end local v0           #session:Lcom/facebook/Session;
    :goto_0
    return-object v0

    .line 152
    .restart local v0       #session:Lcom/facebook/Session;
    :cond_2
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 153
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    .line 154
    .local v1, state:Lcom/facebook/SessionState;
    const-string v3, "Old Facebook Session state : {}"

    invoke-static {v3, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    sget-object v3, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    if-eq v1, v3, :cond_3

    invoke-virtual {v1}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 157
    :cond_3
    const-string v3, "State is created or opened."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v3

    const-string v4, "publish_actions"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 159
    const-string v2, "Permission is good."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 163
    const-string v3, "Permission missing."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    move-object v0, v2

    .line 164
    goto :goto_0

    .line 167
    :cond_5
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 168
    const-string v3, "Session state is invalid."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    move-object v0, v2

    .line 169
    goto :goto_0
.end method

.method public getVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 513
    iget-object v0, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;

    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lco/vine/android/util/video/VideoCache;->getFile(JLco/vine/android/util/video/VideoKey;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 68
    .parameter "actionCode"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "b"

    .prologue
    .line 201
    const-string v4, "rid"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, reqId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/client/AppController$VineServiceConnection;

    invoke-virtual {v4, v5}, Lco/vine/android/client/AppController$VineServiceConnection;->remove(Ljava/lang/String;)V

    .line 205
    const-string v4, "logged_out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    invoke-virtual {v4}, Lco/vine/android/client/Session;->logout()V

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .local v62, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 208
    .local v3, listener:Lco/vine/android/client/AppSessionListener;
    invoke-virtual {v3, v5}, Lco/vine/android/client/AppSessionListener;->onLogoutComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v62           #i$:Ljava/util/Iterator;
    :cond_0
    const-string v4, "refresh_session"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    const-string v4, "s_key"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lco/vine/android/client/AppController;->refreshSessionKey(Ljava/lang/String;)V

    .line 217
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 506
    :cond_2
    :goto_1
    :pswitch_0
    return-void

    .line 219
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v4, v1, v2}, Lco/vine/android/client/AppController;->loginComplete(Lco/vine/android/client/Session;ILandroid/os/Bundle;)Lco/vine/android/api/VineLogin;

    move-result-object v8

    .line 221
    .local v8, vl:Lco/vine/android/api/VineLogin;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 222
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Lco/vine/android/client/AppSessionListener;->onLoginComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;)V

    goto :goto_2

    .line 227
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v8           #vl:Lco/vine/android/api/VineLogin;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_2
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v60

    .line 228
    .local v60, fbSession:Lcom/facebook/Session;
    if-nez v60, :cond_3

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/Session;->openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;

    move-result-object v60

    .line 231
    :cond_3
    if-eqz v60, :cond_4

    .line 232
    invoke-virtual/range {v60 .. v60}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 234
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-static {v4, v6, v7, v9, v10}, Lco/vine/android/provider/SettingsManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    invoke-virtual {v6}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lco/vine/android/client/VineAccountHelper;->removeAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;

    .line 236
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->clearCache()Ljava/lang/String;

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    invoke-virtual {v4}, Lco/vine/android/client/Session;->logout()V

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 240
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    invoke-virtual {v3, v5}, Lco/vine/android/client/AppSessionListener;->onLogoutComplete(Ljava/lang/String;)V

    goto :goto_3

    .line 245
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v60           #fbSession:Lcom/facebook/Session;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_3
    const-string v4, "login"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lco/vine/android/api/VineLogin;

    .line 246
    .local v13, login:Lco/vine/android/api/VineLogin;
    const-string v4, "pass"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 247
    .local v15, password:Ljava/lang/String;
    const-string v4, "a_name"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 248
    .local v14, accountName:Ljava/lang/String;
    const-string v4, "avatar_url"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 249
    .local v16, avatarUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object v9, v3

    move-object v10, v5

    move/from16 v11, p2

    move-object/from16 v12, p3

    .line 250
    invoke-virtual/range {v9 .. v16}, Lco/vine/android/client/AppSessionListener;->onSignUpComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 256
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v13           #login:Lco/vine/android/api/VineLogin;
    .end local v14           #accountName:Ljava/lang/String;
    .end local v15           #password:Ljava/lang/String;
    .end local v16           #avatarUrl:Ljava/lang/String;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 257
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    const-string v4, "load_url"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lco/vine/android/client/AppSessionListener;->onGetTwitterAuthUrlComplete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 263
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 264
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    const-string v4, "a_exists"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    const-string v4, "user"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Lco/vine/android/api/VineUser;

    const-string v4, "login"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Lco/vine/android/api/VineLogin;

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move/from16 v19, p2

    move-object/from16 v20, p3

    invoke-virtual/range {v17 .. v23}, Lco/vine/android/client/AppSessionListener;->onCheckTwitterComplete(Ljava/lang/String;ILjava/lang/String;ZLco/vine/android/api/VineUser;Lco/vine/android/api/VineLogin;)V

    goto :goto_6

    .line 272
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 273
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    const-string v4, "t_user"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Lco/vine/android/api/TwitterUser;

    const-string v4, "login"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Lco/vine/android/api/VineLogin;

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move/from16 v19, p2

    move-object/from16 v20, p3

    invoke-virtual/range {v17 .. v22}, Lco/vine/android/client/AppSessionListener;->onGetTwitterUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/TwitterUser;Lco/vine/android/api/VineLogin;)V

    goto :goto_7

    .line 280
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_7
    const-string v4, "login"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lco/vine/android/api/VineLogin;

    .line 281
    .restart local v8       #vl:Lco/vine/android/api/VineLogin;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 282
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v5, v0, v1, v8}, Lco/vine/android/client/AppSessionListener;->onTwitterxAuthComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;)V

    goto :goto_8

    .line 287
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v8           #vl:Lco/vine/android/api/VineLogin;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 288
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v5, v0, v1}, Lco/vine/android/client/AppSessionListener;->onResetPasswordComplete(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_9

    .line 295
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_9
    const-string v4, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 296
    .local v22, count:I
    const-string v4, "next_page"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 297
    .local v24, nextPage:I
    const-string v4, "previous_page"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 298
    .local v25, previousPage:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 299
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    move-object/from16 v18, v0

    const/16 v23, 0x0

    move-object/from16 v17, v3

    move-object/from16 v19, v5

    move/from16 v20, p2

    move-object/from16 v21, p3

    invoke-virtual/range {v17 .. v25}, Lco/vine/android/client/AppSessionListener;->onGetUsersComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;II)V

    goto :goto_a

    .line 305
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v22           #count:I
    .end local v24           #nextPage:I
    .end local v25           #previousPage:I
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_a
    const-string v4, "type"

    const/4 v6, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 306
    .local v21, type:I
    const-string v4, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 307
    .restart local v22       #count:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move/from16 v19, p2

    move-object/from16 v20, p3

    .line 308
    invoke-virtual/range {v17 .. v22}, Lco/vine/android/client/AppSessionListener;->onGetTimeLineComplete(Ljava/lang/String;ILjava/lang/String;II)V

    goto :goto_b

    .line 310
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    :cond_5
    const/16 v4, 0xc8

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    .line 311
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lco/vine/android/client/AppController;->determineCleanup(Lco/vine/android/client/Session;)V

    goto/16 :goto_1

    .line 316
    .end local v21           #type:I
    .end local v22           #count:I
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 317
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    const-string v4, "post_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    move-object/from16 v26, v3

    move-object/from16 v27, v5

    move/from16 v28, p2

    move-object/from16 v29, p3

    invoke-virtual/range {v26 .. v31}, Lco/vine/android/client/AppSessionListener;->onGetCommentsComplete(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_c

    .line 323
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_c
    const-string v4, "post_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 324
    .local v30, id:J
    const-string v4, "comment"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 325
    .local v32, comment:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    move/from16 v28, p2

    move-object/from16 v29, p3

    .line 326
    invoke-virtual/range {v26 .. v32}, Lco/vine/android/client/AppSessionListener;->onPostCommentComplete(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;)V

    goto :goto_d

    .line 331
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v30           #id:J
    .end local v32           #comment:Ljava/lang/String;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 332
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    const-string v4, "s_owner_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v37

    const-string v4, "user"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v39

    check-cast v39, Lco/vine/android/api/VineUser;

    move-object/from16 v33, v3

    move-object/from16 v34, v5

    move/from16 v35, p2

    move-object/from16 v36, p3

    invoke-virtual/range {v33 .. v39}, Lco/vine/android/client/AppSessionListener;->onGetUsersMeComplete(Ljava/lang/String;ILjava/lang/String;JLco/vine/android/api/VineUser;)V

    goto :goto_e

    .line 339
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_e
    const-string v4, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 340
    .restart local v22       #count:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 341
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v3, v5, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onGetTwitterFriendsComplete(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_f

    .line 346
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v22           #count:I
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_f
    const-string v4, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 347
    .restart local v22       #count:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 348
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v3, v5, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onGetAddressFriendsComplete(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_10

    .line 353
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v22           #count:I
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_10
    const-string v4, "follow_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v36

    .line 355
    .local v36, userId:J
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v34

    const/16 v35, 0x14

    const/16 v38, 0x1

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x1

    const/16 v41, 0x0

    move-object/from16 v33, p0

    invoke-virtual/range {v33 .. v41}, Lco/vine/android/client/AppController;->fetchPosts(Lco/vine/android/client/Session;IJILjava/lang/String;IZ)Ljava/lang/String;

    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v38, v3

    move-object/from16 v39, v5

    move/from16 v40, p2

    move-object/from16 v41, p3

    move-wide/from16 v42, v36

    .line 359
    invoke-virtual/range {v38 .. v43}, Lco/vine/android/client/AppSessionListener;->onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_11

    .line 364
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v36           #userId:J
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_11
    const-string v4, "follow_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v36

    .line 365
    .restart local v36       #userId:J
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v4, v1, v2}, Lco/vine/android/client/AppController;->removeFollowPosts(Lco/vine/android/client/Session;J)Ljava/lang/String;

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v38, v3

    move-object/from16 v39, v5

    move/from16 v40, p2

    move-object/from16 v41, p3

    move-wide/from16 v42, v36

    .line 367
    invoke-virtual/range {v38 .. v43}, Lco/vine/android/client/AppSessionListener;->onUnFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_12

    .line 372
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v36           #userId:J
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_12
    const-string v4, "count"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 373
    .restart local v22       #count:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 374
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v3, v5, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onGetActivityComplete(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_13

    .line 379
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v22           #count:I
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 380
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    invoke-virtual {v3, v5}, Lco/vine/android/client/AppSessionListener;->onRemoveUsersComplete(Ljava/lang/String;)V

    goto :goto_14

    .line 385
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_14
    const-string v4, "user"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v67

    check-cast v67, Lco/vine/android/api/VineUser;

    .line 386
    .local v67, user:Lco/vine/android/api/VineUser;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 387
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v67

    invoke-virtual {v3, v5, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onGetUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineUser;)V

    goto :goto_15

    .line 392
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v62           #i$:Ljava/util/Iterator;
    .end local v67           #user:Lco/vine/android/api/VineUser;
    :pswitch_15
    const-string v4, "avatar_url"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 393
    .restart local v16       #avatarUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 394
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    invoke-virtual {v3, v5, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onUpdateProfileComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 399
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v16           #avatarUrl:Ljava/lang/String;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v65

    .line 402
    .local v65, prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v65 .. v65}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v59

    .line 403
    .local v59, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v63

    .line 404
    .local v63, lastCleanupTime:J
    const-string v4, "last_cleanup"

    move-object/from16 v0, v59

    move-wide/from16 v1, v63

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-interface/range {v59 .. v59}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 409
    .end local v59           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v63           #lastCleanupTime:J
    .end local v65           #prefs:Landroid/content/SharedPreferences;
    :pswitch_17
    const-string v4, "username"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 410
    .local v42, username:Ljava/lang/String;
    const-string v4, "key"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 411
    .local v43, token:Ljava/lang/String;
    const-string v4, "secret"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 412
    .local v44, secret:Ljava/lang/String;
    const-string v4, "user_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v36

    .line 413
    .restart local v36       #userId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v38, v3

    move-object/from16 v39, v5

    move/from16 v40, p2

    move-object/from16 v41, p3

    move-wide/from16 v45, v36

    .line 414
    invoke-virtual/range {v38 .. v46}, Lco/vine/android/client/AppSessionListener;->onConnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_17

    .line 420
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v36           #userId:J
    .end local v42           #username:Ljava/lang/String;
    .end local v43           #token:Ljava/lang/String;
    .end local v44           #secret:Ljava/lang/String;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 421
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v5, v0, v1}, Lco/vine/android/client/AppSessionListener;->onDisconnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_18

    .line 426
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_19
    const-string v4, "post_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v49

    .line 427
    .local v49, postId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v45, v3

    move-object/from16 v46, v5

    move/from16 v47, p2

    move-object/from16 v48, p3

    .line 428
    invoke-virtual/range {v45 .. v50}, Lco/vine/android/client/AppSessionListener;->onLikePost(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_19

    .line 433
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v49           #postId:J
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_1a
    const-string v4, "post_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v49

    .line 434
    .restart local v49       #postId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v45, v3

    move-object/from16 v46, v5

    move/from16 v47, p2

    move-object/from16 v48, p3

    .line 435
    invoke-virtual/range {v45 .. v50}, Lco/vine/android/client/AppSessionListener;->onUnlikePost(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_1a

    .line 440
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v49           #postId:J
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_1b
    const-string v4, "post_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v49

    .line 441
    .restart local v49       #postId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v45, v3

    move-object/from16 v46, v5

    move/from16 v47, p2

    move-object/from16 v48, p3

    .line 442
    invoke-virtual/range {v45 .. v50}, Lco/vine/android/client/AppSessionListener;->onGetPostIdComplete(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_1b

    .line 447
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v49           #postId:J
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 448
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v5, v0, v1}, Lco/vine/android/client/AppSessionListener;->onGetSinglePostComplete(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1c

    .line 453
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 454
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v5, v0, v1}, Lco/vine/android/client/AppSessionListener;->onConnectFacebookComplete(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1d

    .line 459
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_1e
    const-string v4, "server_status"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v66

    check-cast v66, Lco/vine/android/api/ServerStatus;

    .line 460
    .local v66, ss:Lco/vine/android/api/ServerStatus;
    const/16 v4, 0xc8

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    if-eqz v66, :cond_2

    move-object/from16 v0, v66

    iget-object v4, v0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v65

    .line 463
    .restart local v65       #prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v65 .. v65}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v58

    .line 464
    .local v58, e:Landroid/content/SharedPreferences$Editor;
    const-string v4, "server_upload_type"

    move-object/from16 v0, v66

    iget-object v6, v0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;

    move-object/from16 v0, v58

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface/range {v58 .. v58}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 470
    .end local v58           #e:Landroid/content/SharedPreferences$Editor;
    .end local v65           #prefs:Landroid/content/SharedPreferences;
    .end local v66           #ss:Lco/vine/android/api/ServerStatus;
    :pswitch_1f
    const-string v4, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 471
    .restart local v22       #count:I
    const-string v4, "next_page"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 472
    .restart local v24       #nextPage:I
    const-string v4, "previous_page"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 474
    .restart local v25       #previousPage:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v51, v3

    move-object/from16 v52, v5

    move/from16 v53, p2

    move-object/from16 v54, p3

    move/from16 v55, v22

    move/from16 v56, v24

    move/from16 v57, v25

    .line 475
    invoke-virtual/range {v51 .. v57}, Lco/vine/android/client/AppSessionListener;->onUserSearchComplete(Ljava/lang/String;ILjava/lang/String;III)V

    goto :goto_1e

    .line 481
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v22           #count:I
    .end local v24           #nextPage:I
    .end local v25           #previousPage:I
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_20
    const-string v4, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 482
    .restart local v22       #count:I
    const-string v4, "next_page"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 483
    .restart local v24       #nextPage:I
    const-string v4, "previous_page"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 485
    .restart local v25       #previousPage:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v51, v3

    move-object/from16 v52, v5

    move/from16 v53, p2

    move-object/from16 v54, p3

    move/from16 v55, v22

    move/from16 v56, v24

    move/from16 v57, v25

    .line 486
    invoke-virtual/range {v51 .. v57}, Lco/vine/android/client/AppSessionListener;->onTagSearchComplete(Ljava/lang/String;ILjava/lang/String;III)V

    goto :goto_1f

    .line 492
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v22           #count:I
    .end local v24           #nextPage:I
    .end local v25           #previousPage:I
    .end local v62           #i$:Ljava/util/Iterator;
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lco/vine/android/util/Util;->removeCache(Landroid/content/Context;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lco/vine/android/util/image/ImageUtils;->removeFiles(Landroid/content/Context;)V

    .line 494
    new-instance v61, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    const-class v6, Lco/vine/android/service/VineUploadService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    .local v61, i:Landroid/content/Intent;
    const-string v4, "discard_all"

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .restart local v62       #i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 498
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v5, v0, v1}, Lco/vine/android/client/AppSessionListener;->onClearCacheComplete(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_20

    .line 217
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_9
        :pswitch_9
        :pswitch_19
        :pswitch_1a
        :pswitch_15
        :pswitch_0
        :pswitch_1c
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 1049
    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/Session;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public isPendingRequest(Ljava/lang/String;)Z
    .locals 1
    .parameter "reqId"

    .prologue
    .line 729
    iget-object v0, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/client/AppController$VineServiceConnection;

    invoke-virtual {v0, p1}, Lco/vine/android/client/AppController$VineServiceConnection;->isPending(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public likePost(Lco/vine/android/client/Session;JJLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "postToLike"
    .parameter "meUserId"
    .parameter "meUsername"

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 657
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 658
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 659
    const-string v1, "username"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/16 v1, 0x18

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public login(Lco/vine/android/client/Session;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "login"
    .parameter "password"

    .prologue
    .line 765
    sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGING_IN:Lco/vine/android/client/Session$LoginStatus;

    invoke-virtual {p1, v1}, Lco/vine/android/client/Session;->setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V

    .line 766
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 767
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "login"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 768
    const-string v1, "pass"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public loginCheckTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "username"
    .parameter "token"
    .parameter "secret"
    .parameter "twitterUserId"

    .prologue
    .line 922
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 923
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v1, "secret"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v1, "t_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 927
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public loginComplete(Lco/vine/android/client/Session;ILandroid/os/Bundle;)Lco/vine/android/api/VineLogin;
    .locals 8
    .parameter "session"
    .parameter "responseCode"
    .parameter "b"

    .prologue
    .line 570
    const-string v0, "login"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lco/vine/android/api/VineLogin;

    .line 571
    .local v7, vl:Lco/vine/android/api/VineLogin;
    if-eqz v7, :cond_0

    .line 572
    const-string v0, "a_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "pass"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "login"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lco/vine/android/api/VineLogin;

    const-string v0, "avatar_url"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->loginComplete(Lco/vine/android/client/Session;ILjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Lco/vine/android/api/VineLogin;

    move-result-object v0

    .line 578
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginComplete(Lco/vine/android/client/Session;ILjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Lco/vine/android/api/VineLogin;
    .locals 6
    .parameter "session"
    .parameter "responseCode"
    .parameter "accountName"
    .parameter "password"
    .parameter "login"
    .parameter "avatarUrl"

    .prologue
    .line 534
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 535
    sget-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lco/vine/android/client/Session;->setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V

    .line 539
    iget v0, p5, Lco/vine/android/api/VineLogin;->loginType:I

    packed-switch v0, :pswitch_data_0

    .line 549
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unsupported login type."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :pswitch_0
    move-object v1, p3

    .line 553
    .local v1, uniqueLogin:Ljava/lang/String;
    :goto_0
    iget-wide v2, p5, Lco/vine/android/api/VineLogin;->userId:J

    invoke-virtual {p1, v2, v3}, Lco/vine/android/client/Session;->setUserId(J)V

    .line 554
    invoke-virtual {p1, p3}, Lco/vine/android/client/Session;->setName(Ljava/lang/String;)V

    .line 555
    iget-object v0, p5, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lco/vine/android/client/Session;->setSessionKey(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p1, v1}, Lco/vine/android/client/Session;->setLoginEmail(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1, p6}, Lco/vine/android/client/Session;->setAvatarUrl(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    move-object v2, p5

    move-object v3, p4

    move-object v4, p6

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lco/vine/android/client/VineAccountHelper;->createAccount(Landroid/content/Context;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    .line 561
    iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    iget-wide v2, p5, Lco/vine/android/api/VineLogin;->userId:J

    invoke-static {v0, v1, p3, v2, v3}, Lco/vine/android/provider/SettingsManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 565
    .end local v1           #uniqueLogin:Ljava/lang/String;
    .end local p5
    :goto_1
    return-object p5

    .line 545
    .restart local p5
    :pswitch_1
    iget-object v1, p5, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    .line 546
    .restart local v1       #uniqueLogin:Ljava/lang/String;
    goto :goto_0

    .line 565
    .end local v1           #uniqueLogin:Ljava/lang/String;
    :cond_0
    const/4 p5, 0x0

    goto :goto_1

    .line 539
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loginWithxAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "username"
    .parameter "password"

    .prologue
    .line 826
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 827
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v1, "pass"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public logout(Lco/vine/android/client/Session;)Ljava/lang/String;
    .locals 2
    .parameter "session"

    .prologue
    .line 779
    invoke-virtual {p1}, Lco/vine/android/client/Session;->getLoginStatus()Lco/vine/android/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getLoginStatus()Lco/vine/android/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGING_IN:Lco/vine/android/client/Session$LoginStatus;

    if-ne v0, v1, :cond_1

    .line 781
    :cond_0
    sget-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGING_OUT:Lco/vine/android/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lco/vine/android/client/Session;->setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V

    .line 782
    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 785
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhotoImageError(Lco/vine/android/util/image/PhotoImagesCache;Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
    .locals 3
    .parameter "cache"
    .parameter "key"
    .parameter "result"

    .prologue
    .line 1125
    iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    .line 1126
    .local v1, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/client/AppSessionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1127
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v2, p2, p3}, Lco/vine/android/client/AppSessionListener;->onPhotoImageError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V

    .line 1126
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1129
    :cond_0
    return-void
.end method

.method public onPhotoImageLoaded(Lco/vine/android/util/image/PhotoImagesCache;Ljava/util/HashMap;)V
    .locals 3
    .parameter "cache"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/util/image/PhotoImagesCache;",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1117
    .local p2, image:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    .line 1118
    .local v1, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/client/AppSessionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1119
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v2, p2}, Lco/vine/android/client/AppSessionListener;->onPhotoImageLoaded(Ljava/util/HashMap;)V

    .line 1118
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1121
    :cond_0
    return-void
.end method

.method public onVideoPathError(Lco/vine/android/util/video/VideoCache;Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
    .locals 3
    .parameter "cache"
    .parameter "key"
    .parameter "result"

    .prologue
    .line 1142
    iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    .line 1143
    .local v1, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/client/AppSessionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1144
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v2, p2, p3}, Lco/vine/android/client/AppSessionListener;->onVideoPathError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V

    .line 1143
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1146
    :cond_0
    return-void
.end method

.method public onVideoPathObtained(Lco/vine/android/util/video/VideoCache;Ljava/util/HashMap;)V
    .locals 3
    .parameter "cache"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/util/video/VideoCache;",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Lco/vine/android/util/video/UrlVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1134
    .local p2, videos:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/video/VideoKey;Lco/vine/android/util/video/UrlVideo;>;"
    iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    .line 1135
    .local v1, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/client/AppSessionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1136
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v2, p2}, Lco/vine/android/client/AppSessionListener;->onVideoPathObtained(Ljava/util/HashMap;)V

    .line 1135
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1138
    :cond_0
    return-void
.end method

.method public peekVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 517
    iget-object v0, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;

    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lco/vine/android/util/video/VideoCache;->getFile(JLco/vine/android/util/video/VideoKey;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public postComment(JLco/vine/android/client/Session;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "postId"
    .parameter "session"
    .parameter "comment"

    .prologue
    .line 870
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 871
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 872
    const-string v1, "user_id"

    invoke-virtual {p3}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 873
    const-string v1, "username"

    invoke-virtual {p3}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v1, "comment"

    invoke-static {p4}, Lco/vine/android/util/Util;->cleanse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v1, "avatar_url"

    invoke-virtual {p3}, Lco/vine/android/client/Session;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public refreshSessionKey(Ljava/lang/String;)V
    .locals 1
    .parameter "newSessionKey"

    .prologue
    .line 1076
    iget-object v0, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    invoke-virtual {v0, p1}, Lco/vine/android/client/Session;->setSessionKey(Ljava/lang/String;)V

    .line 1079
    :cond_0
    return-void
.end method

.method public removeFollowPosts(Lco/vine/android/client/Session;J)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "userId"

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 671
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 672
    const/16 v1, 0x22

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public removeListener(Lco/vine/android/client/AppSessionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1060
    iget-object v0, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1061
    return-void
.end method

.method public removeUsers(Lco/vine/android/client/Session;I)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "type"

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 944
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 945
    const/16 v1, 0x11

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public reportPost(Lco/vine/android/client/Session;J)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "postId"

    .prologue
    .line 887
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 888
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 889
    const/16 v1, 0x1b

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public resetPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "email"

    .prologue
    .line 814
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 815
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "login"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public searchTags(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "query"
    .parameter "pageType"

    .prologue
    .line 1170
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 1171
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const-string v1, "page_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1173
    const/16 v1, 0x29

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public searchUsers(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "query"
    .parameter "pageType"

    .prologue
    .line 1163
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 1164
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string v1, "page_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1166
    const/16 v1, 0x28

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public sendFacebookToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 899
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 900
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "facebook_token"

    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getPendingFacebookToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const/16 v1, 0x25

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setActiveSession(Lco/vine/android/client/Session;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 739
    iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/provider/SettingsManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 741
    return-void
.end method

.method public signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lco/vine/android/api/TwitterUser;Lco/vine/android/api/VineLogin;)Ljava/lang/String;
    .locals 3
    .parameter "login"
    .parameter "password"
    .parameter "username"
    .parameter "phoneNumber"
    .parameter "profileUri"
    .parameter "twitterUser"
    .parameter "vl"

    .prologue
    .line 791
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 792
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "login"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v1, "pass"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v1, "a_name"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v1, "phone"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v1, "uri"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 797
    const-string v1, "t_user"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 798
    if-eqz p7, :cond_0

    .line 799
    const-string v1, "key"

    iget-object v2, p7, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v1, "secret"

    iget-object v2, p7, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unfollowUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;
    .locals 7
    .parameter "session"
    .parameter "userIdToUnfollow"
    .parameter "notify"

    .prologue
    .line 643
    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->unfollowUser(Lco/vine/android/client/Session;JZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unfollowUser(Lco/vine/android/client/Session;JZJ)Ljava/lang/String;
    .locals 4
    .parameter "session"
    .parameter "userIdToUnfollow"
    .parameter "notify"
    .parameter "currentProfileId"

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 648
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "follow_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 649
    const-string v1, "profile_id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 650
    const-string v1, "user_id"

    iget-object v2, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    invoke-virtual {v2}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 651
    const-string v1, "notify"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 652
    const/16 v1, 0x13

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unlikePost(Lco/vine/android/client/Session;J)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "postToUnlike"

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 665
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 666
    const/16 v1, 0x19

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateClientProfile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 865
    const-string v0, "Update Client Profile."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 866
    const/16 v0, 0x23

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCredentials(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1092
    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/client/Session;->setSessionKey(Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method public updateProfile(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "session"
    .parameter "name"
    .parameter "description"
    .parameter "location"
    .parameter "email"
    .parameter "phone"
    .parameter "avatar"

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 591
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "a_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v1, "desc"

    invoke-static {p3}, Lco/vine/android/util/Util;->cleanse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v1, "location"

    invoke-static {p4}, Lco/vine/android/util/Util;->cleanse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v1, "email"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v1, "phone"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    if-eqz p7, :cond_0

    .line 597
    const-string v1, "uri"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 599
    :cond_0
    const/16 v1, 0x1a

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
