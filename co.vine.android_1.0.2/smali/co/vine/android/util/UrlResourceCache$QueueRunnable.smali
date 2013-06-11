.class Lco/vine/android/util/UrlResourceCache$QueueRunnable;
.super Ljava/lang/Object;
.source "UrlResourceCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/UrlResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueRunnable"
.end annotation


# instance fields
.field private final mOwnerId:J

.field final synthetic this$0:Lco/vine/android/util/UrlResourceCache;


# direct methods
.method public constructor <init>(Lco/vine/android/util/UrlResourceCache;J)V
    .locals 0
    .parameter
    .parameter "ownerId"

    .prologue
    .line 307
    .local p0, this:Lco/vine/android/util/UrlResourceCache$QueueRunnable;,"Lco/vine/android/util/UrlResourceCache<TK;TV;TT;>.QueueRunnable;"
    iput-object p1, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-wide p2, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->mOwnerId:J

    .line 309
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 313
    .local p0, this:Lco/vine/android/util/UrlResourceCache$QueueRunnable;,"Lco/vine/android/util/UrlResourceCache<TK;TV;TT;>.QueueRunnable;"
    iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-object v2, v1, Lco/vine/android/util/UrlResourceCache;->mLock:[I

    monitor-enter v2

    .line 314
    :try_start_0
    iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-object v1, v1, Lco/vine/android/util/UrlResourceCache;->mQueuedDownload:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    monitor-exit v2

    .line 322
    :goto_0
    return-void

    .line 317
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-object v1, v1, Lco/vine/android/util/UrlResourceCache;->mQueuedDownload:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 318
    .local v0, workQueue:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;Lco/vine/android/util/UrlResourceCache$PendingRes;>;"
    iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-object v1, v1, Lco/vine/android/util/UrlResourceCache;->mQueuedDownload:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 319
    iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-object v1, v1, Lco/vine/android/util/UrlResourceCache;->mQueuedDownload:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 320
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    sget-object v1, Lco/vine/android/util/UrlResourceCache;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lco/vine/android/util/UrlResourceCache$FetchRunnable;

    iget-object v3, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-wide v4, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->mOwnerId:J

    invoke-direct {v2, v3, v4, v5, v0}, Lco/vine/android/util/UrlResourceCache$FetchRunnable;-><init>(Lco/vine/android/util/UrlResourceCache;JLjava/util/HashMap;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 320
    .end local v0           #workQueue:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;Lco/vine/android/util/UrlResourceCache$PendingRes;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
