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

.field private final mCameras:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCamera:I

.field private mFixedDegrees:I

.field private mFrameSize:I

.field private mImageFormat:I

.field private mIsCurrentFront:Z

.field private mMaxZoom:I

.field private mPreviewCallback:Lco/vine/android/recorder/RecordController;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mZoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 37
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 39
    .local v1, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    .line 41
    .local v4, numberOfCameras:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, frontFacing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, backFacing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 45
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 46
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_1
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_0

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    sput-object v5, Lco/vine/android/recorder/CameraManager;->mFrontFacing:[Ljava/lang/Integer;

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    sput-object v5, Lco/vine/android/recorder/CameraManager;->mBackFacing:[Ljava/lang/Integer;

    .line 54
    return-void
.end method

.method public constructor <init>(Lco/vine/android/recorder/RecordController;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCameras:Landroid/util/SparseArray;

    .line 94
    iput-object p1, p0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    .line 95
    return-void
.end method

.method public static getCameraDisplayOrientation(II)I
    .locals 5
    .parameter "rotation"
    .parameter "cameraId"

    .prologue
    .line 451
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 453
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, degrees:I
    packed-switch p0, :pswitch_data_0

    .line 470
    :goto_0
    const-string v3, "Set rotation to {} degrees"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 474
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v2, v3, 0x168

    .line 475
    .local v2, result:I
    rsub-int v3, v2, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 479
    :goto_1
    return v2

    .line 457
    .end local v2           #result:I
    :pswitch_0
    const/4 v0, 0x0

    .line 458
    goto :goto_0

    .line 460
    :pswitch_1
    const/16 v0, 0x5a

    .line 461
    goto :goto_0

    .line 463
    :pswitch_2
    const/16 v0, 0xb4

    .line 464
    goto :goto_0

    .line 466
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 477
    :cond_0
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    .restart local v2       #result:I
    goto :goto_1

    .line 455
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
    .line 76
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
    .line 72
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
    .line 64
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
    .line 68
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

.method private safeCameraOpen(ZI)Landroid/media/CamcorderProfile;
    .locals 4
    .parameter "frontFacing"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 118
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object v2

    .line 122
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview()V

    .line 123
    invoke-static {p2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 124
    iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 125
    .local v1, params:Landroid/hardware/Camera$Parameters;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 126
    iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    iput v3, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I

    .line 127
    const/4 v3, 0x1

    iput v3, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    .line 128
    iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 129
    iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_0

    .line 130
    const-string v3, "1. Open Camera."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 131
    iput p2, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    .line 132
    iput-boolean p1, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z

    .line 133
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->getCamcorderProfile()Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 135
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 137
    const-string v3, "Cannot open camera."

    invoke-static {v3, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized startPreview(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;ZZII)V
    .locals 14
    .parameter "surface"
    .parameter "texture"
    .parameter "flash"
    .parameter "autoFocus"
    .parameter "frameRate"
    .parameter "rotation"

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v10, :cond_4

    .line 282
    const-string v10, "2,3: Set preview display and start preview."

    invoke-static {v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 283
    if-eqz p1, :cond_0

    .line 284
    iget-object v10, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    new-instance v11, Lco/vine/android/recorder/CameraManager$DummySurfaceHolder;

    invoke-direct {v11, p1}, Lco/vine/android/recorder/CameraManager$DummySurfaceHolder;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v10, v11}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 286
    :cond_0
    if-eqz p2, :cond_1

    .line 287
    iget-object v10, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 289
    :cond_1
    iget-object v10, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 290
    .local v7, parameters:Landroid/hardware/Camera$Parameters;
    iget v10, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I

    if-lez v10, :cond_2

    .line 291
    iget v10, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I

    iget v11, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I

    invoke-virtual {v7, v10, v11}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 292
    const-string v10, "Set preview size: {} * {}"

    iget v11, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    :cond_2
    const/16 v10, 0x11

    invoke-virtual {v7, v10}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 295
    iget-object v10, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v10, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 296
    iget-object v10, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->startPreview()V

    .line 297
    const/4 v10, 0x1

    iput-boolean v10, p0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z

    .line 298
    move/from16 v0, p6

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/recorder/CameraManager;->enableFancyCameraFeatures(IZZ)V

    .line 300
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v10

    invoke-static {v10}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    .line 301
    .local v3, bpp:I
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 302
    .local v8, size:Landroid/hardware/Camera$Size;
    iget v10, v8, Landroid/hardware/Camera$Size;->width:I

    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v10, v11

    mul-int/2addr v10, v3

    div-int/lit8 v10, v10, 0x8

    iput v10, p0, Lco/vine/android/recorder/CameraManager;->mFrameSize:I

    .line 303
    iget-object v10, p0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    if-eqz v10, :cond_4

    .line 304
    iget-object v10, p0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    iget-object v10, v10, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-object v10, v10, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget v10, v10, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I

    mul-int v10, v10, p5

    iget-object v11, p0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    iget-object v11, v11, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-object v11, v11, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget v11, v11, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    div-int v4, v10, v11

    .line 305
    .local v4, bufferCount:I
    const-string v10, "Add Preview Callback with {} buffers."

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Buffer count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 307
    iget-object v10, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    iget-object v11, p0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v10, v11}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 308
    iget-object v10, p0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    iget-object v10, v10, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-object v10, v10, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget-boolean v10, v10, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocateBuffer:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lco/vine/android/recorder/CameraManager;->hasInitializedBuffers:Z

    if-nez v10, :cond_3

    .line 309
    const-string v10, "Pre-allocate buffer 120%"

    invoke-static {v10}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 310
    const/4 v10, 0x1

    iput-boolean v10, p0, Lco/vine/android/recorder/CameraManager;->hasInitializedBuffers:Z

    .line 311
    iget v10, p0, Lco/vine/android/recorder/CameraManager;->mFrameSize:I

    mul-int/2addr v10, v4

    int-to-double v10, v10

    const-wide v12, 0x3ff3333333333333L

    mul-double/2addr v10, v12

    double-to-int v10, v10

    new-array v9, v10, [B

    .line 312
    .local v9, tempBuffer:[B
    const/4 v10, 0x0

    const/4 v11, 0x1

    aput-byte v11, v9, v10

    .line 315
    .end local v9           #tempBuffer:[B
    :cond_3
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 316
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Add buffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 317
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lco/vine/android/recorder/CameraManager;->addBuffer([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 321
    .end local v3           #bpp:I
    .end local v4           #bufferCount:I
    .end local v6           #i:I
    .end local v7           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v8           #size:Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v5

    .line 322
    .local v5, e:Ljava/lang/Exception;
    :try_start_1
    const-string v10, "Failed to startPreview"

    invoke-static {v10}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 323
    invoke-static {v5}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 324
    const-string v10, "Failed to startPreview."

    invoke-static {v10, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    .end local v5           #e:Ljava/lang/Exception;
    :cond_4
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method


# virtual methods
.method public addBuffer([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 108
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 109
    if-nez p1, :cond_0

    .line 110
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mFrameSize:I

    new-array p1, v0, [B

    .line 112
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 114
    :cond_1
    return-void
.end method

.method public changeFlashState(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 445
    iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 446
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_0

    const-string v1, "torch"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 448
    return-void

    .line 446
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
    .line 435
    invoke-virtual {p0, p1}, Lco/vine/android/recorder/CameraManager;->fixOrientation(I)I

    .line 436
    if-eqz p3, :cond_0

    .line 437
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->startContinuousAutoFocus()Z

    .line 439
    :cond_0
    if-eqz p2, :cond_1

    .line 440
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/CameraManager;->changeFlashState(Z)V

    .line 442
    :cond_1
    return-void
.end method

.method public fixOrientation(I)I
    .locals 2
    .parameter "rotation"

    .prologue
    .line 428
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    invoke-static {p1, v0}, Lco/vine/android/recorder/CameraManager;->getCameraDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    .line 429
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    iget v1, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 430
    const-string v0, "Fixed orientation: {}"

    iget v1, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    return v0
.end method

.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 152
    iget v5, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    invoke-static {v5, v11}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 154
    .local v0, cp:Landroid/media/CamcorderProfile;
    if-nez v0, :cond_0

    .line 155
    iget v5, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    invoke-static {v5, v8}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 187
    :goto_0
    iput v10, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 188
    iput v9, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 189
    const-string v5, "Video: {}*{} codec: {} bitRate:{} frameRate:{}."

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget v7, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget v7, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    const-string v5, "Audio: bitRate:{} channels: {} codec: {} sampleRate: {} "

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    iget v7, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget v7, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget v7, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    return-object v0

    .line 157
    :cond_0
    const-string v5, "Preferred FrameRate: {}."

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    iget v5, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iget-object v6, p0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    iget-object v6, v6, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-object v6, v6, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget v6, v6, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    if-lt v5, v6, :cond_1

    .line 160
    iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    iget-object v5, v5, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-object v5, v5, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget v5, v5, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    iput v5, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 162
    :cond_1
    iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 163
    .local v2, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 164
    .local v3, size:Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_2

    .line 165
    const-string v5, "Preferred Width * Height: {}/{}."

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v4

    .line 168
    .local v4, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v4, :cond_3

    .line 169
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 170
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #size:Landroid/hardware/Camera$Size;
    check-cast v3, Landroid/hardware/Camera$Size;

    .line 171
    .restart local v3       #size:Landroid/hardware/Camera$Size;
    const-string v5, "Supported Video Width * Height: {}/{}."

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    .end local v1           #i:I
    :cond_3
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 175
    if-eqz v4, :cond_4

    .line 176
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 177
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #size:Landroid/hardware/Camera$Size;
    check-cast v3, Landroid/hardware/Camera$Size;

    .line 178
    .restart local v3       #size:Landroid/hardware/Camera$Size;
    const-string v5, "Supported Preview Width * Height: {}/{}."

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 183
    .end local v1           #i:I
    :cond_4
    const-string v5, "Original Width * Height: {}/{}"

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mPreviewCallback:Lco/vine/android/recorder/RecordController;

    iget-object v5, v5, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-object v5, v5, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget v5, v5, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I

    iput v5, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    goto/16 :goto_0
.end method

.method public getCurrentPreviewFormat()I
    .locals 1

    .prologue
    .line 148
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
    .line 420
    if-eqz p1, :cond_0

    .line 421
    iget v0, p0, Lco/vine/android/recorder/CameraManager;->mFixedDegrees:I

    .line 423
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
    .line 495
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
    .line 144
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
    .line 98
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

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
    .line 80
    iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z

    return v0
.end method

.method public isFlashSupported()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 330
    .local v2, modes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v3

    .line 333
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

    .line 334
    .local v1, mode:Ljava/lang/String;
    const-string v5, "on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 335
    goto :goto_0

    .line 336
    :cond_3
    const-string v5, "torch"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 337
    goto :goto_0
.end method

.method protected isPreviewing()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z

    return v0
.end method

.method protected lock()V
    .locals 1

    .prologue
    .line 260
    const-string v0, "5d. Lock Camera"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isLocked:Z

    .line 262
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 263
    return-void
.end method

.method public modifyZoom(Z)I
    .locals 4
    .parameter "zoomIn"

    .prologue
    .line 499
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 501
    .local v1, params:Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_1

    .line 502
    :try_start_0
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    iget v3, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I

    if-ge v2, v3, :cond_0

    .line 503
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    .line 504
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 505
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :cond_0
    :goto_0
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    return v2

    .line 509
    :cond_1
    :try_start_1
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 510
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    .line 511
    iget v2, p0, Lco/vine/android/recorder/CameraManager;->mZoom:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 512
    iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "It just didn\'t work."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openDefaultCamera(Z)Landroid/media/CamcorderProfile;
    .locals 3
    .parameter "frontFacing"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 196
    if-eqz p1, :cond_2

    .line 197
    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasFrontFacingCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lco/vine/android/recorder/CameraManager;->mFrontFacing:[Ljava/lang/Integer;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 202
    .local v0, nextId:I
    :cond_0
    :goto_0
    iget v1, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    if-ne v0, v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview()V

    .line 206
    :cond_1
    invoke-direct {p0, p1, v0}, Lco/vine/android/recorder/CameraManager;->safeCameraOpen(ZI)Landroid/media/CamcorderProfile;

    move-result-object v1

    return-object v1

    .line 199
    .end local v0           #nextId:I
    :cond_2
    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasBackFacingCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lco/vine/android/recorder/CameraManager;->mBackFacing:[Ljava/lang/Integer;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #nextId:I
    :cond_3
    goto :goto_0
.end method

.method protected declared-synchronized releaseCameraAndPreview()V
    .locals 2

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "6,7 RELEASE Camera and STOP Preview."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->stopPreview()V

    .line 213
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 214
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCameras:Landroid/util/SparseArray;

    iget v1, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 215
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFrameRate(I)I
    .locals 16
    .parameter "frameRate"

    .prologue
    .line 344
    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v12}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 345
    .local v7, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v11

    .line 346
    .local v11, ss:Ljava/util/List;,"Ljava/util/List<[I>;"
    if-nez v11, :cond_0

    .line 347
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v12, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 349
    const-string v12, "Supported FPS is null, using frame rate of {}."

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    move/from16 v12, p1

    .line 416
    :goto_1
    return v12

    .line 351
    :cond_0
    move/from16 v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 p1, v0

    .line 352
    const/4 v10, 0x0

    .line 353
    .local v10, selected:[I
    const/4 v5, 0x0

    .local v5, lowest:I
    const/4 v3, 0x0

    .local v3, hightest:I
    const/4 v8, -0x1

    .local v8, reachedIndex:I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 354
    .local v6, otherIndex:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_1

    .line 355
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 356
    .local v9, s:[I
    const-string v12, "Supported FPS: {}"

    invoke-static {v12, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    const/4 v12, 0x0

    aget v12, v9, v12

    move/from16 v0, p1

    if-ne v12, v0, :cond_3

    .line 358
    move-object v10, v9

    .line 380
    .end local v9           #s:[I
    :cond_1
    if-nez v10, :cond_2

    .line 381
    const/4 v12, -0x1

    if-eq v8, v12, :cond_7

    .line 382
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #selected:[I
    check-cast v10, [I

    .line 388
    .restart local v10       #selected:[I
    :cond_2
    :goto_3
    const/4 v12, 0x1

    aget v12, v10, v12

    move/from16 v0, p1

    if-lt v12, v0, :cond_8

    .line 390
    :try_start_0
    const-string v12, "Try Using variable FPS: {}, {}."

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 391
    move/from16 v0, p1

    invoke-virtual {v7, v5, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 392
    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v12, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 393
    move/from16 v0, p1

    div-int/lit16 v12, v0, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 361
    .restart local v9       #s:[I
    :cond_3
    const/4 v12, 0x1

    aget v12, v9, v12

    move/from16 v0, p1

    if-ne v12, v0, :cond_6

    .line 362
    const/4 v12, 0x0

    aget v12, v9, v12

    if-ge v5, v12, :cond_4

    .line 363
    const/4 v12, 0x0

    aget v5, v9, v12

    .line 364
    move v8, v4

    .line 366
    :cond_4
    const/4 v12, 0x1

    aget v12, v9, v12

    if-gt v3, v12, :cond_5

    .line 367
    const/4 v12, 0x1

    aget v3, v9, v12

    .line 354
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 370
    :cond_6
    const/4 v12, 0x0

    aget v12, v9, v12

    if-gt v5, v12, :cond_5

    .line 371
    const/4 v12, 0x0

    aget v5, v9, v12

    .line 372
    const/4 v12, 0x1

    aget v12, v9, v12

    if-gt v3, v12, :cond_5

    .line 373
    const/4 v12, 0x1

    aget v3, v9, v12

    .line 374
    move v6, v4

    goto :goto_4

    .line 384
    .end local v9           #s:[I
    :cond_7
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #selected:[I
    check-cast v10, [I

    .restart local v10       #selected:[I
    goto :goto_3

    .line 394
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v12}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 397
    const-string v12, "Try Using fixed framerate FPS: {}"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    move/from16 v0, p1

    div-int/lit16 v12, v0, 0x3e8

    invoke-virtual {v7, v12}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v12, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 400
    move/from16 v0, p1

    div-int/lit16 v12, v0, 0x3e8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 401
    :catch_1
    move-exception v2

    .line 402
    .local v2, e2:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v12}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 403
    const-string v12, "Try Using selected framerate FPS: {}, {}, {}."

    const/4 v13, 0x0

    aget v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v12, v13, v14, v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    const/4 v12, 0x0

    aget v12, v10, v12

    const/4 v13, 0x1

    aget v13, v10, v13

    invoke-virtual {v7, v12, v13}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 405
    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v12, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 406
    const/4 v12, 0x1

    aget v12, v10, v12

    div-int/lit16 v12, v12, 0x3e8

    goto/16 :goto_1

    .line 410
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #e2:Ljava/lang/Exception;
    :cond_8
    const-string v12, "Fall back, should never reach here."

    invoke-static {v12}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 411
    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x3e8

    move/from16 p1, v0

    .line 412
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v12, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0
.end method

.method public setImageFormat(I)V
    .locals 0
    .parameter "imageFormat"

    .prologue
    .line 491
    iput p1, p0, Lco/vine/android/recorder/CameraManager;->mImageFormat:I

    .line 492
    return-void
.end method

.method public setPreviewHeight(I)V
    .locals 0
    .parameter "previewHeight"

    .prologue
    .line 483
    iput p1, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I

    .line 484
    return-void
.end method

.method public setPreviewWidth(I)V
    .locals 0
    .parameter "previewWidth"

    .prologue
    .line 487
    iput p1, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I

    .line 488
    return-void
.end method

.method public startContinuousAutoFocus()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 224
    .local v1, params:Landroid/hardware/Camera$Parameters;
    const-string v2, ""

    .line 226
    .local v2, supportedMode:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, focusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v3

    .line 231
    :cond_1
    const-string v4, "continuous-video"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 232
    const-string v2, "continuous-video"

    .line 233
    const-string v4, "Focus Mode: CONTINUOUS VIDEO"

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 241
    :cond_2
    :goto_1
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 242
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 244
    const/4 v3, 0x1

    goto :goto_0

    .line 235
    :cond_3
    const-string v4, "infinity"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    const-string v2, "infinity"

    .line 237
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
    .line 276
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lco/vine/android/recorder/CameraManager;->startPreview(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;ZZII)V

    .line 277
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
    .line 272
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lco/vine/android/recorder/CameraManager;->startPreview(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;ZZII)V

    .line 273
    return-void
.end method

.method protected stopPreview()V
    .locals 1

    .prologue
    .line 250
    const-string v0, "6. Stop Preview."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z

    .line 253
    return-void
.end method

.method protected unlock()V
    .locals 1

    .prologue
    .line 266
    const-string v0, "4a. UNLOCK Camera for another thread."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isLocked:Z

    .line 268
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 269
    return-void
.end method

.method public unlockAndSetCamera(Landroid/media/MediaRecorder;)V
    .locals 1
    .parameter "recorder"

    .prologue
    .line 102
    invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->unlock()V

    .line 103
    const-string v0, "4b-1"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 105
    return-void
.end method
