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

.field private mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

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
    .line 38
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 40
    .local v1, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    .line 42
    .local v4, numberOfCameras:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v2, frontFacing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, backFacing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 46
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 47
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    :cond_1
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_0

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    sput-object v5, Lco/vine/android/recorder/CameraManager;->mFrontFacing:[Ljava/lang/Integer;

    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    sput-object v5, Lco/vine/android/recorder/CameraManager;->mBackFacing:[Ljava/lang/Integer;

    .line 55
    return-void
.end method

.method public constructor <init>(Lco/vine/android/recorder/RecordController;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-array v0, v1, [I

    iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    .line 65
    iput-boolean v1, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 97
    iput-object p1, p0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    .line 98
    return-void
.end method

.method public static getCameraDisplayOrientation(II)I
    .locals 5
    .parameter "rotation"
    .parameter "cameraId"

    .prologue
    .line 572
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 574
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, degrees:I
    packed-switch p0, :pswitch_data_0

    .line 591
    :goto_0
    const-string v3, "Set rotation to {} degrees"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 595
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v2, v3, 0x168

    .line 596
    .local v2, result:I
    rsub-int v3, v2, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 600
    :goto_1
    return v2

    .line 578
    .end local v2           #result:I
    :pswitch_0
    const/4 v0, 0x0

    .line 579
    goto :goto_0

    .line 581
    :pswitch_1
    const/16 v0, 0x5a

    .line 582
    goto :goto_0

    .line 584
    :pswitch_2
    const/16 v0, 0xb4

    .line 585
    goto :goto_0

    .line 587
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 598
    :cond_0
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    .restart local v2       #result:I
    goto :goto_1

    .line 576
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
    .line 89
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
    .line 85
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
    .line 77
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
    .line 81
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

    .line 134
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 159
    :goto_0
    return-object v2

    .line 138
    :cond_0
    iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    monitor-enter v3

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    invoke-static {p2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 142
    iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 143
    .local v1, params:Landroid/hardware/Camera$Parameters;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 144
    iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v4

    iput v4, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I

    .line 145
    const/4 v4, 0x1

    iput v4, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    .line 146
    iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 147
    iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    .line 148
    const-string v4, "1. Open Camera."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 149
    iput p2, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    .line 150
    iput-boolean p1, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z

    .line 151
    invoke-virtual {p0, p3}, Lco/vine/android/recorder/CameraManager;->getCameraInfo(I)Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    .line 152
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 157
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 157
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized startPreview(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;ZZIII)V
    .locals 22
    .parameter "surface"
    .parameter "texture"
    .parameter "flash"
    .parameter "autoFocus"
    .parameter "frameRate"
    .parameter "rotation"
    .parameter "currentDuration"

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 371
    const-string v17, "2,3: Set preview display and start preview."

    invoke-static/range {v17 .. v17}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 372
    if-eqz p1, :cond_0

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    new-instance v18, Lco/vine/android/recorder/CameraManager$DummySurfaceHolder;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lco/vine/android/recorder/CameraManager$DummySurfaceHolder;-><init>(Landroid/view/Surface;)V

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 375
    :cond_0
    if-eqz p2, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 378
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 379
    .local v10, parameters:Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 381
    const-string v17, "Set preview size: {} * {}"

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 383
    :cond_2
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera;->startPreview()V

    .line 386
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z

    .line 387
    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/recorder/CameraManager;->enableFancyCameraFeatures(IZZ)V

    .line 389
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    .line 390
    .local v4, bpp:I
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 391
    .local v11, size:Landroid/hardware/Camera$Size;
    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    mul-int v17, v17, v4

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/recorder/CameraManager;->mFrameSize:I

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    .line 394
    .local v6, config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    iget-boolean v0, v6, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->noBuffer:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 424
    .end local v4           #bpp:I
    .end local v6           #config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    .end local v10           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v11           #size:Landroid/hardware/Camera$Size;
    :cond_3
    :goto_0
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    :goto_1
    monitor-exit p0

    return-void

    .line 397
    .restart local v4       #bpp:I
    .restart local v6       #config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    .restart local v10       #parameters:Landroid/hardware/Camera$Parameters;
    .restart local v11       #size:Landroid/hardware/Camera$Size;
    :cond_4
    :try_start_2
    iget v9, v6, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    .line 398
    .local v9, maxDuration:I
    iget v0, v6, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I

    move/from16 v17, v0

    iget v0, v6, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    move/from16 v18, v0

    div-int v18, p5, v18

    mul-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, v9, p7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v18, v18, v20

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x11

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    const-wide v17, 0x3fe999999999999aL

    :goto_2
    mul-double v17, v17, v20

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1e

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 403
    .local v5, bufferCount:I
    const-string v17, "Add Preview Callback with {} buffers."

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Buffer count: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 406
    .local v12, start:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 407
    iget-boolean v0, v6, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocateBuffer:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/recorder/CameraManager;->hasInitializedBuffers:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 408
    const-string v17, "Pre-allocate buffer 120%"

    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 409
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/recorder/CameraManager;->hasInitializedBuffers:Z

    .line 410
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/CameraManager;->mFrameSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v18

    sub-int v18, v5, v18

    mul-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v20, 0x3ff3333333333333L

    mul-double v17, v17, v20

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v14, v0, [B

    .line 411
    .local v14, tempBuffer:[B
    const/16 v17, 0x0

    const/16 v18, 0x1

    aput-byte v18, v14, v17

    .line 414
    .end local v14           #tempBuffer:[B
    :cond_5
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v5, :cond_7

    .line 415
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Add buffer "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 416
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/CameraManager;->addBuffer([BZ)V

    .line 414
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 398
    .end local v5           #bufferCount:I
    .end local v8           #i:I
    .end local v12           #start:J
    :cond_6
    const-wide/high16 v17, 0x3ff0

    goto/16 :goto_2

    .line 418
    .restart local v5       #bufferCount:I
    .restart local v8       #i:I
    .restart local v12       #start:J
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v15, v17, v12

    .line 419
    .local v15, time:J
    const-string v17, "Making buffer took {} ms"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "buffer time"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    .end local v4           #bpp:I
    .end local v5           #bufferCount:I
    .end local v6           #config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    .end local v8           #i:I
    .end local v9           #maxDuration:I
    .end local v10           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v11           #size:Landroid/hardware/Camera$Size;
    .end local v12           #start:J
    .end local v15           #time:J
    :catchall_0
    move-exception v17

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 425
    :catch_0
    move-exception v7

    .line 426
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    const-string v17, "Failed to startPreview"

    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 427
    invoke-static {v7}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 428
    const-string v17, "Failed to startPreview."

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 369
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    monitor-exit p0

    throw v17
.end method


# virtual methods
.method public addBuffer([BZ)V
    .locals 1
    .parameter "bytes"
    .parameter "isFlushing"

    .prologue
    .line 111
    if-eqz p2, :cond_0

    .line 112
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 126
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 115
    if-nez p1, :cond_1

    .line 116
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [B

    .line 117
    .restart local p1
    if-nez p1, :cond_1

    .line 118
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mFrameSize:I

    new-array p1, v0, [B

    .line 121
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public changeFlashState(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 566
    iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 567
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_0

    const-string v1, "torch"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 569
    return-void

    .line 567
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
    .line 556
    invoke-virtual {p0, p1}, Lco/vine/android/recorder/CameraManager;->fixOrientation(I)I

    .line 557
    if-eqz p3, :cond_0

    .line 558
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->startContinuousAutoFocus()Z

    .line 560
    :cond_0
    if-eqz p2, :cond_1

    .line 561
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/CameraManager;->changeFlashState(Z)V

    .line 563
    :cond_1
    return-void
.end method

.method public fixOrientation(I)I
    .locals 3
    .parameter "rotation"

    .prologue
    .line 545
    iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    monitor-enter v1

    .line 546
    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 547
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    invoke-static {p1, v0}, Lco/vine/android/recorder/CameraManager;->getCameraDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    .line 548
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 549
    const-string v0, "Fixed orientation: {}"

    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    return v0

    .line 551
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
    .line 172
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/CameraManager;->getSupportedPreviewFormat()Ljava/util/List;

    move-result-object v15

    .line 173
    .local v15, previewFormat:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v8, 0x11

    .line 174
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

    .line 175
    .local v11, format:Ljava/lang/Integer;
    const-string v19, "Supported format: {}"

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 181
    .end local v11           #format:Ljava/lang/Integer;
    :cond_1
    const/16 v19, 0x11

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    .line 182
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 183
    .restart local v11       #format:Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x100

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 184
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 189
    .end local v11           #format:Ljava/lang/Integer;
    :cond_3
    const-string v19, "Selected format: {}."

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/CameraManager;->getFixedDegrees(ZI)I

    move-result v6

    .line 191
    .local v6, degree:I
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/CameraManager;->isCurrentFront()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 192
    neg-int v6, v6

    .line 197
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    move/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v9

    .line 203
    .local v9, cp:Landroid/media/CamcorderProfile;
    :goto_0
    const-string v19, "Preferred FrameRate: {}."

    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
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

    .line 205
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

    .line 207
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

    .line 209
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

    .line 211
    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    .line 212
    const/16 v19, 0x1e0

    move/from16 v0, v19

    iput v0, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 215
    :cond_6
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

    .line 216
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

    .line 217
    iget v4, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 218
    .local v4, videoFrameWidth:I
    iget v5, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 219
    .local v5, videoFrameHeight:I
    iget v7, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v9           #cp:Landroid/media/CamcorderProfile;
    .local v7, videoFrameRate:I
    :goto_1
    new-instance v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    invoke-direct/range {v3 .. v8}, Lco/vine/android/recorder/ConcurrentData$CameraSetting;-><init>(IIIII)V

    .line 255
    .local v3, cameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    sget-boolean v19, Lcom/edisonwang/android/slog/SLog;->IS_LOG_ON:Z

    if-eqz v19, :cond_f

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v14

    .line 257
    .local v14, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v14}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 258
    .local v16, size:Landroid/hardware/Camera$Size;
    if-eqz v16, :cond_7

    .line 259
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

    .line 261
    :cond_7
    invoke-virtual {v14}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v17

    .line 262
    .local v17, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v17, :cond_e

    .line 263
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_e

    .line 264
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #size:Landroid/hardware/Camera$Size;
    check-cast v16, Landroid/hardware/Camera$Size;

    .line 265
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

    .line 263
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 201
    .end local v3           #cameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    .end local v4           #videoFrameWidth:I
    .end local v5           #videoFrameHeight:I
    .end local v7           #videoFrameRate:I
    .end local v12           #i:I
    .end local v14           #params:Landroid/hardware/Camera$Parameters;
    .end local v16           #size:Landroid/hardware/Camera$Size;
    .end local v17           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_8
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

    .line 220
    .end local v9           #cp:Landroid/media/CamcorderProfile;
    :catch_0
    move-exception v10

    .line 221
    .local v10, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v14

    .line 222
    .restart local v14       #params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v14}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v17

    .line 223
    .restart local v17       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 224
    .local v18, supportedWidth:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v17, :cond_d

    .line 225
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_a

    .line 226
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/Camera$Size;

    .line 227
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

    .line 228
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

    .line 229
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

    if-ne v0, v1, :cond_9

    .line 230
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 233
    .end local v16           #size:Landroid/hardware/Camera$Size;
    :cond_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 234
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Edison: Target size is not supported."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;)V

    .line 235
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

    .line 236
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

    .line 251
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

    .line 238
    .end local v4           #videoFrameWidth:I
    .end local v5           #videoFrameHeight:I
    .end local v7           #videoFrameRate:I
    .restart local v12       #i:I
    :cond_b
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

    if-eqz v19, :cond_c

    .line 239
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

    .line 240
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

    .line 242
    .end local v4           #videoFrameWidth:I
    .end local v5           #videoFrameHeight:I
    :cond_c
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Edison: Target width is not supported."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;)V

    .line 243
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

    .line 244
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

    .line 248
    .end local v4           #videoFrameWidth:I
    .end local v5           #videoFrameHeight:I
    .end local v12           #i:I
    :cond_d
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

    .line 249
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

    .line 268
    .end local v10           #e:Ljava/lang/Exception;
    .end local v18           #supportedWidth:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v3       #cameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    .restart local v7       #videoFrameRate:I
    .restart local v16       #size:Landroid/hardware/Camera$Size;
    :cond_e
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

    .line 271
    .end local v14           #params:Landroid/hardware/Camera$Parameters;
    .end local v16           #size:Landroid/hardware/Camera$Size;
    .end local v17           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_f
    return-object v3
.end method

.method public getCurrentPreviewFormat()I
    .locals 1

    .prologue
    .line 167
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
    .line 537
    if-eqz p1, :cond_0

    .line 538
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    .line 540
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
    .line 616
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
    .line 163
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
    .line 101
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
    .line 93
    iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z

    return v0
.end method

.method public isFlashSupported()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 433
    iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 434
    .local v2, modes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v3

    .line 437
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

    .line 438
    .local v1, mode:Ljava/lang/String;
    const-string v5, "on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 439
    goto :goto_0

    .line 440
    :cond_3
    const-string v5, "torch"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 441
    goto :goto_0
.end method

.method protected isPreviewing()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z

    return v0
.end method

.method protected lock()V
    .locals 1

    .prologue
    .line 348
    const-string v0, "5d. Lock Camera"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isLocked:Z

    .line 350
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 351
    return-void
.end method

.method public modifyZoom(Z)I
    .locals 5
    .parameter "zoomIn"

    .prologue
    .line 620
    iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    monitor-enter v3

    .line 621
    :try_start_0
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 623
    :try_start_1
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 624
    .local v1, params:Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_1

    .line 625
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    iget v4, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I

    if-ge v2, v4, :cond_0

    .line 626
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    .line 627
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 628
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 643
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    return v2

    .line 632
    .restart local v1       #params:Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_3
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    .line 633
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    .line 634
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 635
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 638
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 639
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "It just didn\'t work."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 642
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

    .line 277
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 278
    :try_start_0
    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasFrontFacingCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lco/vine/android/recorder/CameraManager;->mFrontFacing:[Ljava/lang/Integer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 283
    .local v0, nextId:I
    :cond_0
    :goto_0
    iget v1, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    if-ne v0, v1, :cond_1

    .line 284
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview()V

    .line 287
    :cond_1
    invoke-direct {p0, p1, v0, p2}, Lco/vine/android/recorder/CameraManager;->safeCameraOpen(ZII)Lco/vine/android/recorder/ConcurrentData$CameraSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 280
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

    .line 277
    .end local v0           #nextId:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 130
    return-void
.end method

.method protected releaseCameraAndPreview()V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    monitor-enter v1

    .line 292
    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 293
    const-string v0, "6,7 RELEASE Camera and STOP Preview."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->stopPreview()V

    .line 297
    :cond_0
    const-string v0, "Camera was released."

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 299
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    .line 302
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    .line 304
    :cond_1
    monitor-exit v1

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFrameRate(I)I
    .locals 20
    .parameter "frameRate"

    .prologue
    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    move-object/from16 v16, v0

    monitor-enter v16

    .line 449
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v15, :cond_9

    .line 451
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v15}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 452
    .local v10, parameters:Landroid/hardware/Camera$Parameters;
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v15, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 454
    const-string v15, "SET framerate using fixed framerate"

    invoke-static {v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 455
    :try_start_2
    monitor-exit v16

    move/from16 v15, p1

    .line 533
    .end local v10           #parameters:Landroid/hardware/Camera$Parameters;
    :goto_0
    return v15

    .line 456
    :catch_0
    move-exception v3

    .line 457
    .local v3, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v15}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 458
    .restart local v10       #parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v14

    .line 459
    .local v14, ss:Ljava/util/List;,"Ljava/util/List<[I>;"
    if-nez v14, :cond_0

    .line 460
    new-instance v15, Ljava/lang/IllegalAccessError;

    const-string v17, "Cannot set frame-rate"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 461
    const-string v15, "FAILED TO SET framerate using fixed framerate"

    invoke-static {v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 462
    monitor-exit v16

    move/from16 v15, p1

    goto :goto_0

    .line 464
    :cond_0
    move/from16 v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 p1, v0

    .line 465
    const/4 v13, 0x0

    .line 466
    .local v13, selected:[I
    const/4 v8, 0x0

    .local v8, lowest:I
    const/4 v6, 0x0

    .local v6, hightest:I
    const/4 v11, -0x1

    .local v11, reachedIndex:I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    .line 467
    .local v9, otherIndex:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_1

    .line 468
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 469
    .local v12, s:[I
    const-string v15, "Supported FPS: {}"

    invoke-static {v15, v12}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    const/4 v15, 0x0

    aget v15, v12, v15

    move/from16 v0, p1

    if-ne v15, v0, :cond_3

    .line 471
    move-object v13, v12

    .line 493
    .end local v12           #s:[I
    :cond_1
    if-nez v13, :cond_2

    .line 494
    const/4 v15, -0x1

    if-eq v11, v15, :cond_7

    .line 495
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #selected:[I
    check-cast v13, [I

    .line 501
    .restart local v13       #selected:[I
    :cond_2
    :goto_2
    const/4 v15, 0x1

    aget v15, v13, v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v0, p1

    if-lt v15, v0, :cond_8

    .line 503
    :try_start_3
    const-string v15, "Try Using variable FPS: {}, {}."

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    move/from16 v0, p1

    invoke-virtual {v10, v8, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 505
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v15, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 506
    move/from16 v0, p1

    div-int/lit16 v15, v0, 0x3e8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    monitor-exit v16

    goto/16 :goto_0

    .line 532
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #hightest:I
    .end local v7           #i:I
    .end local v8           #lowest:I
    .end local v9           #otherIndex:I
    .end local v10           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v11           #reachedIndex:I
    .end local v13           #selected:[I
    .end local v14           #ss:Ljava/util/List;,"Ljava/util/List<[I>;"
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v15

    .line 474
    .restart local v3       #e:Ljava/lang/Exception;
    .restart local v6       #hightest:I
    .restart local v7       #i:I
    .restart local v8       #lowest:I
    .restart local v9       #otherIndex:I
    .restart local v10       #parameters:Landroid/hardware/Camera$Parameters;
    .restart local v11       #reachedIndex:I
    .restart local v12       #s:[I
    .restart local v13       #selected:[I
    .restart local v14       #ss:Ljava/util/List;,"Ljava/util/List<[I>;"
    :cond_3
    const/4 v15, 0x1

    :try_start_5
    aget v15, v12, v15

    move/from16 v0, p1

    if-ne v15, v0, :cond_6

    .line 475
    const/4 v15, 0x0

    aget v15, v12, v15

    if-ge v8, v15, :cond_4

    .line 476
    const/4 v15, 0x0

    aget v8, v12, v15

    .line 477
    move v11, v7

    .line 479
    :cond_4
    const/4 v15, 0x1

    aget v15, v12, v15

    if-gt v6, v15, :cond_5

    .line 480
    const/4 v15, 0x1

    aget v6, v12, v15

    .line 467
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 483
    :cond_6
    const/4 v15, 0x0

    aget v15, v12, v15

    if-gt v8, v15, :cond_5

    .line 484
    const/4 v15, 0x0

    aget v8, v12, v15

    .line 485
    const/4 v15, 0x1

    aget v15, v12, v15

    if-gt v6, v15, :cond_5

    .line 486
    const/4 v15, 0x1

    aget v6, v12, v15

    .line 487
    move v9, v7

    goto :goto_3

    .line 497
    .end local v12           #s:[I
    :cond_7
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #selected:[I
    check-cast v13, [I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v13       #selected:[I
    goto :goto_2

    .line 507
    :catch_1
    move-exception v4

    .line 509
    .local v4, e2:Ljava/lang/Exception;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v15}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 510
    const-string v15, "Try Using fixed framerate FPS: {}"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 511
    move/from16 v0, p1

    div-int/lit16 v15, v0, 0x3e8

    invoke-virtual {v10, v15}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 512
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v15, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 513
    move/from16 v0, p1

    div-int/lit16 v15, v0, 0x3e8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    monitor-exit v16

    goto/16 :goto_0

    .line 514
    :catch_2
    move-exception v5

    .line 515
    .local v5, e3:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v15}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 516
    const-string v15, "Try Using selected framerate FPS: {}, {}, {}."

    const/16 v17, 0x0

    aget v17, v13, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    aget v18, v13, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v15, v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 517
    const/4 v15, 0x0

    aget v15, v13, v15

    const/16 v17, 0x1

    aget v17, v13, v17

    move/from16 v0, v17

    invoke-virtual {v10, v15, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 518
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v15, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 519
    const/4 v15, 0x1

    aget v15, v13, v15

    div-int/lit16 v15, v15, 0x3e8

    monitor-exit v16

    goto/16 :goto_0

    .line 523
    .end local v4           #e2:Ljava/lang/Exception;
    .end local v5           #e3:Ljava/lang/Exception;
    :cond_8
    const-string v15, "Fall back, should never reach here."

    invoke-static {v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 524
    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x3e8

    move/from16 p1, v0

    .line 525
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 526
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v15, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 527
    monitor-exit v16

    move/from16 v15, p1

    goto/16 :goto_0

    .line 532
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #hightest:I
    .end local v7           #i:I
    .end local v8           #lowest:I
    .end local v9           #otherIndex:I
    .end local v10           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v11           #reachedIndex:I
    .end local v13           #selected:[I
    .end local v14           #ss:Ljava/util/List;,"Ljava/util/List<[I>;"
    :cond_9
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 533
    const/4 v15, -0x1

    goto/16 :goto_0
.end method

.method public setImageFormat(I)V
    .locals 0
    .parameter "imageFormat"

    .prologue
    .line 612
    iput p1, p0, Lco/vine/android/recorder/CameraManager;->mImageFormat:I

    .line 613
    return-void
.end method

.method public setPreviewHeight(I)V
    .locals 0
    .parameter "previewHeight"

    .prologue
    .line 604
    iput p1, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I

    .line 605
    return-void
.end method

.method public setPreviewWidth(I)V
    .locals 0
    .parameter "previewWidth"

    .prologue
    .line 608
    iput p1, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I

    .line 609
    return-void
.end method

.method public startContinuousAutoFocus()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 310
    .local v1, params:Landroid/hardware/Camera$Parameters;
    const-string v2, ""

    .line 312
    .local v2, supportedMode:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 314
    .local v0, focusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v3

    .line 317
    :cond_1
    const-string v4, "continuous-video"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 318
    const-string v2, "continuous-video"

    .line 319
    const-string v4, "Focus Mode: CONTINUOUS VIDEO"

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 327
    :cond_2
    :goto_1
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 328
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 330
    const/4 v3, 0x1

    goto :goto_0

    .line 321
    :cond_3
    const-string v4, "infinity"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 322
    const-string v2, "infinity"

    .line 323
    const-string v4, "Focus Mode: INFINITY"

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected startPreview(Landroid/graphics/SurfaceTexture;ZZIII)V
    .locals 8
    .parameter "texture"
    .parameter "flash"
    .parameter "autoFocus"
    .parameter "frameRate"
    .parameter "rotation"
    .parameter "currentDuration"

    .prologue
    .line 364
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lco/vine/android/recorder/CameraManager;->startPreview(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;ZZIII)V

    .line 365
    return-void
.end method

.method protected startPreview(Landroid/view/Surface;ZZIII)V
    .locals 8
    .parameter "surface"
    .parameter "flash"
    .parameter "autoFocus"
    .parameter "frameRate"
    .parameter "rotation"
    .parameter "currentDuration"

    .prologue
    .line 360
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lco/vine/android/recorder/CameraManager;->startPreview(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;ZZIII)V

    .line 361
    return-void
.end method

.method protected stopPreview()V
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I

    monitor-enter v1

    .line 337
    :try_start_0
    const-string v0, "6. Stop Preview."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z

    .line 340
    monitor-exit v1

    .line 341
    return-void

    .line 340
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
    .line 354
    const-string v0, "4a. UNLOCK Camera for another thread."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isLocked:Z

    .line 356
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 357
    return-void
.end method

.method public unlockAndSetCamera(Landroid/media/MediaRecorder;)V
    .locals 1
    .parameter "recorder"

    .prologue
    .line 105
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->unlock()V

    .line 106
    const-string v0, "4b-1"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 108
    return-void
.end method
