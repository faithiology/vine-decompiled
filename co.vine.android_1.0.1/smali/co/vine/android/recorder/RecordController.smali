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

.field private mAutoFocus:Z

.field public mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

.field private final mCameraManager:Lco/vine/android/recorder/CameraManager;

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

.field private mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

.field private mLastLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

.field public final mParent:Lco/vine/android/recorder/VineRecorder;

.field private mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

.field private mProcessThread:Ljava/lang/Thread;

.field private mProcessThreadWasRunning:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRotation:I

.field private volatile mRunAudioThread:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTargetSize:I

.field private mTextureView:Landroid/view/TextureView;

.field private volatile recordingAudio:Z

.field private startTime:J


# direct methods
.method public constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .locals 3
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lco/vine/android/recorder/CameraManager;

    invoke-direct {v0, p0}, Lco/vine/android/recorder/CameraManager;-><init>(Lco/vine/android/recorder/RecordController;)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 48
    iput-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    .line 49
    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    .line 50
    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    .line 55
    const/16 v0, 0x1e0

    iput v0, p0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    .line 58
    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    .line 59
    iput-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    .line 73
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    .line 74
    return-void
.end method

.method static synthetic access$100(Lco/vine/android/recorder/RecordController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    return v0
.end method

.method static synthetic access$200(Lco/vine/android/recorder/RecordController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    return v0
.end method

.method static synthetic access$300(Lco/vine/android/recorder/RecordController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->recordingAudio:Z

    return v0
.end method

.method static synthetic access$400(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    return-object v0
.end method

.method public static newAudioRecorder(Ljava/lang/String;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    .locals 3
    .parameter "output"

    .prologue
    .line 191
    sget-object v2, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v2

    .line 192
    :try_start_0
    new-instance v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;-><init>(Ljava/lang/String;I)V

    .line 193
    .local v0, recorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setVideoCodec(I)V

    .line 194
    const v1, 0x15002

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setAudioCodec(I)V

    .line 195
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFormat(Ljava/lang/String;)V

    .line 196
    const v1, 0xac44

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setSampleRate(I)V

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
    const/16 v1, 0x1c

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
    .line 265
    const-string v0, "Surface created..."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->startPreview()V

    .line 269
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0, p0}, Lco/vine/android/recorder/VineRecorder;->onSurfaceReady(Lco/vine/android/recorder/RecordController;)V

    .line 270
    return-void
.end method

.method private onSurfaceDestroyed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 274
    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    .line 275
    return-void
.end method

.method private onSurfaceUpdated()V
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "Surface updated. mCameraManager is previewing..."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 399
    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->startPreview()V

    .line 408
    :cond_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private releaseCameraAndPreview()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    .line 254
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 6

    .prologue
    .line 278
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v2, v2, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->frameRate:I

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/CameraManager;->setFrameRate(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->frameRate:I

    .line 280
    const-string v0, "Determined frame rate: {}."

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v1, v1, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->frameRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget v1, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->fixOrientation(I)I

    .line 282
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    iget-boolean v3, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v4, v4, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->frameRate:I

    iget v5, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/recorder/CameraManager;->startPreview(Landroid/graphics/SurfaceTexture;ZZII)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    iget-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    iget-boolean v3, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v4, v4, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->frameRate:I

    iget v5, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/recorder/CameraManager;->startPreview(Landroid/view/Surface;ZZII)V

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
    .line 140
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThreadWasRunning:Z

    .line 142
    return-void
.end method

.method public getCameraProfile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public isCameraReady()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isFlashSupported()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    return v0
.end method

.method public isRecordingStarted()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    return v0
.end method

.method public isSurfaceReady()Z
    .locals 1

    .prologue
    .line 257
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
    .line 356
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/CameraManager;->modifyZoom(Z)I

    .line 357
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/RecordController;->setRecording(Z)V

    .line 91
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview()V

    .line 92
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 5
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 292
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Lco/vine/android/recorder/ConcurrentData$VideoData;

    invoke-direct {v0}, Lco/vine/android/recorder/ConcurrentData$VideoData;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lco/vine/android/recorder/RecordController;->startTime:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    invoke-virtual {v0, v1, v2, p1, v3}, Lco/vine/android/recorder/ConcurrentData$VideoData;->set(J[BLco/vine/android/recorder/ConcurrentData$CameraInfo;)Lco/vine/android/recorder/ConcurrentData$VideoData;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    .line 296
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->onVideoSampleRecorded()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iget-object v1, v1, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->addBuffer([B)V

    .line 302
    :cond_2
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    .line 303
    new-instance v0, Lco/vine/android/recorder/ConcurrentData$VideoData;

    invoke-direct {v0}, Lco/vine/android/recorder/ConcurrentData$VideoData;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    .line 304
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iput-object p1, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    .line 305
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iput-object v1, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 371
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 372
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    .line 373
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surface"

    .prologue
    .line 384
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceDestroyed()V

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 377
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 378
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    .line 379
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceUpdated()V

    .line 380
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 390
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 391
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceUpdated()V

    .line 392
    return-void
.end method

.method public openDefaultCamera(Z)Z
    .locals 12
    .parameter "frontFacing"

    .prologue
    const/4 v11, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 99
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/CameraManager;->openDefaultCamera(Z)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mProfile:Landroid/media/CamcorderProfile;

    .line 100
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->getSupportedPreviewFormat()Ljava/util/List;

    move-result-object v8

    .line 102
    .local v8, previewFormat:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v5, 0x11

    .line 103
    .local v5, selectedFormat:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 104
    .local v6, format:Ljava/lang/Integer;
    const-string v0, "Supported format: {}"

    invoke-static {v0, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v11, :cond_0

    .line 106
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 110
    .end local v6           #format:Ljava/lang/Integer;
    :cond_1
    const/16 v0, 0x11

    if-ne v5, v0, :cond_3

    .line 111
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 112
    .restart local v6       #format:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    .line 113
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 118
    .end local v6           #format:Ljava/lang/Integer;
    :cond_3
    const-string v0, "Selected format: {}."

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget v1, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    invoke-virtual {v0, v10, v1}, Lco/vine/android/recorder/CameraManager;->getFixedDegrees(ZI)I

    move-result v3

    .line 120
    .local v3, degree:I
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isCurrentFront()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    neg-int v3, v3

    .line 123
    :cond_4
    new-instance v0, Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/ConcurrentData$CameraInfo;-><init>(IIIII)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    .line 124
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v1, v1, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalH:I

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->setPreviewHeight(I)V

    .line 125
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v1, v1, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalW:I

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->setPreviewWidth(I)V

    .line 126
    const-string v0, "Camera w/h/f/p/d: {}/{}/{}/{}/{}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v2, v2, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalW:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v2, v2, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x2

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v4, v4, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->frameRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v4}, Lco/vine/android/recorder/CameraManager;->getCurrentPreviewFormat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v2, v2, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->degrees:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->startPreview()V

    .line 128
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0, p0}, Lco/vine/android/recorder/VineRecorder;->onCameraReady(Lco/vine/android/recorder/RecordController;)V

    move v0, v9

    .line 131
    .end local v3           #degree:I
    .end local v5           #selectedFormat:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #previewFormat:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return v0

    :cond_5
    move v0, v10

    goto :goto_0
.end method

.method public setAutoFocus(Z)V
    .locals 0
    .parameter "isOn"

    .prologue
    .line 86
    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    .line 87
    return-void
.end method

.method public setFinishProcessTask(Lco/vine/android/recorder/VineRecorder$FinishProcessTask;)V
    .locals 1
    .parameter "mFinishProcessTask"

    .prologue
    .line 351
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    .line 352
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/ProcessorRunnable;->setAsyncTask(Lco/vine/android/recorder/VineRecorder$FinishProcessTask;)V

    .line 353
    return-void
.end method

.method public setRecording(Z)V
    .locals 2
    .parameter "recording"

    .prologue
    .line 342
    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    if-eqz p1, :cond_0

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/recorder/RecordController;->startTime:J

    .line 346
    :cond_0
    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    .line 348
    :cond_1
    return-void
.end method

.method public setRecordingAudio(Z)V
    .locals 0
    .parameter "recordingAudio"

    .prologue
    .line 360
    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->recordingAudio:Z

    .line 361
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 77
    iput p1, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    .line 78
    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 13
    .parameter "activity"
    .parameter "output"

    .prologue
    const/4 v11, 0x1

    .line 212
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You have to choose a camera via open() first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You have to set a preview surface via switchSurface first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    const-string v0, "recorder initialize success"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 219
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;-><init>(Lco/vine/android/recorder/RecordController;Lco/vine/android/recorder/RecordController$1;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 220
    .local v9, audioThread:Ljava/lang/Thread;
    sget-object v12, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v12

    .line 221
    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    const-string v1, "audio"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mp4"

    invoke-static {v0, v1, v2, v3}, Lco/vine/android/recorder/RecordConfigUtils;->getPreProcessFile(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/recorder/RecordController;->newAudioRecorder(Ljava/lang/String;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :try_start_1
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    :try_start_2
    new-instance v0, Lco/vine/android/recorder/ProcessorRunnable;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget v5, p0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mCameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v6, v2, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->frameRate:I

    iget-object v7, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v8, p0, Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lco/vine/android/recorder/ProcessorRunnable;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lco/vine/android/recorder/RecordController;Landroid/content/Context;Ljava/lang/String;IILco/vine/android/recorder/CameraManager;Lco/vine/android/recorder/VineFFmpegFrameRecorder;)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

    .line 230
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    .line 232
    const-string v0, "START Recorder"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 233
    iput-boolean v11, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    .line 234
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 235
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v0, v11

    .line 236
    :goto_0
    return v0

    .line 224
    :catch_0
    move-exception v10

    .line 225
    .local v10, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    :try_start_3
    invoke-static {v10}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 226
    const-string v0, "Cannot start audio recorder. "

    invoke-static {v0, v10}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    const/4 v0, 0x0

    monitor-exit v12

    goto :goto_0

    .line 230
    .end local v10           #e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public stop(Z)V
    .locals 4
    .parameter "discard"

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-nez v1, :cond_0

    .line 146
    sget-boolean v1, Lcom/edisonwang/android/slog/SLog;->IS_LOG_ON:Z

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You can\'t stop before you have start it."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    .line 152
    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-eqz v1, :cond_1

    .line 153
    const-string v1, "Finishing recording, calling stop and release on recorder"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview()V

    .line 155
    const-string v1, "Waiting..........."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    .line 157
    if-eqz p1, :cond_3

    .line 158
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

    invoke-virtual {v1}, Lco/vine/android/recorder/ProcessorRunnable;->terminate()V

    .line 159
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->finishLastIfNeeded()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    .line 183
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview()V

    .line 184
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->publish(I)V

    .line 187
    :cond_2
    const-string v1, "Recorder is stopped."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 188
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 164
    const-string v1, "Ahhhhh, discard failed."

    invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 178
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 179
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 180
    const-string v1, "Stop failed."

    invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mProcessThreadWasRunning:Z

    goto :goto_0

    .line 170
    :cond_4
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v1

    if-nez v1, :cond_5

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mProcessThreadWasRunning:Z

    .line 173
    :cond_5
    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->finishLastIfNeeded()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 330
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 331
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    .line 332
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    .line 333
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceUpdated()V

    .line 334
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 323
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 324
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    .line 325
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    .line 326
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 338
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceDestroyed()V

    .line 339
    return-void
.end method

.method public switchFlash()V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    .line 82
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->changeFlashState(Z)V

    .line 83
    return-void

    .line 81
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
    .line 245
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 246
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 247
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
    .line 240
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    .line 241
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 242
    return-void
.end method

.method public wasProcessThreadRunning()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThreadWasRunning:Z

    return v0
.end method
