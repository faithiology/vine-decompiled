.class public Lco/vine/android/client/AppController;
.super Ljava/lang/Object;
.source "AppController.java"

# interfaces
.implements Lco/vine/android/util/image/PhotoImagesListener;
.implements Lco/vine/android/util/video/VideoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/client/AppController$VineServiceConnection;
    }
.end annotation


# static fields
.field private static final CLEANUP_INTERVAL:J = 0x36ee80L

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

.field private final mServiceConnection:Lco/vine/android/client/AppController$VineServiceConnection;

.field private final mServiceResponder:Lco/vine/android/service/VineServiceResponder;

.field private final mTwitter:Lcom/twitter/android/sdk/Twitter;

.field private final mVideoCache:Lco/vine/android/util/video/VideoCache;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v3, Lco/vine/android/client/AppController$VineServiceConnection;

    invoke-direct {v3}, Lco/vine/android/client/AppController$VineServiceConnection;-><init>()V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/client/AppController$VineServiceConnection;

    .line 91
    iput-object p1, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    .line 92
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    .line 95
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 97
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 98
    .local v2, p:Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 99
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 100
    .local v1, maxImageSize:I
    new-instance v3, Lco/vine/android/util/image/PhotoImagesCache;

    const/high16 v4, 0x1e0

    invoke-direct {v3, p1, v1, v4}, Lco/vine/android/util/image/PhotoImagesCache;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mPhotoImagesCache:Lco/vine/android/util/image/PhotoImagesCache;

    .line 101
    iget-object v3, p0, Lco/vine/android/client/AppController;->mPhotoImagesCache:Lco/vine/android/util/image/PhotoImagesCache;

    invoke-virtual {v3, p0}, Lco/vine/android/util/image/PhotoImagesCache;->addListener(Lco/vine/android/util/image/PhotoImagesListener;)V

    .line 102
    new-instance v3, Lco/vine/android/util/video/VideoCache;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lco/vine/android/util/video/VideoCache;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;

    .line 103
    iget-object v3, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;

    invoke-virtual {v3, p0}, Lco/vine/android/util/video/VideoCache;->addListener(Lco/vine/android/util/video/VideoListener;)V

    .line 104
    new-instance v3, Lcom/twitter/android/sdk/Twitter;

    sget-object v4, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;

    sget-object v5, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/twitter/android/sdk/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    .line 106
    new-instance v3, Lco/vine/android/client/AppController$1;

    invoke-direct {v3, p0}, Lco/vine/android/client/AppController$1;-><init>(Lco/vine/android/client/AppController;)V

    iput-object v3, p0, Lco/vine/android/client/AppController;->mServiceResponder:Lco/vine/android/service/VineServiceResponder;

    .line 114
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lco/vine/android/service/VineService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/client/AppController$VineServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 116
    return-void
.end method

.method private createServiceBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 909
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
    .line 914
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 915
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "s_key"

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getSessionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v1, "s_owner_id"

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 917
    const-string v1, "a_name"

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v1, "email"

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    return-object v0
.end method

.method private createSession()Lco/vine/android/client/Session;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 884
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
    .line 876
    iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    .line 877
    .local v6, am:Landroid/accounts/AccountManager;
    invoke-static {v6, p1}, Lco/vine/android/client/VineAccountHelper;->getUserId(Landroid/accounts/AccountManager;Landroid/accounts/Account;)J

    move-result-wide v2

    .line 878
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
    .line 904
    const-string v0, "Last Service Action Code"

    invoke-static {v0, p1}, Lcom/crashlytics/android/Crashlytics;->setInt(Ljava/lang/String;I)V

    .line 905
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
    .line 84
    const-class v1, Lco/vine/android/client/AppController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lco/vine/android/client/AppController;->sInstance:Lco/vine/android/client/AppController;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lco/vine/android/client/AppController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lco/vine/android/client/AppController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/vine/android/client/AppController;->sInstance:Lco/vine/android/client/AppController;

    .line 87
    :cond_0
    sget-object v0, Lco/vine/android/client/AppController;->sInstance:Lco/vine/android/client/AppController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 84
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
    .line 839
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 840
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "time"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 841
    const/16 v1, 0x1d

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addListener(Lco/vine/android/client/AppSessionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 865
    iget-object v0, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public attemptCancelVideoFetchRequest(Lco/vine/android/util/video/VideoKey;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 393
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

.method public connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "username"
    .parameter "token"
    .parameter "secret"
    .parameter "userId"

    .prologue
    .line 794
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 795
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v1, "key"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v1, "secret"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 799
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
    .line 739
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 740
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 741
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
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
    .line 752
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 753
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 754
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

    .line 813
    iget-object v7, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 814
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v7, "last_cleanup"

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 815
    .local v4, lastCleanupTime:J
    cmp-long v7, v4, v8

    if-lez v7, :cond_1

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    const-wide/32 v9, 0x36ee80

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 817
    new-instance v3, Landroid/os/Handler;

    iget-object v7, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 818
    .local v3, h:Landroid/os/Handler;
    invoke-direct {p0, p1, v4, v5}, Lco/vine/android/client/AppController;->performCleanup(Lco/vine/android/client/Session;J)Ljava/lang/String;

    .line 828
    .end local v3           #h:Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 824
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 825
    .local v0, cleanupTime:J
    const-string v7, "last_cleanup"

    invoke-interface {v2, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 826
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public disconnectTwitter(Lco/vine/android/client/Session;)Ljava/lang/String;
    .locals 2
    .parameter "session"

    .prologue
    .line 803
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 804
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
    .line 494
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 495
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "page_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    const/16 v1, 0x14

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchAddressFriends(Lco/vine/android/client/Session;)Ljava/lang/String;
    .locals 2
    .parameter "session"

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 783
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
    .line 716
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 717
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 718
    const-string v1, "page"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 719
    const-string v1, "size"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 720
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
    .line 473
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 474
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "profile_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 475
    const-string v1, "page_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
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
    .line 480
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 481
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "profile_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 482
    const-string v1, "page_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
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
    .line 704
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 705
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 706
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
    .line 710
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 711
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_share_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
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
    .line 487
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 488
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 489
    const-string v1, "page_type"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
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
    .line 693
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 694
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "size"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 695
    const-string v1, "type"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 696
    const-string v1, "page_type"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 697
    const-string v1, "profile_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 698
    const-string v1, "tag_name"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v1, "user_init"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 700
    const/16 v1, 0xd

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
    .line 775
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 776
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v1, "secret"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchTwitterUser(Lco/vine/android/api/VineLogin;)Ljava/lang/String;
    .locals 2
    .parameter "mLogin"

    .prologue
    .line 679
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 680
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "login"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 681
    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchUser(J)Ljava/lang/String;
    .locals 2
    .parameter "userId"

    .prologue
    .line 467
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 468
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 469
    const/16 v1, 0x15

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchUsersMe(J)Ljava/lang/String;
    .locals 2
    .parameter "userId"

    .prologue
    .line 447
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 448
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "s_owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 449
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
    .line 500
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 501
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "follow_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 502
    const-string v1, "notify"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 503
    const/16 v1, 0x12

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActiveId()J
    .locals 2

    .prologue
    .line 578
    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveSession()Lco/vine/android/client/Session;
    .locals 9

    .prologue
    .line 541
    iget-object v7, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    .line 542
    .local v7, session:Lco/vine/android/client/Session;
    if-nez v7, :cond_3

    .line 543
    iget-object v8, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 544
    .local v3, am:Landroid/accounts/AccountManager;
    const-string v8, "co.vine.android.auth"

    invoke-virtual {v3, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 546
    .local v2, accounts:[Landroid/accounts/Account;
    array-length v8, v2

    if-lez v8, :cond_2

    .line 548
    iget-object v8, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lco/vine/android/provider/SettingsManager;->getCurrentAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 551
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

    .line 552
    .local v0, account:Landroid/accounts/Account;
    if-eqz v1, :cond_0

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 555
    :cond_0
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lco/vine/android/client/AppController;->getSession(Ljava/lang/String;)Lco/vine/android/client/Session;

    move-result-object v7

    .line 556
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lco/vine/android/client/Session;->setLoginEmail(Ljava/lang/String;)V

    .line 557
    sget-object v8, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;

    invoke-virtual {v7, v8}, Lco/vine/android/client/Session;->setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V

    .line 558
    invoke-virtual {p0, v7}, Lco/vine/android/client/AppController;->setActiveSession(Lco/vine/android/client/Session;)V

    .line 559
    iput-object v7, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    move-object v8, v7

    .line 574
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accounts:[Landroid/accounts/Account;
    .end local v3           #am:Landroid/accounts/AccountManager;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :goto_1
    return-object v8

    .line 551
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

    .line 567
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_2
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createSession()Lco/vine/android/client/Session;

    move-result-object v7

    .line 570
    invoke-virtual {p0, v7}, Lco/vine/android/client/AppController;->setActiveSession(Lco/vine/android/client/Session;)V

    .line 571
    iput-object v7, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    .line 574
    .end local v2           #accounts:[Landroid/accounts/Account;
    .end local v3           #am:Landroid/accounts/AccountManager;
    :cond_3
    iget-object v8, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    goto :goto_1
.end method

.method public getLoginStatus()Lco/vine/android/client/Session$LoginStatus;
    .locals 1

    .prologue
    .line 851
    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getLoginStatus()Lco/vine/android/client/Session$LoginStatus;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "key"

    .prologue
    .line 373
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
    .line 603
    if-nez p1, :cond_0

    .line 604
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createSession()Lco/vine/android/client/Session;

    move-result-object v1

    .line 614
    :goto_0
    return-object v1

    .line 606
    :cond_0
    iget-object v1, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    if-nez v1, :cond_1

    .line 607
    iget-object v1, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 608
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_2

    .line 609
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createSession()Lco/vine/android/client/Session;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    .line 614
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    :goto_1
    iget-object v1, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    goto :goto_0

    .line 611
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
    .line 119
    iget-object v0, p0, Lco/vine/android/client/AppController;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    return-object v0
.end method

.method public getTwitterAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "callback"
    .parameter "key"
    .parameter "secret"

    .prologue
    .line 665
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 666
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v1, "secret"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 377
    iget-object v0, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;

    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lco/vine/android/util/video/VideoCache;->getFile(JLco/vine/android/util/video/VideoKey;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 57
    .parameter "actionCode"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "b"

    .prologue
    .line 123
    const-string v4, "rid"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, reqId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/client/AppController$VineServiceConnection;

    invoke-virtual {v4, v5}, Lco/vine/android/client/AppController$VineServiceConnection;->remove(Ljava/lang/String;)V

    .line 127
    const-string v4, "logged_out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    invoke-virtual {v4}, Lco/vine/android/client/Session;->logout()V

    .line 129
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .local v52, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 130
    .local v3, listener:Lco/vine/android/client/AppSessionListener;
    invoke-virtual {v3, v5}, Lco/vine/android/client/AppSessionListener;->onLogoutComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v52           #i$:Ljava/util/Iterator;
    :cond_0
    const-string v4, "refresh_session"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const-string v4, "s_key"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lco/vine/android/client/AppController;->refreshSessionKey(Ljava/lang/String;)V

    .line 139
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 370
    :cond_2
    :goto_1
    :pswitch_0
    return-void

    .line 141
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v4, v1, v2}, Lco/vine/android/client/AppController;->loginComplete(Lco/vine/android/client/Session;ILandroid/os/Bundle;)Lco/vine/android/api/VineLogin;

    move-result-object v8

    .line 143
    .local v8, vl:Lco/vine/android/api/VineLogin;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 144
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Lco/vine/android/client/AppSessionListener;->onLoginComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;)V

    goto :goto_2

    .line 149
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v8           #vl:Lco/vine/android/api/VineLogin;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-static {v4, v6, v7, v9, v10}, Lco/vine/android/provider/SettingsManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    invoke-virtual {v6}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lco/vine/android/client/VineAccountHelper;->removeAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    invoke-virtual {v4}, Lco/vine/android/client/Session;->logout()V

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 154
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    invoke-virtual {v3, v5}, Lco/vine/android/client/AppSessionListener;->onLogoutComplete(Ljava/lang/String;)V

    goto :goto_3

    .line 159
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_3
    const-string v4, "login"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lco/vine/android/api/VineLogin;

    .line 160
    .local v13, login:Lco/vine/android/api/VineLogin;
    const-string v4, "pass"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 161
    .local v15, password:Ljava/lang/String;
    const-string v4, "a_name"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 162
    .local v14, accountName:Ljava/lang/String;
    const-string v4, "avatar_url"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 163
    .local v16, avatarUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object v9, v3

    move-object v10, v5

    move/from16 v11, p2

    move-object/from16 v12, p3

    .line 164
    invoke-virtual/range {v9 .. v16}, Lco/vine/android/client/AppSessionListener;->onSignUpComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 170
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v13           #login:Lco/vine/android/api/VineLogin;
    .end local v14           #accountName:Ljava/lang/String;
    .end local v15           #password:Ljava/lang/String;
    .end local v16           #avatarUrl:Ljava/lang/String;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 171
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    const-string v4, "load_url"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lco/vine/android/client/AppSessionListener;->onGetTwitterAuthUrlComplete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 177
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 178
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

    .line 186
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 187
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

    .line 194
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_7
    const-string v4, "login"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lco/vine/android/api/VineLogin;

    .line 195
    .restart local v8       #vl:Lco/vine/android/api/VineLogin;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 196
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v5, v0, v1, v8}, Lco/vine/android/client/AppSessionListener;->onTwitterxAuthComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;)V

    goto :goto_8

    .line 201
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v8           #vl:Lco/vine/android/api/VineLogin;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 202
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v5, v0, v1}, Lco/vine/android/client/AppSessionListener;->onResetPasswordComplete(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_9

    .line 209
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_9
    const-string v4, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 210
    .local v22, count:I
    const-string v4, "next_page"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 211
    .local v24, nextPage:I
    const-string v4, "previous_page"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 212
    .local v25, previousPage:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 213
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

    .line 219
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v22           #count:I
    .end local v24           #nextPage:I
    .end local v25           #previousPage:I
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_a
    const-string v4, "type"

    const/4 v6, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 220
    .local v21, type:I
    const-string v4, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 221
    .restart local v22       #count:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move/from16 v19, p2

    move-object/from16 v20, p3

    .line 222
    invoke-virtual/range {v17 .. v22}, Lco/vine/android/client/AppSessionListener;->onGetTimeLineComplete(Ljava/lang/String;ILjava/lang/String;II)V

    goto :goto_b

    .line 224
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    :cond_3
    const/16 v4, 0xc8

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    .line 225
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lco/vine/android/client/AppController;->determineCleanup(Lco/vine/android/client/Session;)V

    goto/16 :goto_1

    .line 230
    .end local v21           #type:I
    .end local v22           #count:I
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 231
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

    .line 237
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_c
    const-string v4, "post_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 238
    .local v30, id:J
    const-string v4, "comment"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 239
    .local v32, comment:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    move/from16 v28, p2

    move-object/from16 v29, p3

    .line 240
    invoke-virtual/range {v26 .. v32}, Lco/vine/android/client/AppSessionListener;->onPostCommentComplete(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;)V

    goto :goto_d

    .line 245
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v30           #id:J
    .end local v32           #comment:Ljava/lang/String;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 246
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

    .line 253
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_e
    const-string v4, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 254
    .restart local v22       #count:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 255
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v3, v5, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onGetTwitterFriendsComplete(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_f

    .line 260
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v22           #count:I
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_f
    const-string v4, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 261
    .restart local v22       #count:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 262
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v3, v5, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onGetAddressFriendsComplete(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_10

    .line 267
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v22           #count:I
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_10
    const-string v4, "follow_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v36

    .line 269
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

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v38, v3

    move-object/from16 v39, v5

    move/from16 v40, p2

    move-object/from16 v41, p3

    move-wide/from16 v42, v36

    .line 273
    invoke-virtual/range {v38 .. v43}, Lco/vine/android/client/AppSessionListener;->onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_11

    .line 278
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v36           #userId:J
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_11
    const-string v4, "follow_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v36

    .line 279
    .restart local v36       #userId:J
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v4, v1, v2}, Lco/vine/android/client/AppController;->removeFollowPosts(Lco/vine/android/client/Session;J)Ljava/lang/String;

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v38, v3

    move-object/from16 v39, v5

    move/from16 v40, p2

    move-object/from16 v41, p3

    move-wide/from16 v42, v36

    .line 281
    invoke-virtual/range {v38 .. v43}, Lco/vine/android/client/AppSessionListener;->onUnFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_12

    .line 286
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v36           #userId:J
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_12
    const-string v4, "count"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 287
    .restart local v22       #count:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 288
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v3, v5, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onGetActivityComplete(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_13

    .line 293
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v22           #count:I
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 294
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    invoke-virtual {v3, v5}, Lco/vine/android/client/AppSessionListener;->onRemoveUsersComplete(Ljava/lang/String;)V

    goto :goto_14

    .line 299
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_14
    const-string v4, "user"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v56

    check-cast v56, Lco/vine/android/api/VineUser;

    .line 300
    .local v56, user:Lco/vine/android/api/VineUser;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 301
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v56

    invoke-virtual {v3, v5, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onGetUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineUser;)V

    goto :goto_15

    .line 306
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v52           #i$:Ljava/util/Iterator;
    .end local v56           #user:Lco/vine/android/api/VineUser;
    :pswitch_15
    const-string v4, "avatar_url"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 307
    .restart local v16       #avatarUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 308
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    invoke-virtual {v3, v5, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onUpdateProfileComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 313
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v16           #avatarUrl:Ljava/lang/String;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v55

    .line 316
    .local v55, prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v51

    .line 317
    .local v51, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v53

    .line 318
    .local v53, lastCleanupTime:J
    const-string v4, "last_cleanup"

    move-object/from16 v0, v51

    move-wide/from16 v1, v53

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 319
    invoke-interface/range {v51 .. v51}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 323
    .end local v51           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v53           #lastCleanupTime:J
    .end local v55           #prefs:Landroid/content/SharedPreferences;
    :pswitch_17
    const-string v4, "username"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 324
    .local v42, username:Ljava/lang/String;
    const-string v4, "key"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 325
    .local v43, token:Ljava/lang/String;
    const-string v4, "secret"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 326
    .local v44, secret:Ljava/lang/String;
    const-string v4, "user_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v36

    .line 327
    .restart local v36       #userId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v38, v3

    move-object/from16 v39, v5

    move/from16 v40, p2

    move-object/from16 v41, p3

    move-wide/from16 v45, v36

    .line 328
    invoke-virtual/range {v38 .. v46}, Lco/vine/android/client/AppSessionListener;->onConnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_17

    .line 334
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v36           #userId:J
    .end local v42           #username:Ljava/lang/String;
    .end local v43           #token:Ljava/lang/String;
    .end local v44           #secret:Ljava/lang/String;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 335
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v5, v0, v1}, Lco/vine/android/client/AppSessionListener;->onDisconnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_18

    .line 340
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_19
    const-string v4, "post_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v49

    .line 341
    .local v49, postId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v45, v3

    move-object/from16 v46, v5

    move/from16 v47, p2

    move-object/from16 v48, p3

    .line 342
    invoke-virtual/range {v45 .. v50}, Lco/vine/android/client/AppSessionListener;->onLikePost(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_19

    .line 347
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v49           #postId:J
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_1a
    const-string v4, "post_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v49

    .line 348
    .restart local v49       #postId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v45, v3

    move-object/from16 v46, v5

    move/from16 v47, p2

    move-object/from16 v48, p3

    .line 349
    invoke-virtual/range {v45 .. v50}, Lco/vine/android/client/AppSessionListener;->onUnlikePost(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_1a

    .line 354
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v49           #postId:J
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_1b
    const-string v4, "post_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v49

    .line 355
    .restart local v49       #postId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move-object/from16 v45, v3

    move-object/from16 v46, v5

    move/from16 v47, p2

    move-object/from16 v48, p3

    .line 356
    invoke-virtual/range {v45 .. v50}, Lco/vine/android/client/AppSessionListener;->onGetPostIdComplete(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_1b

    .line 361
    .end local v3           #listener:Lco/vine/android/client/AppSessionListener;
    .end local v49           #postId:J
    .end local v52           #i$:Ljava/util/Iterator;
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .restart local v52       #i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    .line 362
    .restart local v3       #listener:Lco/vine/android/client/AppSessionListener;
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v5, v0, v1}, Lco/vine/android/client/AppSessionListener;->onGetSinglePostComplete(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1c

    .line 139
    nop

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
    .end packed-switch
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 861
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
    .line 588
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
    .line 520
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 521
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 522
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 523
    const-string v1, "username"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
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
    .line 624
    sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGING_IN:Lco/vine/android/client/Session$LoginStatus;

    invoke-virtual {p1, v1}, Lco/vine/android/client/Session;->setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V

    .line 625
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 626
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "login"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 627
    const-string v1, "pass"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
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
    .line 766
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 767
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v1, "secret"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v1, "t_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 771
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
    .line 434
    const-string v0, "login"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lco/vine/android/api/VineLogin;

    .line 435
    .local v7, vl:Lco/vine/android/api/VineLogin;
    if-eqz v7, :cond_0

    .line 436
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

    .line 442
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
    .line 398
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 399
    sget-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lco/vine/android/client/Session;->setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V

    .line 403
    iget v0, p5, Lco/vine/android/api/VineLogin;->loginType:I

    packed-switch v0, :pswitch_data_0

    .line 413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unsupported login type."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :pswitch_0
    move-object v1, p3

    .line 417
    .local v1, uniqueLogin:Ljava/lang/String;
    :goto_0
    iget-wide v2, p5, Lco/vine/android/api/VineLogin;->userId:J

    invoke-virtual {p1, v2, v3}, Lco/vine/android/client/Session;->setUserId(J)V

    .line 418
    invoke-virtual {p1, p3}, Lco/vine/android/client/Session;->setName(Ljava/lang/String;)V

    .line 419
    iget-object v0, p5, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lco/vine/android/client/Session;->setSessionKey(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1, v1}, Lco/vine/android/client/Session;->setLoginEmail(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1, p6}, Lco/vine/android/client/Session;->setAvatarUrl(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    move-object v2, p5

    move-object v3, p4

    move-object v4, p6

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lco/vine/android/client/VineAccountHelper;->createAccount(Landroid/content/Context;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    .line 425
    iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    iget-wide v2, p5, Lco/vine/android/api/VineLogin;->userId:J

    invoke-static {v0, v1, p3, v2, v3}, Lco/vine/android/provider/SettingsManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 429
    .end local v1           #uniqueLogin:Ljava/lang/String;
    .end local p5
    :goto_1
    return-object p5

    .line 409
    .restart local p5
    :pswitch_1
    iget-object v1, p5, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    .line 410
    .restart local v1       #uniqueLogin:Ljava/lang/String;
    goto :goto_0

    .line 429
    .end local v1           #uniqueLogin:Ljava/lang/String;
    :cond_0
    const/4 p5, 0x0

    goto :goto_1

    .line 403
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
    .line 685
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 686
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v1, "pass"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public logout(Lco/vine/android/client/Session;)Ljava/lang/String;
    .locals 2
    .parameter "session"

    .prologue
    .line 638
    invoke-virtual {p1}, Lco/vine/android/client/Session;->getLoginStatus()Lco/vine/android/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getLoginStatus()Lco/vine/android/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGING_IN:Lco/vine/android/client/Session$LoginStatus;

    if-ne v0, v1, :cond_1

    .line 640
    :cond_0
    sget-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGING_OUT:Lco/vine/android/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lco/vine/android/client/Session;->setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V

    .line 641
    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 644
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
    .line 933
    iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    .line 934
    .local v1, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/client/AppSessionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 935
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v2, p2, p3}, Lco/vine/android/client/AppSessionListener;->onPhotoImageError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V

    .line 934
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 937
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
    .line 925
    .local p2, image:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    .line 926
    .local v1, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/client/AppSessionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 927
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v2, p2}, Lco/vine/android/client/AppSessionListener;->onPhotoImageLoaded(Ljava/util/HashMap;)V

    .line 926
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 929
    :cond_0
    return-void
.end method

.method public onVideoPathError(Lco/vine/android/util/video/VideoCache;Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
    .locals 3
    .parameter "cache"
    .parameter "key"
    .parameter "result"

    .prologue
    .line 950
    iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    .line 951
    .local v1, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/client/AppSessionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 952
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v2, p2, p3}, Lco/vine/android/client/AppSessionListener;->onVideoPathError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V

    .line 951
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 954
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
    .line 942
    .local p2, videos:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/video/VideoKey;Lco/vine/android/util/video/UrlVideo;>;"
    iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    .line 943
    .local v1, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/client/AppSessionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 944
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v2, p2}, Lco/vine/android/client/AppSessionListener;->onVideoPathObtained(Ljava/util/HashMap;)V

    .line 943
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 946
    :cond_0
    return-void
.end method

.method public peekVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 381
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
    .line 729
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 730
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 731
    const-string v1, "user_id"

    invoke-virtual {p3}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 732
    const-string v1, "username"

    invoke-virtual {p3}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v1, "comment"

    invoke-static {p4}, Lco/vine/android/util/Util;->cleanse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v1, "avatar_url"

    invoke-virtual {p3}, Lco/vine/android/client/Session;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public refreshSessionKey(Ljava/lang/String;)V
    .locals 1
    .parameter "newSessionKey"

    .prologue
    .line 888
    iget-object v0, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    invoke-virtual {v0, p1}, Lco/vine/android/client/Session;->setSessionKey(Ljava/lang/String;)V

    .line 891
    :cond_0
    return-void
.end method

.method public removeFollowPosts(Lco/vine/android/client/Session;J)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "userId"

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 535
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 536
    const/16 v1, 0x22

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public removeListener(Lco/vine/android/client/AppSessionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 872
    iget-object v0, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 873
    return-void
.end method

.method public removeUsers(Lco/vine/android/client/Session;I)Ljava/lang/String;
    .locals 2
    .parameter "session"
    .parameter "type"

    .prologue
    .line 787
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 788
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 789
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
    .line 746
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 747
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 748
    const/16 v1, 0x1b

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public resetPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "email"

    .prologue
    .line 673
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 674
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "login"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setActiveSession(Lco/vine/android/client/Session;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 598
    iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/provider/SettingsManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 600
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
    .line 650
    invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 651
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "login"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v1, "pass"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v1, "a_name"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v1, "phone"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v1, "uri"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 656
    const-string v1, "t_user"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 657
    if-eqz p7, :cond_0

    .line 658
    const-string v1, "key"

    iget-object v2, p7, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v1, "secret"

    iget-object v2, p7, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
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
    .line 507
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
    .line 511
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 512
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "follow_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 513
    const-string v1, "profile_id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 514
    const-string v1, "user_id"

    iget-object v2, p0, Lco/vine/android/client/AppController;->mActiveSession:Lco/vine/android/client/Session;

    invoke-virtual {v2}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 515
    const-string v1, "notify"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 516
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
    .line 528
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 529
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 530
    const/16 v1, 0x19

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateClientProfile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 724
    const-string v0, "Update Client Profile."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 725
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
    .line 900
    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/client/Session;->setSessionKey(Ljava/lang/String;)V

    .line 901
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
    .line 454
    invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 455
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "a_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v1, "desc"

    invoke-static {p3}, Lco/vine/android/util/Util;->cleanse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v1, "location"

    invoke-static {p4}, Lco/vine/android/util/Util;->cleanse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v1, "email"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v1, "phone"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    if-eqz p7, :cond_0

    .line 461
    const-string v1, "uri"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 463
    :cond_0
    const/16 v1, 0x1a

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
