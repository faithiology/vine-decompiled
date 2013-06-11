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

.field private mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

.field private mLastLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

.field public final mParent:Lco/vine/android/recorder/VineRecorder;

.field private mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

.field private mProcessThread:Ljava/lang/Thread;

.field private mProcessThreadWasRunning:Z

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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lco/vine/android/recorder/CameraManager;

    invoke-direct {v0, p0}, Lco/vine/android/recorder/CameraManager;-><init>(Lco/vine/android/recorder/RecordController;)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 44
    iput-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    .line 45
    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    .line 46
    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    .line 51
    const/16 v0, 0x1e0

    iput v0, p0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    .line 54
    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    .line 55
    iput-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    .line 68
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lco/vine/android/recorder/RecordController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    return v0
.end method

.method static synthetic access$200(Lco/vine/android/recorder/RecordController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    return v0
.end method

.method static synthetic access$300(Lco/vine/android/recorder/RecordController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->recordingAudio:Z

    return v0
.end method

.method static synthetic access$400(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    return-object v0
.end method

.method public static newAudioRecorder(Ljava/lang/String;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    .locals 3
    .parameter "output"

    .prologue
    .line 168
    sget-object v2, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v2

    .line 169
    :try_start_0
    new-instance v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;-><init>(Ljava/lang/String;I)V

    .line 170
    .local v0, recorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setVideoCodec(I)V

    .line 171
    const v1, 0x15002

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setAudioCodec(I)V

    .line 172
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFormat(Ljava/lang/String;)V

    .line 173
    const v1, 0xac44

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setSampleRate(I)V

    .line 174
    monitor-exit v2

    return-object v0

    .line 175
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
    .line 179
    sget-object v2, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v2

    .line 180
    :try_start_0
    new-instance v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-direct {v0, p0, p2, p2}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;-><init>(Ljava/lang/String;II)V

    .line 181
    .local v0, recorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setVideoCodec(I)V

    .line 182
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFormat(Ljava/lang/String;)V

    .line 183
    int-to-double v3, p1

    invoke-virtual {v0, v3, v4}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFrameRate(D)V

    .line 184
    monitor-exit v2

    return-object v0

    .line 185
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
    .line 241
    const-string v0, "Surface created..."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->startPreview()V

    .line 245
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0, p0}, Lco/vine/android/recorder/VineRecorder;->onSurfaceReady(Lco/vine/android/recorder/RecordController;)V

    .line 246
    return-void
.end method

.method private onSurfaceDestroyed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 250
    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    .line 251
    return-void
.end method

.method private onSurfaceUpdated()V
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "Surface updated. mCameraManager is previewing..."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 371
    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->startPreview()V

    .line 380
    :cond_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private releaseCameraAndPreview()V
    .locals 1

    .prologue
    .line 227
    const-string v0, "Release camera and preview."

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    .line 230
    return-void
.end method

.method private startPreview()V
    .locals 6

    .prologue
    .line 254
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v2, v2, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/CameraManager;->setFrameRate(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    .line 256
    const-string v0, "Determined frame rate: {}."

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v1, v1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget v1, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->fixOrientation(I)I

    .line 258
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    iget-boolean v3, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v4, v4, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    iget v5, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/recorder/CameraManager;->startPreview(Landroid/graphics/SurfaceTexture;ZZII)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    iget-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    iget-boolean v3, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v4, v4, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

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
    .line 114
    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThreadWasRunning:Z

    .line 119
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isCameraReady()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isFlashSupported()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    return v0
.end method

.method public isRecordingStarted()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    return v0
.end method

.method public isSurfaceReady()Z
    .locals 1

    .prologue
    .line 233
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
    .line 328
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/CameraManager;->modifyZoom(Z)I

    .line 329
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/RecordController;->setRecording(Z)V

    .line 86
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview()V

    .line 87
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 5
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 268
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 271
    new-instance v0, Lco/vine/android/recorder/ConcurrentData$VideoData;

    invoke-direct {v0}, Lco/vine/android/recorder/ConcurrentData$VideoData;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lco/vine/android/recorder/RecordController;->startTime:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    invoke-virtual {v0, v1, v2, p1, v3}, Lco/vine/android/recorder/ConcurrentData$VideoData;->set(J[BLco/vine/android/recorder/ConcurrentData$CameraSetting;)Lco/vine/android/recorder/ConcurrentData$VideoData;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    .line 272
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->onVideoSampleRecorded()V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iget-object v1, v1, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->addBuffer([B)V

    .line 278
    :cond_2
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    .line 279
    new-instance v0, Lco/vine/android/recorder/ConcurrentData$VideoData;

    invoke-direct {v0}, Lco/vine/android/recorder/ConcurrentData$VideoData;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    .line 280
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iput-object p1, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    .line 281
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/ConcurrentData$VideoData;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iput-object v1, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 343
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 344
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    .line 345
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surface"

    .prologue
    .line 356
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceDestroyed()V

    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 349
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 350
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    .line 351
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceUpdated()V

    .line 352
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 362
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 363
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceUpdated()V

    .line 364
    return-void
.end method

.method public openDefaultCamera(Z)Z
    .locals 2
    .parameter "frontFacing"

    .prologue
    .line 94
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget v1, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    invoke-virtual {v0, p1, v1}, Lco/vine/android/recorder/CameraManager;->openDefaultCamera(ZI)Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    .line 95
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "Received camera info."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v1, v1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->setPreviewHeight(I)V

    .line 98
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v1, v1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->setPreviewWidth(I)V

    .line 99
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->startPreview()V

    .line 100
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0, p0}, Lco/vine/android/recorder/VineRecorder;->onCameraReady(Lco/vine/android/recorder/RecordController;)V

    .line 101
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 103
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

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoFocus(Z)V
    .locals 0
    .parameter "isOn"

    .prologue
    .line 81
    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    .line 82
    return-void
.end method

.method public setFinishProcessTask(Lco/vine/android/recorder/VineRecorder$FinishProcessTask;)V
    .locals 1
    .parameter "mFinishProcessTask"

    .prologue
    .line 323
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    .line 324
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/ProcessorRunnable;->setAsyncTask(Lco/vine/android/recorder/VineRecorder$FinishProcessTask;)V

    .line 325
    return-void
.end method

.method public setRecording(Z)V
    .locals 2
    .parameter "recording"

    .prologue
    .line 314
    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    if-eqz p1, :cond_0

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/recorder/RecordController;->startTime:J

    .line 318
    :cond_0
    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->isRecording:Z

    .line 320
    :cond_1
    return-void
.end method

.method public setRecordingAudio(Z)V
    .locals 0
    .parameter "recordingAudio"

    .prologue
    .line 332
    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->recordingAudio:Z

    .line 333
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 72
    iput p1, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    .line 73
    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 13
    .parameter "activity"
    .parameter "output"

    .prologue
    const/4 v11, 0x1

    .line 189
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You have to choose a camera via open() first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You have to set a preview surface via switchSurface first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    const-string v0, "recorder initialize success"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 196
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;-><init>(Lco/vine/android/recorder/RecordController;Lco/vine/android/recorder/RecordController$1;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 197
    .local v9, audioThread:Ljava/lang/Thread;
    sget-object v12, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v12

    .line 198
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

    .line 200
    :try_start_1
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    :try_start_2
    new-instance v0, Lco/vine/android/recorder/ProcessorRunnable;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget v5, p0, Lco/vine/android/recorder/RecordController;->mTargetSize:I

    iget-object v6, p0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget-object v7, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v8, p0, Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lco/vine/android/recorder/ProcessorRunnable;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lco/vine/android/recorder/RecordController;Landroid/content/Context;Ljava/lang/String;ILco/vine/android/recorder/ConcurrentData$CameraSetting;Lco/vine/android/recorder/CameraManager;Lco/vine/android/recorder/VineFFmpegFrameRecorder;)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

    .line 207
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    .line 209
    const-string v0, "START Recorder"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 210
    iput-boolean v11, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    .line 211
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 212
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v0, v11

    .line 213
    :goto_0
    return v0

    .line 201
    :catch_0
    move-exception v10

    .line 202
    .local v10, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    :try_start_3
    invoke-static {v10}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 203
    const-string v0, "Cannot start audio recorder. "

    invoke-static {v0, v10}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    const/4 v0, 0x0

    monitor-exit v12

    goto :goto_0

    .line 207
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

    .line 122
    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-nez v1, :cond_0

    .line 123
    sget-boolean v1, Lcom/edisonwang/android/slog/SLog;->IS_LOG_ON:Z

    if-eqz v1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You can\'t stop before you have start it."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    .line 129
    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-eqz v1, :cond_1

    .line 130
    const-string v1, "Finishing recording, calling stop and release on recorder"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview()V

    .line 132
    const-string v1, "Waiting..........."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    .line 134
    if-eqz p1, :cond_3

    .line 135
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mProcessRunnable:Lco/vine/android/recorder/ProcessorRunnable;

    invoke-virtual {v1}, Lco/vine/android/recorder/ProcessorRunnable;->terminate()V

    .line 136
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->finishLastIfNeeded()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    .line 160
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview()V

    .line 161
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->publish(I)V

    .line 164
    :cond_2
    const-string v1, "Recorder is stopped."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 165
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 141
    const-string v1, "Ahhhhh, discard failed."

    invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 155
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 156
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 157
    const-string v1, "Stop failed."

    invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 144
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mProcessThreadWasRunning:Z

    goto :goto_0

    .line 147
    :cond_4
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v1

    if-nez v1, :cond_5

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mProcessThreadWasRunning:Z

    .line 150
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
    .line 302
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 303
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    .line 304
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    .line 305
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceUpdated()V

    .line 306
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 295
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 296
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    .line 297
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    .line 298
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 310
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceDestroyed()V

    .line 311
    return-void
.end method

.method public switchFlash()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    .line 77
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->changeFlashState(Z)V

    .line 78
    return-void

    .line 76
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
    .line 222
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 223
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 224
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
    .line 217
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    .line 218
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 219
    return-void
.end method

.method public wasProcessThreadRunning()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThreadWasRunning:Z

    return v0
.end method
