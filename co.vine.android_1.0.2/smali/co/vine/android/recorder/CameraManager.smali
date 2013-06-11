.class public Lco/vine/android/recorder/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/CameraManager$DummySurfaceHolder;
    }
.end annotation


# static fields
.field private static final mBackFacing:[Ljava/lang/Integer;

.field private static final mFrontFacing:[Ljava/lang/Integer;


# instance fields
.field private hasInitializedBuffers:Z

.field private isLocked:Z

.field private isPreviewing:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

.field private mCurrentCamera:I

.field private mFixedDegrees:I

.field private mFrameSize:I

.field private mImageFormat:I

.field private mIsCurrentFront:Z

.field private final mLOCK:[I

.field private mMaxZoom:I

.field private mPreviewCallback:Lco/vine/android/recorder/RecordController;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mZoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 35
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 37
    .local v1, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    .line 39
    .local v4, numberOfCameras:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v2, frontFacing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, backFacing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 43
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 44
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_1
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_0

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    sput-object v5, Lco/vine/android/recorder/CameraManager;->mFrontFacing:[Ljava/lang/Integer;

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    sput-object v5, Lco/vine/android/recorder/CameraManager;->mBackFacing:[Ljava/lang/Integer;

    .line 52
    return-void
.end method

.method public constructor <init>(Lco/vine/android/recorder/RecordController;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-array v0, v1, [I

    iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    .line 62
    iput-boolean v1, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    .line 93
    iput-object p1, p0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    .line 94
    return-void
.end method

.method public static getCameraDisplayOrientation(II)I
    .locals 5
    .parameter "rotation"
    .parameter "cameraId"

    .prologue
    .line 527
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 529
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, degrees:I
    packed-switch p0, :pswitch_data_0

    .line 546
    :goto_0
    const-string v3, "Set rotation to {} degrees"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 550
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v2, v3, 0x168

    .line 551
    .local v2, result:I
    rsub-int v3, v2, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 555
    :goto_1
    return v2

    .line 533
    .end local v2           #result:I
    :pswitch_0
    const/4 v0, 0x0

    .line 534
    goto :goto_0

    .line 536
    :pswitch_1
    const/16 v0, 0x5a

    .line 537
    goto :goto_0

    .line 539
    :pswitch_2
    const/16 v0, 0xb4

    .line 540
    goto :goto_0

    .line 542
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 553
    :cond_0
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    .restart local v2       #result:I
    goto :goto_1

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getFirstBackFacingCameraId()I
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lco/vine/android/recorder/CameraManager;->mBackFacing:[Ljava/lang/Integer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static hasBackFacingCamera()Z
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lco/vine/android/recorder/CameraManager;->mBackFacing:[Ljava/lang/Integer;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasCamera()Z
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasBackFacingCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasFrontFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasFrontFacingCamera()Z
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lco/vine/android/recorder/CameraManager;->mFrontFacing:[Ljava/lang/Integer;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private safeCameraOpen(ZII)Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    .locals 5
    .parameter "frontFacing"
    .parameter "id"
    .parameter "rotation"

    .prologue
    const/4 v2, 0x0

    .line 117
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 142
    :goto_0
    return-object v2

    .line 121
    :cond_0
    iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    monitor-enter v3

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    invoke-static {p2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 125
    iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 126
    .local v1, params:Landroid/hardware/Camera$Parameters;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 127
    iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v4

    iput v4, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I

    .line 128
    const/4 v4, 0x1

    iput v4, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    .line 129
    iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 130
    iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    .line 131
    const-string v4, "1. Open Camera."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 132
    iput p2, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    .line 133
    iput-boolean p1, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z

    .line 134
    invoke-virtual {p0, p3}, Lco/vine/android/recorder/CameraManager;->getCameraInfo(I)Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    .line 135
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 140
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized startPreview(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;ZZII)V
    .locals 17
    .parameter "surface"
    .parameter "texture"
    .parameter "flash"
    .parameter "autoFocus"
    .parameter "frameRate"
    .parameter "rotation"

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v11, :cond_4

    .line 349
    const-string v11, "2,3: Set preview display and start preview."

    invoke-static {v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 350
    if-eqz p1, :cond_0

    .line 351
    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    new-instance v13, Lco/vine/android/recorder/CameraManager$DummySurfaceHolder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lco/vine/android/recorder/CameraManager$DummySurfaceHolder;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v11, v13}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 353
    :cond_0
    if-eqz p2, :cond_1

    .line 354
    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 356
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v11}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 357
    .local v8, parameters:Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p0

    iget v11, v0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I

    if-lez v11, :cond_2

    .line 358
    move-object/from16 v0, p0

    iget v11, v0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I

    invoke-virtual {v8, v11, v13}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 359
    const-string v11, "Set preview size: {} * {}"

    move-object/from16 v0, p0

    iget v13, v0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v11, v13, v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    :cond_2
    const/16 v11, 0x11

    invoke-virtual {v8, v11}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v11, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v11}, Landroid/hardware/Camera;->startPreview()V

    .line 364
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z

    .line 365
    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/recorder/CameraManager;->enableFancyCameraFeatures(IZZ)V

    .line 367
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v11

    invoke-static {v11}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    .line 368
    .local v4, bpp:I
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 369
    .local v9, size:Landroid/hardware/Camera$Size;
    iget v11, v9, Landroid/hardware/Camera$Size;->width:I

    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v11, v13

    mul-int/2addr v11, v4

    div-int/lit8 v11, v11, 0x8

    move-object/from16 v0, p0

    iput v11, v0, Lco/vine/android/recorder/CameraManager;->mFrameSize:I

    .line 370
    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    if-eqz v11, :cond_4

    .line 371
    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    iget-object v11, v11, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-object v11, v11, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget v11, v11, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I

    mul-int v11, v11, p5

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    iget-object v13, v13, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-object v13, v13, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget v13, v13, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    div-int v5, v11, v13

    .line 372
    .local v5, bufferCount:I
    const-string v11, "Add Preview Callback with {} buffers."

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Buffer count: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v11, v13}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    iget-object v11, v11, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-object v11, v11, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget-boolean v11, v11, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocateBuffer:Z

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lco/vine/android/recorder/CameraManager;->hasInitializedBuffers:Z

    if-nez v11, :cond_3

    .line 376
    const-string v11, "Pre-allocate buffer 120%"

    invoke-static {v11}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 377
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lco/vine/android/recorder/CameraManager;->hasInitializedBuffers:Z

    .line 378
    move-object/from16 v0, p0

    iget v11, v0, Lco/vine/android/recorder/CameraManager;->mFrameSize:I

    mul-int/2addr v11, v5

    int-to-double v13, v11

    const-wide v15, 0x3ff3333333333333L

    mul-double/2addr v13, v15

    double-to-int v11, v13

    new-array v10, v11, [B

    .line 379
    .local v10, tempBuffer:[B
    const/4 v11, 0x0

    const/4 v13, 0x1

    aput-byte v13, v10, v11

    .line 382
    .end local v10           #tempBuffer:[B
    :cond_3
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v5, :cond_4

    .line 383
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Add buffer "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 384
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lco/vine/android/recorder/CameraManager;->addBuffer([B)V

    .line 382
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 388
    .end local v4           #bpp:I
    .end local v5           #bufferCount:I
    .end local v7           #i:I
    .end local v8           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v9           #size:Landroid/hardware/Camera$Size;
    :cond_4
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    :goto_1
    monitor-exit p0

    return-void

    .line 388
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 389
    :catch_0
    move-exception v6

    .line 390
    .local v6, e:Ljava/lang/Exception;
    :try_start_4
    const-string v11, "Failed to startPreview"

    invoke-static {v11}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 391
    invoke-static {v6}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 392
    const-string v11, "Failed to startPreview."

    invoke-static {v11, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 347
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11
.end method


# virtual methods
.method public addBuffer([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 107
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 108
    if-nez p1, :cond_0

    .line 109
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mFrameSize:I

    new-array p1, v0, [B

    .line 111
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 113
    :cond_1
    return-void
.end method

.method public changeFlashState(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 521
    iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 522
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_0

    const-string v1, "torch"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 524
    return-void

    .line 522
    :cond_0
    const-string v1, "off"

    goto :goto_0
.end method

.method public enableFancyCameraFeatures(IZZ)V
    .locals 1
    .parameter "rotation"
    .parameter "flash"
    .parameter "autoFocus"

    .prologue
    .line 511
    invoke-virtual {p0, p1}, Lco/vine/android/recorder/CameraManager;->fixOrientation(I)I

    .line 512
    if-eqz p3, :cond_0

    .line 513
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->startContinuousAutoFocus()Z

    .line 515
    :cond_0
    if-eqz p2, :cond_1

    .line 516
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/CameraManager;->changeFlashState(Z)V

    .line 518
    :cond_1
    return-void
.end method

.method public fixOrientation(I)I
    .locals 3
    .parameter "rotation"

    .prologue
    .line 502
    iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    monitor-enter v1

    .line 503
    :try_start_0
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    invoke-static {p1, v0}, Lco/vine/android/recorder/CameraManager;->getCameraDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    .line 504
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 505
    const-string v0, "Fixed orientation: {}"

    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    return v0

    .line 506
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCameraInfo(I)Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    .locals 23
    .parameter "rotation"

    .prologue
    .line 155
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/CameraManager;->getSupportedPreviewFormat()Ljava/util/List;

    move-result-object v15

    .line 156
    .local v15, previewFormat:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v8, 0x11

    .line 157
    .local v8, selectedFormat:I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 158
    .local v11, format:Ljava/lang/Integer;
    const-string v19, "Supported format: {}"

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 160
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 164
    .end local v11           #format:Ljava/lang/Integer;
    :cond_1
    const/16 v19, 0x11

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    .line 165
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 166
    .restart local v11       #format:Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x100

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 167
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 172
    .end local v11           #format:Ljava/lang/Integer;
    :cond_3
    const-string v19, "Selected format: {}."

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/CameraManager;->getFixedDegrees(ZI)I

    move-result v6

    .line 174
    .local v6, degree:I
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/CameraManager;->isCurrentFront()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 175
    neg-int v6, v6

    .line 180
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    move/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v9

    .line 186
    .local v9, cp:Landroid/media/CamcorderProfile;
    :goto_0
    const-string v19, "Preferred FrameRate: {}."

    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 190
    :cond_5
    const-string v19, "Original Width * Height: {}/{}"

    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 193
    const-string v19, "Video: {}*{} codec: {} bitRate:{} frameRate:{}."

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    iget v0, v9, Landroid/media/CamcorderProfile;->videoCodec:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    iget v0, v9, Landroid/media/CamcorderProfile;->videoBitRate:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    const-string v19, "Audio: bitRate:{} channels: {} codec: {} sampleRate: {} "

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v9, Landroid/media/CamcorderProfile;->audioBitRate:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    iget v0, v9, Landroid/media/CamcorderProfile;->audioChannels:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    iget v0, v9, Landroid/media/CamcorderProfile;->audioCodec:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    iget v0, v9, Landroid/media/CamcorderProfile;->audioSampleRate:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget v4, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 196
    .local v4, videoFrameWidth:I
    iget v5, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 197
    .local v5, videoFrameHeight:I
    iget v7, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v9           #cp:Landroid/media/CamcorderProfile;
    .local v7, videoFrameRate:I
    :goto_1
    new-instance v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    invoke-direct/range {v3 .. v8}, Lco/vine/android/recorder/ConcurrentData$CameraSetting;-><init>(IIIII)V

    .line 233
    .local v3, cameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    sget-boolean v19, Lcom/edisonwang/android/slog/SLog;->IS_LOG_ON:Z

    if-eqz v19, :cond_e

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v14

    .line 235
    .local v14, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v14}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 236
    .local v16, size:Landroid/hardware/Camera$Size;
    if-eqz v16, :cond_6

    .line 237
    const-string v19, "Preferred Width * Height: {}/{}."

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    :cond_6
    invoke-virtual {v14}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v17

    .line 240
    .local v17, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v17, :cond_d

    .line 241
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_d

    .line 242
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #size:Landroid/hardware/Camera$Size;
    check-cast v16, Landroid/hardware/Camera$Size;

    .line 243
    .restart local v16       #size:Landroid/hardware/Camera$Size;
    const-string v19, "Supported Video Width * Height: {}/{}."

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 184
    .end local v3           #cameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    .end local v4           #videoFrameWidth:I
    .end local v5           #videoFrameHeight:I
    .end local v7           #videoFrameRate:I
    .end local v12           #i:I
    .end local v14           #params:Landroid/hardware/Camera$Parameters;
    .end local v16           #size:Landroid/hardware/Camera$Size;
    .end local v17           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .restart local v9       #cp:Landroid/media/CamcorderProfile;
    goto/16 :goto_0

    .line 198
    .end local v9           #cp:Landroid/media/CamcorderProfile;
    :catch_0
    move-exception v10

    .line 199
    .local v10, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v14

    .line 200
    .restart local v14       #params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v14}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v17

    .line 201
    .restart local v17       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v18, supportedWidth:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v17, :cond_c

    .line 203
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_9

    .line 204
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/Camera$Size;

    .line 205
    .restart local v16       #size:Landroid/hardware/Camera$Size;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Supported width and height: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 206
    const-string v19, "Supported Preview Width * Height: {}/{}."

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetSize:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 208
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 211
    .end local v16           #size:Landroid/hardware/Camera$Size;
    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 212
    new-instance v19, Ljava/lang/IllegalAccessError;

    const-string v20, "Edison: Target size is not supported."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v5, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewHeight:I

    .line 214
    .restart local v5       #videoFrameHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v4, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I

    .line 229
    .end local v12           #i:I
    .restart local v4       #videoFrameWidth:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    .restart local v7       #videoFrameRate:I
    goto/16 :goto_1

    .line 216
    .end local v4           #videoFrameWidth:I
    .end local v5           #videoFrameHeight:I
    .end local v7           #videoFrameRate:I
    .restart local v12       #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v5, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewHeight:I

    .line 218
    .restart local v5       #videoFrameHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v4, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I

    .restart local v4       #videoFrameWidth:I
    goto :goto_4

    .line 220
    .end local v4           #videoFrameWidth:I
    .end local v5           #videoFrameHeight:I
    :cond_b
    new-instance v19, Ljava/lang/IllegalAccessError;

    const-string v20, "Edison: Target width is not supported."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v5, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewHeight:I

    .line 222
    .restart local v5       #videoFrameHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v4, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I

    .restart local v4       #videoFrameWidth:I
    goto/16 :goto_4

    .line 226
    .end local v4           #videoFrameWidth:I
    .end local v5           #videoFrameHeight:I
    .end local v12           #i:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v5, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewHeight:I

    .line 227
    .restart local v5       #videoFrameHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v4, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I

    .restart local v4       #videoFrameWidth:I
    goto/16 :goto_4

    .line 246
    .end local v10           #e:Ljava/lang/Exception;
    .end local v18           #supportedWidth:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v3       #cameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    .restart local v7       #videoFrameRate:I
    .restart local v16       #size:Landroid/hardware/Camera$Size;
    :cond_d
    const-string v19, "Camera w/h/f/p/d: {}/{}/{}/{}/{}"

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    iget v0, v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    iget v0, v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/CameraManager;->getCurrentPreviewFormat()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    iget v0, v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->degrees:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    .end local v14           #params:Landroid/hardware/Camera$Parameters;
    .end local v16           #size:Landroid/hardware/Camera$Size;
    .end local v17           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_e
    return-object v3
.end method

.method public getCurrentPreviewFormat()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    return v0
.end method

.method public getFixedDegrees(ZI)I
    .locals 1
    .parameter "cached"
    .parameter "rotation"

    .prologue
    .line 494
    if-eqz p1, :cond_0

    .line 495
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    .line 497
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    invoke-static {p2, v0}, Lco/vine/android/recorder/CameraManager;->getCameraDisplayOrientation(II)I

    move-result v0

    goto :goto_0
.end method

.method public getImageFormat()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mImageFormat:I

    return v0
.end method

.method public getSupportedPreviewFormat()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCameraReady()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentFront()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z

    return v0
.end method

.method public isFlashSupported()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 397
    iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 398
    .local v2, modes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v3

    .line 401
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    .local v1, mode:Ljava/lang/String;
    const-string v5, "on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 403
    goto :goto_0

    .line 404
    :cond_3
    const-string v5, "torch"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 405
    goto :goto_0
.end method

.method protected isPreviewing()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z

    return v0
.end method

.method protected lock()V
    .locals 1

    .prologue
    .line 326
    const-string v0, "5d. Lock Camera"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isLocked:Z

    .line 328
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 329
    return-void
.end method

.method public modifyZoom(Z)I
    .locals 5
    .parameter "zoomIn"

    .prologue
    .line 575
    iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    monitor-enter v3

    .line 576
    :try_start_0
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 578
    :try_start_1
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 579
    .local v1, params:Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_1

    .line 580
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    iget v4, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I

    if-ge v2, v4, :cond_0

    .line 581
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    .line 582
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 583
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 597
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    return v2

    .line 587
    .restart local v1       #params:Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_3
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    .line 588
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    .line 589
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 590
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 593
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 594
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "It just didn\'t work."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 597
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public declared-synchronized openDefaultCamera(ZI)Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    .locals 3
    .parameter "frontFacing"
    .parameter "rotation"

    .prologue
    const/4 v0, -0x1

    .line 255
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 256
    :try_start_0
    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasFrontFacingCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lco/vine/android/recorder/CameraManager;->mFrontFacing:[Ljava/lang/Integer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 261
    .local v0, nextId:I
    :cond_0
    :goto_0
    iget v1, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    if-ne v0, v1, :cond_1

    .line 262
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview()V

    .line 265
    :cond_1
    invoke-direct {p0, p1, v0, p2}, Lco/vine/android/recorder/CameraManager;->safeCameraOpen(ZII)Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 258
    .end local v0           #nextId:I
    :cond_2
    :try_start_1
    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasBackFacingCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lco/vine/android/recorder/CameraManager;->mBackFacing:[Ljava/lang/Integer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0       #nextId:I
    :cond_3
    goto :goto_0

    .line 255
    .end local v0           #nextId:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected releaseCameraAndPreview()V
    .locals 3

    .prologue
    .line 269
    iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    monitor-enter v1

    .line 270
    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 271
    const-string v0, "6,7 RELEASE Camera and STOP Preview."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->stopPreview()V

    .line 275
    :cond_0
    const-string v0, "Camera was released."

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 277
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    .line 280
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    .line 282
    :cond_1
    monitor-exit v1

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFrameRate(I)I
    .locals 17
    .parameter "frameRate"

    .prologue
    .line 413
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v13}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 414
    .local v8, parameters:Landroid/hardware/Camera$Parameters;
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v13, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v13, p1

    .line 487
    :goto_0
    return v13

    .line 417
    .end local v8           #parameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .line 418
    .local v1, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v13}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 419
    .restart local v8       #parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v12

    .line 420
    .local v12, ss:Ljava/util/List;,"Ljava/util/List<[I>;"
    if-nez v12, :cond_0

    .line 421
    new-instance v13, Ljava/lang/IllegalAccessError;

    const-string v14, "Cannot set frame-rate"

    invoke-direct {v13, v14}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    move/from16 v13, p1

    .line 422
    goto :goto_0

    .line 424
    :cond_0
    move/from16 v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 p1, v0

    .line 425
    const/4 v11, 0x0

    .line 426
    .local v11, selected:[I
    const/4 v6, 0x0

    .local v6, lowest:I
    const/4 v4, 0x0

    .local v4, hightest:I
    const/4 v9, -0x1

    .local v9, reachedIndex:I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v7, v13, -0x1

    .line 427
    .local v7, otherIndex:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_1

    .line 428
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 429
    .local v10, s:[I
    const-string v13, "Supported FPS: {}"

    invoke-static {v13, v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    const/4 v13, 0x0

    aget v13, v10, v13

    move/from16 v0, p1

    if-ne v13, v0, :cond_3

    .line 431
    move-object v11, v10

    .line 453
    .end local v10           #s:[I
    :cond_1
    if-nez v11, :cond_2

    .line 454
    const/4 v13, -0x1

    if-eq v9, v13, :cond_7

    .line 455
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #selected:[I
    check-cast v11, [I

    .line 461
    .restart local v11       #selected:[I
    :cond_2
    :goto_2
    const/4 v13, 0x1

    aget v13, v11, v13

    move/from16 v0, p1

    if-lt v13, v0, :cond_8

    .line 463
    :try_start_1
    const-string v13, "Try Using variable FPS: {}, {}."

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 464
    move/from16 v0, p1

    invoke-virtual {v8, v6, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 465
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v13, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 466
    move/from16 v0, p1

    div-int/lit16 v13, v0, 0x3e8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 434
    .restart local v10       #s:[I
    :cond_3
    const/4 v13, 0x1

    aget v13, v10, v13

    move/from16 v0, p1

    if-ne v13, v0, :cond_6

    .line 435
    const/4 v13, 0x0

    aget v13, v10, v13

    if-ge v6, v13, :cond_4

    .line 436
    const/4 v13, 0x0

    aget v6, v10, v13

    .line 437
    move v9, v5

    .line 439
    :cond_4
    const/4 v13, 0x1

    aget v13, v10, v13

    if-gt v4, v13, :cond_5

    .line 440
    const/4 v13, 0x1

    aget v4, v10, v13

    .line 427
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 443
    :cond_6
    const/4 v13, 0x0

    aget v13, v10, v13

    if-gt v6, v13, :cond_5

    .line 444
    const/4 v13, 0x0

    aget v6, v10, v13

    .line 445
    const/4 v13, 0x1

    aget v13, v10, v13

    if-gt v4, v13, :cond_5

    .line 446
    const/4 v13, 0x1

    aget v4, v10, v13

    .line 447
    move v7, v5

    goto :goto_3

    .line 457
    .end local v10           #s:[I
    :cond_7
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #selected:[I
    check-cast v11, [I

    .restart local v11       #selected:[I
    goto :goto_2

    .line 467
    :catch_1
    move-exception v2

    .line 469
    .local v2, e2:Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v13}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 470
    const-string v13, "Try Using fixed framerate FPS: {}"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    move/from16 v0, p1

    div-int/lit16 v13, v0, 0x3e8

    invoke-virtual {v8, v13}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v13, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 473
    move/from16 v0, p1

    div-int/lit16 v13, v0, 0x3e8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 474
    :catch_2
    move-exception v3

    .line 475
    .local v3, e3:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v13}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 476
    const-string v13, "Try Using selected framerate FPS: {}, {}, {}."

    const/4 v14, 0x0

    aget v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, v11, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v13 .. v16}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    const/4 v13, 0x0

    aget v13, v11, v13

    const/4 v14, 0x1

    aget v14, v11, v14

    invoke-virtual {v8, v13, v14}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 478
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v13, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 479
    const/4 v13, 0x1

    aget v13, v11, v13

    div-int/lit16 v13, v13, 0x3e8

    goto/16 :goto_0

    .line 483
    .end local v2           #e2:Ljava/lang/Exception;
    .end local v3           #e3:Ljava/lang/Exception;
    :cond_8
    const-string v13, "Fall back, should never reach here."

    invoke-static {v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 484
    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x3e8

    move/from16 p1, v0

    .line 485
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 486
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v13, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    move/from16 v13, p1

    .line 487
    goto/16 :goto_0
.end method

.method public setImageFormat(I)V
    .locals 0
    .parameter "imageFormat"

    .prologue
    .line 567
    iput p1, p0, Lco/vine/android/recorder/CameraManager;->mImageFormat:I

    .line 568
    return-void
.end method

.method public setPreviewHeight(I)V
    .locals 0
    .parameter "previewHeight"

    .prologue
    .line 559
    iput p1, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I

    .line 560
    return-void
.end method

.method public setPreviewWidth(I)V
    .locals 0
    .parameter "previewWidth"

    .prologue
    .line 563
    iput p1, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I

    .line 564
    return-void
.end method

.method public startContinuousAutoFocus()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 288
    .local v1, params:Landroid/hardware/Camera$Parameters;
    const-string v2, ""

    .line 290
    .local v2, supportedMode:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 292
    .local v0, focusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v3

    .line 295
    :cond_1
    const-string v4, "continuous-video"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 296
    const-string v2, "continuous-video"

    .line 297
    const-string v4, "Focus Mode: CONTINUOUS VIDEO"

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 305
    :cond_2
    :goto_1
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 308
    const/4 v3, 0x1

    goto :goto_0

    .line 299
    :cond_3
    const-string v4, "infinity"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    const-string v2, "infinity"

    .line 301
    const-string v4, "Focus Mode: INFINITY"

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected startPreview(Landroid/graphics/SurfaceTexture;ZZII)V
    .locals 7
    .parameter "texture"
    .parameter "flash"
    .parameter "autoFocus"
    .parameter "frameRate"
    .parameter "rotation"

    .prologue
    .line 342
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lco/vine/android/recorder/CameraManager;->startPreview(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;ZZII)V

    .line 343
    return-void
.end method

.method protected startPreview(Landroid/view/Surface;ZZII)V
    .locals 7
    .parameter "surface"
    .parameter "flash"
    .parameter "autoFocus"
    .parameter "frameRate"
    .parameter "rotation"

    .prologue
    .line 338
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lco/vine/android/recorder/CameraManager;->startPreview(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;ZZII)V

    .line 339
    return-void
.end method

.method protected stopPreview()V
    .locals 2

    .prologue
    .line 314
    iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    monitor-enter v1

    .line 315
    :try_start_0
    const-string v0, "6. Stop Preview."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z

    .line 318
    monitor-exit v1

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unlock()V
    .locals 1

    .prologue
    .line 332
    const-string v0, "4a. UNLOCK Camera for another thread."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isLocked:Z

    .line 334
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 335
    return-void
.end method

.method public unlockAndSetCamera(Landroid/media/MediaRecorder;)V
    .locals 1
    .parameter "recorder"

    .prologue
    .line 101
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->unlock()V

    .line 102
    const-string v0, "4b-1"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 104
    return-void
.end method
