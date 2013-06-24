.class public Lco/vine/android/recorder/RecordController;
.super Ljava/lang/Object;
.source "RecordController.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lco/vine/android/recorder/ConcurrentData$ProcessorProducer;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/RecordController$1;,
        Lco/vine/android/recorder/RecordController$AudioRecordRunnable;,
        Lco/vine/android/recorder/RecordController$OnRecorderControllerStateChangedListener;
    }
.end annotation


# instance fields
.field private volatile isRecording:Z

.field private volatile isRecordingStarted:Z

.field private mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

.field private mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

.field private volatile mAudioTimeRecorded:J

.field private volatile mAudioTimestamp:J

.field private mAutoFocus:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mCameraManager:Lco/vine/android/recorder/CameraManager;

.field public mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

.field private final mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lco/vine/android/recorder/ConcurrentData$VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

.field private mFlash:Z

.field private mFrameTime:J

.field private mIplImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private mLastAudioTimestamp:J

.field private mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

.field private mLastLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

.field public final mParent:Lco/vine/android/recorder/VineRecorder;

.field private mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

.field private mProcessThread:Ljava/lang/Thread;

.field private mProcessThreadWasRunning:Z

.field private mRS:Landroid/renderscript/RenderScript;

.field private mRotation:I

.field private volatile mRunAudioThread:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTargetSize:I

.field private mTextureView:Landroid/view/TextureView;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private final mVideoRecordLock:[I

.field private mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

.field private mVideoTimestamp:J

.field private volatile recordingAudio:Z

.field private startTime:J


# direct methods
.method public constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .locals 3
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lco/vine/android/recorder/CameraManager;

    invoke-direct {v0, p0}, Lco/vine/android/recorder/CameraManager;-><init>(Lco/vine/android/recorder/RecordController;)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 46
    new-array v0, v1, [I

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mVideoRecordLock:[I

    .line 50
    iput-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    .line 51
    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    .line 52
    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    .line 57
    const/16 v0, 0x1e0

    iput v0, p0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    .line 60
    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    .line 61
    iput-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    .line 86
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/recorder/RecordController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    return-wide v0
.end method

.method static synthetic access$202(Lco/vine/android/recorder/RecordController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    return-wide p1
.end method

.method static synthetic access$302(Lco/vine/android/recorder/RecordController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lco/vine/android/recorder/RecordController;->mAudioTimeRecorded:J

    return-wide p1
.end method

.method static synthetic access$400(Lco/vine/android/recorder/RecordController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    return v0
.end method

.method static synthetic access$500(Lco/vine/android/recorder/RecordController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    return-wide v0
.end method

.method static synthetic access$600(Lco/vine/android/recorder/RecordController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    return v0
.end method

.method static synthetic access$700(Lco/vine/android/recorder/RecordController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->recordingAudio:Z

    return v0
.end method

.method public static newAudioRecorder(Ljava/lang/String;I)Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    .locals 5
    .parameter "output"
    .parameter "frameRate"

    .prologue
    .line 190
    sget-object v2, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v2

    .line 191
    :try_start_0
    new-instance v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;-><init>(Ljava/lang/String;I)V

    .line 192
    .local v0, recorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setVideoCodec(I)V

    .line 193
    const v1, 0x15002

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setAudioCodec(I)V

    .line 194
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFormat(Ljava/lang/String;)V

    .line 195
    const v1, 0xac44

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setSampleRate(I)V

    .line 196
    int-to-double v3, p1

    invoke-virtual {v0, v3, v4}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFrameRate(D)V

    .line 197
    monitor-exit v2

    return-object v0

    .line 198
    .end local v0           #recorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static newViewRecorder(Ljava/lang/String;II)Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    .locals 5
    .parameter "output"
    .parameter "frameRate"
    .parameter "targetSize"

    .prologue
    .line 202
    sget-object v2, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v2

    .line 203
    :try_start_0
    new-instance v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-direct {v0, p0, p2, p2}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;-><init>(Ljava/lang/String;II)V

    .line 204
    .local v0, recorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setVideoCodec(I)V

    .line 205
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFormat(Ljava/lang/String;)V

    .line 206
    int-to-double v3, p1

    invoke-virtual {v0, v3, v4}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFrameRate(D)V

    .line 207
    monitor-exit v2

    return-object v0

    .line 208
    .end local v0           #recorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSurfaceCreated()V
    .locals 1

    .prologue
    .line 302
    const-string v0, "Surface created..."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->startPreview()V

    .line 306
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0, p0}, Lco/vine/android/recorder/VineRecorder;->onSurfaceReady(Lco/vine/android/recorder/RecordController;)V

    .line 307
    return-void
.end method

.method private onSurfaceDestroyed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 311
    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    .line 312
    return-void
.end method

.method private onSurfaceUpdated()V
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "Surface updated. mCameraManager is previewing..."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 433
    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->startPreview()V

    .line 442
    :cond_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private releaseCameraAndPreview()V
    .locals 1

    .prologue
    .line 288
    const-string v0, "Release camera and preview."

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    .line 291
    return-void
.end method

.method private startPreview()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 315
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v2, v2, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/CameraManager;->setFrameRate(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    .line 317
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v0, v0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    if-lez v0, :cond_0

    .line 318
    const-wide/32 v0, 0xf4240

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v2, v2, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/recorder/RecordController;->mFrameTime:J

    .line 319
    const-string v0, "Determined frame rate: {}, frame time: {}."

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v1, v1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lco/vine/android/recorder/RecordController;->mFrameTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget v1, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->fixOrientation(I)I

    .line 321
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    iget-boolean v3, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v4, v4, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    iget v5, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    iget-wide v6, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/recorder/CameraManager;->startPreview(Landroid/graphics/SurfaceTexture;ZZIII)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    iget-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    iget-boolean v3, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v4, v4, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    iget v5, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    iget-wide v6, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/recorder/CameraManager;->startPreview(Landroid/view/Surface;ZZIII)V

    goto :goto_0
.end method


# virtual methods
.method public finishLastIfNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThreadWasRunning:Z

    .line 137
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAudioReady()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    iget-boolean v0, v0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->isInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraReady()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isFlashSupported()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    return v0
.end method

.method public isRecordingStarted()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    return v0
.end method

.method public isSurfaceReady()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modifyZoom(Z)V
    .locals 1
    .parameter "zoomIn"

    .prologue
    .line 373
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/CameraManager;->modifyZoom(Z)I

    .line 374
    return-void
.end method

.method public offerLastFrame(Lco/vine/android/recorder/ConcurrentData$VideoData;)V
    .locals 6
    .parameter "next"

    .prologue
    .line 475
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mVideoRecordLock:[I

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    if-eqz v0, :cond_1

    .line 477
    iget-wide v2, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    iget-wide v4, p0, Lco/vine/android/recorder/RecordController;->mFrameTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    .line 478
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iget-wide v2, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    iget-wide v4, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 479
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iget-wide v2, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    iput-wide v2, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    .line 481
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 482
    const-string v0, "Video timestamp {}, actual {}"

    iget-wide v2, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iget-wide v3, v3, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 483
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->onVideoSampleRecorded()V

    .line 484
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    .line 486
    :cond_1
    monitor-exit v1

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/RecordController;->setRecording(Z)V

    .line 104
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview()V

    .line 105
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 10
    .parameter "data"
    .parameter "camera"

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v2, 0x0

    .line 447
    iget-wide v4, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    .line 449
    iget-wide v4, p0, Lco/vine/android/recorder/RecordController;->startTime:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lco/vine/android/recorder/RecordController;->startTime:J

    sub-long/2addr v4, v6

    mul-long v2, v4, v8

    .line 461
    .local v2, timestamp:J
    :cond_0
    :goto_0
    iget-object v5, p0, Lco/vine/android/recorder/RecordController;->mVideoRecordLock:[I

    monitor-enter v5

    .line 462
    :try_start_0
    iget-boolean v4, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    if-eqz v4, :cond_3

    .line 463
    new-instance v4, Lco/vine/android/recorder/ConcurrentData$VideoData;

    invoke-direct {v4}, Lco/vine/android/recorder/ConcurrentData$VideoData;-><init>()V

    iget-object v6, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    invoke-virtual {v4, v2, v3, p1, v6}, Lco/vine/android/recorder/ConcurrentData$VideoData;->set(J[BLco/vine/android/recorder/ConcurrentData$CameraSetting;)Lco/vine/android/recorder/ConcurrentData$VideoData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lco/vine/android/recorder/RecordController;->offerLastFrame(Lco/vine/android/recorder/ConcurrentData$VideoData;)V

    .line 471
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    return-void

    .line 452
    .end local v2           #timestamp:J
    :cond_1
    iget-wide v4, p0, Lco/vine/android/recorder/RecordController;->mLastAudioTimestamp:J

    iget-wide v6, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 453
    iget-wide v4, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    iget-wide v6, p0, Lco/vine/android/recorder/RecordController;->mFrameTime:J

    add-long v2, v4, v6

    .restart local v2       #timestamp:J
    goto :goto_0

    .line 455
    .end local v2           #timestamp:J
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lco/vine/android/recorder/RecordController;->mAudioTimeRecorded:J

    sub-long/2addr v4, v6

    div-long v0, v4, v8

    .line 456
    .local v0, offset:J
    iget-wide v4, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    add-long v2, v0, v4

    .line 457
    .restart local v2       #timestamp:J
    iget-wide v4, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    iput-wide v4, p0, Lco/vine/android/recorder/RecordController;->mLastAudioTimestamp:J

    .line 458
    const-string v4, "Offset {}."

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 465
    .end local v0           #offset:J
    :cond_3
    :try_start_1
    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    if-eqz v4, :cond_4

    .line 466
    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v6, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iget-object v6, v6, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lco/vine/android/recorder/CameraManager;->addBuffer([BZ)V

    .line 468
    :cond_4
    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iput-object v4, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    .line 469
    new-instance v4, Lco/vine/android/recorder/ConcurrentData$VideoData;

    invoke-direct {v4}, Lco/vine/android/recorder/ConcurrentData$VideoData;-><init>()V

    iget-object v6, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    invoke-virtual {v4, v2, v3, p1, v6}, Lco/vine/android/recorder/ConcurrentData$VideoData;->set(J[BLco/vine/android/recorder/ConcurrentData$CameraSetting;)Lco/vine/android/recorder/ConcurrentData$VideoData;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    goto :goto_1

    .line 471
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 405
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 406
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    .line 407
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surface"

    .prologue
    .line 418
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceDestroyed()V

    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 411
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 412
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    .line 413
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceUpdated()V

    .line 414
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 424
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 425
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceUpdated()V

    .line 426
    return-void
.end method

.method public openDefaultCamera(Z)Z
    .locals 2
    .parameter "frontFacing"

    .prologue
    .line 112
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget v1, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    invoke-virtual {v0, p1, v1}, Lco/vine/android/recorder/CameraManager;->openDefaultCamera(ZI)Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    .line 113
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "Received camera info."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v1, v1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->setPreviewHeight(I)V

    .line 116
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v1, v1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->setPreviewWidth(I)V

    .line 117
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->startPreview()V

    .line 118
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0, p0}, Lco/vine/android/recorder/VineRecorder;->onCameraReady(Lco/vine/android/recorder/RecordController;)V

    .line 119
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to open camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseCanera()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->release()V

    .line 382
    return-void
.end method

.method public releaseResources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mIplImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->release()V

    .line 386
    iput-object v1, p0, Lco/vine/android/recorder/RecordController;->mBuffer:Ljava/nio/ByteBuffer;

    .line 387
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mRS:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 389
    iput-object v1, p0, Lco/vine/android/recorder/RecordController;->mRS:Landroid/renderscript/RenderScript;

    .line 391
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 392
    iput-object v1, p0, Lco/vine/android/recorder/RecordController;->mBitmap:Landroid/graphics/Bitmap;

    .line 393
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 394
    iput-object v1, p0, Lco/vine/android/recorder/RecordController;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 395
    return-void
.end method

.method public setAutoFocus(Z)V
    .locals 0
    .parameter "isOn"

    .prologue
    .line 99
    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    .line 100
    return-void
.end method

.method public setFinishProcessTask(Lco/vine/android/recorder/VineRecorder$FinishProcessTask;)V
    .locals 1
    .parameter "mFinishProcessTask"

    .prologue
    .line 368
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    .line 369
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/ProcessorRunnable;->setAsyncTask(Lco/vine/android/recorder/VineRecorder$FinishProcessTask;)V

    .line 370
    return-void
.end method

.method public setRecording(Z)V
    .locals 2
    .parameter "recording"

    .prologue
    .line 359
    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    if-eqz p1, :cond_0

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/recorder/RecordController;->startTime:J

    .line 363
    :cond_0
    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    .line 365
    :cond_1
    return-void
.end method

.method public setRecordingAudio(Z)V
    .locals 0
    .parameter "recordingAudio"

    .prologue
    .line 377
    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->recordingAudio:Z

    .line 378
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 90
    iput p1, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    .line 91
    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 18
    .parameter "activity"
    .parameter "output"

    .prologue
    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v1}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You have to choose a camera via open() first."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    .line 220
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You have to set a preview surface via switchSurface first."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_1
    const-string v1, "recorder initialize success"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 223
    new-instance v1, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;-><init>(Lco/vine/android/recorder/RecordController;Lco/vine/android/recorder/RecordController$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    .line 224
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    .line 225
    new-instance v16, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 226
    .local v16, audioThread:Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 227
    sget-object v2, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v2

    .line 229
    :try_start_0
    invoke-static/range {p1 .. p1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->tryLoad(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    if-nez v1, :cond_2

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-object v1, v1, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    const-string v3, "audio"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mp4"

    invoke-static {v1, v3, v4, v5}, Lco/vine/android/recorder/RecordConfigUtils;->getPreProcessFile(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v3, v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    invoke-static {v1, v3}, Lco/vine/android/recorder/RecordController;->newAudioRecorder(Ljava/lang/String;I)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 243
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    if-nez v1, :cond_3

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".video.mp4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v3, v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    move-object/from16 v0, p0

    iget v4, v0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    invoke-static {v1, v3, v4}, Lco/vine/android/recorder/RecordController;->newViewRecorder(Ljava/lang/String;II)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/recorder/RecordController;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 252
    :cond_3
    :goto_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mIplImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v1, :cond_4

    .line 253
    move-object/from16 v0, p0

    iget v1, v0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    const/16 v4, 0x8

    const/4 v5, 0x4

    invoke-static {v1, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/recorder/RecordController;->mIplImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 255
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mRS:Landroid/renderscript/RenderScript;

    if-nez v1, :cond_5

    .line 256
    invoke-static/range {p1 .. p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/recorder/RecordController;->mRS:Landroid/renderscript/RenderScript;

    .line 258
    :cond_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_6

    .line 260
    move-object/from16 v0, p0

    iget v1, v0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    move-object/from16 v0, p0

    iget v2, v0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/recorder/RecordController;->mBuffer:Ljava/nio/ByteBuffer;

    .line 262
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 263
    move-object/from16 v0, p0

    iget v1, v0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    move-object/from16 v0, p0

    iget v2, v0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    sget-object v3, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/recorder/RecordController;->mBitmap:Landroid/graphics/Bitmap;

    .line 265
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    .line 266
    move-object/from16 v0, p0

    iget v1, v0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    move-object/from16 v0, p0

    iget v2, v0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    sget-object v3, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/recorder/RecordController;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 269
    :cond_8
    new-instance v1, Lco/vine/android/recorder/ProcessorRunnable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v0, p0

    iget v6, v0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    move-object/from16 v0, p0

    iget-object v8, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v0, p0

    iget-object v10, v0, Lco/vine/android/recorder/RecordController;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/recorder/RecordController;->mIplImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/recorder/RecordController;->mBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/RecordController;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/RecordController;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/RecordController;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v15}, Lco/vine/android/recorder/ProcessorRunnable;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lco/vine/android/recorder/RecordController;Landroid/content/Context;Ljava/lang/String;ILco/vine/android/recorder/ConcurrentData$CameraSetting;Lco/vine/android/recorder/CameraManager;Lco/vine/android/recorder/VineFFmpegFrameRecorder;Lco/vine/android/recorder/VineFFmpegFrameRecorder;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/RenderScript;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/recorder/RecordController;->mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

    .line 270
    new-instance v1, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordController;->mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    .line 271
    const-string v1, "START Recorder"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 272
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 274
    const/4 v1, 0x1

    :goto_2
    return v1

    .line 230
    :catch_0
    move-exception v17

    .line 231
    .local v17, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    :try_start_6
    const-string v1, "Failed to load native libraries."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-static {v0, v1, v3}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 258
    .end local v17           #e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 237
    :catch_1
    move-exception v17

    .line 238
    .restart local v17       #e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    :try_start_7
    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 239
    const-string v1, "Cannot start audio recorder. "

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_2

    .line 247
    .end local v17           #e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    :catch_2
    move-exception v17

    .line 248
    .restart local v17       #e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 249
    const-string v1, "Cannot start video recorder."

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1
.end method

.method public stop(Z)V
    .locals 4
    .parameter "discard"

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-nez v1, :cond_0

    .line 141
    sget-boolean v1, Lcom/edisonwang/android/slog/SLog;->IS_LOG_ON:Z

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You can\'t stop before you have start it."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    .line 147
    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-eqz v1, :cond_1

    .line 148
    const-string v1, "Finishing recording, calling stop and release on recorder"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview()V

    .line 150
    const-string v1, "Waiting..........."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    .line 152
    if-eqz p1, :cond_3

    .line 153
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

    invoke-virtual {v1}, Lco/vine/android/recorder/ProcessorRunnable;->terminate()V

    .line 154
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->finishLastIfNeeded()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->releaseResources()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 181
    :cond_1
    :goto_1
    iput-boolean v3, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    .line 182
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview()V

    .line 183
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->publish(I)V

    .line 186
    :cond_2
    const-string v1, "Recorder is stopped."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 187
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 159
    const-string v1, "Ahhhhh, discard failed."

    invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 177
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 178
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 179
    const-string v1, "Stop failed."

    invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 163
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mProcessThreadWasRunning:Z

    goto :goto_1

    .line 166
    :cond_4
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v1

    if-nez v1, :cond_5

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mProcessThreadWasRunning:Z

    .line 169
    :cond_5
    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->finishLastIfNeeded()V

    .line 170
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->releaseResources()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 347
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 348
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    .line 349
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    .line 350
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceUpdated()V

    .line 351
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 340
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 341
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    .line 342
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    .line 343
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 355
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceDestroyed()V

    .line 356
    return-void
.end method

.method public switchFlash()V
    .locals 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    .line 95
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->changeFlashState(Z)V

    .line 96
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchSurface(Landroid/view/SurfaceView;)V
    .locals 1
    .parameter "view"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 284
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 285
    return-void
.end method

.method public switchSurface(Landroid/view/TextureView;)V
    .locals 1
    .parameter "view"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    .line 279
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 280
    return-void
.end method

.method public wasProcessThreadRunning()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThreadWasRunning:Z

    return v0
.end method
