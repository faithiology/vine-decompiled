.class public Lco/vine/android/recorder/ProcessorRunnable;
.super Ljava/lang/Object;
.source "ProcessorRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method public constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lco/vine/android/recorder/RecordController;Landroid/content/Context;Ljava/lang/String;IILco/vine/android/recorder/CameraManager;Lco/vine/android/recorder/VineFFmpegFrameRecorder;)V
    .locals 4
    .parameter
    .parameter "producer"
    .parameter "context"
    .parameter "output"
    .parameter "targetSize"
    .parameter "startingFrameRate"
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
            "II",
            "Lco/vine/android/recorder/CameraManager;",
            "Lco/vine/android/recorder/VineFFmpegFrameRecorder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, queue:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lco/vine/android/recorder/ConcurrentData$VideoData;>;"
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    .line 63
    iput-boolean v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    .line 65
    iput-boolean v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mHasGeneratedThumbnail:Z

    .line 73
    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-static {p5, p5, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 74
    iput-object p1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 75
    iput-object p2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    .line 76
    new-instance v1, Lco/vine/android/recorder/VineProcessor;

    invoke-direct {v1, p3}, Lco/vine/android/recorder/VineProcessor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mConverter:Lco/vine/android/recorder/VineProcessor;

    .line 77
    iput-object p4, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    .line 78
    iput p5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    .line 79
    iput p6, p0, Lco/vine/android/recorder/ProcessorRunnable;->mLastFrameRate:I

    .line 80
    iput-object p7, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    .line 81
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mPaint:Landroid/graphics/Paint;

    .line 83
    iget v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    iget v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 84
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

    .line 85
    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentVideoOutput:Ljava/lang/String;

    iget v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mLastFrameRate:I

    iget v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    invoke-static {v1, v2, v3}, Lco/vine/android/recorder/RecordController;->newViewRecorder(Ljava/lang/String;II)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    .line 86
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTimeOffset:J

    .line 87
    iput-object p8, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    .line 89
    :try_start_0
    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->start()V
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 95
    invoke-static {p3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    .line 96
    sget-object v1, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1}, Lco/vine/android/recorder/ProcessorRunnable;->initializeMatrixAssets(Landroid/graphics/Bitmap$Config;)V

    .line 99
    :cond_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 92
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

    .line 308
    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_1

    .line 309
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v2, v2, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalW:I

    iget-object v3, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v3, v3, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalH:I

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRect:Landroid/graphics/Rect;

    .line 311
    :cond_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 312
    .local v7, out:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    iget-object v1, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v3, v1, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalW:I

    iget-object v1, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v4, v1, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalH:I

    const/4 v5, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 313
    .local v0, yuv:Landroid/graphics/YuvImage;
    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRect:Landroid/graphics/Rect;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 314
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 315
    .local v6, bytes:[B
    array-length v1, v6

    invoke-static {v6, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    .line 316
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
    .line 294
    const/4 v4, 0x1

    iput-boolean v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->mHasGeneratedThumbnail:Z

    .line 295
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    invoke-static {v4}, Lco/vine/android/recorder/RecordingFile;->getThumbnailPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v2, f:Ljava/io/File;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 297
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 298
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 299
    .local v1, compressed:[B
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 300
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 301
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 302
    const-string v4, "Successfully created thumbnail: {}, {}"

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method private getFrameNumber(JI)I
    .locals 4
    .parameter "timestamp"
    .parameter "frameRate"

    .prologue
    .line 319
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

    .line 164
    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 165
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

    .line 166
    .local v4, scaleFactor:F
    int-to-float v5, p2

    mul-float v1, v5, v4

    .line 167
    .local v1, actualWidth:F
    int-to-float v5, p3

    mul-float v0, v5, v4

    .line 168
    .local v0, actualHeight:F
    iget v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    neg-float v5, v5

    div-float v2, v5, v8

    .line 169
    .local v2, offsetX:F
    iget v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    int-to-float v5, v5

    sub-float v5, v0, v5

    neg-float v5, v5

    div-float v3, v5, v8

    .line 170
    .local v3, offsetY:F
    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v6, p1

    div-int/lit8 v7, p2, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, p3, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 171
    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 172
    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 173
    return-void
.end method

.method private initializeMatrixAssets(Landroid/graphics/Bitmap$Config;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 159
    iget v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    iget v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    .line 160
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixCanvas:Landroid/graphics/Canvas;

    .line 161
    return-void
.end method

.method private process(Z)V
    .locals 7
    .parameter "waitForMore"

    .prologue
    const/4 v6, 0x1

    .line 324
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

    .line 325
    :cond_1
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-eqz v3, :cond_3

    .line 326
    const-string v3, "Terminate without saving...."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 369
    :cond_2
    :goto_1
    return-void

    .line 329
    :cond_3
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    if-eqz v3, :cond_5

    .line 330
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    .line 331
    .local v2, size:I
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 332
    iget v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 333
    iput v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    .line 334
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 336
    :cond_4
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    iget v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x62

    iget v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->publish(I)V

    .line 338
    .end local v2           #size:I
    :cond_5
    if-nez v1, :cond_6

    .line 339
    if-eqz p1, :cond_0

    .line 341
    :try_start_0
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-nez v3, :cond_2

    .line 344
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Break signal reached."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 352
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_6
    :try_start_1
    iget-object v3, v1, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v3, v3, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->frameRate:I

    iput v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mLastFrameRate:I

    .line 353
    invoke-direct {p0, v1}, Lco/vine/android/recorder/ProcessorRunnable;->processVideoData(Lco/vine/android/recorder/ConcurrentData$VideoData;)V
    :try_end_1
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 354
    :catch_1
    move-exception v0

    .line 355
    .local v0, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->hasLoggedException:Z

    if-nez v3, :cond_7

    .line 356
    iput-boolean v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->hasLoggedException:Z

    .line 357
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 359
    :cond_7
    const-string v3, "Failed to processVideoData sample."

    invoke-static {v3, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 360
    .end local v0           #e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    :catch_2
    move-exception v0

    .line 361
    .local v0, e:Ljava/io/IOException;
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->hasLoggedException:Z

    if-nez v3, :cond_8

    .line 362
    iput-boolean v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->hasLoggedException:Z

    .line 363
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 365
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
    .line 176
    move-object/from16 v0, p1

    iget-object v2, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    .line 177
    .local v2, data:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 178
    .local v11, startTime:J
    move-object/from16 v0, p0

    iget v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->lastW:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v14, v14, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalW:I

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->lastH:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v14, v14, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalH:I

    if-eq v13, v14, :cond_7

    :cond_0
    const/4 v9, 0x1

    .line 181
    .local v9, hasChanged:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    if-eqz v13, :cond_9

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_1

    if-eqz v9, :cond_2

    .line 183
    :cond_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v13, v13, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalW:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v14, v14, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalH:I

    sget-object v15, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    .line 186
    new-instance v13, Lco/vine/android/recorder/RsYuv;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p1

    iget-object v15, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v15, v15, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalW:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalH:I

    move/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lco/vine/android/recorder/RsYuv;-><init>(Landroid/renderscript/RenderScript;II)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mFilterYuv:Lco/vine/android/recorder/RsYuv;

    .line 189
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mFilterYuv:Lco/vine/android/recorder/RsYuv;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v13, v2, v14}, Lco/vine/android/recorder/RsYuv;->execute([BLandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_3
    :goto_1
    if-eqz v9, :cond_4

    .line 212
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v13, v13, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalW:I

    move-object/from16 v0, p0

    iput v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->lastW:I

    .line 213
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v13, v13, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalH:I

    move-object/from16 v0, p0

    iput v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->lastH:I

    .line 214
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v13, v13, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->degrees:I

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

    .line 216
    :cond_4
    move-object/from16 v0, p0

    iget-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRGB:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRGB:J

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 220
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

    .line 221
    move-object/from16 v0, p0

    iget-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToMatrix:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToMatrix:J

    .line 224
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mHasGeneratedThumbnail:Z

    if-nez v13, :cond_5

    .line 225
    invoke-direct/range {p0 .. p0}, Lco/vine/android/recorder/ProcessorRunnable;->createThumbnail()V

    .line 228
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-eqz v13, :cond_b

    .line 291
    :cond_6
    :goto_2
    return-void

    .line 178
    .end local v9           #hasChanged:Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 190
    .restart local v9       #hasChanged:Z
    :catch_0
    move-exception v5

    .line 191
    .local v5, e:Ljava/lang/Exception;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_8

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    .line 196
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v9}, Lco/vine/android/recorder/ProcessorRunnable;->convertUsingCompression(Lco/vine/android/recorder/ConcurrentData$VideoData;[BZ)V

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    if-nez v13, :cond_3

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lco/vine/android/recorder/ProcessorRunnable;->initializeMatrixAssets(Landroid/graphics/Bitmap$Config;)V

    goto/16 :goto_1

    .line 202
    .end local v5           #e:Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_a

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    .line 206
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v9}, Lco/vine/android/recorder/ProcessorRunnable;->convertUsingCompression(Lco/vine/android/recorder/ConcurrentData$VideoData;[BZ)V

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    if-nez v13, :cond_3

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lco/vine/android/recorder/ProcessorRunnable;->initializeMatrixAssets(Landroid/graphics/Bitmap$Config;)V

    goto/16 :goto_1

    .line 233
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v14}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 238
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    iget v8, v13, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->frameRate:I

    .line 240
    .local v8, frameRate:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    int-to-double v14, v8

    invoke-virtual {v13, v14, v15}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFrameRate(D)V

    .line 242
    move-object/from16 v0, p1

    iget-wide v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_c

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v13}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getTimestamp()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mTimeOffset:J

    .line 247
    :cond_c
    move-object/from16 v0, p1

    iget-wide v13, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lco/vine/android/recorder/ProcessorRunnable;->mTimeOffset:J

    add-long v3, v13, v15

    .line 249
    .local v3, determinedTimestamp:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v13}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFrameNumber()I

    move-result v10

    .line 254
    .local v10, nextFrameNumber:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v13}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getTimestamp()J

    move-result-wide v13

    cmp-long v13, v13, v3

    if-gez v13, :cond_d

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v13, v3, v4}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setTimestampAndGetFrameNumber(J)I

    move-result v10

    .line 259
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-nez v13, :cond_6

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 266
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 267
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v13, v14}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 268
    const-string v13, "Successfully did video frame at {}, #{}."

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    invoke-virtual {v13, v14}, Lco/vine/android/recorder/CameraManager;->addBuffer([B)V

    .line 290
    move-object/from16 v0, p0

    iget-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRecord:J

    goto/16 :goto_2

    .line 269
    :catch_1
    move-exception v5

    .line 270
    .local v5, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    const-string v13, "Failed to record video frame at {}. #{}."

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v13, v14}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 273
    const-string v13, "Retry successful #{}."

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 274
    :catch_2
    move-exception v6

    .line 275
    .local v6, e2:Lcom/googlecode/javacv/FrameRecorder$Exception;
    const-string v13, "Retry again: #{}."

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    const-wide/16 v13, 0x3e8

    int-to-long v15, v8

    div-long/2addr v13, v15

    add-long/2addr v3, v13

    .line 277
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v8}, Lco/vine/android/recorder/ProcessorRunnable;->getFrameNumber(JI)I

    move-result v10

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v13, v3, v4}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setTimestamp(J)V

    .line 279
    move-object/from16 v0, p1

    iput-wide v3, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    .line 281
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v13, v14}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 282
    const-string v13, "Retry Retry successful #{}."

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 283
    :catch_3
    move-exception v7

    .line 284
    .local v7, e3:Lcom/googlecode/javacv/FrameRecorder$Exception;
    move-object/from16 v0, p0

    iget v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    .line 285
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

    .line 112
    const/16 v3, 0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 113
    const-string v3, "Processing started."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-direct {p0, v9}, Lco/vine/android/recorder/ProcessorRunnable;->process(Z)V

    .line 116
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-eqz v3, :cond_0

    .line 120
    :cond_1
    const-string v3, "Flushing..."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 121
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-nez v3, :cond_4

    .line 122
    invoke-direct {p0, v8}, Lco/vine/android/recorder/ProcessorRunnable;->process(Z)V

    .line 127
    :goto_0
    :try_start_0
    sget-object v4, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v4
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->stop()V

    .line 129
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 130
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->stop()V

    .line 131
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 132
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData()Z

    move-result v2

    .line 133
    .local v2, hasAudioData:Z
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, audioFileName:Ljava/lang/String;
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    iget-object v3, v3, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-boolean v3, v3, Lco/vine/android/recorder/VineRecorder;->mDiscardChanges:Z

    if-nez v3, :cond_2

    .line 135
    if-eqz v2, :cond_5

    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 136
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mConverter:Lco/vine/android/recorder/VineProcessor;

    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentVideoOutput:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    invoke-static {}, Lco/vine/android/recorder/RecordConfigUtils;->getMetadata()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v3, v5, v0, v6, v7}, Lco/vine/android/recorder/VineProcessor;->combineVideoAndAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I

    .line 146
    :cond_2
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v0           #audioFileName:Ljava/lang/String;
    .end local v2           #hasAudioData:Z
    :goto_2
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    if-eqz v3, :cond_3

    .line 151
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    const/16 v4, 0x63

    invoke-virtual {v3, v4}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->publish(I)V

    .line 153
    :cond_3
    const-string v3, "Processing thread finished: failed {} frames."

    iget v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
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

    .line 156
    return-void

    .line 124
    :cond_4
    const-string v3, "Terminate without saving...."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    .restart local v0       #audioFileName:Ljava/lang/String;
    .restart local v2       #hasAudioData:Z
    :cond_5
    if-eqz v2, :cond_6

    .line 139
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 141
    :cond_6
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
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

    .line 146
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

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    const-string v3, "Error flushing..."

    invoke-static {v3, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setAsyncTask(Lco/vine/android/recorder/VineRecorder$FinishProcessTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 102
    iput-object p1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    .line 103
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 106
    const-string v0, "Terminate without saving turned on."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    .line 108
    return-void
.end method
