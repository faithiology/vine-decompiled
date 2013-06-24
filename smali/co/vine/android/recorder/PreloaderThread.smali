.class public Lco/vine/android/recorder/PreloaderThread;
.super Ljava/lang/Thread;
.source "PreloaderThread.java"


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/recorder/PreloaderThread;->mContext:Ljava/lang/ref/WeakReference;

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 28
    .local v1, start:J
    :try_start_0
    iget-object v3, p0, Lco/vine/android/recorder/PreloaderThread;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->tryLoad(Landroid/content/Context;)V

    .line 29
    const/16 v3, 0x1e0

    const/16 v4, 0x1e0

    const/16 v5, 0x8

    const/4 v6, 0x4

    invoke-static {v3, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    const-string v3, "Loading took {} ns."

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    const-string v3, "Failed to load"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v3, p0, Lco/vine/android/recorder/PreloaderThread;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3, v7}, Lco/vine/android/recorder/RecordConfigUtils;->setLoadWasEverSuccessful(Landroid/content/Context;Z)V

    goto :goto_0
.end method
