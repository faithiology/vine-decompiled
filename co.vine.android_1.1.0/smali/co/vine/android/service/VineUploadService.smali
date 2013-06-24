.class public Lco/vine/android/service/VineUploadService;
.super Landroid/app/Service;
.source "VineUploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/service/VineUploadService$ServiceAsyncTask;
    }
.end annotation


# static fields
.field public static final ACTION_DISCARD:Ljava/lang/String; = "discard"

.field public static final ACTION_DISCARD_ALL:Ljava/lang/String; = "discard_all"

.field public static final ACTION_NOTIFY:Ljava/lang/String; = "cNotify"

.field public static final ACTION_POST:Ljava/lang/String; = "bPost"

.field public static final ACTION_UPLOAD:Ljava/lang/String; = "aUpload"

.field private static final AG_AUTO_POST:Ljava/lang/String; = "autoPost"

.field private static final AG_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final AG_HASH:Ljava/lang/String; = "hash"

.field private static final AG_PATH:Ljava/lang/String; = "path"

.field private static final AG_POST_TO_FACEBOOK:Ljava/lang/String; = "postToFacebook"

.field private static final AG_POST_TO_TWITTER:Ljava/lang/String; = "postToTwitter"

.field private static final AG_THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field private static final SMALL_ICON:I = 0x7f0200ce


# instance fields
.field private mAppController:Lco/vine/android/client/AppController;

.field private mCurrentKey:Ljava/lang/String;

.field private mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

.field private mCurrentThumbnail:Ljava/lang/String;

.field private final mLock:[I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/NotificationCompat$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSet:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lco/vine/android/service/VineUploadService$ServiceAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessor:Lco/vine/android/recorder/VineProcessor;

.field private mProgressMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadManager:Lco/vine/android/util/UploadManager;

.field private mWorkingSet:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lco/vine/android/service/VineUploadService$ServiceAsyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mLock:[I

    .line 457
    return-void
.end method

.method static synthetic access$1000(Lco/vine/android/service/VineUploadService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mNotifications:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lco/vine/android/service/VineUploadService;)Lco/vine/android/client/AppController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mAppController:Lco/vine/android/client/AppController;

    return-object v0
.end method

.method static synthetic access$1200(Lco/vine/android/service/VineUploadService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mProgressMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lco/vine/android/service/VineUploadService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/service/VineUploadService;->updateUploadProgress(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1400(Lco/vine/android/service/VineUploadService;)Lco/vine/android/recorder/VineProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mProcessor:Lco/vine/android/recorder/VineProcessor;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->showFailedNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->discardTask(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lco/vine/android/service/VineUploadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->executeNext()V

    return-void
.end method

.method static synthetic access$500(Lco/vine/android/service/VineUploadService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mLock:[I

    return-object v0
.end method

.method static synthetic access$602(Lco/vine/android/service/VineUploadService;Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Lco/vine/android/service/VineUploadService$ServiceAsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    return-object p1
.end method

.method static synthetic access$700(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->cancelNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lco/vine/android/service/VineUploadService;->mCurrentThumbnail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    return-object v0
.end method

.method private declared-synchronized cancelNotification(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    const-string v1, "Notification cancelled."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 177
    if-nez p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lco/vine/android/service/VineUploadService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 179
    const/4 v0, 0x0

    .line 183
    .local v0, code:I
    :goto_0
    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 184
    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 181
    .end local v0           #code:I
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0       #code:I
    goto :goto_0

    .line 175
    .end local v0           #code:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private discardTask(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 449
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 450
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 451
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 452
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v0, p1}, Lco/vine/android/util/UploadManager;->removeFromPreference(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->cancelNotification(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method private executeNext()V
    .locals 4

    .prologue
    .line 268
    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mLock:[I

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    .line 273
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 285
    :cond_0
    :goto_0
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    if-eqz v0, :cond_4

    .line 286
    const-string v0, "Execute task: {} {}"

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    #getter for: Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;
    invoke-static {v2}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->access$100(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    #getter for: Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;
    invoke-static {v3}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->access$000(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    :cond_1
    :goto_1
    monitor-exit v1

    .line 293
    return-void

    .line 275
    :cond_2
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    .line 276
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 279
    :cond_3
    :try_start_1
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    .line 282
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 288
    :cond_4
    const-string v0, "No suitable task left."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->stopIfNoTaskLeft()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static getDiscardIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "path"

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/service/VineUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "discard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    return-object v0
.end method

.method public static getPostIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "path"
    .parameter "caption"
    .parameter "postToTwitter"
    .parameter "postToFacebook"

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/service/VineUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bPost"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "description"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "postToTwitter"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const-string v1, "postToFacebook"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    return-object v0
.end method

.method public static getUploadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "path"
    .parameter "hash"
    .parameter "thumbnail"

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/service/VineUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "aUpload"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "hash"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "thumbnail"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    return-object v0
.end method

.method private declared-synchronized postNotification(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V
    .locals 3
    .parameter "nb"
    .parameter "path"

    .prologue
    .line 164
    monitor-enter p0

    if-nez p2, :cond_0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/service/VineUploadService;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 166
    const/4 v0, 0x0

    .line 170
    .local v0, code:I
    :goto_0
    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, p2, v0, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 168
    .end local v0           #code:I
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0       #code:I
    goto :goto_0

    .line 164
    .end local v0           #code:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private processCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .parameter "path"
    .parameter "action"
    .parameter "bundle"

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 296
    new-instance v5, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    invoke-direct {v5, p0, p1, p2, p3}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;-><init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 297
    .local v5, task:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "aUpload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, uploadKey:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bPost"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, postKey:Ljava/lang/String;
    const-string v8, "Process command {} to {}."

    invoke-static {v8, p1, p2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    const-string v8, "aUpload"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 301
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 302
    if-eqz p3, :cond_0

    .line 303
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    const-string v9, "hash"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Lco/vine/android/util/UploadManager;->addToPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    :cond_0
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v8, "Upload task added for {}."

    invoke-static {v8, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    :goto_0
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v8, p1}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v4

    .line 311
    .local v4, status:I
    if-ne v4, v0, :cond_1

    .line 312
    invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v0}, Lco/vine/android/service/VineUploadService;->updateUploadProgress(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 313
    if-eqz p3, :cond_4

    const-string v8, "autoPost"

    invoke-virtual {p3, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 314
    .local v0, autoPost:Z
    :goto_1
    const-string v7, "AutoPost: {}."

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    if-eqz v0, :cond_5

    .line 316
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    new-instance v8, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    const-string v9, "bPost"

    invoke-direct {v8, p0, p1, v9, p3}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;-><init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v6, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v0           #autoPost:Z
    :cond_1
    :goto_2
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->executeNext()V

    .line 419
    .end local v4           #status:I
    :cond_2
    :goto_3
    return-void

    .line 308
    :cond_3
    const-string v8, "Upload task is already in queue for {}."

    invoke-static {v8, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .restart local v4       #status:I
    :cond_4
    move v0, v7

    .line 313
    goto :goto_1

    .line 318
    .restart local v0       #autoPost:Z
    :cond_5
    new-instance v7, Lco/vine/android/service/VineUploadService$1;

    invoke-direct {v7, p0, p1}, Lco/vine/android/service/VineUploadService$1;-><init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V

    iput-object v7, v5, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->onUploadSuccessRunnable:Ljava/lang/Runnable;

    goto :goto_2

    .line 327
    .end local v0           #autoPost:Z
    .end local v4           #status:I
    :cond_6
    const-string v8, "discard"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 328
    const-string v7, "Discard task: {}."

    invoke-static {v7, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    #getter for: Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;
    invoke-static {v7}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->access$000(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 330
    const-string v7, "Task in progress, cancelled. "

    invoke-static {v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 331
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    invoke-virtual {v7, v0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->cancel(Z)Z

    .line 332
    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->discardTask(Ljava/lang/String;)V

    .line 340
    :goto_4
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->executeNext()V

    goto :goto_3

    .line 333
    :cond_7
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v7, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 334
    const-string v7, "Upload task will be cancelled."

    invoke-static {v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 335
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v7, v6}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->discardTask(Ljava/lang/String;)V

    goto :goto_4

    .line 338
    :cond_8
    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->discardTask(Ljava/lang/String;)V

    goto :goto_4

    .line 341
    :cond_9
    const-string v8, "bPost"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 342
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v8, p1}, Lco/vine/android/util/UploadManager;->getPostInfo(Ljava/lang/String;)Lco/vine/android/util/UploadManager$PostInfo;

    move-result-object v1

    .line 343
    .local v1, info:Lco/vine/android/util/UploadManager$PostInfo;
    if-nez v1, :cond_a

    .line 344
    new-instance v1, Lco/vine/android/util/UploadManager$PostInfo;

    .end local v1           #info:Lco/vine/android/util/UploadManager$PostInfo;
    const-string v8, "description"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "postToTwitter"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "postToFacebook"

    invoke-virtual {p3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-direct {v1, v8, v9, v10}, Lco/vine/android/util/UploadManager$PostInfo;-><init>(Ljava/lang/String;ZZ)V

    .line 347
    .restart local v1       #info:Lco/vine/android/util/UploadManager$PostInfo;
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v8, p1, v1}, Lco/vine/android/util/UploadManager;->setPostInfo(Ljava/lang/String;Lco/vine/android/util/UploadManager$PostInfo;)V

    .line 349
    :cond_a
    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->cancelNotification(Ljava/lang/String;)V

    .line 351
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v8, p1}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 393
    const-string v7, "{} has an invalid state: {}."

    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v8, p1}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, p1, v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 394
    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->cancelNotification(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 353
    :pswitch_0
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v8, p1, v0}, Lco/vine/android/util/UploadManager;->setStatus(Ljava/lang/String;I)V

    .line 354
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v8, p1}, Lco/vine/android/util/UploadManager;->isUploadExpired(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 355
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 356
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mProgressMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 357
    invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v0}, Lco/vine/android/service/VineUploadService;->updateUploadProgress(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 360
    :cond_b
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 361
    :cond_c
    const-string v8, "Working on it..."

    invoke-static {v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 371
    :cond_d
    :pswitch_1
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v8, p1}, Lco/vine/android/util/UploadManager;->isUploadExpired(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 372
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 373
    :cond_e
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :goto_5
    const-string v8, "Adding to the pending post list."

    invoke-static {v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 387
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mNotifications:Ljava/util/HashMap;

    if-nez v8, :cond_f

    .line 388
    invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v7}, Lco/vine/android/service/VineUploadService;->updateUploadProgress(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 390
    :cond_f
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->executeNext()V

    goto/16 :goto_3

    .line 363
    :cond_10
    const-string v7, "Service was probably destroyed last time."

    invoke-static {v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 364
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    new-instance v8, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    const-string v9, "aUpload"

    invoke-direct {v8, p0, p1, v9, p3}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;-><init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v6, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    invoke-virtual {v7, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->executeNext()V

    goto/16 :goto_3

    .line 375
    :cond_11
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    new-instance v9, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    const-string v10, "aUpload"

    invoke-direct {v9, p0, p1, v10, p3}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;-><init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 379
    :cond_12
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 380
    :cond_13
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 382
    :cond_14
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 396
    .end local v1           #info:Lco/vine/android/util/UploadManager$PostInfo;
    :cond_15
    const-string v8, "cNotify"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 397
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    invoke-virtual {v8, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 400
    :cond_16
    const-string v7, "It\'s in queue, let\'s wait."

    invoke-static {v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 401
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->stopIfNoTaskLeft()V

    goto/16 :goto_3

    .line 404
    :cond_17
    const-string v8, "Notify for {}."

    invoke-static {v8, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v8, p1}, Lco/vine/android/util/UploadManager;->getStatus(Ljava/lang/String;)I

    move-result v4

    .line 406
    .restart local v4       #status:I
    if-nez v4, :cond_18

    .line 407
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 408
    .local v2, nb:Landroid/support/v4/app/NotificationCompat$Builder;
    const v8, 0x7f0200ce

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 409
    invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 410
    invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p0, p1, v8, v9}, Lco/vine/android/PostActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {p0, v7, v8, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 411
    const v8, 0x7f0700ab

    invoke-virtual {p0, v8}, Lco/vine/android/service/VineUploadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 412
    const v8, 0x7f0700ac

    invoke-virtual {p0, v8}, Lco/vine/android/service/VineUploadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 413
    invoke-virtual {v2, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 414
    invoke-direct {p0, v2, p1}, Lco/vine/android/service/VineUploadService;->postNotification(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 416
    .end local v2           #nb:Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_18
    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->showFailedNotification(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showFailedNotification(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 422
    const-string v2, "Show failed notification for {}, upload failed? {}."

    iget-object v3, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v3, p1}, Lco/vine/android/util/UploadManager;->isUploadExpired(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 423
    const-string v2, "Called from."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationCompat$Builder;

    .line 425
    .local v1, nb:Landroid/support/v4/app/NotificationCompat$Builder;
    if-nez v1, :cond_0

    .line 426
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    .end local v1           #nb:Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .restart local v1       #nb:Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_0
    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 429
    invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 430
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v2, p1}, Lco/vine/android/util/UploadManager;->getPostInfo(Ljava/lang/String;)Lco/vine/android/util/UploadManager$PostInfo;

    move-result-object v0

    .line 431
    .local v0, info:Lco/vine/android/util/UploadManager$PostInfo;
    if-nez v0, :cond_1

    .line 432
    const-string v2, "Somehow info was lost."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 433
    new-instance v0, Lco/vine/android/util/UploadManager$PostInfo;

    .end local v0           #info:Lco/vine/android/util/UploadManager$PostInfo;
    const-string v2, ""

    invoke-direct {v0, v2, v5, v5}, Lco/vine/android/util/UploadManager$PostInfo;-><init>(Ljava/lang/String;ZZ)V

    .line 434
    .restart local v0       #info:Lco/vine/android/util/UploadManager$PostInfo;
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v2, p1, v0}, Lco/vine/android/util/UploadManager;->setPostInfo(Ljava/lang/String;Lco/vine/android/util/UploadManager$PostInfo;)V

    .line 436
    :cond_1
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v2, p1}, Lco/vine/android/util/UploadManager;->isUploadExpired(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v2, p1}, Lco/vine/android/util/UploadManager;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lco/vine/android/service/VineUploadService;->getUploadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "autoPost"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    :goto_0
    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 440
    const v2, 0x7f0700a9

    invoke-virtual {p0, v2}, Lco/vine/android/service/VineUploadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 441
    const v2, 0x7f0700aa

    invoke-virtual {p0, v2}, Lco/vine/android/service/VineUploadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 442
    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 444
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lco/vine/android/service/VineUploadService;->cancelNotification(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 446
    return-void

    .line 436
    :cond_2
    iget-object v2, v0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    iget-boolean v3, v0, Lco/vine/android/util/UploadManager$PostInfo;->postToTwitter:Z

    iget-boolean v4, v0, Lco/vine/android/util/UploadManager$PostInfo;->postToFacebook:Z

    invoke-static {p0, p1, v2, v3, v4}, Lco/vine/android/service/VineUploadService;->getPostIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "autoPost"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0
.end method

.method private stopAll()V
    .locals 4

    .prologue
    .line 196
    iget-object v3, p0, Lco/vine/android/service/VineUploadService;->mLock:[I

    monitor-enter v3

    .line 197
    :try_start_0
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mStartIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 198
    .local v1, key:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lco/vine/android/service/VineUploadService;->stopSelf(I)V

    goto :goto_0

    .line 201
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 200
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mStartIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 201
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    return-void
.end method

.method private stopIfNoTaskLeft()V
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mLock:[I

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->stopAll()V

    .line 192
    :cond_0
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateNotification(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .locals 5
    .parameter "path"
    .parameter "thumbnail"
    .parameter "title"
    .parameter "text"
    .parameter "showProgress"
    .parameter "progress"

    .prologue
    const/4 v4, 0x0

    .line 132
    const-string v1, "Update notification: {}, {}."

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {p0}, Lco/vine/android/service/VineUploadService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Builder;

    .line 134
    .local v0, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    .end local v0           #builder:Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    .restart local v0       #builder:Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_0
    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mCurrentThumbnail:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    const-string v1, "Setting thumbnail to {}."

    invoke-static {v1, p2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    iput-object p2, p0, Lco/vine/android/service/VineUploadService;->mCurrentThumbnail:Ljava/lang/String;

    .line 140
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 144
    :goto_0
    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 145
    invoke-virtual {p0, p3}, Lco/vine/android/service/VineUploadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 146
    invoke-virtual {p0, p4}, Lco/vine/android/service/VineUploadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 147
    if-eqz p5, :cond_3

    .line 148
    if-lez p6, :cond_2

    .line 149
    const/16 v1, 0x64

    invoke-virtual {v0, v1, p6, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 156
    :goto_1
    const-string v1, "Notification sent."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->cancelNotification(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lco/vine/android/service/VineUploadService;->postNotification(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V

    .line 159
    return-void

    .line 142
    :cond_1
    const-string v1, "Thumbnail should be {}."

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mCurrentThumbnail:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v4, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v0, v4, v4, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method

.method private updateUploadProgress(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "path"
    .parameter "thumbnail"
    .parameter "preparing"

    .prologue
    .line 122
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mProgressMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 123
    .local v7, progress:Ljava/lang/Integer;
    if-nez v7, :cond_0

    .line 124
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 126
    :cond_0
    const-string v0, "Update progress to {}."

    invoke-static {v0, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    if-eqz p3, :cond_1

    const v3, 0x7f0700a2

    :goto_0
    if-eqz p3, :cond_2

    const v4, 0x7f0700a3

    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lco/vine/android/service/VineUploadService;->updateNotification(Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 128
    return-void

    .line 127
    :cond_1
    const v3, 0x7f0700a4

    goto :goto_0

    :cond_2
    const v4, 0x7f0700a6

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 682
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 106
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    .line 107
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    .line 108
    new-instance v0, Lco/vine/android/util/UploadManager;

    invoke-direct {v0, p0}, Lco/vine/android/util/UploadManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mStartIds:Ljava/util/LinkedList;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mProgressMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lco/vine/android/service/VineUploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 112
    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mAppController:Lco/vine/android/client/AppController;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mNotifications:Ljava/util/HashMap;

    .line 114
    new-instance v0, Lco/vine/android/recorder/VineProcessor;

    invoke-static {p0}, Lco/vine/android/recorder/RecordConfigUtils;->getEncodingLibraryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/vine/android/recorder/VineProcessor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mProcessor:Lco/vine/android/recorder/VineProcessor;

    .line 115
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v10, 0x1

    .line 206
    const-string v7, "OnStartCommand: {}."

    invoke-static {v7, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mLock:[I

    monitor-enter v8

    .line 208
    :try_start_0
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mStartIds:Ljava/util/LinkedList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    .line 210
    :cond_0
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v7}, Lco/vine/android/util/UploadManager;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 211
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v7}, Lco/vine/android/util/UploadManager;->getPendingPaths()Ljava/util/HashMap;

    move-result-object v4

    .line 212
    .local v4, paths:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 213
    .local v3, path:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    .local v0, action:Ljava/lang/String;
    const-string v7, "bPost"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "aUpload"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, uploadKey:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "bPost"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, postKey:Ljava/lang/String;
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v7, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v7, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    invoke-virtual {v7, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    #getter for: Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;
    invoke-static {v7}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->access$000(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 224
    :cond_2
    invoke-direct {p0, v3}, Lco/vine/android/service/VineUploadService;->showFailedNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #paths:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #postKey:Ljava/lang/String;
    .end local v6           #uploadKey:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 226
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #paths:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    const-string v7, "aUpload"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 227
    const-string v7, "aUpload"

    const/4 v9, 0x0

    invoke-direct {p0, v3, v7, v9}, Lco/vine/android/service/VineUploadService;->processCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 228
    :cond_4
    const-string v7, "cNotify"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 229
    const-string v7, "cNotify"

    const/4 v9, 0x0

    invoke-direct {p0, v3, v7, v9}, Lco/vine/android/service/VineUploadService;->processCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 233
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #paths:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->stopIfNoTaskLeft()V

    .line 235
    :cond_6
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->executeNext()V

    .line 263
    :goto_1
    monitor-exit v8

    .line 264
    return v10

    .line 237
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 238
    .restart local v0       #action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 239
    .local v1, bundle:Landroid/os/Bundle;
    const-string v7, "discard_all"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 240
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v7}, Lco/vine/android/util/UploadManager;->getPendingPaths()Ljava/util/HashMap;

    move-result-object v4

    .line 241
    .restart local v4       #paths:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 242
    .restart local v3       #path:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "aUpload"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 243
    .restart local v6       #uploadKey:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "bPost"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 244
    .restart local v5       #postKey:Ljava/lang/String;
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v7, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 245
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v7, v6}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_8
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v7, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 248
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mWorkingSet:Ljava/util/TreeMap;

    invoke-virtual {v7, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_9
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    invoke-virtual {v7, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 251
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mPendingSet:Ljava/util/TreeMap;

    invoke-virtual {v7, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_a
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    if-eqz v7, :cond_c

    .line 254
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->cancel(Z)Z

    .line 256
    :cond_c
    invoke-direct {p0, v3}, Lco/vine/android/service/VineUploadService;->discardTask(Ljava/lang/String;)V

    goto :goto_2

    .line 258
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #postKey:Ljava/lang/String;
    .end local v6           #uploadKey:Ljava/lang/String;
    :cond_d
    iget-object v7, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    invoke-virtual {v7}, Lco/vine/android/util/UploadManager;->clear()V

    goto/16 :goto_1

    .line 260
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #paths:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    const-string v7, "path"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v0, v1}, Lco/vine/android/service/VineUploadService;->processCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method updatePostProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "thumbnail"

    .prologue
    .line 118
    const v3, 0x7f0700a5

    const v4, 0x7f0700a7

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lco/vine/android/service/VineUploadService;->updateNotification(Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 119
    return-void
.end method
