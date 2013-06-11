.class public Lco/vine/android/recorder/ProcessorRunnable;
.super Ljava/lang/Object;
.source "ProcessorRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final A:I = -0x1000000


# instance fields
.field private errorCount:I

.field private hasLoggedException:Z

.field private lastH:I

.field private lastW:I

.field private mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

.field private final mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mCameraManager:Lco/vine/android/recorder/CameraManager;

.field private mConverter:Lco/vine/android/recorder/VineProcessor;

.field private mCurrentFrameSize:I

.field private final mCurrentVideoOutput:Ljava/lang/String;

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

.field private final mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private mFilterYuv:Lco/vine/android/recorder/RsYuv;

.field private mHasGeneratedThumbnail:Z

.field private mIntBuffer:Ljava/nio/IntBuffer;

.field private mLastFrameRate:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMatrixBitmap:Landroid/graphics/Bitmap;

.field private mMatrixCanvas:Landroid/graphics/Canvas;

.field private final mOutput:Ljava/lang/String;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mProducer:Lco/vine/android/recorder/RecordController;

.field private mRS:Landroid/renderscript/RenderScript;

.field private mRect:Landroid/graphics/Rect;

.field private final mTargetSize:I

.field private volatile mTerminateImmediately:Z

.field private mTimeOffset:J

.field private mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

.field private srcBmp:Landroid/graphics/Bitmap;

.field private timeToMatrix:J

.field private timeToRGB:J

.field private timeToRecord:J

.field private totalSizeToWait:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lco/vine/android/recorder/RecordController;Landroid/content/Context;Ljava/lang/String;ILco/vine/android/recorder/ConcurrentData$CameraSetting;Lco/vine/android/recorder/CameraManager;Lco/vine/android/recorder/VineFFmpegFrameRecorder;)V
    .locals 4
    .parameter
    .parameter "producer"
    .parameter "context"
    .parameter "output"
    .parameter "targetSize"
    .parameter "cameraSetting"
    .parameter "cameraManager"
    .parameter "audioRecorder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lco/vine/android/recorder/ConcurrentData$VideoData;",
            ">;",
            "Lco/vine/android/recorder/RecordController;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Lco/vine/android/recorder/ConcurrentData$CameraSetting;",
            "Lco/vine/android/recorder/CameraManager;",
            "Lco/vine/android/recorder/VineFFmpegFrameRecorder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, queue:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lco/vine/android/recorder/ConcurrentData$VideoData;>;"
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    .line 64
    iput-boolean v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    .line 66
    iput-boolean v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mHasGeneratedThumbnail:Z

    .line 76
    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-static {p5, p5, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 77
    iput-object p1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 78
    iput-object p2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    .line 79
    new-instance v1, Lco/vine/android/recorder/VineProcessor;

    invoke-direct {v1, p3}, Lco/vine/android/recorder/VineProcessor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mConverter:Lco/vine/android/recorder/VineProcessor;

    .line 80
    iput-object p4, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    .line 81
    iput p5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    .line 82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 83
    invoke-static {p3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    .line 85
    :cond_0
    invoke-virtual {p0, p6}, Lco/vine/android/recorder/ProcessorRunnable;->setCameraSetting(Lco/vine/android/recorder/ConcurrentData$CameraSetting;)V

    .line 86
    iput-object p7, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    .line 87
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mPaint:Landroid/graphics/Paint;

    .line 89
    iget v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    iget v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".video.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentVideoOutput:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentVideoOutput:Ljava/lang/String;

    iget v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mLastFrameRate:I

    iget v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    invoke-static {v1, v2, v3}, Lco/vine/android/recorder/RecordController;->newViewRecorder(Ljava/lang/String;II)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    .line 92
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTimeOffset:J

    .line 93
    iput-object p8, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    .line 95
    :try_start_0
    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->start()V
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    sget-object v1, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1}, Lco/vine/android/recorder/ProcessorRunnable;->initializeMatrixAssets(Landroid/graphics/Bitmap$Config;)V

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 98
    const-string v1, "Cannot start video recorder."

    invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private convertUsingCompression(Lco/vine/android/recorder/ConcurrentData$VideoData;[BZ)V
    .locals 9
    .parameter "next"
    .parameter "data"
    .parameter "hasChanged"

    .prologue
    const/4 v8, 0x0

    .line 318
    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_1

    .line 319
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v2, v2, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget-object v3, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v3, v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRect:Landroid/graphics/Rect;

    .line 321
    :cond_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 322
    .local v7, out:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    iget-object v1, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v3, v1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget-object v1, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v4, v1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    const/4 v5, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 323
    .local v0, yuv:Landroid/graphics/YuvImage;
    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRect:Landroid/graphics/Rect;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 324
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 325
    .local v6, bytes:[B
    array-length v1, v6

    invoke-static {v6, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    .line 326
    return-void
.end method

.method private convertUsingJavaConversion(Lco/vine/android/recorder/ConcurrentData$VideoData;[BZ)V
    .locals 2
    .parameter "next"
    .parameter "data"
    .parameter "hasChanged"

    .prologue
    .line 329
    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 330
    :cond_0
    iget v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentFrameSize:I

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    .line 332
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 333
    iget-object v0, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v0, v0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget-object v1, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v1, v1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    invoke-direct {p0, p2, v0, v1}, Lco/vine/android/recorder/ProcessorRunnable;->decodeYUV420SP([BII)V

    .line 334
    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 335
    return-void
.end method

.method private convertUsingRenderScript(Lco/vine/android/recorder/ConcurrentData$VideoData;[BZ)V
    .locals 4
    .parameter "next"
    .parameter "data"
    .parameter "hasChanged"

    .prologue
    .line 292
    if-nez p2, :cond_0

    .line 293
    const-string v0, "Data is null."

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mFilterYuv:Lco/vine/android/recorder/RsYuv;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_2

    .line 296
    :cond_1
    new-instance v0, Lco/vine/android/recorder/RsYuv;

    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v2, v2, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget-object v3, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v3, v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/recorder/RsYuv;-><init>(Landroid/renderscript/RenderScript;II)V

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mFilterYuv:Lco/vine/android/recorder/RsYuv;

    .line 298
    :cond_2
    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mFilterYuv:Lco/vine/android/recorder/RsYuv;

    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2, v1}, Lco/vine/android/recorder/RsYuv;->execute([BLandroid/graphics/Bitmap;)V

    .line 299
    return-void
.end method

.method private createThumbnail()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    const/4 v4, 0x1

    iput-boolean v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->mHasGeneratedThumbnail:Z

    .line 303
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    invoke-static {v4}, Lco/vine/android/recorder/RecordingFile;->getThumbnailPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v2, f:Ljava/io/File;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 305
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 306
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 307
    .local v1, compressed:[B
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 308
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 309
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 310
    const-string v4, "Successfully created thumbnail: {}, {}"

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method private decodeYUV420SP([BII)V
    .locals 15
    .parameter "data"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 339
    const/4 v10, 0x0

    .local v10, y:I
    :goto_0
    move/from16 v0, p3

    if-ge v10, v0, :cond_7

    .line 340
    const/4 v8, 0x0

    .local v8, x:I
    :goto_1
    move/from16 v0, p2

    if-ge v8, v0, :cond_6

    .line 342
    mul-int v12, v10, p2

    add-int/2addr v12, v8

    aget-byte v12, p1, v12

    and-int/lit16 v6, v12, 0xff

    .line 344
    .local v6, Y:I
    shr-int/lit8 v12, v8, 0x1

    shl-int/lit8 v9, v12, 0x1

    .line 345
    .local v9, xby2:I
    shr-int/lit8 v11, v10, 0x1

    .line 346
    .local v11, yby2:I
    iget v12, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentFrameSize:I

    add-int/2addr v12, v9

    mul-int v13, v11, p2

    add-int/2addr v12, v13

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v4, v12, -0x80

    .line 347
    .local v4, U:I
    iget v12, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentFrameSize:I

    add-int/2addr v12, v9

    add-int/lit8 v12, v12, 0x1

    mul-int v13, v11, p2

    add-int/2addr v12, v13

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v5, v12, -0x80

    .line 348
    .local v5, V:I
    mul-int/lit16 v12, v6, 0x48c

    add-int/lit16 v7, v12, -0x3e80

    .line 349
    .local v7, Yf:I
    mul-int/lit16 v12, v5, 0x63c

    add-int v3, v7, v12

    .line 350
    .local v3, R:I
    mul-int/lit16 v12, v5, 0x32d

    sub-int v12, v7, v12

    mul-int/lit16 v13, v4, 0x187

    sub-int v2, v12, v13

    .line 351
    .local v2, G:I
    mul-int/lit16 v12, v4, 0x7e2

    add-int v1, v7, v12

    .line 354
    .local v1, B:I
    if-gez v3, :cond_0

    const/4 v3, 0x0

    .line 355
    :goto_2
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 356
    :goto_3
    if-gez v1, :cond_4

    const/4 v1, 0x0

    .line 358
    :goto_4
    iget-object v12, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    const/high16 v13, -0x100

    const/high16 v14, 0x1

    mul-int/2addr v14, v3

    add-int/2addr v13, v14

    mul-int/lit16 v14, v2, 0x100

    add-int/2addr v13, v14

    add-int/2addr v13, v1

    invoke-virtual {v12, v13}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 340
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 354
    :cond_0
    const v12, 0x3e418

    if-le v3, v12, :cond_1

    const/16 v3, 0xff

    goto :goto_2

    :cond_1
    div-int/lit16 v3, v3, 0x3e8

    goto :goto_2

    .line 355
    :cond_2
    const v12, 0x3e418

    if-le v2, v12, :cond_3

    const/16 v2, 0xff

    goto :goto_3

    :cond_3
    div-int/lit16 v2, v2, 0x3e8

    goto :goto_3

    .line 356
    :cond_4
    const v12, 0x3e418

    if-le v1, v12, :cond_5

    const/16 v1, 0xff

    goto :goto_4

    :cond_5
    div-int/lit16 v1, v1, 0x3e8

    goto :goto_4

    .line 339
    .end local v1           #B:I
    .end local v2           #G:I
    .end local v3           #R:I
    .end local v4           #U:I
    .end local v5           #V:I
    .end local v6           #Y:I
    .end local v7           #Yf:I
    .end local v9           #xby2:I
    .end local v11           #yby2:I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 362
    .end local v8           #x:I
    :cond_7
    iget-object v12, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v12}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 363
    return-void
.end method

.method private getFrameNumber(JI)I
    .locals 4
    .parameter "timestamp"
    .parameter "frameRate"

    .prologue
    .line 366
    int-to-long v0, p3

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private giveMatrixNewValues(III)V
    .locals 9
    .parameter "degrees"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v8, 0x4000

    .line 179
    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 180
    iget v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    int-to-float v5, v5

    int-to-float v6, p2

    div-float/2addr v5, v6

    iget v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    int-to-float v6, v6

    int-to-float v7, p3

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 181
    .local v4, scaleFactor:F
    int-to-float v5, p2

    mul-float v1, v5, v4

    .line 182
    .local v1, actualWidth:F
    int-to-float v5, p3

    mul-float v0, v5, v4

    .line 183
    .local v0, actualHeight:F
    iget v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    neg-float v5, v5

    div-float v2, v5, v8

    .line 184
    .local v2, offsetX:F
    iget v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    int-to-float v5, v5

    sub-float v5, v0, v5

    neg-float v5, v5

    div-float v3, v5, v8

    .line 185
    .local v3, offsetY:F
    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v6, p1

    div-int/lit8 v7, p2, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, p3, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 186
    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 187
    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 188
    return-void
.end method

.method private initializeMatrixAssets(Landroid/graphics/Bitmap$Config;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 174
    iget v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    iget v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    .line 175
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixCanvas:Landroid/graphics/Canvas;

    .line 176
    return-void
.end method

.method private process(Z)V
    .locals 7
    .parameter "waitForMore"

    .prologue
    const/4 v6, 0x1

    .line 371
    :cond_0
    :goto_0
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/recorder/ConcurrentData$VideoData;

    .local v1, next:Lco/vine/android/recorder/ConcurrentData$VideoData;
    if-nez v1, :cond_1

    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 372
    :cond_1
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-eqz v3, :cond_3

    .line 373
    const-string v3, "Terminate without saving...."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 416
    :cond_2
    :goto_1
    return-void

    .line 376
    :cond_3
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    if-eqz v3, :cond_5

    .line 377
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    .line 378
    .local v2, size:I
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 379
    iget v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 380
    iput v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    .line 381
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 383
    :cond_4
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    iget v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x62

    iget v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->publish(I)V

    .line 385
    .end local v2           #size:I
    :cond_5
    if-nez v1, :cond_6

    .line 386
    if-eqz p1, :cond_0

    .line 388
    :try_start_0
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-nez v3, :cond_2

    .line 391
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Break signal reached."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 399
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_6
    :try_start_1
    iget-object v3, v1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v3, v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    iput v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mLastFrameRate:I

    .line 400
    invoke-direct {p0, v1}, Lco/vine/android/recorder/ProcessorRunnable;->processVideoData(Lco/vine/android/recorder/ConcurrentData$VideoData;)V
    :try_end_1
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 401
    :catch_1
    move-exception v0

    .line 402
    .local v0, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->hasLoggedException:Z

    if-nez v3, :cond_7

    .line 403
    iput-boolean v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->hasLoggedException:Z

    .line 404
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 406
    :cond_7
    const-string v3, "Failed to processVideoData sample."

    invoke-static {v3, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 407
    .end local v0           #e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    :catch_2
    move-exception v0

    .line 408
    .local v0, e:Ljava/io/IOException;
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->hasLoggedException:Z

    if-nez v3, :cond_8

    .line 409
    iput-boolean v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->hasLoggedException:Z

    .line 410
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 412
    :cond_8
    const-string v3, "Failed to generate thumbnail."

    invoke-static {v3, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private processVideoData(Lco/vine/android/recorder/ConcurrentData$VideoData;)V
    .locals 17
    .parameter "next"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    move-object/from16 v0, p1

    iget-object v2, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    .line 192
    .local v2, data:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 193
    .local v11, startTime:J
    move-object/from16 v0, p0

    iget v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->lastW:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v14, v14, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->lastH:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v14, v14, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    if-eq v13, v14, :cond_6

    :cond_0
    const/4 v9, 0x1

    .line 195
    .local v9, hasChanged:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_1

    if-eqz v9, :cond_2

    .line 196
    :cond_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v13, v13, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v14, v14, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    sget-object v15, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    .line 199
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v13, v13, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v14, v14, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    mul-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentFrameSize:I

    .line 203
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    if-eqz v13, :cond_7

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v9}, Lco/vine/android/recorder/ProcessorRunnable;->convertUsingRenderScript(Lco/vine/android/recorder/ConcurrentData$VideoData;[BZ)V

    .line 209
    :goto_1
    if-eqz v9, :cond_3

    .line 210
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v13, v13, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    move-object/from16 v0, p0

    iput v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->lastW:I

    .line 211
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v13, v13, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    move-object/from16 v0, p0

    iput v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->lastH:I

    .line 212
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v13, v13, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->degrees:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lco/vine/android/recorder/ProcessorRunnable;->giveMatrixNewValues(III)V

    .line 214
    :cond_3
    move-object/from16 v0, p0

    iget-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRGB:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRGB:J

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 219
    move-object/from16 v0, p0

    iget-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToMatrix:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToMatrix:J

    .line 222
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mHasGeneratedThumbnail:Z

    if-nez v13, :cond_4

    .line 223
    invoke-direct/range {p0 .. p0}, Lco/vine/android/recorder/ProcessorRunnable;->createThumbnail()V

    .line 226
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-eqz v13, :cond_8

    .line 289
    :cond_5
    :goto_2
    return-void

    .line 193
    .end local v9           #hasChanged:Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 207
    .restart local v9       #hasChanged:Z
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v9}, Lco/vine/android/recorder/ProcessorRunnable;->convertUsingJavaConversion(Lco/vine/android/recorder/ConcurrentData$VideoData;[BZ)V

    goto :goto_1

    .line 231
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v14}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 236
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v8, v13, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    .line 238
    .local v8, frameRate:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    int-to-double v14, v8

    invoke-virtual {v13, v14, v15}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFrameRate(D)V

    .line 240
    move-object/from16 v0, p1

    iget-wide v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_9

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v13}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getTimestamp()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mTimeOffset:J

    .line 245
    :cond_9
    move-object/from16 v0, p1

    iget-wide v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lco/vine/android/recorder/ProcessorRunnable;->mTimeOffset:J

    add-long v3, v13, v15

    .line 247
    .local v3, determinedTimestamp:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v13}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFrameNumber()I

    move-result v10

    .line 252
    .local v10, nextFrameNumber:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v13}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getTimestamp()J

    move-result-wide v13

    cmp-long v13, v13, v3

    if-gez v13, :cond_a

    .line 254
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v13, v3, v4}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setTimestampAndGetFrameNumber(J)I

    move-result v10

    .line 257
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-nez v13, :cond_5

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 264
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v13, v14}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 266
    const-string v13, "Successfully did video frame at {}, #{}."

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    invoke-virtual {v13, v14}, Lco/vine/android/recorder/CameraManager;->addBuffer([B)V

    .line 288
    move-object/from16 v0, p0

    iget-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRecord:J

    goto/16 :goto_2

    .line 267
    :catch_0
    move-exception v5

    .line 268
    .local v5, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    const-string v13, "Failed to record video frame at {}. #{}."

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v13, v14}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 271
    const-string v13, "Retry successful #{}."

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 272
    :catch_1
    move-exception v6

    .line 273
    .local v6, e2:Lcom/googlecode/javacv/FrameRecorder$Exception;
    const-string v13, "Retry again: #{}."

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    const-wide/16 v13, 0x3e8

    int-to-long v15, v8

    div-long/2addr v13, v15

    add-long/2addr v3, v13

    .line 275
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v8}, Lco/vine/android/recorder/ProcessorRunnable;->getFrameNumber(JI)I

    move-result v10

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v13, v3, v4}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setTimestamp(J)V

    .line 277
    move-object/from16 v0, p1

    iput-wide v3, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    .line 279
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v13, v14}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 280
    const-string v13, "Retry Retry successful #{}."

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 281
    :catch_2
    move-exception v7

    .line 282
    .local v7, e3:Lcom/googlecode/javacv/FrameRecorder$Exception;
    move-object/from16 v0, p0

    iget v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    .line 283
    const-string v13, "Retry failed: {}."

    move-object/from16 v0, p0

    iget v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 127
    const/16 v3, 0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 128
    const-string v3, "Processing started."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-direct {p0, v9}, Lco/vine/android/recorder/ProcessorRunnable;->process(Z)V

    .line 131
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-eqz v3, :cond_0

    .line 135
    :cond_1
    const-string v3, "Flushing..."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 136
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-nez v3, :cond_4

    .line 137
    invoke-direct {p0, v8}, Lco/vine/android/recorder/ProcessorRunnable;->process(Z)V

    .line 142
    :goto_0
    :try_start_0
    sget-object v4, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v4
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :try_start_1
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->stop()V

    .line 144
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 145
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->stop()V

    .line 146
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 147
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData()Z

    move-result v2

    .line 148
    .local v2, hasAudioData:Z
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, audioFileName:Ljava/lang/String;
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    iget-object v3, v3, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-boolean v3, v3, Lco/vine/android/recorder/VineRecorder;->mDiscardChanges:Z

    if-nez v3, :cond_2

    .line 150
    if-eqz v2, :cond_5

    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 151
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mConverter:Lco/vine/android/recorder/VineProcessor;

    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentVideoOutput:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    invoke-static {}, Lco/vine/android/recorder/RecordConfigUtils;->getMetadata()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v3, v5, v0, v6, v7}, Lco/vine/android/recorder/VineProcessor;->combineVideoAndAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I

    .line 161
    :cond_2
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v0           #audioFileName:Ljava/lang/String;
    .end local v2           #hasAudioData:Z
    :goto_2
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    if-eqz v3, :cond_3

    .line 166
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    const/16 v4, 0x63

    invoke-virtual {v3, v4}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->publish(I)V

    .line 168
    :cond_3
    const-string v3, "Processing thread finished: failed {} frames."

    iget v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    const-string v3, "Time used: rgb: {}, matrix: {}, record: {}."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRGB:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    iget-wide v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->timeToMatrix:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    iget-wide v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRecord:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    return-void

    .line 139
    :cond_4
    const-string v3, "Terminate without saving...."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .restart local v0       #audioFileName:Ljava/lang/String;
    .restart local v2       #hasAudioData:Z
    :cond_5
    if-eqz v2, :cond_6

    .line 154
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 156
    :cond_6
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v5}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 161
    .end local v0           #audioFileName:Ljava/lang/String;
    .end local v2           #hasAudioData:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    const-string v3, "Error flushing..."

    invoke-static {v3, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setAsyncTask(Lco/vine/android/recorder/VineRecorder$FinishProcessTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 117
    iput-object p1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    .line 118
    return-void
.end method

.method public setCameraSetting(Lco/vine/android/recorder/ConcurrentData$CameraSetting;)V
    .locals 4
    .parameter "cameraSetting"

    .prologue
    .line 104
    iget v0, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    iput v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mLastFrameRate:I

    .line 105
    iget v0, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget v1, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    sget-object v2, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    .line 108
    iget v0, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget v1, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    mul-int/2addr v0, v1

    iput v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentFrameSize:I

    .line 109
    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    .line 110
    iget v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentFrameSize:I

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Lco/vine/android/recorder/RsYuv;

    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    iget v2, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget v3, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/recorder/RsYuv;-><init>(Landroid/renderscript/RenderScript;II)V

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mFilterYuv:Lco/vine/android/recorder/RsYuv;

    goto :goto_0
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 121
    const-string v0, "Terminate without saving turned on."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    .line 123
    return-void
.end method
